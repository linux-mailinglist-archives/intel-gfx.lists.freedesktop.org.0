Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9052E7BD53C
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Oct 2023 10:31:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 914D510E21E;
	Mon,  9 Oct 2023 08:31:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 762EC10E21E
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Oct 2023 08:31:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696840260; x=1728376260;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=8l3aFdfTjIvOZulEWmeR4i5RLspLjDscBCsyH9XmoBM=;
 b=MsIsRIQ+38ZQKiPL8rmTlhyZkCBsz7/IPLpFjM4JGigIFvNyons1bpXv
 xFxf2C1kLxH/1EyQCfO6NMbX4ahl6J43x67jyUWd8LEJHvpNOgJXglQPz
 xqD9ZJfpwGAcIT0YrE+cFYczRRoNbg5GBD0rMI0V/jFTnhk/qqdpHXypB
 0XUEKK4psqdLyDFdgbfH9awZfnv50O2HnREzaM4dwfHf7ab5159oukZUH
 FyC+7HmSUy8p9d868agw07PLx1qo0uyuOZvTsVJqAtGkKxJKHkCSxa9Yz
 /TteLgHmhEKdk/lamFdiYkn5vWLYEC7THCRyzBacbQWT1J0YddXBH42Ki g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10857"; a="383973652"
X-IronPort-AV: E=Sophos;i="6.03,209,1694761200"; d="scan'208";a="383973652"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2023 01:30:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10857"; a="1000121751"
X-IronPort-AV: E=Sophos;i="6.03,209,1694761200"; d="scan'208";a="1000121751"
Received: from mquirke-mobl.ger.corp.intel.com (HELO [10.213.207.90])
 ([10.213.207.90])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2023 01:30:58 -0700
Message-ID: <38d88f52-4efa-fab8-f849-8a4568c2d473@linux.intel.com>
Date: Mon, 9 Oct 2023 09:30:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: John Harrison <john.c.harrison@intel.com>,
 Dan Carpenter <dan.carpenter@linaro.org>, matthew.brost@intel.com
References: <c31cab01-344b-4117-b14f-1191c611358f@moroto.mountain>
 <48253c7a-09ef-d778-c036-9f75283d9751@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <48253c7a-09ef-d778-c036-9f75283d9751@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [bug report] drm/i915: Move submission tasklet to
 i915_sched_engine
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


On 06/10/2023 19:50, John Harrison wrote:
> Tvrtko, would you have any thoughts on this one?

I wasn't really involved in that work so without digging deep can only 
say that smatch seems to be noticing a genuine inconsistency. Whether or 
not it is possible at runtime Matt should know better.

3e28d37146db ("drm/i915: Move priolist to new i915_sched_engine object") 
is what added the if (ve->base.sched_engine) guard - maybe that isn't 
needed, I don't know.

Regards,

Tvrtko


> On 10/4/2023 02:57, Dan Carpenter wrote:
>> Hello Matthew Brost,
>>
>> This is a semi-automatic email about new static checker warnings.
>>
>> The patch 22916bad07a5: "drm/i915: Move submission tasklet to
>> i915_sched_engine" from Jun 17, 2021, leads to the following Smatch
>> complaint:
>>
>>      drivers/gpu/drm/i915/gt/intel_execlists_submission.c:3659 
>> rcu_virtual_context_destroy()
>>      warn: variable dereferenced before check 've->base.sched_engine' 
>> (see line 3633)
>>
>> drivers/gpu/drm/i915/gt/intel_execlists_submission.c
>>    3632         */
>>    3633        tasklet_kill(&ve->base.sched_engine->tasklet);
>>                               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
>> The patch introduced a new dereference here
>>
>>    3634
>>    3635        /* Decouple ourselves from the siblings, no more access 
>> allowed. */
>>    3636        for (n = 0; n < ve->num_siblings; n++) {
>>    3637            struct intel_engine_cs *sibling = ve->siblings[n];
>>    3638            struct rb_node *node = &ve->nodes[sibling->id].rb;
>>    3639
>>    3640            if (RB_EMPTY_NODE(node))
>>    3641                continue;
>>    3642
>>    3643            spin_lock_irq(&sibling->sched_engine->lock);
>>    3644
>>    3645            /* Detachment is lazily performed in the 
>> sched_engine->tasklet */
>>    3646            if (!RB_EMPTY_NODE(node))
>>    3647                rb_erase_cached(node, 
>> &sibling->execlists.virtual);
>>    3648
>>    3649            spin_unlock_irq(&sibling->sched_engine->lock);
>>    3650        }
>>    3651        
>> GEM_BUG_ON(__tasklet_is_scheduled(&ve->base.sched_engine->tasklet));
>>    3652        GEM_BUG_ON(!list_empty(virtual_queue(ve)));
>>    3653
>>    3654        lrc_fini(&ve->context);
>>    3655        intel_context_fini(&ve->context);
>>    3656
>>    3657        if (ve->base.breadcrumbs)
>>    3658            intel_breadcrumbs_put(ve->base.breadcrumbs);
>>    3659        if (ve->base.sched_engine)
>>                      ^^^^^^^^^^^^^^^^^^^^^
>> But previous code had assumed the sched_engine could be NULL.
>>
>>    3660            i915_sched_engine_put(ve->base.sched_engine);
>>    3661        intel_engine_free_request_pool(&ve->base);
>>
>> regards,
>> dan carpenter
> 
