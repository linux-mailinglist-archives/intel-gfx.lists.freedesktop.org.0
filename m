Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D9193051E5
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Jan 2021 06:22:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9379A89B55;
	Wed, 27 Jan 2021 05:22:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C73FB89B55
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Jan 2021 05:22:09 +0000 (UTC)
IronPort-SDR: xDuiUdN76bjk1POxh6kp24BvrNLfp2qhaItOXY/v8p5ViDji2Ig8qfOLLQVigpT0ekz9/CuC57
 +m8NSJM2C2rg==
X-IronPort-AV: E=McAfee;i="6000,8403,9876"; a="241547775"
X-IronPort-AV: E=Sophos;i="5.79,378,1602572400"; d="scan'208";a="241547775"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2021 21:22:09 -0800
IronPort-SDR: S2F6bBC0HXnKnYIAMKee/8oIITSeajV4JDACnWlzRAG7UNZIVeQsKVIYrXtybFN81aSAy8C0Wf
 Y/tAuK8Gq2EQ==
X-IronPort-AV: E=Sophos;i="5.79,378,1602572400"; d="scan'208";a="393961101"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.168])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2021 21:22:08 -0800
Date: Tue, 26 Jan 2021 21:22:07 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Aditya Swarup <aditya.swarup@intel.com>
Message-ID: <20210127052207.GL787460@mdroper-desk1.amr.corp.intel.com>
References: <20210127041159.136409-1-aditya.swarup@intel.com>
 <20210127041159.136409-9-aditya.swarup@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210127041159.136409-9-aditya.swarup@intel.com>
Subject: Re: [Intel-gfx] [PATCH 8/9] drm/i915/adl_s: Add display WAs for
 ADL-S
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jan 26, 2021 at 08:11:58PM -0800, Aditya Swarup wrote:
> - Extend permanent driver WA Wa_1409767108, Wa_14010685332
>   and Wa_14011294188 to adl-s.
> - Extend permanent driver WA Wa_1606054188 to adl-s.
> - Add Wa_14011765242 for adl-s A0 stepping.
> =

> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Cc: Imre Deak <imre.deak@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Signed-off-by: Aditya Swarup <aditya.swarup@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_power.c | 7 ++++---
>  drivers/gpu/drm/i915/display/intel_sprite.c        | 4 ++--
>  drivers/gpu/drm/i915/intel_device_info.c           | 6 +++++-
>  3 files changed, 11 insertions(+), 6 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers=
/gpu/drm/i915/display/intel_display_power.c
> index cccfd45a67cf..e17b1ca356c3 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -5339,9 +5339,10 @@ static void tgl_bw_buddy_init(struct drm_i915_priv=
ate *dev_priv)
>  	unsigned long abox_mask =3D INTEL_INFO(dev_priv)->abox_mask;
>  	int config, i;
>  =

> -	if (IS_DG1_REVID(dev_priv, DG1_REVID_A0, DG1_REVID_A0) ||
> +	if (IS_ALDERLAKE_S(dev_priv) ||
> +	    IS_DG1_REVID(dev_priv, DG1_REVID_A0, DG1_REVID_A0) ||
>  	    IS_TGL_DISP_STEPPING(dev_priv, STEP_A0, STEP_B0))
> -		/* Wa_1409767108:tgl,dg1 */
> +		/* Wa_1409767108:tgl,dg1,adl-s */
>  		table =3D wa_1409767108_buddy_page_masks;
>  	else
>  		table =3D tgl_buddy_page_masks;
> @@ -5379,7 +5380,7 @@ static void icl_display_core_init(struct drm_i915_p=
rivate *dev_priv,
>  =

>  	gen9_set_dc_state(dev_priv, DC_STATE_DISABLE);
>  =

> -	/* Wa_14011294188:ehl,jsl,tgl,rkl */
> +	/* Wa_14011294188:ehl,jsl,tgl,rkl,adl-s */
>  	if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_JSP &&
>  	    INTEL_PCH_TYPE(dev_priv) < PCH_DG1)
>  		intel_de_rmw(dev_priv, SOUTH_DSPCLK_GATE_D, 0,
> diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/dr=
m/i915/display/intel_sprite.c
> index 68cea5ca251c..a7077babd31c 100644
> --- a/drivers/gpu/drm/i915/display/intel_sprite.c
> +++ b/drivers/gpu/drm/i915/display/intel_sprite.c
> @@ -2418,8 +2418,8 @@ static int skl_plane_check_fb(const struct intel_cr=
tc_state *crtc_state,
>  		return -EINVAL;
>  	}
>  =

> -	/* Wa_1606054188:tgl */
> -	if (IS_TIGERLAKE(dev_priv) &&
> +	/* Wa_1606054188:tgl,adl-s */
> +	if ((IS_ALDERLAKE_S(dev_priv) || IS_TIGERLAKE(dev_priv)) &&
>  	    plane_state->ckey.flags & I915_SET_COLORKEY_SOURCE &&
>  	    intel_format_is_p01x(fb->format->format)) {
>  		drm_dbg_kms(&dev_priv->drm,
> diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i=
915/intel_device_info.c
> index 85d6883745d8..92ad3e7d1f6f 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.c
> +++ b/drivers/gpu/drm/i915/intel_device_info.c
> @@ -250,7 +250,11 @@ void intel_device_info_runtime_init(struct drm_i915_=
private *dev_priv)
>  	struct intel_runtime_info *runtime =3D RUNTIME_INFO(dev_priv);
>  	enum pipe pipe;
>  =

> -	if (INTEL_GEN(dev_priv) >=3D 10) {
> +	/* Wa_14011765242: adl-s A0 */
> +	if (IS_ADLS_DISP_STEPPING(dev_priv, STEP_A0, STEP_A0))

I think this workaround is also needed on A1 stepping now and should
only be removed on A2.


Matt

> +		for_each_pipe(dev_priv, pipe)
> +			runtime->num_scalers[pipe] =3D 0;
> +	else if (INTEL_GEN(dev_priv) >=3D 10) {
>  		for_each_pipe(dev_priv, pipe)
>  			runtime->num_scalers[pipe] =3D 2;
>  	} else if (IS_GEN(dev_priv, 9)) {
> -- =

> 2.27.0
> =


-- =

Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
