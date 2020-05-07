Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 03F681C8535
	for <lists+intel-gfx@lfdr.de>; Thu,  7 May 2020 10:58:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 547306E961;
	Thu,  7 May 2020 08:58:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 10E886E961
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 May 2020 08:58:12 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21135808-1500050 for multiple; Thu, 07 May 2020 09:58:11 +0100
MIME-Version: 1.0
In-Reply-To: <87zhak5dv8.fsf@intel.com>
References: <20200503180034.20010-1-chris@chris-wilson.co.uk>
 <87zhak5dv8.fsf@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Jani Nikula <jani.nikula@linux.intel.com>, intel-gfx@lists.freedesktop.org
Message-ID: <158884188905.927.6811486536752543306@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Thu, 07 May 2020 09:58:09 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Warn if the FBC is still
 writing to stolen on removal
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

Quoting Jani Nikula (2020-05-07 09:49:15)
> On Sun, 03 May 2020, Chris Wilson <chris@chris-wilson.co.uk> wrote:
> > If the FBC is still writing into stolen, it will overwrite any future
> > users of that stolen region. Check before release.
> >
> > References: https://gitlab.freedesktop.org/drm/intel/-/issues/1635
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > ---
> >  drivers/gpu/drm/i915/display/intel_fbc.c | 3 +++
> >  1 file changed, 3 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> > index c6afa10e814c..37244ed92ae4 100644
> > --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> > @@ -540,6 +540,9 @@ static void __intel_fbc_cleanup_cfb(struct drm_i915_private *dev_priv)
> >  {
> >       struct intel_fbc *fbc = &dev_priv->fbc;
> >  
> > +     if (WARN_ON(intel_fbc_hw_is_active(dev_priv)))
> 
> drm_WARN_ON() ;)

I'm hoping that by the time you get around to it, we will have a drm-tip
idle run which will tell us whether or not this is barking up the wrong
tree.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
