Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 519A35AFD7C
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Sep 2022 09:29:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D33FA10E3BE;
	Wed,  7 Sep 2022 07:28:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28F0810E3BE
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Sep 2022 07:28:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662535734; x=1694071734;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=nlpmkyI+bw+oqKgDr37gbG6PUYd8qNWOJTnpYrR4vxo=;
 b=S6iMXAD+9VS0hLIMoLA16lFtropDcWy8v93pwjC/e0nZgqNaTsgunJOW
 keGxs+Vv29OcmgeT1jZJDKQaB+kqapk/syfQp5PlweaPyU3MU0WbDyvF+
 FqoPhCOKRdFiJG9VMs6dPr8p7r5ugbwjHlYLkk8SA2OKxlNTKT1m8OQbo
 QQqJQn8E9/H0SfOqQtRHWtU5SwI4kwoyua2e7eXlJAmW1q1iSvfHsYcKP
 pb3zHVaPv36tlCPdgG7qEG+IXYXzglXuyqFKUG1gg0vC0LKNN71e1lf+n
 vcoZDm2X0bYyFh7ir4AIfeSqodniirk4d9GWPco4G7SXYjMtALBqCaGb+ w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10462"; a="322986774"
X-IronPort-AV: E=Sophos;i="5.93,296,1654585200"; d="scan'208";a="322986774"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2022 00:28:53 -0700
X-IronPort-AV: E=Sophos;i="5.93,296,1654585200"; d="scan'208";a="565404918"
Received: from tenglish-mobl1.ger.corp.intel.com (HELO [10.213.202.97])
 ([10.213.202.97])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2022 00:28:51 -0700
Message-ID: <c0c9f2ab-315e-8589-50ff-bbf6d4c39de3@linux.intel.com>
Date: Wed, 7 Sep 2022 08:28:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Content-Language: en-US
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
References: <20220831193355.838209-1-ashutosh.dixit@intel.com>
 <20220831193355.838209-2-ashutosh.dixit@intel.com>
 <Yw/kna1W/vrCiMmF@unerlige-ril> <87sflaodjp.wl-ashutosh.dixit@intel.com>
 <YxeRe5W0Zf/TBGWw@unerlige-ril>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <YxeRe5W0Zf/TBGWw@unerlige-ril>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [RFC PATCH 2/2] Fix per client busyness locking
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



On 06/09/2022 19:29, Umesh Nerlige Ramappa wrote:
> On Thu, Sep 01, 2022 at 04:55:22PM -0700, Dixit, Ashutosh wrote:
>> On Wed, 31 Aug 2022 15:45:49 -0700, Umesh Nerlige Ramappa wrote:

[snip]

>>> >
>>> >    intel_gt_reset_unlock(gt, srcu);
>>> >
>>> > @@ -1476,17 +1476,21 @@ void intel_guc_busyness_unpark(struct 
>>> intel_gt *gt)
>>> >             guc->timestamp.ping_delay);
>>> > }
>>> >
>>> > -static void __guc_context_update_clks(struct intel_context *ce)
>>> > +static u64 guc_context_update_stats(struct intel_context *ce)
>>> > {
>>> >    struct intel_guc *guc = ce_to_guc(ce);
>>> >    struct intel_gt *gt = ce->engine->gt;
>>> >    u32 *pphwsp, last_switch, engine_id;
>>> > -    u64 start_gt_clk, active;
>>> >    unsigned long flags;
>>> > +    u64 total, active = 0;
>>> >    ktime_t unused;
>>> >
>>> > +    intel_context_pin(ce);
>>>
>>> intel_context_pin can sleep and we are not allowed to sleep in this 
>>> path -
>>> intel_context_get_total_runtime_ns(), however we can sleep in the ping
>>> worker path, so ideally we want to separate it out for the 2 paths.
>>
>> Do we know which intel_context_get_total_runtime_ns() call is not allowed
>> to sleep? E.g. the code path from i915_drm_client_fdinfo() is allowed to
>> sleep. As mentioned I have done this is v2 of RFC patch which I think is
>> sufficient, but a more complicated scheme (which I think we can avoid for
>> now) would be to pin in code paths when sleeping is allowed.
>>
> 
> Hmm, maybe intel_context_get_total_runtime_ns can sleep, not sure why I 
> was assuming that this falls in the perf_pmu path. This is now in the 
> drm_fdinfo query path. + Tvrtko.
> 
> @Tvrtko, any idea if intel_context_get_total_runtime_ns path can sleep?

Not at the moment - it calls it from a lockless (rcu) section when 
walking all the contexts belonging to a client. Idea being performance 
queries should have minimum effect on a running system. I think it would 
be possible to change in theory but not sure how much work. There is a 
hard need to sleep in there or what?

Regards,

Tvrtko
