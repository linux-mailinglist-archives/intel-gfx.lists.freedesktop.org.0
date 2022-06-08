Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DC315428D5
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jun 2022 10:04:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CAB4610E765;
	Wed,  8 Jun 2022 08:04:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8042910EF76
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jun 2022 08:04:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654675463; x=1686211463;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=yO1sJ4oXM+Z/RsAmhxdOjVWfsc2IlPmFDjF8ub7yrUM=;
 b=CXDD8N7V7ODFMd97SV6f1TNJLD29QHODrIsXPQ+lwKL19MPrCDt3SELm
 Kd3EwndzKcUvoYci5gPUOFpm0akScCV8C/s1oRdCKpWZiGNssAYzUKhQl
 tt9Pz77hHO3RczkvcH7r6Sj6Ccccw3/Y/+OWGcwFQ2su9n7CCSrLd8WEh
 0VqYPt9NdG6EXwSV2pKij8KBOTkOin5bB0jkT2mzrSfQegJ/PByRiG8OF
 v8wQDB2zj1/7Zj+1p2AV+f7UBQtm2z9DSkHFG11TWt4hsNqd+m3fiXJsY
 xPhc6pKCY5PqNiTVDAAZPar0fjzoeT4Wd8D2r+JvCtfuIYChPRQVjQumN A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10371"; a="275575605"
X-IronPort-AV: E=Sophos;i="5.91,285,1647327600"; d="scan'208";a="275575605"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2022 01:04:23 -0700
X-IronPort-AV: E=Sophos;i="5.91,285,1647327600"; d="scan'208";a="907535178"
Received: from jking17-mobl.ger.corp.intel.com (HELO [10.213.193.156])
 ([10.213.193.156])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2022 01:04:22 -0700
Message-ID: <d2ae121b-e50e-6665-1500-2ef870ea98ac@linux.intel.com>
Date: Wed, 8 Jun 2022 09:04:20 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
References: <20220516081015.1058987-1-jani.nikula@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20220516081015.1058987-1-jani.nikula@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/overlay: remove redundant
 GEM_BUG_ON()
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


On 16/05/2022 09:10, Jani Nikula wrote:
> There's an early return for !engine->kernel_context.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_overlay.c | 2 --
>   1 file changed, 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/drm/i915/display/intel_overlay.c
> index ee46561b5ae8..79ed8bd04a07 100644
> --- a/drivers/gpu/drm/i915/display/intel_overlay.c
> +++ b/drivers/gpu/drm/i915/display/intel_overlay.c
> @@ -1399,8 +1399,6 @@ void intel_overlay_setup(struct drm_i915_private *dev_priv)
>   
>   	overlay->i915 = dev_priv;
>   	overlay->context = engine->kernel_context;
> -	GEM_BUG_ON(!overlay->context);
> -
>   	overlay->color_key = 0x0101fe;
>   	overlay->color_key_enabled = true;
>   	overlay->brightness = -19;

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
