Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CC169C1992
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Nov 2024 10:57:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF7A610E1A8;
	Fri,  8 Nov 2024 09:57:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BBFED10E1A8;
 Fri,  8 Nov 2024 09:57:16 +0000 (UTC)
Received: from 91-155-254-241.elisa-laajakaista.fi ([91.155.254.241]
 helo=[192.168.100.137])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.97) (envelope-from <luca@coelho.fi>)
 id 1t9Ljt-00000001av6-0WbW; Fri, 08 Nov 2024 11:57:14 +0200
Message-ID: <795a663391e94e3617f4a85fdb854c7c96bd3890.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Gustavo Sousa <gustavo.sousa@intel.com>,
 intel-gfx@lists.freedesktop.org, 	intel-xe@lists.freedesktop.org
Cc: Luca Coelho <luciano.coelho@intel.com>, Jani Nikula <jani.nikula@intel.com>
Date: Fri, 08 Nov 2024 11:57:11 +0200
In-Reply-To: <173101096307.92682.12411368075185471884@intel.com>
References: <20241107182921.102193-1-gustavo.sousa@intel.com>
 <20241107182921.102193-18-gustavo.sousa@intel.com>
 <57edfe78f9da272e0312ad77ee8ff7060932ae8c.camel@coelho.fi>
 <173101047610.92682.5793541337752745725@intel.com>
 <173101096307.92682.12411368075185471884@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.54.1-1 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.1-pre1 (2023-11-21) on
 farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
 version=4.0.1-pre1
Subject: Re: [PATCH v3 17/18] drm/i915/dmc_wl: Do nothing until initialized
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 2024-11-07 at 17:22 -0300, Gustavo Sousa wrote:
> Quoting Gustavo Sousa (2024-11-07 17:14:36-03:00)
> > Quoting Luca Coelho (2024-11-07 16:23:06-03:00)
> > > On Thu, 2024-11-07 at 15:27 -0300, Gustavo Sousa wrote:
> > > > There is a bit of a chicken and egg situation where we depend on ru=
ntime
> > > > info to know that DMC and wakelock are supported by the hardware, a=
nd
> > > > such information is grabbed via display MMIO functions, which in tu=
rns
> > > > call intel_dmc_wl_get() and intel_dmc_wl_put() as part of their reg=
ular
> > > > flow.
> > >=20
> > > s/which in turns call/which in turn calls/
> >=20
> > Thanks!
> >=20
> > I'll do
> >=20
> >  s/which in turns call/which in turn call/
> >=20
> > as the subject for "call" is "display MMIO functions".

Right, I didn't pay much attention and conjugated it with
"information".


> > > > Since we do not expect DC states (and consequently the wakelock
> > > > mechanism) to be enabled until DMC and DMC wakelock software struct=
ures
> > > > are initialized, a simple and safe solution to this is to turn
> > > > intel_dmc_wl_get() and intel_dmc_wl_put() into no-op until we have
> > > > properly initialized.
> > >=20
> > >=20
> > > About "safe" here... Can we be sure this will be race-free?
> >=20
> > The initialization is done only once, during driver load. The wakelock
> > will be enabled only at a later moment. So, we are good in that regard.
> >=20
> > However, now that you mentioned, yeah, we should also consider that tha=
t
> > we do concurrent work during initialization (e.g. loading the DMC).
> > Based on that, we will need to protect "initialized", which means:
> >=20
> > - initializing the lock early together with the other ones;
> > - always going for the lock, even for hardware that does not support th=
e
>=20
> Oh, to be clear: I meant the spin lock here :-)

Yeah, I got that. :)


> Something along the lines of:
>=20
>     diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/dr=
ivers/gpu/drm/i915/display/intel_display_driver.c
>     index 4257cc380475..e6d4f6328c33 100644
>     --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
>     +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
>     @@ -186,6 +186,7 @@ void intel_display_driver_early_probe(struct drm_=
i915_private *i915)
>      		return;
>     =20
>      	spin_lock_init(&i915->display.fb_tracking.lock);
>     +	spin_lock_init(&i915->display.wl.lock);
>      	mutex_init(&i915->display.backlight.lock);
>      	mutex_init(&i915->display.audio.mutex);
>      	mutex_init(&i915->display.wm.wm_mutex);
>     diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c b/drivers/gp=
u/drm/i915/display/intel_dmc_wl.c
>     index e43077453a99..bf8d3b04336d 100644
>     --- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
>     +++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
>     @@ -307,11 +307,11 @@ void intel_dmc_wl_enable(struct intel_display *=
display, u32 dc_state)
>      	struct intel_dmc_wl *wl =3D &display->wl;
>      	unsigned long flags;
>     =20
>     -	if (!__intel_dmc_wl_supported(display))
>     -		return;
>     -
>      	spin_lock_irqsave(&wl->lock, flags);
>     =20
>     +	if (!__intel_dmc_wl_supported(display))
>     +		goto out_unlock;
>     +
>      	wl->dc_state =3D dc_state;
>     =20
>      	if (drm_WARN_ON(display->drm, wl->enabled))
>     @@ -353,13 +353,13 @@ void intel_dmc_wl_disable(struct intel_display =
*display)
>      	struct intel_dmc_wl *wl =3D &display->wl;
>      	unsigned long flags;
>     =20
>     +	spin_lock_irqsave(&wl->lock, flags);
>     +
>      	if (!__intel_dmc_wl_supported(display))
>     -		return;
>     +		goto out_unlock;
>     =20
>      	flush_delayed_work(&wl->work);
>     =20
>     -	spin_lock_irqsave(&wl->lock, flags);
>     -
>      	if (drm_WARN_ON(display->drm, !wl->enabled))
>      		goto out_unlock;
>     =20
>     @@ -389,13 +389,13 @@ void intel_dmc_wl_get(struct intel_display *dis=
play, i915_reg_t reg)
>      	struct intel_dmc_wl *wl =3D &display->wl;
>      	unsigned long flags;
>     =20
>     +	spin_lock_irqsave(&wl->lock, flags);
>     +
>      	if (!wl->initialized)
>     -		return;
>     +		goto out_unlock;
>     =20
>      	if (!__intel_dmc_wl_supported(display))
>     -		return;
>     -
>     -	spin_lock_irqsave(&wl->lock, flags);
>     +		goto out_unlock;
>     =20
>      	if (i915_mmio_reg_valid(reg) && !intel_dmc_wl_check_range(reg, wl->=
dc_state))
>      		goto out_unlock;
>     @@ -424,13 +424,13 @@ void intel_dmc_wl_put(struct intel_display *dis=
play, i915_reg_t reg)
>      	struct intel_dmc_wl *wl =3D &display->wl;
>      	unsigned long flags;
>     =20
>     +	spin_lock_irqsave(&wl->lock, flags);
>     +
>      	if (!wl->initialized)
>     -		return;
>     +		goto out_unlock;
>     =20
>      	if (!__intel_dmc_wl_supported(display))
>     -		return;
>     -
>     -	spin_lock_irqsave(&wl->lock, flags);
>     +		goto out_unlock;
>     =20
>      	if (i915_mmio_reg_valid(reg) && !intel_dmc_wl_check_range(reg, wl->=
dc_state))
>      		goto out_unlock;

I think this is the simplest solution.


> >  wakelock.
> >=20
> > Ugh... I don't like the latter very much... But, with those provided, I
> > believe we should be safe.
> >=20
> > Thoughts?

I don't think it's a huge problem to initialize the spinlock even for
HW that doesn't use it.  Yeah, it's a bit of wasteful in terms of
resources, but I think it's worth it because of the reduced complexity
of the implementation.


> > > > The only exception of functions that can be called before initializ=
ation
> > > > are intel_dmc_wl_get() and intel_dmc_wl_put(), so we bail before
> > > > calling __intel_dmc_wl_supported() if not initialized.
> > > >=20
> > > > An alternative solution would be to revise MMIO-related stuff in th=
e
> > > > whole driver initialization sequence, but that would possibly come =
with
> > > > the cost of some added ordering dependencies and complexity to the
> > > > source code.
> > >=20
> > > I think this can be kept out of the commit message.  It's not very
> > > clear what you mean and it sounds much more complex than the solution
> > > you implemented.  Unless race can really be an issue here, but then t=
he
> > > whole commit message should be changed to an eventual more complex
> > > solution.
> >=20
> > I meant that we would need to revise the initialization code and find
> > the correct place to put the DMC Wakelock software initialization call.
> > That might also come with changes in some places where we do probe the
> > hardware for info:
> >=20
> >  - We need our initialization to happen before
> >    intel_display_device_info_runtime_init(), because we want to check
> >    HAS_DMC().
> >=20
> >  - Currently, __intel_display_device_info_runtime_init() is using
> >    intel_re_read(), which in turn uses
> >    intel_dmc_wl_get()/intel_dmc_wl_put().
> >=20
> >  - The alternative solution to using the "initialized" flag would be to
> >    make sure that function does not use the MMIO functions that take
> >    the DMC wakelock path.
> >=20
> >  - However, __intel_display_device_info_runtime_init() is not necessary
> >    the only function that would need to be changed, but rather
> >    basically everything that does MMIO before the initialization!
> >=20
> > I hope it is clearer now :-)

Definitely clearer, but I still think it may not be worth it.  The
spinlock solution is very simple and clean, IMHO.  We already have the
spinlock for other stuff, so it aligns well with the existing code.

--
Cheers,
Luca.
