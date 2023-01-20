Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B7A2675D08
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Jan 2023 19:49:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3D8710EAF6;
	Fri, 20 Jan 2023 18:48:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBA0210EAF5;
 Fri, 20 Jan 2023 18:48:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674240535; x=1705776535;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=6tf3d3vpYfXpUld9RmpthfSjTaCaBsnSQAB/VilpVdA=;
 b=E0l2l3G23Lx/t+KDyzgFdHWSGimvAnwjzwW+EgyZcaTfSB8eHA8CB1oh
 QWyCIpvtY7wpWgBJRib5RHgq57d3z0bQflhSIKyxGi/o5JFDBkHjkxMfO
 UfOxnZema1FGD6v3bZnRyLUWXSt0ScA05lj7FkMZg4DcTZfEVcp7OH8uu
 OUNT8FnBrNtfeZH8lKvMlDHBGg0wQh9DoicSFpFCxVpn+FMtAyNZymczr
 83w2yXBZVvpZUcQX12i4UcxBNjdvFvvsV/AmDwAiFUd+hTrauCAsSK6No
 tQDZFEu454x6L/dvXi/9+FjceTYQkpAd7gIt1Fnm/zMtFhKJS67g9SAxl Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10596"; a="352915409"
X-IronPort-AV: E=Sophos;i="5.97,233,1669104000"; d="scan'208";a="352915409"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2023 10:48:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10596"; a="724050043"
X-IronPort-AV: E=Sophos;i="5.97,233,1669104000"; d="scan'208";a="724050043"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by fmsmga008.fm.intel.com with SMTP; 20 Jan 2023 10:48:53 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 20 Jan 2023 20:48:52 +0200
Date: Fri, 20 Jan 2023 20:48:52 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <Y8riFG2xEX5wzTRd@intel.com>
References: <cover.1674144945.git.jani.nikula@intel.com>
 <dd0c819b12b8ec2a0ed8bb7ef4cb840bd4980bdf.1674144945.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <dd0c819b12b8ec2a0ed8bb7ef4cb840bd4980bdf.1674144945.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v8 6/8] drm/i915/bios: convert
 intel_bios_init_panel() to drm_edid
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jan 19, 2023 at 06:18:59PM +0200, Jani Nikula wrote:
> Try to use struct drm_edid where possible, even if having to fall back
> to looking into struct edid down low via drm_edid_raw().
> 
> v2: Rebase
> 
> Cc: Ville Syrj�l� <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrj�l� <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_bios.c | 23 ++++++++++++-----------
>  drivers/gpu/drm/i915/display/intel_bios.h |  4 ++--
>  drivers/gpu/drm/i915/display/intel_dp.c   |  2 +-
>  drivers/gpu/drm/i915/display/intel_lvds.c |  2 +-
>  4 files changed, 16 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> index 78abe34c7a42..e6ca51232dcf 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -619,14 +619,14 @@ static void dump_pnp_id(struct drm_i915_private *i915,
>  
>  static int opregion_get_panel_type(struct drm_i915_private *i915,
>  				   const struct intel_bios_encoder_data *devdata,
> -				   const struct edid *edid, bool use_fallback)
> +				   const struct drm_edid *drm_edid, bool use_fallback)
>  {
>  	return intel_opregion_get_panel_type(i915);
>  }
>  
>  static int vbt_get_panel_type(struct drm_i915_private *i915,
>  			      const struct intel_bios_encoder_data *devdata,
> -			      const struct edid *edid, bool use_fallback)
> +			      const struct drm_edid *drm_edid, bool use_fallback)
>  {
>  	const struct bdb_lvds_options *lvds_options;
>  
> @@ -651,12 +651,13 @@ static int vbt_get_panel_type(struct drm_i915_private *i915,
>  
>  static int pnpid_get_panel_type(struct drm_i915_private *i915,
>  				const struct intel_bios_encoder_data *devdata,
> -				const struct edid *edid, bool use_fallback)
> +				const struct drm_edid *drm_edid, bool use_fallback)
>  {
>  	const struct bdb_lvds_lfp_data *data;
>  	const struct bdb_lvds_lfp_data_ptrs *ptrs;
>  	const struct lvds_pnp_id *edid_id;
>  	struct lvds_pnp_id edid_id_nodate;
> +	const struct edid *edid = drm_edid_raw(drm_edid); /* FIXME */
>  	int i, best = -1;
>  
>  	if (!edid)
> @@ -700,7 +701,7 @@ static int pnpid_get_panel_type(struct drm_i915_private *i915,
>  
>  static int fallback_get_panel_type(struct drm_i915_private *i915,
>  				   const struct intel_bios_encoder_data *devdata,
> -				   const struct edid *edid, bool use_fallback)
> +				   const struct drm_edid *drm_edid, bool use_fallback)
>  {
>  	return use_fallback ? 0 : -1;
>  }
> @@ -714,13 +715,13 @@ enum panel_type {
>  
>  static int get_panel_type(struct drm_i915_private *i915,
>  			  const struct intel_bios_encoder_data *devdata,
> -			  const struct edid *edid, bool use_fallback)
> +			  const struct drm_edid *drm_edid, bool use_fallback)
>  {
>  	struct {
>  		const char *name;
>  		int (*get_panel_type)(struct drm_i915_private *i915,
>  				      const struct intel_bios_encoder_data *devdata,
> -				      const struct edid *edid, bool use_fallback);
> +				      const struct drm_edid *drm_edid, bool use_fallback);
>  		int panel_type;
>  	} panel_types[] = {
>  		[PANEL_TYPE_OPREGION] = {
> @@ -744,7 +745,7 @@ static int get_panel_type(struct drm_i915_private *i915,
>  
>  	for (i = 0; i < ARRAY_SIZE(panel_types); i++) {
>  		panel_types[i].panel_type = panel_types[i].get_panel_type(i915, devdata,
> -									  edid, use_fallback);
> +									  drm_edid, use_fallback);
>  
>  		drm_WARN_ON(&i915->drm, panel_types[i].panel_type > 0xf &&
>  			    panel_types[i].panel_type != 0xff);
> @@ -3186,7 +3187,7 @@ void intel_bios_init(struct drm_i915_private *i915)
>  static void intel_bios_init_panel(struct drm_i915_private *i915,
>  				  struct intel_panel *panel,
>  				  const struct intel_bios_encoder_data *devdata,
> -				  const struct edid *edid,
> +				  const struct drm_edid *drm_edid,
>  				  bool use_fallback)
>  {
>  	/* already have it? */
> @@ -3196,7 +3197,7 @@ static void intel_bios_init_panel(struct drm_i915_private *i915,
>  	}
>  
>  	panel->vbt.panel_type = get_panel_type(i915, devdata,
> -					       edid, use_fallback);
> +					       drm_edid, use_fallback);
>  	if (panel->vbt.panel_type < 0) {
>  		drm_WARN_ON(&i915->drm, use_fallback);
>  		return;
> @@ -3227,9 +3228,9 @@ void intel_bios_init_panel_early(struct drm_i915_private *i915,
>  void intel_bios_init_panel_late(struct drm_i915_private *i915,
>  				struct intel_panel *panel,
>  				const struct intel_bios_encoder_data *devdata,
> -				const struct edid *edid)
> +				const struct drm_edid *drm_edid)
>  {
> -	intel_bios_init_panel(i915, panel, devdata, edid, true);
> +	intel_bios_init_panel(i915, panel, devdata, drm_edid, true);
>  }
>  
>  /**
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/i915/display/intel_bios.h
> index ff1fdd2e0c1c..d221f784aa88 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.h
> +++ b/drivers/gpu/drm/i915/display/intel_bios.h
> @@ -32,8 +32,8 @@
>  
>  #include <linux/types.h>
>  
> +struct drm_edid;
>  struct drm_i915_private;
> -struct edid;
>  struct intel_bios_encoder_data;
>  struct intel_crtc_state;
>  struct intel_encoder;
> @@ -238,7 +238,7 @@ void intel_bios_init_panel_early(struct drm_i915_private *dev_priv,
>  void intel_bios_init_panel_late(struct drm_i915_private *dev_priv,
>  				struct intel_panel *panel,
>  				const struct intel_bios_encoder_data *devdata,
> -				const struct edid *edid);
> +				const struct drm_edid *drm_edid);
>  void intel_bios_fini_panel(struct intel_panel *panel);
>  void intel_bios_driver_remove(struct drm_i915_private *dev_priv);
>  bool intel_bios_is_valid_vbt(const void *buf, size_t size);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index cd7fae1b7543..4cc7c04b9bda 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -5322,7 +5322,7 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
>  	intel_connector->edid = drm_edid;
>  
>  	intel_bios_init_panel_late(dev_priv, &intel_connector->panel, encoder->devdata,
> -				   IS_ERR_OR_NULL(drm_edid) ? NULL : drm_edid_raw(drm_edid));
> +				   IS_ERR(drm_edid) ? NULL : drm_edid);
>  
>  	intel_panel_add_edid_fixed_modes(intel_connector, true);
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
> index 6a98787edf48..9f6910bba2e9 100644
> --- a/drivers/gpu/drm/i915/display/intel_lvds.c
> +++ b/drivers/gpu/drm/i915/display/intel_lvds.c
> @@ -977,7 +977,7 @@ void intel_lvds_init(struct drm_i915_private *dev_priv)
>  	intel_connector->edid = drm_edid;
>  
>  	intel_bios_init_panel_late(dev_priv, &intel_connector->panel, NULL,
> -				   IS_ERR_OR_NULL(drm_edid) ? NULL : drm_edid_raw(drm_edid));
> +				   IS_ERR(drm_edid) ? NULL : drm_edid);
>  
>  	/* Try EDID first */
>  	intel_panel_add_edid_fixed_modes(intel_connector, true);
> -- 
> 2.34.1

-- 
Ville Syrj�l�
Intel
