package edu.upm.spbw.persistence.bo;

import edu.upm.spbw.utils.Constants;

// Generated 28-feb-2016 11:40:56 by Hibernate Tools 3.4.0.CR1

/**
 * Cspperfu generated by hbm2java
 */
public class Cspperfu implements java.io.Serializable, AbstractBO<String> {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String pfucpfuak;
	private String pfudpfuaf;
	private String pfuiactsf;
	/* Booleanos */
	private boolean bpfuiactsf;

	public Cspperfu() {
	}

	public Cspperfu(String pfucpfuak, String pfudpfuaf, String pfuiactsf) {
		this.pfucpfuak = pfucpfuak;
		this.pfudpfuaf = pfudpfuaf;
		this.pfuiactsf = pfuiactsf;
	}

	public String getPfucpfuak() {
		return this.pfucpfuak;
	}

	public void setPfucpfuak(String pfucpfuak) {
		this.pfucpfuak = pfucpfuak;
	}

	public String getPfudpfuaf() {
		return this.pfudpfuaf;
	}

	public void setPfudpfuaf(String pfudpfuaf) {
		this.pfudpfuaf = pfudpfuaf;
	}

	public String getPfuiactsf() {
		return this.pfuiactsf;
	}

	public void setPfuiactsf(String pfuiactsf) {
		this.pfuiactsf = pfuiactsf;
	}

	/**
	 * @return the bpfuiactsf
	 */
	public boolean isBpfuiactsf() {
		return bpfuiactsf;
	}

	/**
	 * @param bpfuiactsf
	 *            the bpfuiactsf to set
	 */
	public void setBpfuiactsf(boolean bpfuiactsf) {
		this.bpfuiactsf = bpfuiactsf;
	}

	@Override
	public String getPrimaryKey() {
		return pfucpfuak;
	}

	@Override
	public void prepareObject() {
		if (pfucpfuak == null)
			pfucpfuak = Constants.BLANKS;
		else
			pfucpfuak = pfucpfuak.trim();
		if (pfudpfuaf == null)
			pfudpfuaf = Constants.BLANKS;
		else
			pfudpfuaf = pfudpfuaf.trim();
		if (pfuiactsf == null)
			pfuiactsf = Constants.ZERO;
		else
			pfuiactsf = pfuiactsf.trim();
		/* Booleano */
		this.bpfuiactsf = Constants.ONE.equals(this.pfuiactsf);
	}

	@Override
	public void prepareToUpdate() {
		this.pfuiactsf = this.bpfuiactsf ? Constants.ONE : Constants.ZERO;
	}

}