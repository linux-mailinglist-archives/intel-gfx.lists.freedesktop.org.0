Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 33F076DDDE2
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Apr 2023 16:28:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF5D910E56E;
	Tue, 11 Apr 2023 14:28:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90FB910E56E
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Apr 2023 14:28:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681223283; x=1712759283;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=W5b1g8PVffEv5VRtmGWOIbBm2kOck/cAMhhAU6HAjkI=;
 b=MTonnfvpFvGewbvsigmlY2XxYXSMqYr3Wg5l/JhDcW+ddiY8BXLYhXii
 rLFfJlJH5lVJTnKEOFXqdBrM0EJiMv+qMkh5NCyJWeRW/7Wq+1Y2Ukd0e
 /yAwhHb/b5sYoC6xxF0AuG4r8U5W+HQrG7/QJqeabDlXvkWXodzfmqENZ
 6pbMmc+kBEza2TcTAislewDG49FvhikG89AWU1bZEuCP8J1kyYE4Xu7O7
 wg1lm7B8I7VdBmpojNQv553A87dtWHH3cPLDUyjckeQ0nMDwYbt/PsbNs
 uCe+H8cNd9ud2fPt6ugALG+njAI7kzWqNQpLO95QAqp6GZH2N9elT3ewl Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10677"; a="332312696"
X-IronPort-AV: E=Sophos;i="5.98,336,1673942400"; d="scan'208";a="332312696"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2023 07:28:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10677"; a="721208397"
X-IronPort-AV: E=Sophos;i="5.98,336,1673942400"; d="scan'208";a="721208397"
Received: from mabonoux-mobl.amr.corp.intel.com (HELO [10.251.212.81])
 ([10.251.212.81])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2023 07:27:59 -0700
Message-ID: <9d5122a1-7877-2bbb-5195-7f9f0fe2b78c@linux.intel.com>
Date: Tue, 11 Apr 2023 16:27:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
References: <20230411131922.401602-1-jani.nikula@intel.com>
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
In-Reply-To: <20230411131922.401602-1-jani.nikula@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: remove unnecessary
 i915_debugfs.h includes
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


On 4/11/2023 3:19 PM, Jani Nikula wrote:
> Leftovers from before display debugfs was separated to its own file.
>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_dp.c   | 1 -
>   drivers/gpu/drm/i915/display/intel_hdmi.c | 1 -
>   2 files changed, 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index f0bace9d98a1..48d43f7f0c58 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -44,7 +44,6 @@
>   #include <drm/drm_probe_helper.h>
>   
>   #include "g4x_dp.h"
> -#include "i915_debugfs.h"
>   #include "i915_drv.h"
>   #include "i915_reg.h"
>   #include "intel_atomic.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index a690a5616506..4fd944520826 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -40,7 +40,6 @@
>   #include <drm/drm_edid.h>
>   #include <drm/intel_lpe_audio.h>
>   
> -#include "i915_debugfs.h"
>   #include "i915_drv.h"
>   #include "i915_reg.h"
>   #include "intel_atomic.h"
