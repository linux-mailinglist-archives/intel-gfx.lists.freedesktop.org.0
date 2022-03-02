Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 17BBD4CA03C
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Mar 2022 10:03:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9382C10EF5D;
	Wed,  2 Mar 2022 09:03:24 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9FE2E10EF5C
 for <Intel-gfx@lists.freedesktop.org>; Wed,  2 Mar 2022 09:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646211802; x=1677747802;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=P8cMKuz9d22nH/mkLu82MMgkDK+BmULUnXsVNYeoxn0=;
 b=LS1hJKQPlH8fiLzmN0/RF8fBzuW4ZUYwOwEjYAKuonMgD0ipU5n5uSMK
 +CQJxb5g/QUXyzCwj0PQIepmSvO2Nvd/whvwz5H6luA6c6Xyg5YJCncoC
 ezDb2xhWGaEl8oH7DIPeyv7fc9ZTJTfERqAo5NX/79CXqRCnz+asadIor
 a8xWSV9Z1ES083/Li57ka0OPq9M6FD9I1FgRiCCNzvtMqielRC7yspSa/
 fahL0svS4A0cf9A9P9bFewbmC9d9ZoAs/720fmj3+IP+ClNIgje+f6hfD
 Ljv+c+7mRY08b50BieBANUznAq2mtl2pU7ucF/HhLI1g5rq+eGjIFWI3A g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10273"; a="339783882"
X-IronPort-AV: E=Sophos;i="5.90,148,1643702400"; d="scan'208";a="339783882"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2022 01:03:21 -0800
X-IronPort-AV: E=Sophos;i="5.90,148,1643702400"; d="scan'208";a="641624873"
Received: from jbuller-mobl1.ger.corp.intel.com (HELO [10.213.194.231])
 ([10.213.194.231])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2022 01:03:20 -0800
Message-ID: <e6740795-37a7-8214-1ce1-3bf70fd37de7@linux.intel.com>
Date: Wed, 2 Mar 2022 09:03:18 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
References: <20220222140422.1121163-1-tvrtko.ursulin@linux.intel.com>
 <20220222140422.1121163-8-tvrtko.ursulin@linux.intel.com>
 <20220301193409.GA25848@unerlige-ril-10.165.21.154>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20220301193409.GA25848@unerlige-ril-10.165.21.154>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH 7/8] drm/i915: Count engine instances per
 uabi class
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
Cc: Rob Clark <robdclark@chromium.org>, Intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 01/03/2022 19:34, Umesh Nerlige Ramappa wrote:
> On Tue, Feb 22, 2022 at 02:04:21PM +0000, Tvrtko Ursulin wrote:
>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>
>> This will be useful to have at hand in a following patch.
>>
>> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>> ---
>> drivers/gpu/drm/i915/gt/intel_engine_user.c | 11 ++++++-----
>> drivers/gpu/drm/i915/i915_drv.h             |  1 +
>> 2 files changed, 7 insertions(+), 5 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_user.c 
>> b/drivers/gpu/drm/i915/gt/intel_engine_user.c
>> index 9ce85a845105..5dd559253078 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_engine_user.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_engine_user.c
>> @@ -190,7 +190,6 @@ static void add_legacy_ring(struct legacy_ring *ring,
>> void intel_engines_driver_register(struct drm_i915_private *i915)
>> {
>>     struct legacy_ring ring = {};
>> -    u8 uabi_instances[4] = {};
>>     struct list_head *it, *next;
>>     struct rb_node **p, *prev;
>>     LIST_HEAD(engines);
>> @@ -211,8 +210,10 @@ void intel_engines_driver_register(struct 
>> drm_i915_private *i915)
>>         GEM_BUG_ON(engine->class >= ARRAY_SIZE(uabi_classes));
>>         engine->uabi_class = uabi_classes[engine->class];
>>
>> -        GEM_BUG_ON(engine->uabi_class >= ARRAY_SIZE(uabi_instances));
>> -        engine->uabi_instance = uabi_instances[engine->uabi_class]++;
>> +        GEM_BUG_ON(engine->uabi_class >=
>> +               ARRAY_SIZE(i915->engine_uabi_class_count));
>> +        engine->uabi_instance =
>> +            i915->engine_uabi_class_count[engine->uabi_class]++;
>>
>>         /* Replace the internal name with the final user facing name */
>>         memcpy(old, engine->name, sizeof(engine->name));
>> @@ -242,8 +243,8 @@ void intel_engines_driver_register(struct 
>> drm_i915_private *i915)
>>         int class, inst;
>>         int errors = 0;
>>
>> -        for (class = 0; class < ARRAY_SIZE(uabi_instances); class++) {
>> -            for (inst = 0; inst < uabi_instances[class]; inst++) {
>> +        for (class = 0; class < 
>> ARRAY_SIZE(i915->engine_uabi_class_count); class++) {
>> +            for (inst = 0; inst < 
>> i915->engine_uabi_class_count[class]; inst++) {
>>                 engine = intel_engine_lookup_user(i915,
>>                                   class, inst);
>>                 if (!engine) {
>> diff --git a/drivers/gpu/drm/i915/i915_drv.h 
>> b/drivers/gpu/drm/i915/i915_drv.h
>> index b9d38276801d..68d8a751008b 100644
>> --- a/drivers/gpu/drm/i915/i915_drv.h
>> +++ b/drivers/gpu/drm/i915/i915_drv.h
>> @@ -533,6 +533,7 @@ struct drm_i915_private {
>>     struct pci_dev *bridge_dev;
>>
>>     struct rb_root uabi_engines;
>> +    unsigned int engine_uabi_class_count[I915_LAST_UABI_ENGINE_CLASS 
>> + 1];
> 
> lgtm,
> Reviewed-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>

Thanks Umesh - for the series or just this patch? I'd need to update 
your r-b's on patches 3, 6 and 8 to latest as well.

Regards,

Tvrtko
