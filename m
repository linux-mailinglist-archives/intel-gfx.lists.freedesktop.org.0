Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BB19219F77
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jul 2020 14:00:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 860296EA4C;
	Thu,  9 Jul 2020 11:59:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BBE06EA4C
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jul 2020 11:59:57 +0000 (UTC)
IronPort-SDR: mjhf8L+ZZ/MQkFiSuqobrGl6GNmLmbRZ9tpzPxHnWyu9UalP9J9b/k+leW2E7cowPUo5wfS3Qb
 veL6l1qUT84A==
X-IronPort-AV: E=McAfee;i="6000,8403,9676"; a="136206109"
X-IronPort-AV: E=Sophos;i="5.75,331,1589266800"; d="scan'208";a="136206109"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2020 04:59:57 -0700
IronPort-SDR: IT5q0LAXLPokRhyvWVbQ2qqc5tIYD5V58wPTTI7m/EFMJZYYhBigJSGlcqLCYQAF/KU8qlvd2F
 LWMQN9pTtb6A==
X-IronPort-AV: E=Sophos;i="5.75,331,1589266800"; d="scan'208";a="457881700"
Received: from unknown (HELO [10.251.164.218]) ([10.251.164.218])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2020 04:59:55 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200706061926.6687-1-chris@chris-wilson.co.uk>
 <20200706061926.6687-10-chris@chris-wilson.co.uk>
 <427a43a2-c434-6239-5101-87209472def9@linux.intel.com>
 <159421217807.17526.6465016562541726599@build.alporthouse.com>
 <dfc69bdb-eb8c-9746-eabb-434a263357de@linux.intel.com>
 <159422257929.17526.13795947568657610354@build.alporthouse.com>
 <71aaf1cf-9d3a-6681-c9b0-fc25144b86b0@linux.intel.com>
 <159429284100.22162.194646133366627797@build.alporthouse.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <0af3b19d-ea9e-9558-ca4a-853070f8662e@linux.intel.com>
Date: Thu, 9 Jul 2020 12:59:51 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <159429284100.22162.194646133366627797@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 09/20] drm/i915/gem: Assign context id for
 async work
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


On 09/07/2020 12:07, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2020-07-09 12:01:29)
>>
>> On 08/07/2020 16:36, Chris Wilson wrote:
>>> Quoting Tvrtko Ursulin (2020-07-08 15:24:20)
>>>> And what is the effective behaviour you get with N contexts - emit N
>>>> concurrent operations and for N + 1 block in execbuf?
>>>
>>> Each context defines a timeline. A task is not ready to run until the
>>> task before it in its timeline is completed. So we don't block in
>>> execbuf, the scheduler waits until the request is ready before putting
>>> it into the HW queues -- i.e. the number chain of fences with everything
>>> that entails about ensuring it runs to completion [whether successfully
>>> or not, if not we then rely on the error propagation to limit the damage
>>> and report it back to the user if they kept a fence around to inspect].
>>
>> Okay but what is the benefit of N contexts in this series, before the
>> work is actually spread over ctx async width CPUs? Is there any? If not
>> I would prefer this patch is delayed until the time some actual
>> parallelism is ready to be added.
> 
> We currently submit an unbounded amount of work. This patch is added
> along with its user to restrict the amount of work allowed to run in
> parallel, and also is used to [crudely] serialise the multiple threads
> attempting to allocate space in the vm when we completely exhaust that
> address space. We need at least one fence-context id for each user, this
> took the opportunity to generalise that to N ids for each user.

Right, this is what I asked at the beginning - restricting amount of 
work run in parallel - does mean there is some "blocking"/serialisation 
during execbuf? Or it is all async but then what is restricted?

Regards,

Tvrtko


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
