Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D6AF415D95B
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2020 15:24:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B0316F947;
	Fri, 14 Feb 2020 14:24:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6D826F947
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Feb 2020 14:24:18 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Feb 2020 06:24:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,440,1574150400"; d="scan'208";a="223029026"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 14 Feb 2020 06:24:15 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 14 Feb 2020 16:24:14 +0200
Date: Fri, 14 Feb 2020 16:24:14 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20200214142414.GJ13686@intel.com>
References: <20200214140910.23194-1-jani.nikula@intel.com>
 <20200214140910.23194-2-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200214140910.23194-2-jani.nikula@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/display: use intel_de_*()
 functions for register access
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Feb 14, 2020 at 04:09:10PM +0200, Jani Nikula wrote:
> The implicit "dev_priv" local variable use has been a long-standing pain
> point in the register access macros I915_READ(), I915_WRITE(),
> POSTING_READ(), I915_READ_FW(), and I915_WRITE_FW().
> =

> Replace them with the corresponding new display engine register
> accessors intel_de_read(), intel_de_write(), intel_de_posting_read(),
> intel_de_read_fw(), and intel_de_write_fw().
> =

> No functional changes.
> =

> Generated using the following semantic patch:
> =

> @@
> expression REG, OFFSET;
> @@
> - I915_READ(REG)
> + intel_de_read(dev_priv, REG)
> =

> @@
> expression REG, OFFSET;
> @@
> - POSTING_READ(REG)
> + intel_de_posting_read(dev_priv, REG)
> =

> @@
> expression REG, OFFSET;
> @@
> - I915_WRITE(REG, OFFSET)
> + intel_de_write(dev_priv, REG, OFFSET)
> =

> @@
> expression REG;
> @@
> - I915_READ_FW(REG)
> + intel_de_read_fw(dev_priv, REG)
> =

> @@
> expression REG, OFFSET;
> @@
> - I915_WRITE_FW(REG, OFFSET)
> + intel_de_write_fw(dev_priv, REG, OFFSET)
> =

> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  .../drm/i915/display/intel_display_debugfs.c  | 65 +++++++++++--------
>  1 file changed, 37 insertions(+), 28 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drive=
rs/gpu/drm/i915/display/intel_display_debugfs.c
> index 50baac726e70..287442bbcb46 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -57,15 +57,15 @@ static int i915_fbc_status(struct seq_file *m, void *=
unused)
>  		u32 mask;
>  =

>  		if (INTEL_GEN(dev_priv) >=3D 8)
> -			mask =3D I915_READ(IVB_FBC_STATUS2) & BDW_FBC_COMP_SEG_MASK;
> +			mask =3D intel_de_read(dev_priv, IVB_FBC_STATUS2) & BDW_FBC_COMP_SEG_=
MASK;
>  		else if (INTEL_GEN(dev_priv) >=3D 7)
> -			mask =3D I915_READ(IVB_FBC_STATUS2) & IVB_FBC_COMP_SEG_MASK;
> +			mask =3D intel_de_read(dev_priv, IVB_FBC_STATUS2) & IVB_FBC_COMP_SEG_=
MASK;
>  		else if (INTEL_GEN(dev_priv) >=3D 5)
> -			mask =3D I915_READ(ILK_DPFC_STATUS) & ILK_DPFC_COMP_SEG_MASK;
> +			mask =3D intel_de_read(dev_priv, ILK_DPFC_STATUS) & ILK_DPFC_COMP_SEG=
_MASK;
>  		else if (IS_G4X(dev_priv))
> -			mask =3D I915_READ(DPFC_STATUS) & DPFC_COMP_SEG_MASK;
> +			mask =3D intel_de_read(dev_priv, DPFC_STATUS) & DPFC_COMP_SEG_MASK;
>  		else
> -			mask =3D I915_READ(FBC_STATUS) & (FBC_STAT_COMPRESSING |
> +			mask =3D intel_de_read(dev_priv, FBC_STATUS) & (FBC_STAT_COMPRESSING |
>  							FBC_STAT_COMPRESSED);

Seesm to want some manual work to fix the alignment afterwards.
Probably should wrap after & actually.

>  =

>  		seq_printf(m, "Compressing: %s\n", yesno(mask));
> @@ -99,12 +99,11 @@ static int i915_fbc_false_color_set(void *data, u64 v=
al)
>  =

>  	mutex_lock(&dev_priv->fbc.lock);
>  =

> -	reg =3D I915_READ(ILK_DPFC_CONTROL);
> +	reg =3D intel_de_read(dev_priv, ILK_DPFC_CONTROL);
>  	dev_priv->fbc.false_color =3D val;
>  =

> -	I915_WRITE(ILK_DPFC_CONTROL, val ?
> -		   (reg | FBC_CTL_FALSE_COLOR) :
> -		   (reg & ~FBC_CTL_FALSE_COLOR));
> +	intel_de_write(dev_priv, ILK_DPFC_CONTROL,
> +		       val ? (reg | FBC_CTL_FALSE_COLOR) : (reg & ~FBC_CTL_FALSE_COLOR=
));

Did we introduce some kind of rmw() variant? Could use it here to get
rid of this rather ugly construct.

For the series
Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

>  =

>  	mutex_unlock(&dev_priv->fbc.lock);
>  	return 0;
> @@ -130,7 +129,7 @@ static int i915_ips_status(struct seq_file *m, void *=
unused)
>  	if (INTEL_GEN(dev_priv) >=3D 8) {
>  		seq_puts(m, "Currently: unknown\n");
>  	} else {
> -		if (I915_READ(IPS_CTL) & IPS_ENABLE)
> +		if (intel_de_read(dev_priv, IPS_CTL) & IPS_ENABLE)
>  			seq_puts(m, "Currently: enabled\n");
>  		else
>  			seq_puts(m, "Currently: disabled\n");
> @@ -152,16 +151,16 @@ static int i915_sr_status(struct seq_file *m, void =
*unused)
>  	if (INTEL_GEN(dev_priv) >=3D 9)
>  		/* no global SR status; inspect per-plane WM */;
>  	else if (HAS_PCH_SPLIT(dev_priv))
> -		sr_enabled =3D I915_READ(WM1_LP_ILK) & WM1_LP_SR_EN;
> +		sr_enabled =3D intel_de_read(dev_priv, WM1_LP_ILK) & WM1_LP_SR_EN;
>  	else if (IS_I965GM(dev_priv) || IS_G4X(dev_priv) ||
>  		 IS_I945G(dev_priv) || IS_I945GM(dev_priv))
> -		sr_enabled =3D I915_READ(FW_BLC_SELF) & FW_BLC_SELF_EN;
> +		sr_enabled =3D intel_de_read(dev_priv, FW_BLC_SELF) & FW_BLC_SELF_EN;
>  	else if (IS_I915GM(dev_priv))
> -		sr_enabled =3D I915_READ(INSTPM) & INSTPM_SELF_EN;
> +		sr_enabled =3D intel_de_read(dev_priv, INSTPM) & INSTPM_SELF_EN;
>  	else if (IS_PINEVIEW(dev_priv))
> -		sr_enabled =3D I915_READ(DSPFW3) & PINEVIEW_SELF_REFRESH_EN;
> +		sr_enabled =3D intel_de_read(dev_priv, DSPFW3) & PINEVIEW_SELF_REFRESH=
_EN;
>  	else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
> -		sr_enabled =3D I915_READ(FW_BLC_SELF_VLV) & FW_CSPWRDWNEN;
> +		sr_enabled =3D intel_de_read(dev_priv, FW_BLC_SELF_VLV) & FW_CSPWRDWNE=
N;
>  =

>  	intel_display_power_put(dev_priv, POWER_DOMAIN_INIT, wakeref);
>  =

> @@ -298,7 +297,8 @@ psr_source_status(struct drm_i915_private *dev_priv, =
struct seq_file *m)
>  			"BUF_ON",
>  			"TG_ON"
>  		};
> -		val =3D I915_READ(EDP_PSR2_STATUS(dev_priv->psr.transcoder));
> +		val =3D intel_de_read(dev_priv,
> +				    EDP_PSR2_STATUS(dev_priv->psr.transcoder));
>  		status_val =3D (val & EDP_PSR2_STATUS_STATE_MASK) >>
>  			      EDP_PSR2_STATUS_STATE_SHIFT;
>  		if (status_val < ARRAY_SIZE(live_status))
> @@ -314,7 +314,8 @@ psr_source_status(struct drm_i915_private *dev_priv, =
struct seq_file *m)
>  			"SRDOFFACK",
>  			"SRDENT_ON",
>  		};
> -		val =3D I915_READ(EDP_PSR_STATUS(dev_priv->psr.transcoder));
> +		val =3D intel_de_read(dev_priv,
> +				    EDP_PSR_STATUS(dev_priv->psr.transcoder));
>  		status_val =3D (val & EDP_PSR_STATUS_STATE_MASK) >>
>  			      EDP_PSR_STATUS_STATE_SHIFT;
>  		if (status_val < ARRAY_SIZE(live_status))
> @@ -361,10 +362,12 @@ static int i915_edp_psr_status(struct seq_file *m, =
void *data)
>  	}
>  =

>  	if (psr->psr2_enabled) {
> -		val =3D I915_READ(EDP_PSR2_CTL(dev_priv->psr.transcoder));
> +		val =3D intel_de_read(dev_priv,
> +				    EDP_PSR2_CTL(dev_priv->psr.transcoder));
>  		enabled =3D val & EDP_PSR2_ENABLE;
>  	} else {
> -		val =3D I915_READ(EDP_PSR_CTL(dev_priv->psr.transcoder));
> +		val =3D intel_de_read(dev_priv,
> +				    EDP_PSR_CTL(dev_priv->psr.transcoder));
>  		enabled =3D val & EDP_PSR_ENABLE;
>  	}
>  	seq_printf(m, "Source PSR ctl: %s [0x%08x]\n",
> @@ -377,7 +380,8 @@ static int i915_edp_psr_status(struct seq_file *m, vo=
id *data)
>  	 * SKL+ Perf counter is reset to 0 everytime DC state is entered
>  	 */
>  	if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv)) {
> -		val =3D I915_READ(EDP_PSR_PERF_CNT(dev_priv->psr.transcoder));
> +		val =3D intel_de_read(dev_priv,
> +				    EDP_PSR_PERF_CNT(dev_priv->psr.transcoder));
>  		val &=3D EDP_PSR_PERF_CNT_MASK;
>  		seq_printf(m, "Performance counter: %u\n", val);
>  	}
> @@ -397,8 +401,8 @@ static int i915_edp_psr_status(struct seq_file *m, vo=
id *data)
>  		 * frame boundary between register reads
>  		 */
>  		for (frame =3D 0; frame < PSR2_SU_STATUS_FRAMES; frame +=3D 3) {
> -			val =3D I915_READ(PSR2_SU_STATUS(dev_priv->psr.transcoder,
> -						       frame));
> +			val =3D intel_de_read(dev_priv,
> +					    PSR2_SU_STATUS(dev_priv->psr.transcoder, frame));
>  			su_frames_val[frame / 3] =3D val;
>  		}
>  =

> @@ -518,7 +522,8 @@ static int i915_dmc_info(struct seq_file *m, void *un=
used)
>  		 * reg for DC3CO debugging and validation,
>  		 * but TGL DMC f/w is using DMC_DEBUG3 reg for DC3CO counter.
>  		 */
> -		seq_printf(m, "DC3CO count: %d\n", I915_READ(DMC_DEBUG3));
> +		seq_printf(m, "DC3CO count: %d\n",
> +			   intel_de_read(dev_priv, DMC_DEBUG3));
>  	} else {
>  		dc5_reg =3D IS_BROXTON(dev_priv) ? BXT_CSR_DC3_DC5_COUNT :
>  						 SKL_CSR_DC3_DC5_COUNT;
> @@ -526,14 +531,18 @@ static int i915_dmc_info(struct seq_file *m, void *=
unused)
>  			dc6_reg =3D SKL_CSR_DC5_DC6_COUNT;
>  	}
>  =

> -	seq_printf(m, "DC3 -> DC5 count: %d\n", I915_READ(dc5_reg));
> +	seq_printf(m, "DC3 -> DC5 count: %d\n",
> +		   intel_de_read(dev_priv, dc5_reg));
>  	if (dc6_reg.reg)
> -		seq_printf(m, "DC5 -> DC6 count: %d\n", I915_READ(dc6_reg));
> +		seq_printf(m, "DC5 -> DC6 count: %d\n",
> +			   intel_de_read(dev_priv, dc6_reg));
>  =

>  out:
> -	seq_printf(m, "program base: 0x%08x\n", I915_READ(CSR_PROGRAM(0)));
> -	seq_printf(m, "ssp base: 0x%08x\n", I915_READ(CSR_SSP_BASE));
> -	seq_printf(m, "htp: 0x%08x\n", I915_READ(CSR_HTP_SKL));
> +	seq_printf(m, "program base: 0x%08x\n",
> +		   intel_de_read(dev_priv, CSR_PROGRAM(0)));
> +	seq_printf(m, "ssp base: 0x%08x\n",
> +		   intel_de_read(dev_priv, CSR_SSP_BASE));
> +	seq_printf(m, "htp: 0x%08x\n", intel_de_read(dev_priv, CSR_HTP_SKL));
>  =

>  	intel_runtime_pm_put(&dev_priv->runtime_pm, wakeref);
>  =

> -- =

> 2.20.1
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
