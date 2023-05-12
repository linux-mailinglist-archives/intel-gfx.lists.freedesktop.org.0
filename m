Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C2830700619
	for <lists+intel-gfx@lfdr.de>; Fri, 12 May 2023 12:57:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3085810E135;
	Fri, 12 May 2023 10:57:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9338410E135
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 May 2023 10:57:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683889058; x=1715425058;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=bMxOTTBK9txsM4dVqONXhEyCim0OrNhVTybKtneGLCY=;
 b=C3v+Eam0RZeQr6GhHA7KQD3p4QABbGO5C+lYxqYuLpS3TXVtaSqasEmI
 5Kftj4hnotgaOmvG+3KCrQaynzRgC2pfJId4McnFssVTse7iu9NfJAPNn
 jwuactChbOiZHrdk7SeDlqwUS2X4vCSXxZ7fcWItWGbo831cOt4jBoEZH
 SpRk2W8xYBGW1/OKxFbA7cW/UMTaeBYQxDHw5Tzw8/Y0mjSkR/WjZKSUU
 fsa6b+Ya2E0vdmlpcHyOYHJqgpBgfEICZj2FEDV0t59VpkQQumRFgeP57
 Gux3tVzjUHakV3S23tevf18Vt3MmRtAsFPgdlgDZsFzbeHtDjS4yeypLO g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10707"; a="350786743"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="350786743"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2023 03:57:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10707"; a="789788077"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="789788077"
Received: from srajbhan-mobl9.amr.corp.intel.com (HELO [10.213.229.156])
 ([10.213.229.156])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2023 03:57:37 -0700
Message-ID: <f3000e77-678b-4d92-d800-35d696ddef50@linux.intel.com>
Date: Fri, 12 May 2023 11:57:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>,
 Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
References: <20230506005816.1891043-1-umesh.nerlige.ramappa@intel.com>
 <20230506005816.1891043-7-umesh.nerlige.ramappa@intel.com>
 <87wn1eelwo.wl-ashutosh.dixit@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <87wn1eelwo.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 6/6] drm/i915/pmu: Export counters from all
 tiles
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 11/05/2023 19:57, Dixit, Ashutosh wrote:
> On Fri, 05 May 2023 17:58:16 -0700, Umesh Nerlige Ramappa wrote:
>>
> 
> One drive-by comment:
> 
>> diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
>> index 12b2f3169abf..284e5c5b97bb 100644
>> --- a/drivers/gpu/drm/i915/i915_pmu.c
>> +++ b/drivers/gpu/drm/i915/i915_pmu.c
>> @@ -546,8 +546,9 @@ config_status(struct drm_i915_private *i915, u64 config)
>> 	struct intel_gt *gt = to_gt(i915);
>>
>> 	unsigned int gt_id = config_gt_id(config);
>> +	unsigned int max_gt_id = HAS_EXTRA_GT_LIST(i915) ? 1 : 0;
> 
> But in Patch 5 we have:
> 
> #define I915_PMU_MAX_GTS (4)

AFAIR that one is just to size the internal arrays, while max_gt_id is 
to report to userspace which events are present.

Regards,

Tvrtko

> 
>>
>> -	if (gt_id)
>> +	if (gt_id > max_gt_id)
>> 		return -ENOENT;
>>
>> 	switch (config_counter(config)) {
>> @@ -561,6 +562,8 @@ config_status(struct drm_i915_private *i915, u64 config)
>> 			return -ENODEV;
>> 		break;
>> 	case I915_PMU_INTERRUPTS:
>> +		if (gt_id)
>> +			return -ENOENT;
>> 		break;
>> 	case I915_PMU_RC6_RESIDENCY:
>> 		if (!gt->rc6.supported)
> 
> Thanks.
> --
> Ashutosh
