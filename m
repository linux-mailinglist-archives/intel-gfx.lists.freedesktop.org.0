Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 03373442A7C
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Nov 2021 10:37:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1944472D1A;
	Tue,  2 Nov 2021 09:36:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4801172D23;
 Tue,  2 Nov 2021 09:36:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10155"; a="292057436"
X-IronPort-AV: E=Sophos;i="5.87,202,1631602800"; d="scan'208";a="292057436"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2021 02:36:36 -0700
X-IronPort-AV: E=Sophos;i="5.87,202,1631602800"; d="scan'208";a="449321979"
Received: from dgwhelax-mobl.ger.corp.intel.com (HELO [10.213.243.111])
 ([10.213.243.111])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2021 02:36:35 -0700
To: Andi Shyti <andi.shyti@linux.intel.com>,
 Matt Roper <matthew.d.roper@intel.com>
References: <20211029032817.3747750-1-matthew.d.roper@intel.com>
 <20211029032817.3747750-6-matthew.d.roper@intel.com>
 <YYB0BdEcDqt2IUXi@intel.intel>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <a1a70e75-2068-fa69-e307-456d031b25b1@linux.intel.com>
Date: Tue, 2 Nov 2021 09:36:32 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <YYB0BdEcDqt2IUXi@intel.intel>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v3 05/10] drm/i915: Prepare for multiple gts
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>,
 dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 01/11/2021 23:11, Andi Shyti wrote:
> Hi Matt and Tvrtko,
> 
> [...]
> 
>>   static int
>>   intel_gt_tile_setup(struct intel_gt *gt, unsigned int id, phys_addr_t phys_addr)
> 
> we don't actually need 'id', it's gt->info.id. It's introduced in
> patch 3 with the value '0' but it's not needed.

I have a suspicion code got munged up over endless rebases and refactors.

This patch is the one which introduces the id member to gt->info. But it is not setting it, even though I suspect the intent was for intel_gt_tile_setup to do that.

Instead gt->info.id is only set to a valid value in last patch of this series inside intel_gt_probe_all:

+		gt->i915 = i915;
+		gt->name = gtdef->name;
+		gt->type = gtdef->type;
+		gt->info.engine_mask = gtdef->engine_mask;
+		gt->info.id = i;
+
+		drm_dbg(&i915->drm, "Setting up %s %u\n", gt->name, gt->info.id);
+		ret = intel_gt_tile_setup(gt, i, phys_addr + gtdef->mapping_base);

And intel_gt_tile_setup then calls __intel_gt_init_early which assigns gt->i915 yet again.

So I'd say there is probably space to bring this all into a more streamlined flow, even more than what you suggest below.

Regards,

Tvrtko
  
>>   {
>> +	struct drm_i915_private *i915 = gt->i915;
>> +	struct intel_uncore *uncore;
>> +	struct intel_uncore_mmio_debug *mmio_debug;
>>   	int ret;
>>   
>> -	intel_uncore_init_early(gt->uncore, gt);
>> +	if (id) {
> 
> if (gt->info.id) ?
> 
> Andi
> 
>> +		uncore = kzalloc(sizeof(*uncore), GFP_KERNEL);
>> +		if (!uncore)
>> +			return -ENOMEM;
>> +
>> +		mmio_debug = kzalloc(sizeof(*mmio_debug), GFP_KERNEL);
>> +		if (!mmio_debug) {
>> +			kfree(uncore);
>> +			return -ENOMEM;
>> +		}
>> +
>> +		__intel_gt_init_early(gt, uncore, i915);
>> +	} else {
>> +		uncore = &i915->uncore;
>> +		mmio_debug = &i915->mmio_debug;
>> +	}
>> +
>> +	intel_uncore_init_early(uncore, gt);
>>   
>>   	ret = intel_uncore_setup_mmio(gt->uncore, phys_addr);
