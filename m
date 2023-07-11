Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A49974F449
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jul 2023 18:04:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9040D10E3D8;
	Tue, 11 Jul 2023 16:04:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 026CA10E3D8
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jul 2023 16:04:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689091452; x=1720627452;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=2u2YqHE8hKK3d0SVL4WdUGibIzGfPGH82eJmfbicYT4=;
 b=UOHPydiIPi5VdcSp/KS3Yz2Xi63RfpDC3qeEete3uZkLOD2FZPpWSB1e
 MSuhAOY+L1/VhSVBQxQ4qAyPI4bUQfEf3AJNdO3EKSJQLn7WE7wlzeUZK
 JgQAlR2OaPTASvNzUujqcKccSV3Wxo94rObfXDtTmKZcir0ZmffCGDJbU
 cG3ckXfzwuaqVH7wVSMJMwUcs9r5HR9VXnJvDbGZJtsZ3ZF3amG085TIL
 qepyXaZCk8cfj6rIL5Jg1ZyqPTmoNpl21n2HHdgJcVdYunIlh75NQZSYU
 Z3kQa645GvwSbyNhUGJBaxDf5zie9w9XCCfoOFfeyV7GdsytZvZT9arNN w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10768"; a="428356590"
X-IronPort-AV: E=Sophos;i="6.01,196,1684825200"; d="scan'208";a="428356590"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2023 09:03:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10768"; a="791255122"
X-IronPort-AV: E=Sophos;i="6.01,196,1684825200"; d="scan'208";a="791255122"
Received: from sneaga-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.252.52.179])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2023 09:03:53 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Vidya Srinivas <vidya.srinivas@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20230711002529.9742-1-vidya.srinivas@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230711002529.9742-1-vidya.srinivas@intel.com>
Date: Tue, 11 Jul 2023 19:03:50 +0300
Message-ID: <87o7kih1uh.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Allow panel drrs modes to have
 differing sync polarities
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

On Tue, 11 Jul 2023, Vidya Srinivas <vidya.srinivas@intel.com> wrote:
> v2: Add Jani Nikula's change for quirk for sync polarity

This was a quick hack suggestion to try. If it works, I think it works
by concidence, because a fastset won't update the sync flags in
TRANS_DDI_FUNC_CTL register. Did not check whether they can even be
updated while the transcoder is enabled.

> CC: Jani Nikula <jani.nikula@intel.com>
> Credits-to: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>

It would be useful to have a bug report at fdo gitlab with the EDID
attached.

BR,
Jani.


> ---
>  drivers/gpu/drm/i915/display/intel_display.c |  2 +-
>  drivers/gpu/drm/i915/display/intel_panel.c   | 10 ++++++----
>  2 files changed, 7 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 43cba98f7753..088b45e032aa 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -5234,7 +5234,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>  	PIPE_CONF_CHECK_FLAGS(hw.adjusted_mode.flags,
>  			      DRM_MODE_FLAG_INTERLACE);
>  
> -	if (!PIPE_CONF_QUIRK(PIPE_CONFIG_QUIRK_MODE_SYNC_FLAGS)) {
> +	if (!PIPE_CONF_QUIRK(PIPE_CONFIG_QUIRK_MODE_SYNC_FLAGS) && !fastset) {
>  		PIPE_CONF_CHECK_FLAGS(hw.adjusted_mode.flags,
>  				      DRM_MODE_FLAG_PHSYNC);
>  		PIPE_CONF_CHECK_FLAGS(hw.adjusted_mode.flags,
> diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
> index 9232a305b1e6..b9eeaedabd22 100644
> --- a/drivers/gpu/drm/i915/display/intel_panel.c
> +++ b/drivers/gpu/drm/i915/display/intel_panel.c
> @@ -112,10 +112,12 @@ intel_panel_fixed_mode(struct intel_connector *connector,
>  static bool is_alt_drrs_mode(const struct drm_display_mode *mode,
>  			     const struct drm_display_mode *preferred_mode)
>  {
> -	return drm_mode_match(mode, preferred_mode,
> -			      DRM_MODE_MATCH_TIMINGS |
> -			      DRM_MODE_MATCH_FLAGS |
> -			      DRM_MODE_MATCH_3D_FLAGS) &&
> +	u32 sync_flags = DRM_MODE_FLAG_PHSYNC | DRM_MODE_FLAG_NHSYNC |
> +		DRM_MODE_FLAG_PVSYNC | DRM_MODE_FLAG_NVSYNC;
> +
> +	return (mode->flags & ~sync_flags) == (preferred_mode->flags & ~sync_flags) &&
> +		mode->hdisplay == preferred_mode->hdisplay &&
> +		mode->vdisplay == preferred_mode->vdisplay &&
>  		mode->clock != preferred_mode->clock;
>  }

-- 
Jani Nikula, Intel Open Source Graphics Center
