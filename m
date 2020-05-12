Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D2CE1CF228
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2020 12:12:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DBE2B6E08C;
	Tue, 12 May 2020 10:12:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EEC296E08C
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 May 2020 10:12:27 +0000 (UTC)
IronPort-SDR: Ss/lwU/nXURBiOkL6LrUyi0iuRw6AyXswA4Gak6/uQyzPnBqwYvmFQa+ukSPVr5SeMoP+pc/N5
 wr0jILKw+aow==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2020 03:12:27 -0700
IronPort-SDR: ABDsPMetfCis9ib1cOlLUc4QS/Vi8/qY9BmLSN+L/zAsSrLyfw8mFcftwqRqeZwLR23iB7fBuS
 0VCOYOpLrCMQ==
X-IronPort-AV: E=Sophos;i="5.73,383,1583222400"; d="scan'208";a="437046709"
Received: from dhelmanx-mobl2.ger.corp.intel.com (HELO [10.214.209.74])
 ([10.214.209.74])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2020 03:12:25 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200511075722.13483-1-chris@chris-wilson.co.uk>
 <20200511075722.13483-2-chris@chris-wilson.co.uk>
 <0f0dbddc-3733-40d6-060c-36e2da9e42fb@linux.intel.com>
 <158927336578.15653.17606758936318781729@build.alporthouse.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <eebc8a12-1204-e619-f7bd-df607e839ad7@linux.intel.com>
Date: Tue, 12 May 2020 11:12:23 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <158927336578.15653.17606758936318781729@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 02/20] drm/i915/gt: Couple up old virtual
 breadcrumb on new sibling
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


On 12/05/2020 09:49, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2020-05-12 09:41:01)
>> On 11/05/2020 08:57, Chris Wilson wrote:
>>> The second try at staging the transfer of the breadcrumb. In part one,
>>> we realised we could not simply move to the second engine as we were
>>> only holding the breadcrumb lock on the first. So in commit 6c81e21a4742
>>> ("drm/i915/gt: Stage the transfer of the virtual breadcrumb"), we
>>> removed it from the first engine and marked up this request to reattach
>>> the signaling on the new engine. However, this failed to take into
>>> account that we only attach the breadcrumb if the new request is added
>>> at the start of the queue, which if we are transferring, it is because
>>> we know there to be a request to be signaled (and hence we would not be
>>> attached). In this second try, we remove from the first list under its
>>> lock, take ownership of the link, and then take the second lock to
>>> complete the transfer.
>>
>> Overall just an optimisation not to call i915_request_enable_breadcrumb,
>> I mean not add to the list indirectly?
> 
> The request that we need to add already has its breadcrumb enabled. The
> request is on the veng->context.signals list, it's just that the veng is
> on siblings[0] signalers list and we are no longer guaranteed to
> generate an interrupt on engine.
> 
> There's an explosion in the current code due to the lists not moving
> as expected on enabling the breadcrumb on the next request (because of
>                  if (pos == &ce->signals) /* catch transitions from empty list */
>                          list_move_tail(&ce->signal_link, &b->signalers);
> 
> )
> 
> The explosion is on a dead list, but has on a couple of occasions looked
> like
> 
> <4> [373.551331] RIP: 0010:i915_request_enable_breadcrumb+0x144/0x380 [i915]
> <4> [373.551341] Code: c7 c2 20 f1 42 c0 48 c7 c7 77 85 28 c0 e8 44 bc f2 ec bf 01 00 00 00 e8 5a 8e f2 ec 31 f6 bf 09 00 00 00 e8 6e 09 e3 ec 0f 0b <3b> 45 80 0f 89 5d ff ff ff 48 8b 6d 08 4c 39 e5 75 ee 49 8b 4d 38
> <4> [373.551356] RSP: 0018:ffffb64d0114b9f8 EFLAGS: 00010083
> <4> [373.551363] RAX: 00000000000036b2 RBX: ffffa310385096c0 RCX: 0000000000000003
> <4> [373.551372] RDX: 00000000000036b2 RSI: 000000002ac5cf63 RDI: 00000000ffffffff
> <4> [373.551379] RBP: dead000000000122 R08: ffffa31047075a50 R09: 00000000fffffffe
> <4> [373.551385] R10: 0000000053a90a70 R11: 000000005e84b7e5 R12: ffffa3103fde38c0
> <4> [373.551392] R13: ffffa3103fde3888 R14: ffffa30ff0982328 R15: ffffa30ff0982000
> <4> [373.551401] FS:  00007f19f3359e40(0000) GS:ffffa3104ed00000(0000) knlGS:0000000000000000
> <4> [373.551410] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> <4> [373.551414] CR2: 00007f19f2aac778 CR3: 0000000232b0c004 CR4: 00000000003606e0
> <4> [373.551421] Call Trace:
> <4> [373.551466]  ? dma_i915_sw_fence_wake+0x40/0x40 [i915]
> <4> [373.551506]  ? dma_i915_sw_fence_wake+0x40/0x40 [i915]
> <4> [373.551515]  __dma_fence_enable_signaling+0x60/0x160
> <4> [373.551558]  ? dma_i915_sw_fence_wake+0x40/0x40 [i915]
> <4> [373.551564]  dma_fence_add_callback+0x44/0xd0
> <4> [373.551605]  __i915_sw_fence_await_dma_fence+0x6f/0xc0 [i915]
> <4> [373.551665]  __i915_request_commit+0x442/0x5b0 [i915]
> <4> [373.551721]  i915_gem_do_execbuffer+0x17fb/0x2eb0 [i915]
> 
> kasan/kcsan do not complain; it's just a broken list.

Which list gets broken? But it does sound plausible that intel_lrc.c 
messing around the breadcrumb lists directly could cause a problem due 
special handling on empty <-> non-empty ce signalers transitions.

Maybe virtual_xfer_breadcrumbs should be moved to intel_breadcrumbs.c, 
well moved.. breadcrumb internal logic moved, veng left in intel_lrc.c:

static void
virtual_xfer_breadcrumbs(struct virtual_engine *ve,
			 struct intel_engine_cs *target)
{
	intel_breadcrumbs_transfer(ve->context,
				   ve->siblings[0],
				   target);
}

?

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
