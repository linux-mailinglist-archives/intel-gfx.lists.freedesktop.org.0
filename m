Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B0F4C9588AA
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Aug 2024 16:11:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94A2A10E3D6;
	Tue, 20 Aug 2024 14:11:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QCXiF6aJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 51BFD10E3D6;
 Tue, 20 Aug 2024 14:11:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724163064; x=1755699064;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=KAttQPWRPOjeafHdni97khaXBK26S/shSNwmn8GiIwI=;
 b=QCXiF6aJ+Rlw01FD/v4zgnBBShPTasoshGW4MHv/rV6pJGNQHxoEN6Da
 hgMCumOJWDxc5RUE/d/kkZUYqSjMlnj9LGeB2Msueu+3PqnnvlyzpOaN4
 P7wZTlrhkLBw93pqF70+BBe3k6DrSJMn+ktmjhzYJuRyiUSuS6tTh8AyB
 MwuTVM4qwuVWtUGkbcboGrcHlFbGxlVzTzZnaQfj7rsWqJ/1q6uh10CJQ
 IHMu4tqWlw3rnR5Dnji+UNar93m38T3bVrW2HWCfeyf0zmqdfPjr926Tc
 ATG37EcgfflvyXqRXVhlMAr6R6fwgZO6Yi5IZIIesraMaY2kp7N8b5uc/ Q==;
X-CSE-ConnectionGUID: mN4wZQwvRaGZiUlAFRoWNA==
X-CSE-MsgGUID: sEr2ceyyR3yYeD5U4nXQ+Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11170"; a="22321181"
X-IronPort-AV: E=Sophos;i="6.10,162,1719903600"; d="scan'208";a="22321181"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2024 07:11:03 -0700
X-CSE-ConnectionGUID: xr+4mkOJTcuhd+DqEWDlCQ==
X-CSE-MsgGUID: u0EMEPU0QTCTClES/GfHfw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,162,1719903600"; d="scan'208";a="98212982"
Received: from apaszkie-mobl2.apaszkie-mobl2 (HELO [10.245.245.128])
 ([10.245.245.128])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2024 07:11:02 -0700
Message-ID: <8a84e375-a015-4da3-aa4c-7aff4c7b6f1d@linux.intel.com>
Date: Tue, 20 Aug 2024 16:11:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] drm/xe/display: drop unused rawclk_freq and
 RUNTIME_INFO()
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com
References: <cover.1724144570.git.jani.nikula@intel.com>
 <9f09274bddc14f555c0102f37af6df23b4433102.1724144570.git.jani.nikula@intel.com>
Content-Language: en-US
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
In-Reply-To: <9f09274bddc14f555c0102f37af6df23b4433102.1724144570.git.jani.nikula@intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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

Excellent, for both patches:

Reviewed-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>

Den 2024-08-20 kl. 11:07, skrev Jani Nikula:
> With rawclk_freq moved to display runtime info, xe has no users left for
> them.
> 
> Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h | 1 -
>  drivers/gpu/drm/xe/xe_device_types.h              | 6 ------
>  2 files changed, 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
> index 2feedddf1e40..182c38905626 100644
> --- a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
> +++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
> @@ -116,7 +116,6 @@ struct i915_sched_attr {
>  #define i915_gem_fence_wait_priority(fence, attr) do { (void) attr; } while (0)
>  
>  #define pdev_to_i915 pdev_to_xe_device
> -#define RUNTIME_INFO(xe)		(&(xe)->info.i915_runtime)
>  
>  #define FORCEWAKE_ALL XE_FORCEWAKE_ALL
>  
> diff --git a/drivers/gpu/drm/xe/xe_device_types.h b/drivers/gpu/drm/xe/xe_device_types.h
> index cb60bc5ec21b..5ed6f5434f42 100644
> --- a/drivers/gpu/drm/xe/xe_device_types.h
> +++ b/drivers/gpu/drm/xe/xe_device_types.h
> @@ -305,12 +305,6 @@ struct xe_device {
>  		u8 has_atomic_enable_pte_bit:1;
>  		/** @info.has_device_atomics_on_smem: Supports device atomics on SMEM */
>  		u8 has_device_atomics_on_smem:1;
> -
> -#if IS_ENABLED(CONFIG_DRM_XE_DISPLAY)
> -		struct {
> -			u32 rawclk_freq;
> -		} i915_runtime;
> -#endif
>  	} info;
>  
>  	/** @irq: device interrupt state */
