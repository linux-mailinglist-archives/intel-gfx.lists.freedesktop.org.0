Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DD73D2D1403
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Dec 2020 15:50:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 044916E858;
	Mon,  7 Dec 2020 14:50:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2EA2D6E858
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Dec 2020 14:50:22 +0000 (UTC)
IronPort-SDR: 5rcnUn0y5qxm7d15h+fjBoH4QqbP6nupMaV6FfIMAXxJx5M0n4E9vaayPtQYEAboJtjbd1Bt7n
 hj5sTlVYMTtw==
X-IronPort-AV: E=McAfee;i="6000,8403,9827"; a="172943675"
X-IronPort-AV: E=Sophos;i="5.78,399,1599548400"; d="scan'208";a="172943675"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2020 06:50:21 -0800
IronPort-SDR: xm/Uk6eZH6bdxPJJDNMv2vjY74FcsrezcEf6XyL08h38tJv+BiKiJ1l9cYDkus1l4xpOPHAbdy
 3x3l8yiT1M5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,399,1599548400"; d="scan'208";a="407168170"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 07 Dec 2020 06:50:19 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 07 Dec 2020 16:50:18 +0200
Date: Mon, 7 Dec 2020 16:50:18 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <X85BKoARxepLfLgy@intel.com>
References: <20201127220548.3713-1-chris@chris-wilson.co.uk>
 <20201201160517.GX6112@intel.com>
 <160686233758.408.13656920081137084390@build.alporthouse.com>
 <X8pdR3wUue1tNhJJ@intel.com>
 <160709844559.20460.2447602113685186052@build.alporthouse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <160709844559.20460.2447602113685186052@build.alporthouse.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Disable outputs during unregister
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Dec 04, 2020 at 04:14:05PM +0000, Chris Wilson wrote:
> Quoting Ville Syrj=E4l=E4 (2020-12-04 16:01:11)
> > On Tue, Dec 01, 2020 at 10:38:57PM +0000, Chris Wilson wrote:
> > > Quoting Ville Syrj=E4l=E4 (2020-12-01 16:05:17)
> > > > On Fri, Nov 27, 2020 at 10:05:48PM +0000, Chris Wilson wrote:
> > > > > Switch off the scanout during driver unregister, so we can shutdo=
wn the
> > > > > HW immediately for unbind.
> > > > > =

> > > > > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > > > > ---
> > > > >  drivers/gpu/drm/i915/i915_drv.c | 1 +
> > > > >  1 file changed, 1 insertion(+)
> > > > > =

> > > > > diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i9=
15/i915_drv.c
> > > > > index 320856b665a1..62d188e5cb8d 100644
> > > > > --- a/drivers/gpu/drm/i915/i915_drv.c
> > > > > +++ b/drivers/gpu/drm/i915/i915_drv.c
> > > > > @@ -738,6 +738,7 @@ static void i915_driver_unregister(struct drm=
_i915_private *dev_priv)
> > > > >        * events.
> > > > >        */
> > > > >       drm_kms_helper_poll_fini(&dev_priv->drm);
> > > > > +     drm_atomic_helper_shutdown(&dev_priv->drm);
> > > > =

> > > > Looks like we already have this in remove(). Is that too late?
> > > =

> > > For the operations we do during unbind, yes.
> > > =

> > > For the core_hotplug/rebind dance, we have to reset the GPU while we
> > > still have runtime-pm operational and have pushed the reset to
> > > unregister (from experimentation that's as late as we can put it where
> > > the GPU works after rebinding and we don't corrupt the system on unbi=
nd,
> > > with the current hooks). You can guess how well gen3 likes that.
> > > =

> > > But I don't think the right answer is to skip the reset for gen3.
> > > Suppose we enable context support for gen3, then the reset would be
> > > required as well, and so we would still need the whole display
> > > shenanigans to turn it off. Moving the modeset to turn the display off
> > > to the end of userspace seems reasonable.
> > =

> > Yeah, just a bit odd to have the same call twice in the
> > sequence. Can we remove the second call at least?
> =

> I think we can, but I am sufficiently paranoid to leave it.
> I presume if it is a no-op, it will return without touching HW?

One can hope at least.

>  =

> > Also a bit annoying the unload sequence no longer matches the
> > suspend sequence. Well, I guess it was never 100% anyway but
> > I think it was a bit closer before this patch. But the whole
> > thing is rather messy anyway so I guess t's not significantly
> > worse after this.
> =

> Yes, I feel things have been thrown into a bit of disarray by
> haphazardly fixing unbind.
> =

> The last* remaining fly in the ointment is rebinding iommu. Once we have
> that solid (and the system stops randomly eating itself 1-10 minutes
> after the test passes), we should be in a much better spot to safely
> remove duplication and refine the flow.
> =

> * that I am aware of.
> -Chris

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
