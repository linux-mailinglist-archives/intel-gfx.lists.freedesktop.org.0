Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C69A414CB2A
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jan 2020 14:10:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BDA289A5D;
	Wed, 29 Jan 2020 13:10:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4BD789565
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Jan 2020 13:10:14 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Jan 2020 05:10:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,378,1574150400"; d="scan'208";a="247052257"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga002.jf.intel.com with ESMTP; 29 Jan 2020 05:10:04 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 1C7275C1DFA; Wed, 29 Jan 2020 15:09:17 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <158029040255.10244.7113266483710281976@skylake-alporthouse-com>
References: <20200128171614.3845825-1-chris@chris-wilson.co.uk>
 <87k15aa9vc.fsf@gaia.fi.intel.com>
 <158029040255.10244.7113266483710281976@skylake-alporthouse-com>
Date: Wed, 29 Jan 2020 15:09:17 +0200
Message-ID: <87h80e9zpe.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/execlist: Mark up racy read of
 execlists->pending[0]
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris Wilson <chris@chris-wilson.co.uk> writes:

> Quoting Mika Kuoppala (2020-01-29 09:29:43)
>> Chris Wilson <chris@chris-wilson.co.uk> writes:
>> 
>> > We write to execlists->pending[0] in process_csb() to acknowledge the
>> > completion of the ESLP update, outside of the main spinlock. When we
>> > check the current status of the previous submission in
>> > __execlists_submission_tasklet() we should therefore use READ_ONCE() to
>> > reflect and document the unsynchronized read.
>> >
>> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
>> > Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>> > ---
>> >  drivers/gpu/drm/i915/gt/intel_lrc.c | 2 +-
>> >  1 file changed, 1 insertion(+), 1 deletion(-)
>> >
>> > diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
>> > index cf6c43bd540a..058484958e87 100644
>> > --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
>> > +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
>> > @@ -2347,7 +2347,7 @@ static void process_csb(struct intel_engine_cs *engine)
>> >  static void __execlists_submission_tasklet(struct intel_engine_cs *const engine)
>> >  {
>> >       lockdep_assert_held(&engine->active.lock);
>> > -     if (!engine->execlists.pending[0]) {
>> > +     if (!READ_ONCE(engine->execlists.pending[0])) {
>> 
>> With same token, should we also include assert_pending_invalid()
>> read of pending with READ_ONCE?
>
> That happens on the control paths, so the state of pending[] at that
> point should be static (and the compiler can be left to its own
> devices).

It should be static. Fair enough

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
