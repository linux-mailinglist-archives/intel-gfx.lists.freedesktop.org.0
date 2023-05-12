Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BC3937003D4
	for <lists+intel-gfx@lfdr.de>; Fri, 12 May 2023 11:32:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C451A10E65D;
	Fri, 12 May 2023 09:32:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 337C610E65D
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 May 2023 09:32:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683883947; x=1715419947;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=TNwhCejZ07RX9jj2uI62GI12VQDjhgDR99NtMzby6nk=;
 b=je8Jtqbb4HyWej+lz+cIzzEbBYDWb8aHUQNrlm8x1pnr2N8zwQ04fNdI
 V4BkMCk8aEpd9PNxDifa2n3MaDIk4Z2wK5vpQo1rQVaexLEzisWlAGYCW
 DbB94XAbirMXKqjtFtgmNsUS+p48DDwciP7pMOM70RHuqvuQJDGtIEH7j
 xBM1VDNhB7Jvi0A4tQExB/gmGGKANwmoPe0xebrPZRRx+LYgZRua6tBEu
 mzDEPc+TCz8DTCdN/njRABuVsby/j8xegJO5WAQsLk7pKZrtY0EkhwiR6
 q1AsDKy6lzS1q77khQI7vXoUBwH61J46ZuLc/lLZQtkTOUHxDL6Q5+aGv Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10707"; a="352996373"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="352996373"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2023 02:32:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10707"; a="703133588"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="703133588"
Received: from srajbhan-mobl9.amr.corp.intel.com (HELO [10.213.229.156])
 ([10.213.229.156])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2023 02:32:25 -0700
Message-ID: <5082e0dd-8af5-89f2-9ae5-7d5cc54e79f4@linux.intel.com>
Date: Fri, 12 May 2023 10:32:19 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
To: "Coelho, Luciano" <luciano.coelho@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
References: <20230511082013.1313484-1-luciano.coelho@intel.com>
 <20230511082013.1313484-3-luciano.coelho@intel.com>
 <43e3f1e2-5910-6a3f-2282-44e4718bcd04@linux.intel.com>
 <294471856c7245b3e3aef29508bddb5f4ea33bfb.camel@intel.com>
Content-Language: en-US
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <294471856c7245b3e3aef29508bddb5f4ea33bfb.camel@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/gt: create workqueue dedicated
 to wake references
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


On 12/05/2023 10:10, Coelho, Luciano wrote:
> On Fri, 2023-05-12 at 10:04 +0100, Tvrtko Ursulin wrote:
>> On 11/05/2023 09:20, Luca Coelho wrote:
>>> Add a work queue in the intel_wakeref structure to be used exclusively
>>> by the wake reference mechanism.  This is needed in order to avoid
>>> using the system workqueue and relying on flush_scheduled_work().
>>>
>>> Cc: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
>>> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>> Cc: Jani Nikula <jani.nikula@intel.com>
>>> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
>>> Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
>>> ---
>>>    drivers/gpu/drm/i915/gt/intel_engine_cs.c |  7 ++++++-
>>>    drivers/gpu/drm/i915/gt/intel_engine_pm.c | 15 ++++++++++++--
>>>    drivers/gpu/drm/i915/gt/intel_engine_pm.h |  3 ++-
>>>    drivers/gpu/drm/i915/gt/mock_engine.c     |  8 +++++++-
>>>    drivers/gpu/drm/i915/intel_wakeref.c      | 21 ++++++++++++++-----
>>>    drivers/gpu/drm/i915/intel_wakeref.h      | 25 +++++++++++++++--------
>>>    6 files changed, 60 insertions(+), 19 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
>>> index 0aff5bb13c53..6505bfa70cd0 100644
>>> --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
>>> +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
>>> @@ -1290,7 +1290,11 @@ static int engine_setup_common(struct intel_engine_cs *engine)
>>>    		goto err_cmd_parser;
>>>    
>>>    	intel_engine_init_execlists(engine);
>>> -	intel_engine_init__pm(engine);
>>> +
>>> +	err = intel_engine_init__pm(engine);
>>> +	if (err)
>>> +		goto err_cmd_parser;
>>> +
>>>    	intel_engine_init_retire(engine);
>>>    
>>>    	/* Use the whole device by default */
>>> @@ -1525,6 +1529,7 @@ void intel_engine_cleanup_common(struct intel_engine_cs *engine)
>>>    {
>>>    	GEM_BUG_ON(!list_empty(&engine->sched_engine->requests));
>>>    
>>> +	intel_engine_destroy__pm(engine);
>>>    	i915_sched_engine_put(engine->sched_engine);
>>>    	intel_breadcrumbs_put(engine->breadcrumbs);
>>>    
>>> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_pm.c b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
>>> index ee531a5c142c..859b62cf660f 100644
>>> --- a/drivers/gpu/drm/i915/gt/intel_engine_pm.c
>>> +++ b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
>>> @@ -294,14 +294,25 @@ static const struct intel_wakeref_ops wf_ops = {
>>>    	.put = __engine_park,
>>>    };
>>>    
>>> -void intel_engine_init__pm(struct intel_engine_cs *engine)
>>> +int intel_engine_init__pm(struct intel_engine_cs *engine)
>>>    {
>>>    	struct intel_runtime_pm *rpm = engine->uncore->rpm;
>>> +	int err;
>>> +
>>> +	err = intel_wakeref_init(&engine->wakeref, rpm, &wf_ops);
>>> +	if (err)
>>> +		return err;
>>>    
>>> -	intel_wakeref_init(&engine->wakeref, rpm, &wf_ops);
>>>    	intel_engine_init_heartbeat(engine);
>>>    
>>>    	intel_gsc_idle_msg_enable(engine);
>>> +
>>> +	return 0;
>>> +}
>>> +
>>> +void intel_engine_destroy__pm(struct intel_engine_cs *engine)
>>> +{
>>> +	intel_wakeref_destroy(&engine->wakeref);
>>>    }
>>>    
>>>    /**
>>> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_pm.h b/drivers/gpu/drm/i915/gt/intel_engine_pm.h
>>> index d68675925b79..e8568f7d10c6 100644
>>> --- a/drivers/gpu/drm/i915/gt/intel_engine_pm.h
>>> +++ b/drivers/gpu/drm/i915/gt/intel_engine_pm.h
>>> @@ -104,7 +104,8 @@ intel_engine_create_kernel_request(struct intel_engine_cs *engine)
>>>    	return rq;
>>>    }
>>>    
>>> -void intel_engine_init__pm(struct intel_engine_cs *engine);
>>> +int intel_engine_init__pm(struct intel_engine_cs *engine);
>>> +void intel_engine_destroy__pm(struct intel_engine_cs *engine);
>>>    
>>>    void intel_engine_reset_pinned_contexts(struct intel_engine_cs *engine);
>>>    
>>> diff --git a/drivers/gpu/drm/i915/gt/mock_engine.c b/drivers/gpu/drm/i915/gt/mock_engine.c
>>> index c0637bf799a3..0a3c702c21e2 100644
>>> --- a/drivers/gpu/drm/i915/gt/mock_engine.c
>>> +++ b/drivers/gpu/drm/i915/gt/mock_engine.c
>>> @@ -336,6 +336,7 @@ static void mock_engine_release(struct intel_engine_cs *engine)
>>>    	intel_context_put(engine->kernel_context);
>>>    
>>>    	intel_engine_fini_retire(engine);
>>> +	intel_engine_destroy__pm(engine);
>>>    }
>>>    
>>>    struct intel_engine_cs *mock_engine(struct drm_i915_private *i915,
>>> @@ -393,6 +394,7 @@ struct intel_engine_cs *mock_engine(struct drm_i915_private *i915,
>>>    int mock_engine_init(struct intel_engine_cs *engine)
>>>    {
>>>    	struct intel_context *ce;
>>> +	int err;
>>>    
>>>    	INIT_LIST_HEAD(&engine->pinned_contexts_list);
>>>    
>>> @@ -402,7 +404,11 @@ int mock_engine_init(struct intel_engine_cs *engine)
>>>    	engine->sched_engine->private_data = engine;
>>>    
>>>    	intel_engine_init_execlists(engine);
>>> -	intel_engine_init__pm(engine);
>>> +
>>> +	err = intel_engine_init__pm(engine);
>>> +	if (err)
>>> +		return err;
>>> +
>>>    	intel_engine_init_retire(engine);
>>>    
>>>    	engine->breadcrumbs = intel_breadcrumbs_create(NULL);
>>> diff --git a/drivers/gpu/drm/i915/intel_wakeref.c b/drivers/gpu/drm/i915/intel_wakeref.c
>>> index dfd87d082218..6bae609e1312 100644
>>> --- a/drivers/gpu/drm/i915/intel_wakeref.c
>>> +++ b/drivers/gpu/drm/i915/intel_wakeref.c
>>> @@ -74,7 +74,7 @@ void __intel_wakeref_put_last(struct intel_wakeref *wf, unsigned long flags)
>>>    
>>>    	/* Assume we are not in process context and so cannot sleep. */
>>>    	if (flags & INTEL_WAKEREF_PUT_ASYNC || !mutex_trylock(&wf->mutex)) {
>>> -		mod_delayed_work(system_wq, &wf->work,
>>> +		mod_delayed_work(wf->wq, &wf->work,
>>>    				 FIELD_GET(INTEL_WAKEREF_PUT_DELAY, flags));
>>>    		return;
>>>    	}
>>> @@ -93,10 +93,10 @@ static void __intel_wakeref_put_work(struct work_struct *wrk)
>>>    	____intel_wakeref_put_last(wf);
>>>    }
>>>    
>>> -void __intel_wakeref_init(struct intel_wakeref *wf,
>>> -			  struct intel_runtime_pm *rpm,
>>> -			  const struct intel_wakeref_ops *ops,
>>> -			  struct intel_wakeref_lockclass *key)
>>> +int __intel_wakeref_init(struct intel_wakeref *wf,
>>> +			 struct intel_runtime_pm *rpm,
>>> +			 const struct intel_wakeref_ops *ops,
>>> +			 struct intel_wakeref_lockclass *key)
>>>    {
>>>    	wf->rpm = rpm;
>>>    	wf->ops = ops;
>>> @@ -105,9 +105,20 @@ void __intel_wakeref_init(struct intel_wakeref *wf,
>>>    	atomic_set(&wf->count, 0);
>>>    	wf->wakeref = 0;
>>>    
>>> +	wf->wq = alloc_workqueue("i1915-wakeref", 0, 0);
>>
>> Typo here -
> 
> Oh, good catch! This is one of my "favorite" typos, for some reason.

Yes, I had the same one. :) Patch 3/3 too.

>>   I wanted to ask however - why does this particular wq
>> "deserves" to be dedicated and can't just use one of the
>> drm_i915_private ones?
> 
> It's because there's no easy way to get access to the drm_i915_private
> structure from here.  And I don't think this work needs to be in sync
> with the rest of the works in i915.

Yeah I don't think it needs to be synchronised either. Was just thinking 
if we really need to be creating a bunch of separate workqueues (one per 
engine) for not much use, or instead could just add a backpointer to 
either intel_wakeref or intel_runtime_pm. Latter already has rpm->kdev 
so could plausably be replaced with rpm->i915.

Actually, looking at intel_runtime_pm_init_early, you could get to i915 
via wf->rpm and container_of.

Regards,

Tvrtko
