Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C59F365EA24
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Jan 2023 12:47:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F033E10E6F2;
	Thu,  5 Jan 2023 11:47:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 010DC10E6F2
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Jan 2023 11:47:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672919247; x=1704455247;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=PlmflABjiZ9670He6HMq/PwRczOiOe/etpbnz9xV6Fk=;
 b=c174pvS058fu0G2uJb8zsnoccwLMTMyo3hjCQa4pt6k5WygVa7eVE84l
 13F+IG+wntxkHKklWw+eUcibtBOubjpCOYu5d3hJDqPaeVw8Awr8bLwTb
 XXAhDej3l1cdl4EMAPCp2Mvh+3eCvPEFtMs5Oe6936cEAPxbhqk01a+h3
 UrbHow7buRjMVCiQmgQpufRiHC/QK9QzlLenbk/D6l1enaDJJXnz6Khhm
 mSh40qTumTCnZLmF32SnDhmr3mv/G0oQgedNR3vr5JvfmmyEynCIx7tmI
 a4VY9y/zmu3GLCFTMWejL0jvRs9u/7JMJxaSEmCsXR+7y2AxWyvjAQeQU A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10580"; a="305684912"
X-IronPort-AV: E=Sophos;i="5.96,302,1665471600"; d="scan'208";a="305684912"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2023 03:47:26 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10580"; a="724042108"
X-IronPort-AV: E=Sophos;i="5.96,302,1665471600"; d="scan'208";a="724042108"
Received: from swathish-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.10.152])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2023 03:47:24 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20221017143038.1748319-2-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221017143038.1748319-1-ankit.k.nautiyal@intel.com>
 <20221017143038.1748319-2-ankit.k.nautiyal@intel.com>
Date: Thu, 05 Jan 2023 13:47:21 +0200
Message-ID: <87h6x5w6d2.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/display: Drop check for
 doublescan mode in modevalid
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

On Mon, 17 Oct 2022, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
> Since the DP/HDMI connector do not set connector->doublescan_allowed,
> the doublescan modes will get automatically filtered during
> drm_helper_probe_single_connector_modes().
>
> Therefore check for double scan modes is not required and is dropped
> from modevalid functions for both DP and HDMI.
>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c   | 3 ---
>  drivers/gpu/drm/i915/display/intel_hdmi.c | 3 ---
>  2 files changed, 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index a060903891b2..1f83ddf13928 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -973,9 +973,6 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>  	enum drm_mode_status status;
>  	bool dsc = false, bigjoiner = false;
>  
> -	if (mode->flags & DRM_MODE_FLAG_DBLSCAN)
> -		return MODE_NO_DBLESCAN;
> -
>  	if (mode->flags & DRM_MODE_FLAG_DBLCLK)
>  		return MODE_H_ILLEGAL;
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index 93519fb23d9d..e21deb6ef7fa 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -1987,9 +1987,6 @@ intel_hdmi_mode_valid(struct drm_connector *connector,
>  	bool has_hdmi_sink = intel_has_hdmi_sink(hdmi, connector->state);
>  	bool ycbcr_420_only;
>  
> -	if (mode->flags & DRM_MODE_FLAG_DBLSCAN)
> -		return MODE_NO_DBLESCAN;
> -
>  	if ((mode->flags & DRM_MODE_FLAG_3D_MASK) == DRM_MODE_FLAG_3D_FRAME_PACKING)
>  		clock *= 2;

-- 
Jani Nikula, Intel Open Source Graphics Center
