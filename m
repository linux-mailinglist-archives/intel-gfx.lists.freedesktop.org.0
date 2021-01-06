Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CB162EC02F
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Jan 2021 16:13:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E12216E05F;
	Wed,  6 Jan 2021 15:13:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 87FF96E05F
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Jan 2021 15:13:01 +0000 (UTC)
IronPort-SDR: gwF3gYoL/2RhL51yB4wrimHargORn1TfSQXsiCrVPdl2bu5lq0bCyFidl1vzBjqUwmVIoga0rM
 TZaIfJl4Xjrg==
X-IronPort-AV: E=McAfee;i="6000,8403,9855"; a="176510014"
X-IronPort-AV: E=Sophos;i="5.78,480,1599548400"; d="scan'208";a="176510014"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2021 07:13:01 -0800
IronPort-SDR: XvC2TgDXPPnGd3SdhjY2CiYtMhlPjz05+jC9bYGlFSAxrrsREXysEwA1QgEvr09nv/XWXU7oI8
 1ctHy4V2H6VA==
X-IronPort-AV: E=Sophos;i="5.78,480,1599548400"; d="scan'208";a="422193872"
Received: from vbratanx-mobl.ger.corp.intel.com (HELO [10.252.38.40])
 ([10.252.38.40])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2021 07:13:00 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20210106123939.18435-1-chris@chris-wilson.co.uk>
 <20210106123939.18435-2-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <1274dd24-c55b-3031-8108-4918a4600db6@linux.intel.com>
Date: Wed, 6 Jan 2021 15:12:58 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20210106123939.18435-2-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915/selftests: Improve handling of
 iomem around stolen
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 06/01/2021 12:39, Chris Wilson wrote:
> Use memset_io() on the iomem, and silence sparse as we copy from the
> iomem to normal system pages.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   drivers/gpu/drm/i915/gt/selftest_reset.c | 10 +++++-----
>   1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/selftest_reset.c b/drivers/gpu/drm/i915/gt/selftest_reset.c
> index 5ec8d4e9983f..b7befcfbdcde 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_reset.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_reset.c
> @@ -96,10 +96,10 @@ __igt_reset_stolen(struct intel_gt *gt,
>   		if (!__drm_mm_interval_first(&gt->i915->mm.stolen,
>   					     page << PAGE_SHIFT,
>   					     ((page + 1) << PAGE_SHIFT) - 1))
> -			memset32(s, STACK_MAGIC, PAGE_SIZE / sizeof(u32));
> +			memset_io(s, STACK_MAGIC, PAGE_SIZE);
>   
> -		in = s;
> -		if (i915_memcpy_from_wc(tmp, s, PAGE_SIZE))
> +		in = (void __force *)s;
> +		if (i915_memcpy_from_wc(tmp, in, PAGE_SIZE))
>   			in = tmp;
>   		crc[page] = crc32_le(0, in, PAGE_SIZE);
>   
> @@ -134,8 +134,8 @@ __igt_reset_stolen(struct intel_gt *gt,
>   				      ggtt->error_capture.start,
>   				      PAGE_SIZE);
>   
> -		in = s;
> -		if (i915_memcpy_from_wc(tmp, s, PAGE_SIZE))
> +		in = (void __force *)s;
> +		if (i915_memcpy_from_wc(tmp, in, PAGE_SIZE))
>   			in = tmp;
>   		x = crc32_le(0, in, PAGE_SIZE);
>   
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
