Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 27CC22FCD87
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Jan 2021 10:43:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C843389E86;
	Wed, 20 Jan 2021 09:43:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 038B689E86
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Jan 2021 09:43:23 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23647123-1500050 for multiple; Wed, 20 Jan 2021 09:43:16 +0000
MIME-Version: 1.0
In-Reply-To: <20210119180154.GK21197@mdroper-desk1.amr.corp.intel.com>
References: <20210114103822.1766-1-chris@chris-wilson.co.uk>
 <20210119180154.GK21197@mdroper-desk1.amr.corp.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Matt Roper <matthew.d.roper@intel.com>
Date: Wed, 20 Jan 2021 09:43:15 +0000
Message-ID: <161113579581.5143.17048689798317475031@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH v2 1/2] drm/i915/selftests: Exercise
 relative mmio paths to non-privileged registers
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Matt Roper (2021-01-19 18:01:54)
> On Thu, Jan 14, 2021 at 10:38:21AM +0000, Chris Wilson wrote:
> > Verify that context isolation is also preserved when accessing
> > context-local registers with relative-mmio commands.
> > 
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > ---
> >  drivers/gpu/drm/i915/gt/selftest_lrc.c | 88 ++++++++++++++++++++------
> >  1 file changed, 67 insertions(+), 21 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> > index 920979a89413..a55cbf524692 100644
> > --- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
> > +++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> > @@ -911,7 +911,9 @@ create_user_vma(struct i915_address_space *vm, unsigned long size)
> >  }
> >  
> >  static struct i915_vma *
> > -store_context(struct intel_context *ce, struct i915_vma *scratch)
> > +store_context(struct intel_context *ce,
> > +           struct i915_vma *scratch,
> > +           bool relative)
> >  {
> >       struct i915_vma *batch;
> >       u32 dw, x, *cs, *hw;
> > @@ -940,6 +942,9 @@ store_context(struct intel_context *ce, struct i915_vma *scratch)
> >       hw += LRC_STATE_OFFSET / sizeof(*hw);
> >       do {
> >               u32 len = hw[dw] & 0x7f;
> > +             u32 cmd = MI_STORE_REGISTER_MEM_GEN8;
> > +             u32 offset = 0;
> > +             u32 mask = ~0;
> >  
> >               if (hw[dw] == 0) {
> >                       dw++;
> > @@ -951,11 +956,19 @@ store_context(struct intel_context *ce, struct i915_vma *scratch)
> >                       continue;
> >               }
> >  
> > +             if (hw[dw] & MI_LRI_LRM_CS_MMIO) {
> > +                     mask = 0xfff;
> > +                     if (relative)
> > +                             cmd |= MI_LRI_LRM_CS_MMIO;
> > +                     else
> > +                             offset = ce->engine->mmio_base;
> > +             }
> 
> Do we also need to handle bit 17 (MMIO remap) here too?  E.g., a context
> running on a VCS2 engine could have addresses that reference VCS0 if
> this bit is set.

That bit is not used in the context images yet. I hope that is not being
ignored by selftests in the future.

As it stands, the selftests will report the discrepancy if the HW is
using another remap bit.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
