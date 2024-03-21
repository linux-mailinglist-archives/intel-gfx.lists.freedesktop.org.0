Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 57A1B8856A3
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Mar 2024 10:43:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9593210E4C3;
	Thu, 21 Mar 2024 09:43:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QlRnZ1/z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D86B410E313;
 Thu, 21 Mar 2024 09:43:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711014218; x=1742550218;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=Je2vhRlva+KhL6z+AzSFbzNbjzyNLma6V8AO7vygbrs=;
 b=QlRnZ1/zyl/tXTo3OiaJRYEfvMElcdgY9LlzAs/hww1bphL0cxGTFMAZ
 ufIMEw4b6RvCBenYXRi38tT5wSPI22+0RAArsrlpo0RzgPx4w9dSF5EO0
 Al6RTdVnje3dDKVgJc3OFOayhphCKgnInDNVSt7RZPjI9KPf4b8ALkBqr
 lJZ4DK66pQNHZzf1S/DtE1hQhT3dH26gaw/fPJV8x9rKJ2MSlSmfLlGbk
 mHp3X8kVSn3CtqkCDBpJ72WeFkLedMVOlQD8fwJy/XhVueLVE7s6cHyQb
 AHBht9hA2omYWj89NS9WReqiwIb48YIYFpanPnwth+Eom5yO++tmANkpN A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11019"; a="5877490"
X-IronPort-AV: E=Sophos;i="6.07,142,1708416000"; 
   d="scan'208";a="5877490"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2024 02:43:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,142,1708416000"; d="scan'208";a="45442774"
Received: from amaslenx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.54.141])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2024 02:43:36 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Arun R Murthy <arun.r.murthy@intel.com>
Subject: Re: [PATCH] drm/xe/display: check for error on drmm_mutex_init
In-Reply-To: <20240321060124.4074773-1-arun.r.murthy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240321060124.4074773-1-arun.r.murthy@intel.com>
Date: Thu, 21 Mar 2024 11:43:31 +0200
Message-ID: <87jzlvncn0.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Thu, 21 Mar 2024, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> Check return value for drmm_mutex_init as it can fail and return on
> failure.
>
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  drivers/gpu/drm/xe/display/xe_display.c | 14 ++++++++------
>  1 file changed, 8 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
> index e4db069f0db3..ac2e58d1fa82 100644
> --- a/drivers/gpu/drm/xe/display/xe_display.c
> +++ b/drivers/gpu/drm/xe/display/xe_display.c
> @@ -107,12 +107,14 @@ int xe_display_create(struct xe_device *xe)
>  
>  	xe->display.hotplug.dp_wq = alloc_ordered_workqueue("xe-dp", 0);
>  
> -	drmm_mutex_init(&xe->drm, &xe->sb_lock);
> -	drmm_mutex_init(&xe->drm, &xe->display.backlight.lock);
> -	drmm_mutex_init(&xe->drm, &xe->display.audio.mutex);
> -	drmm_mutex_init(&xe->drm, &xe->display.wm.wm_mutex);
> -	drmm_mutex_init(&xe->drm, &xe->display.pps.mutex);
> -	drmm_mutex_init(&xe->drm, &xe->display.hdcp.hdcp_mutex);
> +	if ((drmm_mutex_init(&xe->drm, &xe->sb_lock)) ||
> +	    (drmm_mutex_init(&xe->drm, &xe->display.backlight.lock)) ||
> +	    (drmm_mutex_init(&xe->drm, &xe->display.audio.mutex)) ||
> +	    (drmm_mutex_init(&xe->drm, &xe->display.wm.wm_mutex)) ||
> +	    (drmm_mutex_init(&xe->drm, &xe->display.pps.mutex)) ||
> +	    (drmm_mutex_init(&xe->drm, &xe->display.hdcp.hdcp_mutex)))

Excessive parentheses.

BR,
Jani.

> +		return -ENOMEM;
> +
>  	xe->enabled_irq_mask = ~0;
>  
>  	err = drmm_add_action_or_reset(&xe->drm, display_destroy, NULL);

-- 
Jani Nikula, Intel
