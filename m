Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CD6420B3DE
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jun 2020 16:46:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C46F76ECAF;
	Fri, 26 Jun 2020 14:46:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 625FC6ECAF
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Jun 2020 14:46:53 +0000 (UTC)
IronPort-SDR: LCmHAh5ITpDKZuQqhtkP7aQR8jB/GJRnzmuuMy0WIReR5qgHeKMKSot90d6I8JfpkUcQdd+u+8
 Q1BP3bBDYnzQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9663"; a="210424254"
X-IronPort-AV: E=Sophos;i="5.75,284,1589266800"; d="scan'208";a="210424254"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2020 07:46:52 -0700
IronPort-SDR: jsqt7DYy42Gr3fylltJMGC09kO/4g6FFyTI/5zG654td1+g+ETuOkBWGn0YtB7Kci4YqVP3LbM
 1v+168L+pKsw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,284,1589266800"; d="scan'208";a="424094726"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by orsmga004.jf.intel.com with ESMTP; 26 Jun 2020 07:46:52 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200625234212.22811-1-daniele.ceraolospurio@intel.com>
 <20200625234212.22811-4-daniele.ceraolospurio@intel.com>
 <159318233803.13600.604722317964699116@build.alporthouse.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <f711551d-e5dd-0cbf-8bbf-db27425620b9@intel.com>
Date: Fri, 26 Jun 2020 07:46:53 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <159318233803.13600.604722317964699116@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 3/7] drm/i915: Move engine-related mmio init
 to engines_init_mmio
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



On 6/26/20 7:38 AM, Chris Wilson wrote:
> Quoting Daniele Ceraolo Spurio (2020-06-26 00:42:08)
>> All the info we read in intel_device_info_init_mmio are engine-related
>> and since we already have an engine_init_mmio function we can just
>> perform the operations from there.
>>
>> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
>> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
>> Cc: Andi Shyti <andi.shyti@intel.com>
>> ---
>>   drivers/gpu/drm/i915/gt/intel_engine_cs.c | 72 ++++++++++++++++++++++-
>>   drivers/gpu/drm/i915/i915_drv.c           |  4 --
>>   drivers/gpu/drm/i915/intel_device_info.c  | 66 ---------------------
>>   drivers/gpu/drm/i915/intel_device_info.h  |  2 -
>>   4 files changed, 71 insertions(+), 73 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
>> index be92d1ef9aa9..8497106eb3a6 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
>> @@ -450,6 +450,74 @@ void intel_engines_free(struct intel_gt *gt)
>>          }
>>   }
>>   
>> +/*
>> + * Determine which engines are fused off in our particular hardware. Since the
>> + * fuse register is in the blitter powerwell, we need forcewake to be ready at
>> + * this point (but later we need to prune the forcewake domains for engines that
>> + * are indeed fused off).
>> + */
>> +static intel_engine_mask_t init_engine_mask(struct intel_gt *gt)
>> +{
>> +       struct drm_i915_private *i915 = gt->i915;
>> +       struct intel_device_info *info = mkwrite_device_info(i915);
>> +       struct intel_uncore *uncore = gt->uncore;
>> +       unsigned int logical_vdbox = 0;
>> +       unsigned int i;
>> +       u32 media_fuse;
>> +       u16 vdbox_mask;
>> +       u16 vebox_mask;
> 
> assert_forcewakes_active(uncore, FORCEWAKE_BLITTER) ?
> 
> Since it's called out in the comment, might as well reinforce that with
> an assert.

We don't expect it to be active, just to be initialized/usable.
This comment is there to remind us of the catch-22 issue we have where 
we need forcewake to be initialized to read the fuses, but we need the 
fuses values to know which engines are available and therefore which fw 
domains are there (and that's why we prune the domains later).

Daniele

> -Chris
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
