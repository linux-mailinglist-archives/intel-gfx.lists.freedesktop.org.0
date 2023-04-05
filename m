Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 35CB96D76F1
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Apr 2023 10:30:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E49F10E87A;
	Wed,  5 Apr 2023 08:30:56 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF4A710E87A
 for <Intel-GFX@lists.freedesktop.org>; Wed,  5 Apr 2023 08:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680683452; x=1712219452;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=b2EBE0qVuAk3zCI4UbExPNB4XbTPWFeZwX1IatBrGI8=;
 b=llx+rz5SCYUQeZZFwYTabRCJY/yQCgRDhGscNjjuQmf1dopbI/5kkVYO
 5wccS4VCodo78YKifCtZRu3ruamKZMYrDKfWMV9UpcITZ1vWr/X04UqWh
 NfOPyn/BfyZKfhfp9lXYnS33sPqv5Twcz7AkHeESEwHm/bXRMWk3xUXOe
 pfbRMXhNt2WsezB6YUKksFhh6hEZ5rlJsNHfD/8pUyJr4ponKlKblZpAq
 clPJClItZ97Ekchc3vo3tKbTUJFVO9GCp3xUlsGSa6IAJjmKYd1NYIEiY
 VrQmpfCPLy28+I4tUjV8TSHE7Js+r5PHnKeqkkKrItHThRlEFvZQO1Nv9 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="341125093"
X-IronPort-AV: E=Sophos;i="5.98,319,1673942400"; d="scan'208";a="341125093"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2023 01:30:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="719230653"
X-IronPort-AV: E=Sophos;i="5.98,319,1673942400"; d="scan'208";a="719230653"
Received: from rcpalaku-mobl1.ger.corp.intel.com (HELO [10.213.226.223])
 ([10.213.226.223])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2023 01:30:39 -0700
Message-ID: <9cef68ec-66c8-2cf6-ed49-7a71334b42c1@linux.intel.com>
Date: Wed, 5 Apr 2023 09:30:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: "Upadhyay, Tejas" <tejas.upadhyay@intel.com>,
 "Intel-GFX@Lists.FreeDesktop.Org" <Intel-GFX@Lists.FreeDesktop.Org>
References: <20230317055239.1313175-1-tejas.upadhyay@intel.com>
 <eeec7ffd-0e77-9360-6bd3-9054c23b77a5@linux.intel.com>
 <SJ1PR11MB620468D7F5DCD777F71D04E981909@SJ1PR11MB6204.namprd11.prod.outlook.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <SJ1PR11MB620468D7F5DCD777F71D04E981909@SJ1PR11MB6204.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Consider multi-gt at all places
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


On 05/04/2023 07:56, Upadhyay, Tejas wrote:
>>> -int igt_live_test_end(struct igt_live_test *t)
>>> +int igt_live_test_end(struct igt_live_test *t, struct intel_gt *gt)
>>>    {
>>> -	struct drm_i915_private *i915 = t->i915;
>>> +	struct drm_i915_private *i915 = gt->i915;
>>>    	struct intel_engine_cs *engine;
>>>    	enum intel_engine_id id;
>>>
>>> @@ -57,7 +57,7 @@ int igt_live_test_end(struct igt_live_test *t)
>>>    		return -EIO;
>>>    	}
>>>
>>> -	for_each_engine(engine, to_gt(i915), id) {
>>> +	for_each_engine(engine, gt, id) {
>>>    		if (t->reset_engine[id] ==
>>>    		    i915_reset_engine_count(&i915->gpu_error, engine))
>>>    			continue;
>>> diff --git a/drivers/gpu/drm/i915/selftests/igt_live_test.h
>>> b/drivers/gpu/drm/i915/selftests/igt_live_test.h
>>> index 36ed42736c52..209b0548c603 100644
>>> --- a/drivers/gpu/drm/i915/selftests/igt_live_test.h
>>> +++ b/drivers/gpu/drm/i915/selftests/igt_live_test.h
>>> @@ -27,9 +27,9 @@ struct igt_live_test {
>>>     * e.g. if the GPU was reset.
>>>     */
>>>    int igt_live_test_begin(struct igt_live_test *t,
>>> -			struct drm_i915_private *i915,
>>> +			struct intel_gt *gt,
>>>    			const char *func,
>>>    			const char *name);
>>> -int igt_live_test_end(struct igt_live_test *t);
>>> +int igt_live_test_end(struct igt_live_test *t, struct intel_gt *gt);
>>
>> Back in the day the plan was that live selftests are device focused and then
>> we also have intel_gt_live_subtests, which are obviously GT focused. So in
>> that sense adding a single GT parameter to igt_live_test_begin isn't
>> something I immediately understand.
>>
>> Could you explain in one or two practical examples what is not working
>> properly and how is this patch fixing it?
> 
> For example you are running test "live_all_engines(void *arg)",
> 
> -- Below test begin, will reset counters for primary GT - Tile0 --
> err = igt_live_test_begin(&t, to_gt(i915), __func__, "");
>          if (err)
>                  goto out_free;
> 
> --- Now we loop for all engines, note here for MTL vcs, vecs engines are not on primary GT or tile 0,
>       So counters did not reset on test begin does not cover them. ---
> 	
>        In test_begin, below will not reset count for vcs, vecs engines on MTL,
> 	for_each_engine(engine, gt, id)
>                  t->reset_engine[id] =
>                          i915_reset_engine_count(&i915->gpu_error, engine);
> 
> --- Then below will end test, again for primary GT where above mentioned engines are not there ---
> err = igt_live_test_end(&t, to_gt(i915));
> 
> In short to me it looks like igt_live_test for device needs attention when we have different engines on different GTs like MTL.

If you either add for_each_gt to that for_each_engine in 
igt_live_test_begin and igt_live_test_end, or alternatively 
for_each_uabi_engine (maybe misses some internal engines?), everything 
works? That would be much smaller patch and wouldn't falsely associate 
live tests with a single gt.

Regards,

Tvrtko
