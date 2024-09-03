Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 06308969E5A
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Sep 2024 14:51:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92AAE10E589;
	Tue,  3 Sep 2024 12:51:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iLAVdBpg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDE7010E589
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Sep 2024 12:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725367914; x=1756903914;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=R6lWVDTKdQnbMlfCFrkRx9LqvrcUVcHGrCFDllcACTU=;
 b=iLAVdBpgu+/7mKjMegInK72ydQ1t5fegStZhOMOtELfBQqrfX5k4YaBM
 DD14UHc0y0YzTqd5HdIET/ny7DTXuC0mMhydwh0LCWyLJQdkilce/gZiU
 ZGpKF69/f1WiG5zGP1NgG53PkLqzUtAbDNwYQLF0zIGK2EetMW3gQY/gU
 ia4VH2FKurgCSrEykKl4FfcaocblLDRwoQDQWxyMBpPbrZMxCqMQ7tzCe
 bC/icKEJ6CbRKYyvLT/IV1sjC6c1lAcK4UdWgI3FKy6DcOef0zVzI1ocE
 cI4hPM6Etb+8WvsEe9ai9sbrtu8OQ0KmGf0KIPMt9AFFSw09NbKBUEjhy A==;
X-CSE-ConnectionGUID: SdOzRETzQz+obHt2d8IL0Q==
X-CSE-MsgGUID: D22rPcNpQPeMgjY66pfccw==
X-IronPort-AV: E=McAfee;i="6700,10204,11183"; a="24080981"
X-IronPort-AV: E=Sophos;i="6.10,198,1719903600"; d="scan'208";a="24080981"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2024 05:51:54 -0700
X-CSE-ConnectionGUID: jBqAQyFzTey2eZcuE0OBkw==
X-CSE-MsgGUID: OqMbTsXbRROZQbY2ZKXK8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,198,1719903600"; d="scan'208";a="64920702"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 03 Sep 2024 05:51:51 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 03 Sep 2024 15:51:50 +0300
Date: Tue, 3 Sep 2024 15:51:50 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, jani.nikula@linux.intel.com,
 mitulkumar.ajitkumar.golani@intel.com
Subject: Re: [PATCH 03/13] drm/i915/display: Add member fixed_rr to denote
 Fixed refresh rate with VRRTG
Message-ID: <ZtcGZvU82Faddfrc@intel.com>
References: <20240902080635.2946858-1-ankit.k.nautiyal@intel.com>
 <20240902080635.2946858-4-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240902080635.2946858-4-ankit.k.nautiyal@intel.com>
X-Patchwork-Hint: comment
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

On Mon, Sep 02, 2024 at 01:36:24PM +0530, Ankit Nautiyal wrote:
> Add fixed_rr member to struct vrr to represent the case where a
> fixed refresh rate with VRR timing generator is required.
> 
> v2: Move get_config change where vrr.fixed is actually set. (Mitul)
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c       | 4 +++-
>  drivers/gpu/drm/i915/display/intel_display_types.h | 2 +-
>  2 files changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 78ce402a5cd0..8b437e79c8df 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -1005,7 +1005,8 @@ static bool vrr_params_changed(const struct intel_crtc_state *old_crtc_state,
>  		old_crtc_state->vrr.vmin != new_crtc_state->vrr.vmin ||
>  		old_crtc_state->vrr.vmax != new_crtc_state->vrr.vmax ||
>  		old_crtc_state->vrr.guardband != new_crtc_state->vrr.guardband ||
> -		old_crtc_state->vrr.pipeline_full != new_crtc_state->vrr.pipeline_full;
> +		old_crtc_state->vrr.pipeline_full != new_crtc_state->vrr.pipeline_full ||
> +		old_crtc_state->vrr.fixed_rr != new_crtc_state->vrr.fixed_rr;

I have a feeling we shouldn't need this. We could just check for
vmin==vmax instead.

>  }
>  
>  static bool cmrr_params_changed(const struct intel_crtc_state *old_crtc_state,
> @@ -5480,6 +5481,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>  
>  	if (!fastset) {
>  		PIPE_CONF_CHECK_BOOL(vrr.enable);
> +		PIPE_CONF_CHECK_BOOL(vrr.fixed_rr);
>  		PIPE_CONF_CHECK_I(vrr.vmin);
>  		PIPE_CONF_CHECK_I(vrr.vmax);
>  		PIPE_CONF_CHECK_I(vrr.flipline);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 868ff8976ed9..62a796f61d20 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1407,7 +1407,7 @@ struct intel_crtc_state {
>  
>  	/* Variable Refresh Rate state */
>  	struct {
> -		bool enable, in_range;
> +		bool enable, in_range, fixed_rr;
>  		u8 pipeline_full;
>  		u16 flipline, vmin, vmax, guardband;
>  		u32 vsync_end, vsync_start;
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
