Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 347F6618894
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Nov 2022 20:18:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47A8710E7DC;
	Thu,  3 Nov 2022 19:18:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F41710E7DC
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Nov 2022 19:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667503102; x=1699039102;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=Igj2dnoLgR82CDWyhmCh7jvtbp4P4ZAHusWuds3ZsUI=;
 b=do5g+0UKcWLInr5wwjJIOX9Xn4FNUzF3addHUK9PURsTqJwssaAHriyG
 tNNObXPLpzmjklV8weNeWx/zOgPVxn3UTjDddax4IdilLFAP9yBOmN2pR
 c9NbP/mHlDQyMDsjMjHdZ2BUyywTmlPydUomtGkw4IuAfWB/4BMq7jBsS
 24V5fzk0Amb7Spt3ZqGSG8/rGiGRJ17V/cAqHLce3uYtkww8Buj86hGzy
 kSVSDRoO42vCFDV3JZj2g5fJ2UiTV0adGKSp0CvX42lGik0iy6961RqkB
 e9TRvPmSNaksTdS3P3UeBzU9nQPtLZoMwdOTnkM2jYmFiPe+JIZGI935H w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10520"; a="308497897"
X-IronPort-AV: E=Sophos;i="5.96,135,1665471600"; d="scan'208";a="308497897"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2022 12:18:19 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10520"; a="703797935"
X-IronPort-AV: E=Sophos;i="5.96,135,1665471600"; d="scan'208";a="703797935"
Received: from mdnavare-mobl1.jf.intel.com ([10.165.21.203])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2022 12:18:18 -0700
Date: Thu, 3 Nov 2022 12:20:00 -0700
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Swati Sharma <swati2.sharma@intel.com>
Message-ID: <20221103192000.GA2883421@mdnavare-mobl1.jf.intel.com>
References: <20221103060222.23054-1-swati2.sharma@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221103060222.23054-1-swati2.sharma@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dsc: Add is_dsc_supported()
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Nov 03, 2022 at 11:32:22AM +0530, Swati Sharma wrote:
> Lets use RUNTIME_INFO->has_dsc since platforms supporting dsc has this
> flag enabled.
> 
> This is done based on the review comments received on
> https://patchwork.freedesktop.org/patch/509393/
> 
> Signed-off-by: Swati Sharma <swati2.sharma@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c   | 6 +++---
>  drivers/gpu/drm/i915/display/intel_vdsc.c | 7 ++++++-
>  drivers/gpu/drm/i915/display/intel_vdsc.h | 2 ++
>  3 files changed, 11 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 7400d6b4c587..eb908da80f2b 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1012,7 +1012,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>  	 * Output bpp is stored in 6.4 format so right shift by 4 to get the
>  	 * integer value since we support only integer values of bpp.
>  	 */
> -	if (DISPLAY_VER(dev_priv) >= 10 &&
> +	if (is_dsc_supported(dev_priv) &&
>  	    drm_dp_sink_supports_dsc(intel_dp->dsc_dpcd)) {
>  		/*
>  		 * TBD pass the connector BPC,
> @@ -2906,7 +2906,7 @@ intel_edp_init_dpcd(struct intel_dp *intel_dp)
>  	intel_dp_set_max_sink_lane_count(intel_dp);
>  
>  	/* Read the eDP DSC DPCD registers */
> -	if (DISPLAY_VER(dev_priv) >= 10)
> +	if (is_dsc_supported(dev_priv))
>  		intel_dp_get_dsc_sink_cap(intel_dp);
>  
>  	/*
> @@ -4691,7 +4691,7 @@ intel_dp_detect(struct drm_connector *connector,
>  	}
>  
>  	/* Read DP Sink DSC Cap DPCD regs for DP v1.4 */
> -	if (DISPLAY_VER(dev_priv) >= 11)
> +	if (is_dsc_supported(dev_priv))
>  		intel_dp_get_dsc_sink_cap(intel_dp);
>  
>  	intel_dp_configure_mst(intel_dp);
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index 269f9792390d..e7c1169538da 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -338,13 +338,18 @@ static const struct rc_parameters *get_rc_params(u16 compressed_bpp,
>  	return &rc_parameters[row_index][column_index];
>  }
>  
> +bool is_dsc_supported(struct drm_i915_private *dev_priv)
> +{
> +	return RUNTIME_INFO(dev_priv)->has_dsc;
> +}
> +
>  bool intel_dsc_source_support(const struct intel_crtc_state *crtc_state)
>  {
>  	const struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>  	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>  
> -	if (!RUNTIME_INFO(i915)->has_dsc)
> +	if (!is_dsc_supported(i915))
>  		return false;
>  
>  	if (DISPLAY_VER(i915) >= 12)

In Runtime info, Gen 12 should have Gen 11 runtime has dsc set, so makes
this check here redundant.

Manasi

> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.h b/drivers/gpu/drm/i915/display/intel_vdsc.h
> index 8763f00fa7e2..049e8b95fdde 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.h
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.h
> @@ -12,7 +12,9 @@ enum transcoder;
>  struct intel_crtc;
>  struct intel_crtc_state;
>  struct intel_encoder;
> +struct drm_i915_private;
>  
> +bool is_dsc_supported(struct drm_i915_private *dev_priv);
>  bool intel_dsc_source_support(const struct intel_crtc_state *crtc_state);
>  void intel_uncompressed_joiner_enable(const struct intel_crtc_state *crtc_state);
>  void intel_dsc_enable(const struct intel_crtc_state *crtc_state);
> -- 
> 2.25.1
> 
