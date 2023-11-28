Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6D8C7FBA14
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Nov 2023 13:28:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2131010E4FD;
	Tue, 28 Nov 2023 12:28:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CCF1410E4FB
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Nov 2023 12:28:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701174524; x=1732710524;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=tcGcSUu5gSKlifUv1mmDonHWs+9be+5gdwoNacVoWW4=;
 b=Y5ZM8FMK1OGLwa3Iual6MKEP+qaoWICX5/rlOa4uOSJiDx2sVPLMhT96
 pP7mbN3rSqJoXrJWcEmPU5K2TD0L2I7vYXp1nDJdOmhbI04gjHUx28p/e
 XdqI8dw+XpuJkhtoyzoCY9XS9yt8l0/JCbdROfIK8Z69ppH0wg0X+xXiv
 fOhvr32UATCI4mhVQWqwYCLF6xjtUYCLN5+QOKj8POYjSqDkinY2s/T46
 d2LdxelHutI9RSzUPTKMpznYOdBA9xGYqkvGWyw9110KuLf1ZJuVJ+d8y
 A1heBpP9Oz06Lb0LOoiZ3gq2dRF7041L7Dh9XtN7Q7ih6OoDSSUnGYF26 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10907"; a="424065909"
X-IronPort-AV: E=Sophos;i="6.04,233,1695711600"; d="scan'208";a="424065909"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2023 04:28:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10907"; a="834631300"
X-IronPort-AV: E=Sophos;i="6.04,233,1695711600"; d="scan'208";a="834631300"
Received: from mravivx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.42.57])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2023 04:28:43 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20231127145028.4899-4-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231127145028.4899-1-ville.syrjala@linux.intel.com>
 <20231127145028.4899-4-ville.syrjala@linux.intel.com>
Date: Tue, 28 Nov 2023 14:28:40 +0200
Message-ID: <87ttp66ozr.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915: Clean up some DISPLAY_VER
 checks
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 27 Nov 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Use the >=3D and < operators for the DISPLAY_VER checks everywhere.
> This is what most of the code does, but especially recently random
> pieces of code have started doing this differently for no good reason.

I suppose all the < 14 and >=3D 14 could be written as < 20 and >=3D 20, but
functionally should make no difference.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


>
> Conversion done with the following cocci:
> @find@
> expression i915;
> constant ver;
> @@
> (
> DISPLAY_VER(i915) <=3D ver
> |
> DISPLAY_VER(i915) > ver
> )
>
> @script:python inc@
> old_ver << find.ver;
> new_ver;
> @@
> coccinelle.new_ver =3D str(int(old_ver) + 1)
>
> @@
> expression find.i915;
> constant find.ver;
> identifier inc.new_ver;
> @@
> (
> - DISPLAY_VER(i915) <=3D ver
> + DISPLAY_VER(i915) < new_ver
> |
> - DISPLAY_VER(i915) > ver
> + DISPLAY_VER(i915) >=3D new_ver
> )
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/i9xx_wm.c              | 8 ++++----
>  drivers/gpu/drm/i915/display/intel_bw.c             | 7 ++++---
>  drivers/gpu/drm/i915/display/intel_cdclk.c          | 2 +-
>  drivers/gpu/drm/i915/display/intel_display.c        | 8 ++++----
>  drivers/gpu/drm/i915/display/intel_display_device.h | 2 +-
>  drivers/gpu/drm/i915/display/intel_display_irq.c    | 2 +-
>  drivers/gpu/drm/i915/display/intel_dp.c             | 2 +-
>  drivers/gpu/drm/i915/display/intel_dp_mst.c         | 2 +-
>  drivers/gpu/drm/i915/display/intel_lvds.c           | 2 +-
>  drivers/gpu/drm/i915/display/intel_psr.c            | 8 ++++----
>  10 files changed, 22 insertions(+), 21 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i91=
5/display/i9xx_wm.c
> index b37c0d02d500..03e8fb6caa83 100644
> --- a/drivers/gpu/drm/i915/display/i9xx_wm.c
> +++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
> @@ -2477,7 +2477,7 @@ static unsigned int ilk_plane_wm_max(const struct d=
rm_i915_private *dev_priv,
>  		 * FIFO size is only half of the self
>  		 * refresh FIFO size on ILK/SNB.
>  		 */
> -		if (DISPLAY_VER(dev_priv) <=3D 6)
> +		if (DISPLAY_VER(dev_priv) < 7)
>  			fifo_size /=3D 2;
>  	}
>=20=20
> @@ -2818,7 +2818,7 @@ static int ilk_compute_pipe_wm(struct intel_atomic_=
state *state,
>  	usable_level =3D dev_priv->display.wm.num_levels - 1;
>=20=20
>  	/* ILK/SNB: LP2+ watermarks only w/o sprites */
> -	if (DISPLAY_VER(dev_priv) <=3D 6 && pipe_wm->sprites_enabled)
> +	if (DISPLAY_VER(dev_priv) < 7 && pipe_wm->sprites_enabled)
>  		usable_level =3D 1;
>=20=20
>  	/* ILK/SNB/IVB: LP1+ watermarks only w/o scaling */
> @@ -2961,7 +2961,7 @@ static void ilk_wm_merge(struct drm_i915_private *d=
ev_priv,
>  	int last_enabled_level =3D num_levels - 1;
>=20=20
>  	/* ILK/SNB/IVB: LP1+ watermarks only w/ single pipe */
> -	if ((DISPLAY_VER(dev_priv) <=3D 6 || IS_IVYBRIDGE(dev_priv)) &&
> +	if ((DISPLAY_VER(dev_priv) < 7 || IS_IVYBRIDGE(dev_priv)) &&
>  	    config->num_pipes_active > 1)
>  		last_enabled_level =3D 0;
>=20=20
> @@ -3060,7 +3060,7 @@ static void ilk_compute_wm_results(struct drm_i915_=
private *dev_priv,
>  		 * Always set WM_LP_SPRITE_EN when spr_val !=3D 0, even if the
>  		 * level is disabled. Doing otherwise could cause underruns.
>  		 */
> -		if (DISPLAY_VER(dev_priv) <=3D 6 && r->spr_val) {
> +		if (DISPLAY_VER(dev_priv) < 7 && r->spr_val) {
>  			drm_WARN_ON(&dev_priv->drm, wm_lp !=3D 1);
>  			results->wm_lp_spr[wm_lp - 1] |=3D WM_LP_SPRITE_ENABLE;
>  		}
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i9=
15/display/intel_bw.c
> index bef96db62c80..7f2a50b4f494 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -87,7 +87,8 @@ static int icl_pcode_read_qgv_point_info(struct drm_i91=
5_private *dev_priv,
>  		return ret;
>=20=20
>  	dclk =3D val & 0xffff;
> -	sp->dclk =3D DIV_ROUND_UP((16667 * dclk) + (DISPLAY_VER(dev_priv) > 11 =
? 500 : 0), 1000);
> +	sp->dclk =3D DIV_ROUND_UP((16667 * dclk) + (DISPLAY_VER(dev_priv) >=3D =
12 ? 500 : 0),
> +				1000);
>  	sp->t_rp =3D (val & 0xff0000) >> 16;
>  	sp->t_rcd =3D (val & 0xff000000) >> 24;
>=20=20
> @@ -480,7 +481,7 @@ static int tgl_get_bw_info(struct drm_i915_private *d=
ev_priv, const struct intel
>  	if (num_channels < qi.max_numchannels && DISPLAY_VER(dev_priv) >=3D 12)
>  		qi.deinterleave =3D max(DIV_ROUND_UP(qi.deinterleave, 2), 1);
>=20=20
> -	if (DISPLAY_VER(dev_priv) > 11 && num_channels > qi.max_numchannels)
> +	if (DISPLAY_VER(dev_priv) >=3D 12 && num_channels > qi.max_numchannels)
>  		drm_warn(&dev_priv->drm, "Number of channels exceeds max number of cha=
nnels.");
>  	if (qi.max_numchannels !=3D 0)
>  		num_channels =3D min_t(u8, num_channels, qi.max_numchannels);
> @@ -897,7 +898,7 @@ static int icl_find_qgv_points(struct drm_i915_privat=
e *i915,
>  		unsigned int idx;
>  		unsigned int max_data_rate;
>=20=20
> -		if (DISPLAY_VER(i915) > 11)
> +		if (DISPLAY_VER(i915) >=3D 12)
>  			idx =3D tgl_max_bw_index(i915, num_active_planes, i);
>  		else
>  			idx =3D icl_max_bw_index(i915, num_active_planes, i);
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm=
/i915/display/intel_cdclk.c
> index b93d1ad7936d..8bb6bab7c8cd 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -2597,7 +2597,7 @@ static int intel_vdsc_min_cdclk(const struct intel_=
crtc_state *crtc_state)
>  		 * Since PPC =3D 2 with bigjoiner
>  		 * =3D> CDCLK >=3D compressed_bpp * Pixel clock  / 2 * Bigjoiner Inter=
face bits
>  		 */
> -		int bigjoiner_interface_bits =3D DISPLAY_VER(i915) > 13 ? 36 : 24;
> +		int bigjoiner_interface_bits =3D DISPLAY_VER(i915) >=3D 14 ? 36 : 24;
>  		int min_cdclk_bj =3D
>  			(to_bpp_int_roundup(crtc_state->dsc.compressed_bpp_x16) *
>  			 pixel_clock) / (2 * bigjoiner_interface_bits);
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 23b077f43614..9dc22fc8b3d3 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2627,7 +2627,7 @@ static void intel_set_transcoder_timings(const stru=
ct intel_crtc_state *crtc_sta
>  		crtc_vblank_start =3D 1;
>  	}
>=20=20
> -	if (DISPLAY_VER(dev_priv) > 3)
> +	if (DISPLAY_VER(dev_priv) >=3D 4)
>  		intel_de_write(dev_priv, TRANS_VSYNCSHIFT(cpu_transcoder),
>  			       vsyncshift);
>=20=20
> @@ -3167,7 +3167,7 @@ static void bdw_set_pipe_misc(const struct intel_cr=
tc_state *crtc_state)
>  		break;
>  	case 36:
>  		/* Port output 12BPC defined for ADLP+ */
> -		if (DISPLAY_VER(dev_priv) > 12)
> +		if (DISPLAY_VER(dev_priv) >=3D 13)
>  			val |=3D PIPE_MISC_BPC_12_ADLP;
>  		break;
>  	default:
> @@ -3224,7 +3224,7 @@ int bdw_get_pipe_misc_bpp(struct intel_crtc *crtc)
>  	 * MIPI DSI HW readout.
>  	 */
>  	case PIPE_MISC_BPC_12_ADLP:
> -		if (DISPLAY_VER(dev_priv) > 12)
> +		if (DISPLAY_VER(dev_priv) >=3D 13)
>  			return 36;
>  		fallthrough;
>  	default:
> @@ -7763,7 +7763,7 @@ enum drm_mode_status intel_cpu_transcoder_mode_vali=
d(struct drm_i915_private *de
>  	 * Cantiga+ cannot handle modes with a hsync front porch of 0.
>  	 * WaPruneModeWithIncorrectHsyncOffset:ctg,elk,ilk,snb,ivb,vlv,hsw.
>  	 */
> -	if ((DISPLAY_VER(dev_priv) > 4 || IS_G4X(dev_priv)) &&
> +	if ((DISPLAY_VER(dev_priv) >=3D 5 || IS_G4X(dev_priv)) &&
>  	    mode->hsync_start =3D=3D mode->hdisplay)
>  		return MODE_H_ILLEGAL;
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/driver=
s/gpu/drm/i915/display/intel_display_device.h
> index 4299cc452e05..79e9f1c3e241 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -49,7 +49,7 @@ struct drm_printer;
>  #define HAS_DSC(__i915)			(DISPLAY_RUNTIME_INFO(__i915)->has_dsc)
>  #define HAS_FBC(i915)			(DISPLAY_RUNTIME_INFO(i915)->fbc_mask !=3D 0)
>  #define HAS_FPGA_DBG_UNCLAIMED(i915)	(DISPLAY_INFO(i915)->has_fpga_dbg)
> -#define HAS_FW_BLC(i915)		(DISPLAY_VER(i915) > 2)
> +#define HAS_FW_BLC(i915)		(DISPLAY_VER(i915) >=3D 3)
>  #define HAS_GMBUS_IRQ(i915)		(DISPLAY_VER(i915) >=3D 4)
>  #define HAS_GMBUS_BURST_READ(i915)	(DISPLAY_VER(i915) >=3D 10 || IS_KABY=
LAKE(i915))
>  #define HAS_GMCH(i915)			(DISPLAY_INFO(i915)->has_gmch)
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/g=
pu/drm/i915/display/intel_display_irq.c
> index bff4a76310c0..5a3e10e73e59 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> @@ -1653,7 +1653,7 @@ void gen8_de_irq_postinstall(struct drm_i915_privat=
e *dev_priv)
>  	else if (HAS_PCH_SPLIT(dev_priv))
>  		ibx_irq_postinstall(dev_priv);
>=20=20
> -	if (DISPLAY_VER(dev_priv) <=3D 10)
> +	if (DISPLAY_VER(dev_priv) < 11)
>  		de_misc_masked |=3D GEN8_DE_MISC_GSE;
>=20=20
>  	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 147f49bd12f6..3b2482bf683f 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1890,7 +1890,7 @@ static int dsc_src_max_compressed_bpp(struct intel_=
dp *intel_dp)
>  	 * Max Compressed bpp for Gen 13+ is 27bpp.
>  	 * For earlier platform is 23bpp. (Bspec:49259).
>  	 */
> -	if (DISPLAY_VER(i915) <=3D 12)
> +	if (DISPLAY_VER(i915) < 13)
>  		return 23;
>  	else
>  		return 27;
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/dr=
m/i915/display/intel_dp_mst.c
> index b665fe6ef871..e8940acea8ad 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -54,7 +54,7 @@ static int intel_dp_mst_check_constraints(struct drm_i9=
15_private *i915, int bpp
>  					  struct intel_crtc_state *crtc_state,
>  					  bool dsc)
>  {
> -	if (intel_dp_is_uhbr(crtc_state) && DISPLAY_VER(i915) <=3D 13 && dsc) {
> +	if (intel_dp_is_uhbr(crtc_state) && DISPLAY_VER(i915) < 14 && dsc) {
>  		int output_bpp =3D bpp;
>  		/* DisplayPort 2 128b/132b, bits per lane is always 32 */
>  		int symbol_clock =3D crtc_state->port_clock / 32;
> diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/=
i915/display/intel_lvds.c
> index 958b6fd0d741..221f5c6c871b 100644
> --- a/drivers/gpu/drm/i915/display/intel_lvds.c
> +++ b/drivers/gpu/drm/i915/display/intel_lvds.c
> @@ -185,7 +185,7 @@ static void intel_lvds_pps_get_hw_state(struct drm_i9=
15_private *dev_priv,
>  	/* Convert from 100ms to 100us units */
>  	pps->t4 =3D val * 1000;
>=20=20
> -	if (DISPLAY_VER(dev_priv) <=3D 4 &&
> +	if (DISPLAY_VER(dev_priv) < 5 &&
>  	    pps->t1_t2 =3D=3D 0 && pps->t5 =3D=3D 0 && pps->t3 =3D=3D 0 && pps-=
>tx =3D=3D 0) {
>  		drm_dbg_kms(&dev_priv->drm,
>  			    "Panel power timings uninitialized, "
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i=
915/display/intel_psr.c
> index 36e4a1e9b98f..6029bb71276c 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -806,10 +806,10 @@ static void hsw_activate_psr2(struct intel_dp *inte=
l_dp)
>=20=20
>  	val |=3D EDP_PSR2_IDLE_FRAMES(psr_compute_idle_frames(intel_dp));
>=20=20
> -	if (DISPLAY_VER(dev_priv) <=3D 13 && !IS_ALDERLAKE_P(dev_priv))
> +	if (DISPLAY_VER(dev_priv) < 14 && !IS_ALDERLAKE_P(dev_priv))
>  		val |=3D EDP_SU_TRACK_ENABLE;
>=20=20
> -	if (DISPLAY_VER(dev_priv) >=3D 10 && DISPLAY_VER(dev_priv) <=3D 12)
> +	if (DISPLAY_VER(dev_priv) >=3D 10 && DISPLAY_VER(dev_priv) < 13)
>  		val |=3D EDP_Y_COORDINATE_ENABLE;
>=20=20
>  	val |=3D EDP_PSR2_FRAME_BEFORE_SU(frames_before_su_entry(intel_dp));
> @@ -1094,7 +1094,7 @@ static bool _compute_psr2_sdp_prior_scanline_indica=
tion(struct intel_dp *intel_d
>  		return true;
>=20=20
>  	/* Not supported <13 / Wa_22012279113:adl-p */
> -	if (DISPLAY_VER(dev_priv) <=3D 13 || intel_dp->edp_dpcd[0] < DP_EDP_14b)
> +	if (DISPLAY_VER(dev_priv) < 14 || intel_dp->edp_dpcd[0] < DP_EDP_14b)
>  		return false;
>=20=20
>  	crtc_state->req_psr2_sdp_prior_scanline =3D true;
> @@ -1221,7 +1221,7 @@ static bool intel_psr2_config_valid(struct intel_dp=
 *intel_dp,
>  	 * over PSR2.
>  	 */
>  	if (crtc_state->dsc.compression_enable &&
> -	    (DISPLAY_VER(dev_priv) <=3D 13 && !IS_ALDERLAKE_P(dev_priv))) {
> +	    (DISPLAY_VER(dev_priv) < 14 && !IS_ALDERLAKE_P(dev_priv))) {
>  		drm_dbg_kms(&dev_priv->drm,
>  			    "PSR2 cannot be enabled since DSC is enabled\n");
>  		return false;

--=20
Jani Nikula, Intel
