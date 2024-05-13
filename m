Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D26D88C4077
	for <lists+intel-gfx@lfdr.de>; Mon, 13 May 2024 14:10:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D358C10E731;
	Mon, 13 May 2024 12:10:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cTwmBHmC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A06EB10E730;
 Mon, 13 May 2024 12:10:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715602235; x=1747138235;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=Lioopf77e3Dk97gbfHhACPzFioA0I12pqZKH9jSzFGg=;
 b=cTwmBHmCFgHz7VcBXZ0CIPKh3eiBnLP5xW1N07T9jEViAxd5/9U94o91
 1O21osgRQThgNFexcVAgRNwFp8qVI059RfVIC+ypN6eoFUH8zfsrUA8Gz
 V0JMUXseUMfaU+OTwNlTQg/rV7aHuxlT/98phbw950TouzS0miPbE4tLc
 5DdOWyQrwO9F+8An/J0uYZP2ts/7yCyOGpi6mkAEtQawLeTHupKf1fIUn
 Eitlx+mdOp2Ry3E968ZRDHu6Wx7JA3tfbEu44efH1B4gddcFtRPbvwuQE
 XAe/4+/hCbWKqvnnPAMgrNhcEdZ9k4NOkO/HSm89gc5bPug2r5w/av4/d w==;
X-CSE-ConnectionGUID: niQOvrjvQFepP0Tm5JUp4A==
X-CSE-MsgGUID: AZg7XbODRk+cEenjnZPwYg==
X-IronPort-AV: E=McAfee;i="6600,9927,11071"; a="22108689"
X-IronPort-AV: E=Sophos;i="6.08,158,1712646000"; d="scan'208";a="22108689"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2024 05:10:35 -0700
X-CSE-ConnectionGUID: hmhmAYxNSayBWMPBBM/hhw==
X-CSE-MsgGUID: 7hkzcXfTTnC1MruIKPh1CA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,158,1712646000"; d="scan'208";a="61499592"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.7])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2024 05:10:32 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, Lucas
 De Marchi <lucas.demarchi@intel.com>
Subject: Re: [PATCH 1/2] drm/xe/display: remove unused xe->enabled_irq_mask
In-Reply-To: <20240510094313.3422982-1-jani.nikula@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240510094313.3422982-1-jani.nikula@intel.com>
Date: Mon, 13 May 2024 15:10:29 +0300
Message-ID: <87y18dewui.fsf@intel.com>
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

On Fri, 10 May 2024, Jani Nikula <jani.nikula@intel.com> wrote:
> The xe->enabled_irq_mask member has never been used for anything.
>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Lucas, ack for merging these two via drm-intel-next? Even though these
touch struct xe_device, I presume any further cleanups touching the
surrounding context would have a bigger footprint in drm-intel-next.

BR,
Jani.

> ---
>  drivers/gpu/drm/xe/display/xe_display.c | 1 -
>  drivers/gpu/drm/xe/xe_device_types.h    | 2 --
>  2 files changed, 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
> index 0de0566e5b39..fbe2c2eddea9 100644
> --- a/drivers/gpu/drm/xe/display/xe_display.c
> +++ b/drivers/gpu/drm/xe/display/xe_display.c
> @@ -97,7 +97,6 @@ int xe_display_create(struct xe_device *xe)
>  	xe->display.hotplug.dp_wq = alloc_ordered_workqueue("xe-dp", 0);
>  
>  	drmm_mutex_init(&xe->drm, &xe->sb_lock);
> -	xe->enabled_irq_mask = ~0;
>  
>  	return drmm_add_action_or_reset(&xe->drm, display_destroy, NULL);
>  }
> diff --git a/drivers/gpu/drm/xe/xe_device_types.h b/drivers/gpu/drm/xe/xe_device_types.h
> index 906b98fb973b..b78223e3baab 100644
> --- a/drivers/gpu/drm/xe/xe_device_types.h
> +++ b/drivers/gpu/drm/xe/xe_device_types.h
> @@ -517,8 +517,6 @@ struct xe_device {
>  	/* only to allow build, not used functionally */
>  	u32 irq_mask;
>  
> -	u32 enabled_irq_mask;
> -
>  	struct intel_uncore {
>  		spinlock_t lock;
>  	} uncore;

-- 
Jani Nikula, Intel
