Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 26E0551130C
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Apr 2022 09:55:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B0D210E3EE;
	Wed, 27 Apr 2022 07:55:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F65110E3EE
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Apr 2022 07:55:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651046145; x=1682582145;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=CcldY0YTYe/e8tZCB2KVtg8tRwwJsycvmbgP+/+/fyI=;
 b=DuFqEYJ0hn4iGWowKgnpdftZdn9Z8xQEx1tKAJOyuji2FzrZ3M+7ZmBV
 ey58wUsEKubffQceArxbud49kEuSdOJTY7RWC7Hit4F8C9ws9igilFzxX
 dissej6ZxzKhr4MfhDy+elhcy6tXOTKc0nsNCVycqjNzexUy0e8a8woo2
 yBQNRLN6ritvqITAUJQXQJwvRtqy3iiM8WpAadeTSAc/eNa2kvECMFX0b
 pPdp6pgZoZLXIrlNayd7c4PF503ajQIkw8hO2hIzHSsLN/vGpbH/mQldY
 B0rwc97WJ69r1ibp81dFyQoq+FUYiZF8zup7kYBDogc93wSbSp5UvBDn6 w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10329"; a="265377862"
X-IronPort-AV: E=Sophos;i="5.90,292,1643702400"; d="scan'208";a="265377862"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2022 00:55:35 -0700
X-IronPort-AV: E=Sophos;i="5.90,292,1643702400"; d="scan'208";a="580452135"
Received: from jmwalsh-mobl.amr.corp.intel.com (HELO [10.213.205.227])
 ([10.213.205.227])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2022 00:55:34 -0700
Message-ID: <94d18f04-d16a-02d0-4eee-5fd916895b57@linux.intel.com>
Date: Wed, 27 Apr 2022 08:55:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20220427003515.3944267-1-umesh.nerlige.ramappa@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20220427003515.3944267-1-umesh.nerlige.ramappa@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/pmu: Use existing uncore helper to
 read gpm_timestamp
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


On 27/04/2022 01:35, Umesh Nerlige Ramappa wrote:
> Use intel_uncore_read64_2x32 to read upper and lower fields of the GPM
> timestamp.
> 
> v2: Fix compile error
> 
> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> ---
>   .../gpu/drm/i915/gt/uc/intel_guc_submission.c   | 17 ++---------------
>   1 file changed, 2 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> index 61a6f2424e24..33e695adfd6a 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> @@ -1200,20 +1200,6 @@ static u32 gpm_timestamp_shift(struct intel_gt *gt)
>   	return 3 - shift;
>   }
>   
> -static u64 gpm_timestamp(struct intel_gt *gt)
> -{
> -	u32 lo, hi, old_hi, loop = 0;
> -
> -	hi = intel_uncore_read(gt->uncore, MISC_STATUS1);
> -	do {
> -		lo = intel_uncore_read(gt->uncore, MISC_STATUS0);
> -		old_hi = hi;
> -		hi = intel_uncore_read(gt->uncore, MISC_STATUS1);
> -	} while (old_hi != hi && loop++ < 2);
> -
> -	return ((u64)hi << 32) | lo;
> -}
> -
>   static void guc_update_pm_timestamp(struct intel_guc *guc, ktime_t *now)
>   {
>   	struct intel_gt *gt = guc_to_gt(guc);
> @@ -1223,7 +1209,8 @@ static void guc_update_pm_timestamp(struct intel_guc *guc, ktime_t *now)
>   	lockdep_assert_held(&guc->timestamp.lock);
>   
>   	gt_stamp_hi = upper_32_bits(guc->timestamp.gt_stamp);
> -	gpm_ts = gpm_timestamp(gt) >> guc->timestamp.shift;
> +	gpm_ts = intel_uncore_read64_2x32(gt->uncore, MISC_STATUS0,
> +					  MISC_STATUS1) >> guc->timestamp.shift;
>   	gt_stamp_lo = lower_32_bits(gpm_ts);
>   	*now = ktime_get();
>   

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
