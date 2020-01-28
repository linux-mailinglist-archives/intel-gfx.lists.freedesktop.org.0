Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B2F214C31E
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jan 2020 23:44:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02A216E25B;
	Tue, 28 Jan 2020 22:44:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 322116E25B
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jan 2020 22:44:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Jan 2020 14:44:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,375,1574150400"; d="scan'208";a="217770122"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by orsmga007.jf.intel.com with ESMTP; 28 Jan 2020 14:44:47 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200128204318.4182039-1-chris@chris-wilson.co.uk>
 <20200128204318.4182039-5-chris@chris-wilson.co.uk>
 <0f1a8ffd-e146-95a5-0c65-c48d77bc12ef@intel.com>
 <158024931625.7621.2130972792240757300@skylake-alporthouse-com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <0447cfad-cd01-a0b4-ad70-446e3edda50f@intel.com>
Date: Tue, 28 Jan 2020 14:44:25 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <158024931625.7621.2130972792240757300@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 5/5] drm/i915/gt: Split logical ring context
 manipulation into intel_lrc.c
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



On 1/28/20 2:08 PM, Chris Wilson wrote:
> Quoting Daniele Ceraolo Spurio (2020-01-28 21:55:02)
>>
>>
>> On 1/28/20 12:43 PM, Chris Wilson wrote:
>>> Extract the core functions for setting up the machine dependent logical
>>> ring context to intel_lrc.c. This will be shared by all submission
>>> backends that utilise logical ring contexts.
>>>
>>
>> I still don't understand why you don't want to put the lrc and ring
>> object creation and initial setup (populate_lr_context) somewhere
> 
> The initial setup is common in intel_lrc.c, the rest is really just
> mapping the local context layout, which will vary depending on the
> different abstractions for the backends.
> 
>> common. I see no way we could do that differently for GuC submission,
>> since the HW obviously requires the same objects and IMO it makes sense
>> to keep the same initialization flow, so we'd have to copy that logic
>> and maintain 2 identical copies of it. The redzone is the only thing
>> that is not hw-enforced, but I believe it makes sense to keep that on
>> the GuC side as well to catch possible issues. Or am I missing something?
> 
> They don't have the same execution flow, and I expect the differences in
> context bookkeeping will continue to grow. Certainly there's an
> abstraction around virtual engines to come, because the current struct
> is heavily tied into the backend.

Yes, virtual engines are definitely going to look a lot different with 
GuC submission since the GuC is going to do all the balancing work, but 
the objects involved are still going to be the same. To give you a rough 
idea, from our POV there is not going to be any extra work needed for a 
virtual context compared to a normal one, with the exception of setting 
a mask within a GuC structure to specify which engines the context is 
allowed to run on.

Anyway, I understand that without all the GuC code in place it isn't 
easy to see exactly how this is going to pan out, so I'm ok with 
duplicating that part as well for now and we can re-unify later if we 
think it makes sense. I'll review the patch in a bit more detail as I 
only skimmed through it earlier and spot-checked the functions I was 
more interested in.

Daniele

> 
> populate_lr_context is one that might be shared, but I just didn't see
> much point in sharing a couple of very minor routines, when the
> common mechanism is available. I'm still waiting for the other shoe to
> fall and wide-contexts to become a necessity again.
> -Chris
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
