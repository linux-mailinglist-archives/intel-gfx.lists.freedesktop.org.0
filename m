Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BFE4B53BB68
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jun 2022 17:12:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1889C112D02;
	Thu,  2 Jun 2022 15:12:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A218A112D35
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jun 2022 15:12:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654182729; x=1685718729;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=UQ7eivHvBaoJMO5WIZ8i8sEacyUJ9uSxgRUnr6JI36E=;
 b=aSkv1eOwXLAiWn29WvtKIBpenhJHv4UhkPznOML8BBweAcGmj79gMdyq
 XDYbbSguh8369G1L8tAVHO0DOFoQke+g521Y+egmZW4d8tTnTkxirSycP
 OwySKyyx4ONtN9fZVeb6/puaYqaUb+gDIPw66D3vnyEI3IUY01wu5+tuy
 ecICtCu4ao+GTpK2YDf/c/JSLZBFUo2YTEHqZUgepKf0q2oBDf7FomcPG
 J5QcJZQfpCoKvA0UxRcu4snsa5jecBGCOUTSxFh4vxEZI1kMgjApRvGwd
 pXJMMiAFv1dtAcaXfGB5G4Bxyv6b/Tb30DT/XMjkd/+PfklwuouVCyejk w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10366"; a="274781173"
X-IronPort-AV: E=Sophos;i="5.91,271,1647327600"; d="scan'208";a="274781173"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2022 08:12:08 -0700
X-IronPort-AV: E=Sophos;i="5.91,271,1647327600"; d="scan'208";a="606887141"
Received: from fbackhou-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.46.4])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2022 08:12:05 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Animesh Manna <animesh.manna@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20220602141850.21301-3-animesh.manna@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220602141850.21301-1-animesh.manna@intel.com>
 <20220602141850.21301-3-animesh.manna@intel.com>
Date: Thu, 02 Jun 2022 18:12:03 +0300
Message-ID: <87czfrp0ak.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [RFC PATCH 2/5] drm/i915/display: Use panel index
 to parse panel timing for dual EDP
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

On Thu, 02 Jun 2022, Animesh Manna <animesh.manna@intel.com> wrote:
> There will be separate entry for eack LFP in VBT. Panel index is
> used for deriving panel timing info of the respective panel.

This is completely unnecessary once you handle panel_type properly as
explained in reply to the previous patch.

BR,
Jani.


>
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bios.c | 26 ++++++++++++-----------
>  1 file changed, 14 insertions(+), 12 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> index 78eaf6255599..943c5584f242 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -793,16 +793,16 @@ static void
>  parse_lfp_panel_dtd(struct drm_i915_private *i915,
>  		    struct intel_panel *panel,
>  		    const struct bdb_lvds_lfp_data *lvds_lfp_data,
> -		    const struct bdb_lvds_lfp_data_ptrs *lvds_lfp_data_ptrs)
> +		    const struct bdb_lvds_lfp_data_ptrs *lvds_lfp_data_ptrs,
> +		    int panel_index)
>  {
>  	const struct lvds_dvo_timing *panel_dvo_timing;
>  	const struct lvds_fp_timing *fp_timing;
>  	struct drm_display_mode *panel_fixed_mode;
> -	int panel_type = panel->vbt.panel_type;
>  
>  	panel_dvo_timing = get_lvds_dvo_timing(lvds_lfp_data,
>  					       lvds_lfp_data_ptrs,
> -					       panel_type);
> +					       panel_index);
>  
>  	panel_fixed_mode = kzalloc(sizeof(*panel_fixed_mode), GFP_KERNEL);
>  	if (!panel_fixed_mode)
> @@ -818,7 +818,7 @@ parse_lfp_panel_dtd(struct drm_i915_private *i915,
>  
>  	fp_timing = get_lvds_fp_timing(lvds_lfp_data,
>  				       lvds_lfp_data_ptrs,
> -				       panel_type);
> +				       panel_index);
>  
>  	/* check the resolution, just to be sure */
>  	if (fp_timing->x_res == panel_fixed_mode->hdisplay &&
> @@ -832,7 +832,8 @@ parse_lfp_panel_dtd(struct drm_i915_private *i915,
>  
>  static void
>  parse_lfp_data(struct drm_i915_private *i915,
> -	       struct intel_panel *panel)
> +	       struct intel_panel *panel,
> +	       int panel_index)
>  {
>  	const struct bdb_lvds_lfp_data *data;
>  	const struct bdb_lvds_lfp_data_tail *tail;
> @@ -848,7 +849,7 @@ parse_lfp_data(struct drm_i915_private *i915,
>  		return;
>  
>  	if (!panel->vbt.lfp_lvds_vbt_mode)
> -		parse_lfp_panel_dtd(i915, panel, data, ptrs);
> +		parse_lfp_panel_dtd(i915, panel, data, ptrs, panel_index);
>  
>  	tail = get_lfp_data_tail(data, ptrs);
>  	if (!tail)
> @@ -865,7 +866,8 @@ parse_lfp_data(struct drm_i915_private *i915,
>  
>  static void
>  parse_generic_dtd(struct drm_i915_private *i915,
> -		  struct intel_panel *panel)
> +		  struct intel_panel *panel,
> +		  int panel_index)
>  {
>  	const struct bdb_generic_dtd *generic_dtd;
>  	const struct generic_dtd_entry *dtd;
> @@ -900,14 +902,14 @@ parse_generic_dtd(struct drm_i915_private *i915,
>  
>  	num_dtd = (get_blocksize(generic_dtd) -
>  		   sizeof(struct bdb_generic_dtd)) / generic_dtd->gdtd_size;
> -	if (panel->vbt.panel_type >= num_dtd) {
> +	if (panel_index >= num_dtd) {
>  		drm_err(&i915->drm,
>  			"Panel type %d not found in table of %d DTD's\n",
> -			panel->vbt.panel_type, num_dtd);
> +			panel_index, num_dtd);
>  		return;
>  	}
>  
> -	dtd = &generic_dtd->dtd[panel->vbt.panel_type];
> +	dtd = &generic_dtd->dtd[panel_index];
>  
>  	panel_fixed_mode = kzalloc(sizeof(*panel_fixed_mode), GFP_KERNEL);
>  	if (!panel_fixed_mode)
> @@ -3113,8 +3115,8 @@ void intel_bios_init_panel(struct drm_i915_private *i915,
>  	panel_index = get_lfp_panel_index(i915, lfp_inst);
>  
>  	parse_panel_options(i915, panel, edid, panel_index);
> -	parse_generic_dtd(i915, panel);
> -	parse_lfp_data(i915, panel);
> +	parse_generic_dtd(i915, panel, panel_index);
> +	parse_lfp_data(i915, panel, panel_index);
>  	parse_lfp_backlight(i915, panel);
>  	parse_sdvo_panel_data(i915, panel);
>  	parse_panel_driver_features(i915, panel);

-- 
Jani Nikula, Intel Open Source Graphics Center
