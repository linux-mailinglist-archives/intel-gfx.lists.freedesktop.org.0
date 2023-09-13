Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 27BCA79E78E
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Sep 2023 14:05:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61E9610E4AD;
	Wed, 13 Sep 2023 12:05:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3999810E4AD
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Sep 2023 12:05:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694606715; x=1726142715;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=JuntP6N8ykmlgQEXNVbLMraxuP2TWL0atofcsKxweLk=;
 b=nB/R+kNW0AN2Q+Qzy6EszbathsUXnwkL+kLnSFf+EgWeEbAXXaqeFY9X
 alnFmQDxL6641ThWKezh7TP+q/lxIqBse2tCvHE/Tzjm3RBPCNep/vWkc
 mBf7vcb06DlsVceq897KinQ3fov2PBH4+qPjh8YGnTXa6y11r4zRwoQxz
 wc5dtUh6NkWIPInTGCIw2wCgJdhlge2WIrDIs5aa6MgMnciPP0HZHwHro
 QK4NXmbdc43KVzLnWAKuSfZ7k8SUQaDJXaELVyUmVu3GRmd0BbsnWKTMa
 PSPkDOYVCZNOVzwhNQL7zA+9IDMEYFsZTfDXvxWFMBWpojPIodSmgqgs1 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10831"; a="442667534"
X-IronPort-AV: E=Sophos;i="6.02,143,1688454000"; d="scan'208";a="442667534"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2023 05:05:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10831"; a="747282309"
X-IronPort-AV: E=Sophos;i="6.02,143,1688454000"; d="scan'208";a="747282309"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.249.46.77])
 ([10.249.46.77])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2023 05:05:10 -0700
Message-ID: <2cfdb5f2-ec2b-ed58-292c-5a74d76e9297@linux.intel.com>
Date: Wed, 13 Sep 2023 14:05:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
To: Andi Shyti <andi.shyti@linux.intel.com>, Nirmoy Das <nirmoy.das@intel.com>
References: <20230906113121.30472-1-nirmoy.das@intel.com>
 <20230906113121.30472-3-nirmoy.das@intel.com>
 <ZPnS9+0exyFPAYue@ashyti-mobl2.lan>
Content-Language: en-US
From: Nirmoy Das <nirmoy.das@linux.intel.com>
In-Reply-To: <ZPnS9+0exyFPAYue@ashyti-mobl2.lan>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 2/5] drm/i915: Create a kernel context for
 GGTT updates
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
Cc: matthew.d.roper@intel.com, intel-gfx@lists.freedesktop.org,
 chris.p.wilson@linux.intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 9/7/2023 3:41 PM, Andi Shyti wrote:
> Hi Nirmoy,
>
> [...]
>
>> +	/* mark the bind context's availability status */
>> +	bool bind_context_ready;
> Do we need some locking here?

bind_context_ready is changed in suspend/resume or after mod probe so no need to
worry about locking here.


>
>>   	/**
>>   	 * pinned_contexts_list: List of pinned contexts. This list is only
>> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
>> index 449f0b7fc843..cd0ff1597db9 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_gt.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
>> @@ -1019,3 +1019,21 @@ enum i915_map_type intel_gt_coherent_map_type(struct intel_gt *gt,
>>   	else
>>   		return I915_MAP_WC;
>>   }
>> +
>> +void intel_gt_bind_context_set_ready(struct intel_gt *gt, bool ready)
>> +{
>> +	struct intel_engine_cs *engine = gt->engine[BCS0];
>> +
>> +	if (engine && engine->bind_context)
>> +		engine->bind_context_ready = ready;
>> +}
>> +
>> +bool intel_gt_is_bind_context_ready(struct intel_gt *gt)
>> +{
>> +	struct intel_engine_cs *engine = gt->engine[BCS0];
>> +
>> +	if (engine)
>> +		return engine->bind_context_ready;
>> +
>> +	return false;
>> +}
>> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.h b/drivers/gpu/drm/i915/gt/intel_gt.h
>> index 239848bcb2a4..9e70e625cebc 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_gt.h
>> +++ b/drivers/gpu/drm/i915/gt/intel_gt.h
>> @@ -180,4 +180,6 @@ enum i915_map_type intel_gt_coherent_map_type(struct intel_gt *gt,
>>   					      struct drm_i915_gem_object *obj,
>>   					      bool always_coherent);
>>   
>> +void intel_gt_bind_context_set_ready(struct intel_gt *gt, bool ready);
>> +bool intel_gt_is_bind_context_ready(struct intel_gt *gt);
> Can you put all this part in patch 4 or make it a separate patch?


This patch contains the new member intel_engine_cs->bind_context_ready 
which is why I added these two function in this.

Probably it makes sense to move only i915_ggtt_require_binder() out of 
this patch ?


Regards,

Nirmoy

>
> Andi
