Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BF2FE4B6FFA
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Feb 2022 16:55:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE27010E50C;
	Tue, 15 Feb 2022 15:55:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15B6F10E4C0
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Feb 2022 15:55:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644940510; x=1676476510;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=G9awELaZH1SRs2WP2H3VfB9kJIuzStlFPK6KZH4NE6U=;
 b=QRMEGnkUmNHHw5h3b2l5YO4h820ANRVVlzI53amUFGr28ChByztKr1Bq
 DWgsDTkGt0jial5g/rw/ZokKbcjLxNuLSUaMcsBiyduDx6EweHZiOSJSW
 ioH/kjnnXqEedIPqwOPuHQ6j5uMKaPdbBLBUep/I0GLm96rQ/qQ+kMgG1
 39VXn0rb4O2Dv7iHLtzloCKRnIhaK6McQgJLhjZ/fwdFEIUdFDQ3FKHg4
 bwFtrMPTNF6KHx5PixfSKnvW7m1sTwBpY0BaE3AwY+Dbz/JTmp0Z1B6gD
 wMiapjiois5R+dqP16AuCHvEHlNwiND+4hvxciUuFzCmQgU+i/luMkC2V A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10258"; a="250581942"
X-IronPort-AV: E=Sophos;i="5.88,371,1635231600"; d="scan'208";a="250581942"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2022 07:55:09 -0800
X-IronPort-AV: E=Sophos;i="5.88,371,1635231600"; d="scan'208";a="624869372"
Received: from jkoratik-mobl2.amr.corp.intel.com (HELO [10.212.80.80])
 ([10.212.80.80])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2022 07:55:08 -0800
Message-ID: <98517720-4542-b6ff-88fa-582eedc80c3f@linux.intel.com>
Date: Tue, 15 Feb 2022 15:55:07 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
References: <20220214173810.2108975-1-jani.nikula@intel.com>
 <20220214173810.2108975-2-jani.nikula@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20220214173810.2108975-2-jani.nikula@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/lrc: replace include with
 forward declarations
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



On 14/02/2022 17:38, Jani Nikula wrote:
> Prefer forward declarations over includes if possible.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko

> ---
>   drivers/gpu/drm/i915/gt/intel_lrc.c | 2 ++
>   drivers/gpu/drm/i915/gt/intel_lrc.h | 5 +++--
>   2 files changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index 5b107b698b65..004e1216e654 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -8,6 +8,8 @@
>   #include "gen8_engine_cs.h"
>   #include "i915_drv.h"
>   #include "i915_perf.h"
> +#include "i915_reg.h"
> +#include "intel_context.h"
>   #include "intel_engine.h"
>   #include "intel_engine_regs.h"
>   #include "intel_gpu_commands.h"
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.h b/drivers/gpu/drm/i915/gt/intel_lrc.h
> index 2af85a15a370..0b76f096b559 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.h
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.h
> @@ -8,11 +8,12 @@
>   
>   #include <linux/types.h>
>   
> -#include "intel_context.h"
> -
>   struct drm_i915_gem_object;
> +struct i915_gem_ww_ctx;
> +struct intel_context;
>   struct intel_engine_cs;
>   struct intel_ring;
> +struct kref;
>   
>   /* At the start of the context image is its per-process HWS page */
>   #define LRC_PPHWSP_PN	(0)
