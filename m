Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D156C129BB9
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Dec 2019 00:08:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D88C46E4AD;
	Mon, 23 Dec 2019 23:08:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACE7B6E4AD
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Dec 2019 23:08:24 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Dec 2019 15:08:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,349,1571727600"; d="scan'208";a="417398879"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by fmsmga005.fm.intel.com with ESMTP; 23 Dec 2019 15:08:24 -0800
Date: Mon, 23 Dec 2019 15:08:24 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20191223230824.GO2877816@mdroper-desk1.amr.corp.intel.com>
References: <20191223173244.30742-1-lucas.demarchi@intel.com>
 <20191223173244.30742-7-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191223173244.30742-7-lucas.demarchi@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [PATCH v3 06/10] drm/i915: prefer 3-letter acronym
 for icelake
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

On Mon, Dec 23, 2019 at 09:32:40AM -0800, Lucas De Marchi wrote:
> We are currently using a mix of platform name and acronym to name the
> functions. Let's prefer the acronym as it should be clear what platform
> it's about and it's shorter, so it doesn't go over 80 columns in a few
> cases. This converts icelake to icl where appropriate.
> =

> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> Acked-by: Jani Nikula <jani.nikula@linux.intel.com>
> Acked-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 11 +++++------
>  drivers/gpu/drm/i915/gt/intel_mocs.c         |  6 +++---
>  2 files changed, 8 insertions(+), 9 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 98d6bcb4c761..461691cc2f62 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -10455,9 +10455,8 @@ static void cnl_get_ddi_pll(struct drm_i915_priva=
te *dev_priv, enum port port,
>  	pipe_config->shared_dpll =3D intel_get_shared_dpll_by_id(dev_priv, id);
>  }
>  =

> -static void icelake_get_ddi_pll(struct drm_i915_private *dev_priv,
> -				enum port port,
> -				struct intel_crtc_state *pipe_config)
> +static void icl_get_ddi_pll(struct drm_i915_private *dev_priv, enum port=
 port,
> +			    struct intel_crtc_state *pipe_config)
>  {
>  	enum phy phy =3D intel_port_to_phy(dev_priv, port);
>  	enum icl_port_dpll_id port_dpll_id;
> @@ -10741,7 +10740,7 @@ static void hsw_get_ddi_port_state(struct intel_c=
rtc *crtc,
>  	}
>  =

>  	if (INTEL_GEN(dev_priv) >=3D 11)
> -		icelake_get_ddi_pll(dev_priv, port, pipe_config);
> +		icl_get_ddi_pll(dev_priv, port, pipe_config);
>  	else if (IS_CANNONLAKE(dev_priv))
>  		cnl_get_ddi_pll(dev_priv, port, pipe_config);
>  	else if (IS_GEN9_BC(dev_priv))
> @@ -10792,7 +10791,7 @@ static enum transcoder transcoder_master_readout(=
struct drm_i915_private *dev_pr
>  		return master_select - 1;
>  }
>  =

> -static void icelake_get_trans_port_sync_config(struct intel_crtc_state *=
crtc_state)
> +static void icl_get_trans_port_sync_config(struct intel_crtc_state *crtc=
_state)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc_state->uapi.crtc->de=
v);
>  	u32 transcoders;
> @@ -10948,7 +10947,7 @@ static bool hsw_get_pipe_config(struct intel_crtc=
 *crtc,
>  =

>  	if (INTEL_GEN(dev_priv) >=3D 11 &&
>  	    !transcoder_is_dsi(pipe_config->cpu_transcoder))
> -		icelake_get_trans_port_sync_config(pipe_config);
> +		icl_get_trans_port_sync_config(pipe_config);
>  =

>  out:
>  	for_each_power_domain(power_domain, power_domain_mask)
> diff --git a/drivers/gpu/drm/i915/gt/intel_mocs.c b/drivers/gpu/drm/i915/=
gt/intel_mocs.c
> index cbdeda608359..95f1bc45953b 100644
> --- a/drivers/gpu/drm/i915/gt/intel_mocs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_mocs.c
> @@ -267,7 +267,7 @@ static const struct drm_i915_mocs_entry tigerlake_moc=
s_table[] =3D {
>  		   L3_3_WB),
>  };
>  =

> -static const struct drm_i915_mocs_entry icelake_mocs_table[] =3D {
> +static const struct drm_i915_mocs_entry icl_mocs_table[] =3D {
>  	/* Base - Uncached (Deprecated) */
>  	MOCS_ENTRY(I915_MOCS_UNCACHED,
>  		   LE_1_UC | LE_TC_1_LLC,
> @@ -288,8 +288,8 @@ static bool get_mocs_settings(const struct drm_i915_p=
rivate *i915,
>  		table->table =3D tigerlake_mocs_table;
>  		table->n_entries =3D GEN11_NUM_MOCS_ENTRIES;
>  	} else if (IS_GEN(i915, 11)) {
> -		table->size  =3D ARRAY_SIZE(icelake_mocs_table);
> -		table->table =3D icelake_mocs_table;
> +		table->size  =3D ARRAY_SIZE(icl_mocs_table);
> +		table->table =3D icl_mocs_table;
>  		table->n_entries =3D GEN11_NUM_MOCS_ENTRIES;
>  	} else if (IS_GEN9_BC(i915) || IS_CANNONLAKE(i915)) {
>  		table->size  =3D ARRAY_SIZE(skl_mocs_table);
> -- =

> 2.24.0
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

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
