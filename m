Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D98BB2FB58B
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Jan 2021 12:06:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B6C26E16F;
	Tue, 19 Jan 2021 11:06:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61DC56E16F
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Jan 2021 11:06:14 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23637589-1500050 for multiple; Tue, 19 Jan 2021 11:06:11 +0000
MIME-Version: 1.0
In-Reply-To: <87im7tgpj0.fsf@gaia.fi.intel.com>
References: <20210119094053.6919-1-chris@chris-wilson.co.uk>
 <20210119094053.6919-5-chris@chris-wilson.co.uk>
 <87im7tgpj0.fsf@gaia.fi.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Tue, 19 Jan 2021 11:06:10 +0000
Message-ID: <161105437020.19402.3652426537747896830@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 5/5] drm/i915: Mark per-engine-reset as
 supported on gen7
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

Quoting Mika Kuoppala (2021-01-19 11:00:19)
> Chris Wilson <chris@chris-wilson.co.uk> writes:
> 
> > The benefit of only resetting a single engine is that we leave other
> > streams of userspace work intact across a hang; vital for process
> > isolation. We had wired up individual engine resets for gen6, but only
> > enabled it from gen8; now let's turn it on for the forgotten gen7. gen6
> > is still a mystery as how to unravel some global state that appears to
> > be reset along with an engine (in particular the ppgtt enabling in
> > GFX_MODE).
> >
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > ---
> >  drivers/gpu/drm/i915/i915_pci.c | 5 +++--
> >  1 file changed, 3 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> > index 39608381b4a4..020b5f561f07 100644
> > --- a/drivers/gpu/drm/i915/i915_pci.c
> > +++ b/drivers/gpu/drm/i915/i915_pci.c
> > @@ -455,6 +455,7 @@ static const struct intel_device_info snb_m_gt2_info = {
> >       .has_llc = 1, \
> >       .has_rc6 = 1, \
> >       .has_rc6p = 1, \
> > +     .has_reset_engine = true, \
> >       .has_rps = true, \
> >       .dma_mask_size = 40, \
> >       .ppgtt_type = INTEL_PPGTT_ALIASING, \
> > @@ -513,6 +514,7 @@ static const struct intel_device_info vlv_info = {
> >       .cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B),
> >       .has_runtime_pm = 1,
> >       .has_rc6 = 1,
> > +     .has_reset_engine = true,
> >       .has_rps = true,
> >       .display.has_gmch = 1,
> >       .display.has_hotplug = 1,
> > @@ -571,8 +573,7 @@ static const struct intel_device_info hsw_gt3_info = {
> >       .dma_mask_size = 39, \
> >       .ppgtt_type = INTEL_PPGTT_FULL, \
> >       .ppgtt_size = 48, \
> > -     .has_64bit_reloc = 1, \
> > -     .has_reset_engine = 1
> 
> Oh we already did on hsw.

Don't be fooled by diff, it gets very confused by i915_pci.c

This is actually GEN8_FEATURES.
 
> Acked-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

Thanks,
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
