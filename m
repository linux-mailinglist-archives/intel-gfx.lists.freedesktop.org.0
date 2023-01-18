Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 16EA4671DB6
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Jan 2023 14:27:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77CFB10E750;
	Wed, 18 Jan 2023 13:27:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29F8110E750
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Jan 2023 13:27:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674048471; x=1705584471;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=vxMWcl1qtdX+GERFv4fFHpuNyq8HcAZ3t5XPGJsQ/8Q=;
 b=g96HC7vs1Mvg8nYxT+kOPHKm1QKCeLmzUQZ95skYy/jPWFRy7TXxY19Z
 MNW5tLYgDfnaPoklOPn3kNrM3c19I17soXBN13cUaM1qKMsqyJQI0r061
 Nw7iCZMPTMAJNXev849Sb4QjqJvdk3Dxm5dU0HJcNZSjh/zPkQske7mrm
 PH4SjHVc2TR09y+1viWFnq5Qq5V9M5ueUX09Su7+p76+Nmp5+DM3II+Ob
 XhZuo19SHb1UJ8eRtjJAchfGAIw1lFijhCUKYySndLW3vZZimpv68swRh
 pE3JMtKaH4vLawQ7mQSZMhCNDtg9UkxxapBxy26mfthMLDID/YAtl9MAw w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10593"; a="308540401"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="308540401"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 05:27:50 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10593"; a="728198367"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="728198367"
Received: from llvincen-mobl.ger.corp.intel.com (HELO [10.213.215.37])
 ([10.213.215.37])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 05:27:49 -0800
Message-ID: <e58cdf3d-f214-e4f4-216f-93b06b5016c2@linux.intel.com>
Date: Wed, 18 Jan 2023 13:27:47 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
References: <20230118131538.3558599-1-jani.nikula@intel.com>
 <20230118131538.3558599-2-jani.nikula@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20230118131538.3558599-2-jani.nikula@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 2/7] drm/i915: move
 I915_IDLE_ENGINES_TIMEOUT next to its only user
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


On 18/01/2023 13:15, Jani Nikula wrote:
> Declutter i915_drv.h. If there's ever a need to use this in more than
> one place, we can figure out a better spot then. For now, this seems
> easiest.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_debugfs.c | 3 +++
>   drivers/gpu/drm/i915/i915_drv.h     | 2 --
>   2 files changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
> index a356ca490159..51ba9a8369c5 100644
> --- a/drivers/gpu/drm/i915/i915_debugfs.c
> +++ b/drivers/gpu/drm/i915/i915_debugfs.c
> @@ -648,6 +648,9 @@ i915_drop_caches_get(void *data, u64 *val)
>   
>   	return 0;
>   }
> +
> +#define I915_IDLE_ENGINES_TIMEOUT (200) /* in ms */
> +
>   static int
>   gt_drop_caches(struct intel_gt *gt, u64 val)
>   {
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 8377173e8de5..343e3e568774 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -194,8 +194,6 @@ struct i915_gem_mm {
>   	u32 shrink_count;
>   };
>   
> -#define I915_IDLE_ENGINES_TIMEOUT (200) /* in ms */
> -
>   #define HAS_HW_SAGV_WM(i915) (DISPLAY_VER(i915) >= 13 && !IS_DGFX(i915))
>   
>   struct i915_virtual_gpu {

Acked-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
