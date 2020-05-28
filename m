Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FF7A1E5D01
	for <lists+intel-gfx@lfdr.de>; Thu, 28 May 2020 12:20:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B42306E143;
	Thu, 28 May 2020 10:20:13 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 698896E143
 for <Intel-gfx@lists.freedesktop.org>; Thu, 28 May 2020 10:20:12 +0000 (UTC)
IronPort-SDR: /xwPwsgSvFWYFKxfqm0YpZX+BYlpU+/HcxopHBe2lBrOv8RiS7SmyxDW4yofxuWEuBRxFh7WdG
 dDRn/iiJiauQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2020 03:20:11 -0700
IronPort-SDR: BDBwheMHiZVbWdc9xXYH9SqqHrjhD37lKCLkXHF8U+9OwrXJC5vva4RreK9d9zAmpScoKcmxxV
 6A9XtEkUlL8Q==
X-IronPort-AV: E=Sophos;i="5.73,444,1583222400"; d="scan'208";a="414557108"
Received: from nshani-mobl.ger.corp.intel.com (HELO [10.214.219.87])
 ([10.214.219.87])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2020 03:20:10 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, Intel-gfx@lists.freedesktop.org
References: <20200527085322.25861-1-tvrtko.ursulin@linux.intel.com>
 <159065984908.10651.3817818286053938468@build.alporthouse.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <8f1c20cb-b538-97c1-a953-772d75c232bd@linux.intel.com>
Date: Thu, 28 May 2020 11:20:07 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <159065984908.10651.3817818286053938468@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Special handling for bonded
 requests
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
Cc: Xiaogang Li <xiaogang.li@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 28/05/2020 10:57, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2020-05-27 09:53:22)
>> +static void
>> +mark_bonded_pair(struct i915_request *rq, struct i915_request *signal)
>> +{
>> +       /*
>> +        * Give (temporary) special meaning to a pair requests with requested
>> +        * aligned start along the video engines.
>> +        *
>> +        * They should be non-preemptable and have all ELSP ports to themselves
>> +        * to avoid any deadlocks caused by inversions.
>> +        *
>> +        * Gen11+
>> +        */
>> +       if (INTEL_GEN(rq->i915) < 11 ||
>> +           rq->engine->class != VIDEO_DECODE_CLASS ||
>> +           rq->engine->class != signal->engine->class)
>> +               return;
>> +
>> +       set_bit(I915_FENCE_FLAG_NOPREEMPT, &rq->fence.flags);
>> +       set_bit(I915_FENCE_FLAG_NOPREEMPT, &signal->fence.flags);
>> +
>> +       intel_context_set_single_submission(rq->context);
>> +       intel_context_set_single_submission(signal->context);
> 
> The thought that just popped into my head:
> 
> This can be after signal is already submitted into ELSP[1].

Yep I knew that but thought it would still work.

Master in vcs0 port1, slave in vcs1 port0 or queued.

If queued that means at worst case another bonded pair is running on 
same engines, so they should be able to complete.

If slave submitted to vcs1 port0 then it will stay there until whatever 
is in vcs0 port0 finishes and lets master in.

Do you see a possibility for things to go bad?

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
