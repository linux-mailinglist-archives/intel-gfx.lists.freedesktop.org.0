Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CFF71D0A8A
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2020 10:10:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 811596E126;
	Wed, 13 May 2020 08:10:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9FAE56E126
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 May 2020 08:10:52 +0000 (UTC)
IronPort-SDR: kg9iZ6yoCmdJqRZBoM3/I8Gal4cYDF7VAokybE6MDFulIOaWmsnRRxDF3fUw5T9edVRfhoWEiK
 u5IUmHQebDkQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2020 01:10:51 -0700
IronPort-SDR: qN8LYtn392TZw402eSg/5Fh/i71u8+KmuwkS3nxiDM1ZmXIeES1WmR323cVuPyW7E866vRarq7
 qlXK+/cWtTmw==
X-IronPort-AV: E=Sophos;i="5.73,387,1583222400"; d="scan'208";a="437411947"
Received: from premrein-mobl1.ger.corp.intel.com (HELO [10.252.50.237])
 ([10.252.50.237])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2020 01:10:50 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200512132255.20537-1-chris@chris-wilson.co.uk>
 <561ef231-3894-5f9e-d3f2-629537801fb6@linux.intel.com>
 <158929873346.20930.5498889568935361289@build.alporthouse.com>
 <2bbf7b12-2220-e993-b324-c0962bd065a5@linux.intel.com>
 <158930042365.20930.7538247247159812047@build.alporthouse.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <5db3e3de-0227-c33c-6576-530df7f91634@linux.intel.com>
Date: Wed, 13 May 2020 09:10:48 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <158930042365.20930.7538247247159812047@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/gt: Transfer old virtual
 breadcrumbs to irq_worker
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


On 12/05/2020 17:20, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2020-05-12 17:07:23)
>>
>> On 12/05/2020 16:52, Chris Wilson wrote:
>>> Quoting Tvrtko Ursulin (2020-05-12 16:17:30)
>>>>
>>>> On 12/05/2020 14:22, Chris Wilson wrote:
>>>>> -     spin_lock(&old->breadcrumbs.irq_lock);
>>>>> -     if (!list_empty(&ve->context.signal_link)) {
>>>>> -             list_del_init(&ve->context.signal_link);
>>>>> -
>>>>> -             /*
>>>>> -              * We cannot acquire the new engine->breadcrumbs.irq_lock
>>>>> -              * (as we are holding a breadcrumbs.irq_lock already),
>>>>> -              * so attach this request to the signaler on submission.
>>>>> -              * The queued irq_work will occur when we finally drop
>>>>> -              * the engine->active.lock after dequeue.
>>>>> -              */
>>>>> -             set_bit(DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT, &rq->fence.flags);
>>>>> -
>>>>> -             /* Also transfer the pending irq_work for the old breadcrumb. */
>>>>> -             intel_engine_signal_breadcrumbs(rq->engine);
>>>>> -     }
>>>>> -     spin_unlock(&old->breadcrumbs.irq_lock);
>>>>> +     intel_engine_transfer_breadcrumbs(ve->siblings[0], &ve->context);
>>>>
>>>> But isn't ve->siblings[0] the old engine at this point so new target
>>>> engine would have to be explicitly passed in?
>>>
>>> ve->siblings[0] is the old engine, which is holding the completed
>>> requests and their signals. Since their rq->engine == ve->siblings[0]
>>> and we can't update rq->engine as we can't take the required locks, we
>>> need to keep the breadcrumbs relative to ve->siblings[0] and not the new
>>> engine (the i915_request_cancel_breadcrumb conundrum).
>>
>> Who then enables breadcrumbs on the new engine?
> 
> If we enable signaling on the request we are about to submit, that
> will enable the breadcrumbs on the new engine. We've cleared out
> ce->signals and removed it from the old engine, so as soon as we want to
> enable a new breadcrumb, it will be attached to the [new] rq->engine.

So current code was wrong to think it needed to set 
DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT? Should it instead assert it is set? 
Because if it is not set signalling on the new engine won't be enabled.

Regards,

Tvrtko

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
