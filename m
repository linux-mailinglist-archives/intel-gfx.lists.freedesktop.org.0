Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E8FF811BFE7
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2019 23:35:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 171206EC05;
	Wed, 11 Dec 2019 22:34:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 439AB89DC9
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2019 22:34:57 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Dec 2019 14:34:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,303,1571727600"; d="scan'208";a="388094597"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by orsmga005.jf.intel.com with ESMTP; 11 Dec 2019 14:34:56 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191211211244.7831-1-daniele.ceraolospurio@intel.com>
 <20191211211244.7831-6-daniele.ceraolospurio@intel.com>
 <157609988550.27099.9421610954504392154@skylake-alporthouse-com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <062ab6cc-ca22-d2cb-7b73-ef5516b04cc3@intel.com>
Date: Wed, 11 Dec 2019 14:35:05 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <157609988550.27099.9421610954504392154@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [RFC 5/5] drm/i915: introduce
 intel_execlists_submission.<c/h>
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

<snip>


>> +
>> +struct i915_request *
>> +execlists_unwind_incomplete_requests(struct intel_engine_execlists *execlists)
> 
> There should be no exports from this file... Did you not also make
> guc_submission standalone?
> 

The new GuC submission code will have its own 
_unwind_incomplete_requests function, just didn't seem worth it copying 
this to the GuC file now to make this static and get rid of it later. 
The current version of the GuC patches (being worked on by Matt) is also 
not yet fully standalone, but we're moving into that direction.


<snip>

>> +bool
>> +intel_engine_in_execlists_submission_mode(const struct intel_engine_cs *engine)
>> +{
>> +       return engine->set_default_submission ==
>> +              intel_execlists_set_default_submission;
>> +}
> 
> The breadcrumb submission code is specialised to execlists and should
> not be shared (leaves emit_flush, emit_bb_start as common
> gen8_submission.c). The reset code is specialised to execlists and should not
> be shared. The virtual engine is specialised to execlists and should not
> be shared. Even submit_request should be distinct between guc and
> execlists, especially request_alloc (which you may like to put on the
> context_ops rather than engine)
> -Chris
> 

engine->reset.*, request_alloc and submit_request have all been moved to 
execlists_submission.c in this patch, with the aim of not sharing them.

For the virtual engine, I've moved the submission related chunks to 
execlists_submission.c as well (see the new 
intel_execlists_virtual_submission_init, although I could probably move 
a few extra bits in there). As I mentioned on the other reply, other 
parts do seem quite generic to me, but let's keep this chunk of the 
discussion on the other thread.

Regarding the breadcrumb code, IMO we do still want to share most of it 
(seqno writing, interrupt, MI_ARB_CHECK, wa_tail), but we most likely 
won't need the preempt_busywait. Given this, it didn't feel right to me 
to move the relevant code out of the file until we get some more mature 
GuC code to make a cleaner call.

Daniele
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
