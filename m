Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 70650B96516
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Sep 2025 16:39:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0D6E10E63A;
	Tue, 23 Sep 2025 14:39:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jbWfG6tP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0734410E634;
 Tue, 23 Sep 2025 14:39:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758638346; x=1790174346;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=UAU0X1QyDnnSwNJ3dgBbyp282psPjImmK08hCiJRmVg=;
 b=jbWfG6tPJwV2uymQvNxzoSrASzPh2rP2qZb8s2oyCHBcA+7/R5WY8dPC
 BZKKu6EGNojgu8wnb424U5XJWN66dSwAOf48e7n9CQ+EnZZt36NooxD0s
 efHLR9mWplI5NoFJh2jgEbgHeNbLKU34DnJgI4hwxnkv9lPaf5tdHZHMh
 JfMFlIf69JkWesMHit6G5lo1e9eP9Jvhpy1SPPN7GloaLaKaTnY7O8U0V
 1SI/E/1mZSdsjmXEgJjbZ7N7GgfQkwL9CU7j1CVc0anDPS5UiTrJuBAvZ
 EBU3zQNf0fCszAMja2I6E8MkIoDHlQ3sAX7JkFyEyTYylh2RHBDH8glEX Q==;
X-CSE-ConnectionGUID: VKNNd6b+T2qS2Yq2lzrs5Q==
X-CSE-MsgGUID: asGXJhn2Qsey2I3Qt8Geaw==
X-IronPort-AV: E=McAfee;i="6800,10657,11561"; a="86359505"
X-IronPort-AV: E=Sophos;i="6.18,288,1751266800"; d="scan'208";a="86359505"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 07:39:05 -0700
X-CSE-ConnectionGUID: 5PU+8+sWSXWjNSouAq5pIw==
X-CSE-MsgGUID: 40UKZRD3SfWcqkx7arS/xQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,288,1751266800"; d="scan'208";a="181164063"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.13])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 07:39:03 -0700
Date: Tue, 23 Sep 2025 17:39:01 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 1/5] drm/i915/irq: drop intel_psr_regs.h include
Message-ID: <aNKxBQs5WiHkAzNN@intel.com>
References: <cover.1758637773.git.jani.nikula@intel.com>
 <29752bb1942fc2ceceb5140bb49f67e44e1b0676.1758637773.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <29752bb1942fc2ceceb5140bb49f67e44e1b0676.1758637773.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

On Tue, Sep 23, 2025 at 05:31:04PM +0300, Jani Nikula wrote:
> i915_irq.c no longer needs display/intel_psr_regs.h. Drop it.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

My compiler said it's ok. I trust it, most of the time.

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/i915_irq.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
> index 7c7c6dcbce88..56f231591a3e 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -38,7 +38,6 @@
>  #include "display/intel_hotplug.h"
>  #include "display/intel_hotplug_irq.h"
>  #include "display/intel_lpe_audio.h"
> -#include "display/intel_psr_regs.h"
>  
>  #include "gt/intel_breadcrumbs.h"
>  #include "gt/intel_gt.h"
> -- 
> 2.47.3

-- 
Ville Syrjälä
Intel
