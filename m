Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CBEB612D1D8
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Dec 2019 17:17:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33E4089F35;
	Mon, 30 Dec 2019 16:17:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDAAB89F35
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Dec 2019 16:17:19 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19727874-1500050 for multiple; Mon, 30 Dec 2019 16:17:15 +0000
MIME-Version: 1.0
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <87mub9reg9.fsf@gaia.fi.intel.com>
References: <20191230134349.3806558-1-chris@chris-wilson.co.uk>
 <87mub9reg9.fsf@gaia.fi.intel.com>
Message-ID: <157772263265.3861.1185820035987453598@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 30 Dec 2019 16:17:12 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Flush the context worker
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Mika Kuoppala (2019-12-30 16:00:22)
> Chris Wilson <chris@chris-wilson.co.uk> writes:
> 
> > When cleaning up the mock device, remember to flush the context worker
> > to free the residual GEM contexts before shutting down the device.
> >
> > Closes: https://gitlab.freedesktop.org/drm/intel/issues/802
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Matthew Auld <matthew.auld@intel.com>
> > ---
> >  drivers/gpu/drm/i915/i915_gem.c                  | 4 ++--
> >  drivers/gpu/drm/i915/selftests/mock_gem_device.c | 2 ++
> >  2 files changed, 4 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
> > index 9ddcf17230e6..a3d701b50a6b 100644
> > --- a/drivers/gpu/drm/i915/i915_gem.c
> > +++ b/drivers/gpu/drm/i915/i915_gem.c
> > @@ -1172,6 +1172,8 @@ void i915_gem_driver_remove(struct drm_i915_private *dev_priv)
> >  
> >  void i915_gem_driver_release(struct drm_i915_private *dev_priv)
> >  {
> > +     i915_gem_driver_release__contexts(dev_priv);
> > +
> >       intel_gt_driver_release(&dev_priv->gt);
> >  
> >       intel_wa_list_free(&dev_priv->gt_wa_list);
> > @@ -1179,8 +1181,6 @@ void i915_gem_driver_release(struct drm_i915_private *dev_priv)
> >       intel_uc_cleanup_firmwares(&dev_priv->gt.uc);
> >       i915_gem_cleanup_userptr(dev_priv);
> >  
> > -     i915_gem_driver_release__contexts(dev_priv);
> > -
> 
> Have I missed some memo on double underscores?

Nah, it's something I've tried that has caught on. For situations like
this where we are calling a subroutine for a subphase, and not operating
on a subobject.

We could do i915_gem_contexts_driver_release(&i915->gem.contexts) which is
probably more sensible now that we have i915->gem.contexts.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
