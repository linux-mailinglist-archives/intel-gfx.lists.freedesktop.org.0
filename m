Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0885F31866C
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Feb 2021 09:47:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 478226E418;
	Thu, 11 Feb 2021 08:47:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D5636E418
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Feb 2021 08:47:01 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.69.177; 
Received: from localhost (unverified [78.156.69.177]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23834852-1500050 for multiple; Thu, 11 Feb 2021 08:46:55 +0000
MIME-Version: 1.0
In-Reply-To: <20210211042841.GK82362@intel.com>
References: <20210210221955.10025-1-chris@chris-wilson.co.uk>
 <20210210221955.10025-2-chris@chris-wilson.co.uk>
 <20210211042841.GK82362@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Date: Thu, 11 Feb 2021 08:46:53 +0000
Message-ID: <161303321397.13035.14868795465871063538@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 2/6] drm/i915: Clear internal GT state on
 hibernate
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

Quoting Rodrigo Vivi (2021-02-11 04:28:41)
> On Wed, Feb 10, 2021 at 10:19:51PM +0000, Chris Wilson wrote:
> > Call intel_gt_suspend_late() to disable the GT before hibernation.
> > 
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > ---
> >  drivers/gpu/drm/i915/gem/i915_gem_pm.c | 2 ++
> >  1 file changed, 2 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pm.c b/drivers/gpu/drm/i915/gem/i915_gem_pm.c
> > index 000e1cd8e920..da0ef483ad6b 100644
> > --- a/drivers/gpu/drm/i915/gem/i915_gem_pm.c
> > +++ b/drivers/gpu/drm/i915/gem/i915_gem_pm.c
> > @@ -115,6 +115,8 @@ int i915_gem_freeze_late(struct drm_i915_private *i915)
> >        * the objects as well, see i915_gem_freeze()
> >        */
> >  
> > +     intel_gt_suspend_late(&i915->gt);
> > +
> 
> why are you calling this here instead of directly in i915_drm_suspend_late ?

For symmetry with the current code paths.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
