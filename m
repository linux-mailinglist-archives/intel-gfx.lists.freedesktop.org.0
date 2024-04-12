Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C64738A293D
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Apr 2024 10:24:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04B9A10F4F4;
	Fri, 12 Apr 2024 08:24:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (paleale.coelho.fi [176.9.41.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC2A510F4D6;
 Fri, 12 Apr 2024 08:24:00 +0000 (UTC)
Received: from 91-156-7-239.elisa-laajakaista.fi ([91.156.7.239]
 helo=[192.168.100.137])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.97) (envelope-from <luca@coelho.fi>)
 id 1rvCCR-00000000F0s-23Cp; Fri, 12 Apr 2024 11:23:56 +0300
Message-ID: <6b630bb897b7412f23fb86d2266f923dc6523dca.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: "Shankar, Uma" <uma.shankar@intel.com>, "Coelho, Luciano"
 <luciano.coelho@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Cc: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, 
 "ville.syrjala@linux.intel.com"
 <ville.syrjala@linux.intel.com>, "Nikula, Jani" <jani.nikula@intel.com>
Date: Fri, 12 Apr 2024 11:23:54 +0300
In-Reply-To: <DM4PR11MB636080C507DCBE8A65EF7943F4052@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20240404114147.236316-1-luciano.coelho@intel.com>
 <20240404114147.236316-2-luciano.coelho@intel.com>
 <DM4PR11MB636080C507DCBE8A65EF7943F4052@DM4PR11MB6360.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-2 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.1-pre1 (2023-11-21) on
 farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
 version=4.0.1-pre1
Subject: Re: [PATCH v4 1/4] drm/i915/display: add support for DMC wakelocks
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

On Thu, 2024-04-11 at 09:40 +0000, Shankar, Uma wrote:
> > -----Original Message-----
> > From: Coelho, Luciano <luciano.coelho@intel.com>
> > Sent: Thursday, April 4, 2024 5:12 PM
> > To: intel-gfx@lists.freedesktop.org
> > Cc: intel-xe@lists.freedesktop.org; Shankar, Uma <uma.shankar@intel.com=
>;
> > ville.syrjala@linux.intel.com; Nikula, Jani <jani.nikula@intel.com>
> > Subject: [PATCH v4 1/4] drm/i915/display: add support for DMC wakelocks
> >=20
> > In order to reduce the DC5->DC2 restore time, wakelocks have been intro=
duced
> > in DMC so the driver can tell it when registers and other memory areas =
are going
> > to be accessed and keep their respective blocks awake.
> >=20
> > Implement this in the driver by adding the concept of DMC wakelocks.
> > When the driver needs to access memory which lies inside pre-defined ra=
nges, it
> > will tell DMC to set the wakelock, access the memory, then wait for a w=
hile and
> > clear the wakelock.
> >=20
> > The wakelock state is protected in the driver with spinlocks to prevent
> > concurrency issues.
> >=20
> > BSpec: 71583
> > Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
> > ---
> >  drivers/gpu/drm/i915/Makefile                 |   1 +
> >  drivers/gpu/drm/i915/display/intel_de.h       |  97 ++++++-
> >  .../gpu/drm/i915/display/intel_display_core.h |   2 +
> >  drivers/gpu/drm/i915/display/intel_dmc_regs.h |   6 +
> >  drivers/gpu/drm/i915/display/intel_dmc_wl.c   | 238 ++++++++++++++++++
> >  drivers/gpu/drm/i915/display/intel_dmc_wl.h   |  31 +++
> >  drivers/gpu/drm/xe/Makefile                   |   1 +
> >  7 files changed, 368 insertions(+), 8 deletions(-)  create mode 100644
> > drivers/gpu/drm/i915/display/intel_dmc_wl.c
> >  create mode 100644 drivers/gpu/drm/i915/display/intel_dmc_wl.h
> >=20
> > diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makef=
ile
> > index af9e871daf1d..7cad944b825c 100644
> > --- a/drivers/gpu/drm/i915/Makefile
> > +++ b/drivers/gpu/drm/i915/Makefile
> > @@ -266,6 +266,7 @@ i915-y +=3D \
> >  	display/intel_display_rps.o \
> >  	display/intel_display_wa.o \
> >  	display/intel_dmc.o \
> > +	display/intel_dmc_wl.o \
> >  	display/intel_dpio_phy.o \
> >  	display/intel_dpll.o \
> >  	display/intel_dpll_mgr.o \
> > diff --git a/drivers/gpu/drm/i915/display/intel_de.h
> > b/drivers/gpu/drm/i915/display/intel_de.h
> > index ba7a1c6ebc2a..0a0fba81e7af 100644
> > --- a/drivers/gpu/drm/i915/display/intel_de.h
> > +++ b/drivers/gpu/drm/i915/display/intel_de.h
> > @@ -13,52 +13,125 @@
> >  static inline u32
> >  intel_de_read(struct drm_i915_private *i915, i915_reg_t reg)  {
> > -	return intel_uncore_read(&i915->uncore, reg);
> > +	u32 val;
> > +
> > +	intel_dmc_wl_get(i915, reg);
> > +
> > +	val =3D intel_uncore_read(&i915->uncore, reg);
> > +
> > +	intel_dmc_wl_put(i915, reg);
> > +
> > +	return val;
> >  }
> >=20
> >  static inline u8
> >  intel_de_read8(struct drm_i915_private *i915, i915_reg_t reg)  {
> > -	return intel_uncore_read8(&i915->uncore, reg);
> > +	u8 val;
> > +
> > +	intel_dmc_wl_get(i915, reg);
> > +
> > +	val =3D intel_uncore_read8(&i915->uncore, reg);
> > +
> > +	intel_dmc_wl_put(i915, reg);
> > +
> > +	return val;
> >  }
> >=20
> >  static inline u64
> >  intel_de_read64_2x32(struct drm_i915_private *i915,
> >  		     i915_reg_t lower_reg, i915_reg_t upper_reg)  {
> > -	return intel_uncore_read64_2x32(&i915->uncore, lower_reg,
> > upper_reg);
> > +	u64 val;
> > +
> > +	intel_dmc_wl_get(i915, lower_reg);
> > +	intel_dmc_wl_get(i915, upper_reg);
> > +
> > +	val =3D intel_uncore_read64_2x32(&i915->uncore, lower_reg, upper_reg)=
;
> > +
> > +	intel_dmc_wl_put(i915, upper_reg);
> > +	intel_dmc_wl_put(i915, lower_reg);
> > +
> > +	return val;
> >  }
> >=20
> >  static inline void
> >  intel_de_posting_read(struct drm_i915_private *i915, i915_reg_t reg)  =
{
> > +	intel_dmc_wl_get(i915, reg);
> > +
> >  	intel_uncore_posting_read(&i915->uncore, reg);
> > +
> > +	intel_dmc_wl_put(i915, reg);
> >  }
> >=20
> >  static inline void
> >  intel_de_write(struct drm_i915_private *i915, i915_reg_t reg, u32 val)=
  {
> > +	intel_dmc_wl_get(i915, reg);
> > +
> >  	intel_uncore_write(&i915->uncore, reg, val);
> > +
> > +	intel_dmc_wl_put(i915, reg);
> >  }
> >=20
> >  static inline u32
> > -intel_de_rmw(struct drm_i915_private *i915, i915_reg_t reg, u32 clear,=
 u32 set)
> > +__intel_de_rmw_nowl(struct drm_i915_private *i915, i915_reg_t reg,
> > +		    u32 clear, u32 set)
> >  {
> >  	return intel_uncore_rmw(&i915->uncore, reg, clear, set);  }
> >=20
> > +static inline u32
> > +intel_de_rmw(struct drm_i915_private *i915, i915_reg_t reg, u32 clear,
> > +u32 set) {
> > +	u32 val;
> > +
> > +	intel_dmc_wl_get(i915, reg);
> > +
> > +	val =3D __intel_de_rmw_nowl(i915, reg, clear, set);
> > +
> > +	intel_dmc_wl_put(i915, reg);
> > +
> > +	return val;
> > +}
> > +
> > +static inline int
> > +__intel_wait_for_register_nowl(struct drm_i915_private *i915, i915_reg=
_t reg,
> > +			       u32 mask, u32 value, unsigned int timeout) {
> > +	return intel_wait_for_register(&i915->uncore, reg, mask,
> > +				       value, timeout);
> > +}
> > +
> >  static inline int
> >  intel_de_wait(struct drm_i915_private *i915, i915_reg_t reg,
> >  	      u32 mask, u32 value, unsigned int timeout)  {
> > -	return intel_wait_for_register(&i915->uncore, reg, mask, value, timeo=
ut);
> > +	int ret;
> > +
> > +	intel_dmc_wl_get(i915, reg);
> > +
> > +	ret =3D __intel_wait_for_register_nowl(i915, reg, mask, value, timeou=
t);
> > +
> > +	intel_dmc_wl_put(i915, reg);
> > +
> > +	return ret;
> >  }
> >=20
> >  static inline int
> >  intel_de_wait_fw(struct drm_i915_private *i915, i915_reg_t reg,
> >  		 u32 mask, u32 value, unsigned int timeout)  {
> > -	return intel_wait_for_register_fw(&i915->uncore, reg, mask, value,
> > timeout);
> > +	int ret;
> > +
> > +	intel_dmc_wl_get(i915, reg);
> > +
> > +	ret =3D intel_wait_for_register_fw(&i915->uncore, reg, mask, value,
> > +timeout);
> > +
> > +	intel_dmc_wl_put(i915, reg);
> > +
> > +	return ret;
> >  }
> >=20
> >  static inline int
> > @@ -67,8 +140,16 @@ intel_de_wait_custom(struct drm_i915_private *i915,
> > i915_reg_t reg,
> >  		     unsigned int fast_timeout_us,
> >  		     unsigned int slow_timeout_ms, u32 *out_value)  {
> > -	return __intel_wait_for_register(&i915->uncore, reg, mask, value,
> > -					 fast_timeout_us, slow_timeout_ms,
> > out_value);
> > +	int ret;
> > +
> > +	intel_dmc_wl_get(i915, reg);
> > +
> > +	ret =3D __intel_wait_for_register(&i915->uncore, reg, mask, value,
> > +					fast_timeout_us, slow_timeout_ms,
> > out_value);
> > +
> > +	intel_dmc_wl_put(i915, reg);
> > +
> > +	return ret;
> >  }
> >=20
> >  static inline int
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h
> > b/drivers/gpu/drm/i915/display/intel_display_core.h
> > index 2167dbee5eea..c40719073510 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> > @@ -26,6 +26,7 @@
> >  #include "intel_global_state.h"
> >  #include "intel_gmbus.h"
> >  #include "intel_opregion.h"
> > +#include "intel_dmc_wl.h"
> >  #include "intel_wm_types.h"
> >=20
> >  struct task_struct;
> > @@ -534,6 +535,7 @@ struct intel_display {
> >  	struct intel_overlay *overlay;
> >  	struct intel_display_params params;
> >  	struct intel_vbt_data vbt;
> > +	struct intel_dmc_wl wl;
> >  	struct intel_wm wm;
> >  };
> >=20
> > diff --git a/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> > b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> > index 90d0dbb41cfe..1bf446f96a10 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> > +++ b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> > @@ -97,4 +97,10 @@
> >  #define TGL_DMC_DEBUG3		_MMIO(0x101090)
> >  #define DG1_DMC_DEBUG3		_MMIO(0x13415c)
> >=20
> > +#define DMC_WAKELOCK_CFG	_MMIO(0x8F1B0)
> > +#define  DMC_WAKELOCK_CFG_ENABLE REG_BIT(31)
> > +#define DMC_WAKELOCK1_CTL	_MMIO(0x8F140)
> > +#define  DMC_WAKELOCK_CTL_REQ	 REG_BIT(31)
> > +#define  DMC_WAKELOCK_CTL_ACK	 REG_BIT(15)
> > +
> >  #endif /* __INTEL_DMC_REGS_H__ */
> > diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> > b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> > new file mode 100644
> > index 000000000000..3d7cf47321c2
> > --- /dev/null
> > +++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> > @@ -0,0 +1,238 @@
> > +// SPDX-License-Identifier: MIT
> > +/*
> > + * Copyright (C) 2024 Intel Corporation  */
> > +
> > +#include <linux/kernel.h>
> > +
> > +#include "intel_de.h"
> > +#include "intel_dmc_regs.h"
> > +#include "intel_dmc_wl.h"
> > +
> > +/**
> > + * DOC: DMC wakelock support
>=20
> To get the documentation, we may have to include this file in
> i915.rst in Documentation section in kernel.

Right, I'll check that and fix it.


> > + *
> > + * Wake lock is the mechanism to cause display engine to exit DC
> > + * states to allow programming to registers that are powered down in
> > + * those states. Previous projects exited DC states automatically when
> > + * detecting programming. Now software controls the exit by
> > + * programming the wake lock. This improves system performance and
> > + * system interactions and better fits the flip queue style of
> > + * programming. Wake lock is only required when DC5, DC6, or DC6v have
> > + * been enabled in DC_STATE_EN and the wake lock mode of operation has
> > + * been enabled.
> > + *
> > + * The wakelock mechanism in DMC allows the display engine to exit DC
> > + * states explicitly before programming registers that may be powered
> > + * down.  In earlier hardware, this was done automatically and
> > + * implicitly when the display engine accessed a register.  With the
> > + * wakelock implementation, the driver asserts a wakelock in DMC,
> > + * which forces it to exit the DC state until the wakelock is
> > + * deasserted.
> > + *
> > + * This improves system performance and system interactions and better
> > + * fits the flip queue style of programming.  Wakelock is only
> > + * required when DC5, DC6, or DC6v have been enabled in DC_STATE_EN
> > + * and the wakelock feature enabled in the driver.
>=20
> Seems some repeat from 1st para, can be dropped.

Good catch, I'll fix it.


> > + *
> > + * The mechanism can be enabled and disabled by writing to the
> > + * DMC_WAKELOCK_CFG register.  There are also 13 control registers
> > + * that can be used to hold and release different wakelocks.  In the
> > + * current implementation, we only need one wakelock, so only
> > + * DMC_WAKELOCK1_CTL is used.  The other definitions are here for
> > + * potential future use.
> > + */
> > +
> > +#define DMC_WAKELOCK_CTL_TIMEOUT 5
> > +#define DMC_WAKELOCK_HOLD_TIME 50
> > +
> > +struct intel_dmc_wl_range {
> > +	u32 start;
> > +	u32 end;
> > +};
> > +
> > +static struct intel_dmc_wl_range lnl_wl_range[] =3D {
> > +	{ .start =3D 0x60000, .end =3D 0x7ffff },
> > +};
> > +
> > +static void __intel_dmc_wl_release(struct drm_i915_private *i915) {
> > +	struct intel_dmc_wl *wl =3D &i915->display.wl;
> > +
> > +	WARN_ON(refcount_read(&wl->refcount));
> > +
> > +	queue_delayed_work(i915->unordered_wq, &wl->work,
> > +			   msecs_to_jiffies(DMC_WAKELOCK_HOLD_TIME));
> > +}
> > +
> > +static void intel_dmc_wl_work(struct work_struct *work) {
> > +	struct intel_dmc_wl *wl =3D
> > +		container_of(work, struct intel_dmc_wl, work.work);
> > +	struct drm_i915_private *i915 =3D
> > +		container_of(wl, struct drm_i915_private, display.wl);
> > +	unsigned long flags;
> > +
> > +	spin_lock_irqsave(&wl->lock, flags);
> > +
> > +	/* Bail out if refcount reached zero while waiting for the spinlock *=
/
> > +	if (!refcount_read(&wl->refcount))
> > +		goto out_unlock;
> > +
> > +	__intel_de_rmw_nowl(i915, DMC_WAKELOCK1_CTL,
> > DMC_WAKELOCK_CTL_REQ, 0);
> > +
> > +	if (__intel_wait_for_register_nowl(i915,  DMC_WAKELOCK1_CTL,
> > +					   DMC_WAKELOCK_CTL_ACK, 0,
> > +					   DMC_WAKELOCK_CTL_TIMEOUT)) {
> > +		WARN_RATELIMIT(1, "DMC wakelock release timed out");
> > +		goto out_unlock;
> > +	}
> > +
> > +	wl->taken =3D false;
> > +
> > +out_unlock:
> > +	spin_unlock_irqrestore(&wl->lock, flags); }
> > +
> > +static bool intel_dmc_wl_check_range(u32 address) {
> > +	int i;
> > +	bool wl_needed =3D false;
> > +
> > +	for (i =3D 0; i < ARRAY_SIZE(lnl_wl_range); i++) {
> > +		if (address >=3D lnl_wl_range[i].start &&
> > +		    address <=3D lnl_wl_range[i].end) {
> > +			wl_needed =3D true;
> > +			break;
> > +		}
> > +	}
> > +
> > +	return wl_needed;
> > +}
> > +
> > +void intel_dmc_wl_init(struct drm_i915_private *i915) {
> > +	struct intel_dmc_wl *wl =3D &i915->display.wl;
> > +
> > +	INIT_DELAYED_WORK(&wl->work, intel_dmc_wl_work);
> > +	spin_lock_init(&wl->lock);
> > +	refcount_set(&wl->refcount, 0);
> > +}
> > +
> > +void intel_dmc_wl_enable(struct drm_i915_private *i915) {
> > +	struct intel_dmc_wl *wl =3D &i915->display.wl;
> > +	unsigned long flags;
> > +
> > +	spin_lock_irqsave(&wl->lock, flags);
> > +
> > +	if (wl->enabled)
> > +		goto out_unlock;
> > +
> > +	/*
> > +	 * Enable wakelock in DMC.  We shouldn't try to take the
> > +	 * wakelock, because we're just enabling it, so call the
> > +	 * non-locking version directly here.
> > +	 */
> > +	__intel_de_rmw_nowl(i915, DMC_WAKELOCK_CFG, 0,
> > +DMC_WAKELOCK_CFG_ENABLE);
> > +
> > +	wl->enabled =3D true;
> > +	wl->taken =3D false;
> > +
> > +out_unlock:
> > +	spin_unlock_irqrestore(&wl->lock, flags); }
> > +
> > +void intel_dmc_wl_disable(struct drm_i915_private *i915) {
> > +	struct intel_dmc_wl *wl =3D &i915->display.wl;
> > +	unsigned long flags;
> > +
> > +	flush_delayed_work(&wl->work);
> > +
> > +	spin_lock_irqsave(&wl->lock, flags);
> > +
> > +	if (!wl->enabled)
> > +		goto out_unlock;
> > +
> > +	/* Disable wakelock in DMC */
> > +	__intel_de_rmw_nowl(i915, DMC_WAKELOCK_CFG,
> > DMC_WAKELOCK_CFG_ENABLE,
> > +0);
> > +
> > +	refcount_set(&wl->refcount, 0);
> > +	wl->enabled =3D false;
> > +	wl->taken =3D false;
> > +
> > +out_unlock:
> > +	spin_unlock_irqrestore(&wl->lock, flags); }
> > +
> > +void intel_dmc_wl_get(struct drm_i915_private *i915, i915_reg_t reg) {
> > +	struct intel_dmc_wl *wl =3D &i915->display.wl;
> > +	unsigned long flags;
> > +
> > +	if (!intel_dmc_wl_check_range(reg.reg))
> > +		return;
> > +
> > +	spin_lock_irqsave(&wl->lock, flags);
> > +
> > +	if (!wl->enabled)
> > +		goto out_unlock;
> > +
> > +	cancel_delayed_work(&wl->work);
> > +
> > +	if (refcount_inc_not_zero(&wl->refcount))
> > +		goto out_unlock;
> > +
> > +	refcount_set(&wl->refcount, 1);
> > +
> > +	/* Only try to take the wakelock if it's not marked as taken
>=20
> Fix the comment style

Define "fix". ;) Unfortunately it seems that different subsystems use
different styles, this style is used, for instance, by the networking
subsystem, but not everywhere inside networking... In any case, I'll
fix it by starting the with /* in its own line, which I believe is what
you meant.

Thanks for your reviews! I'll send v5 shortly.

--
Cheers,
Luca.
