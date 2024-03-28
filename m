Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A81AF88FDC3
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Mar 2024 12:09:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A12C10F6CC;
	Thu, 28 Mar 2024 11:09:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (paleale.coelho.fi [176.9.41.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56CF410F735;
 Thu, 28 Mar 2024 11:09:24 +0000 (UTC)
Received: from 91-156-7-239.elisa-laajakaista.fi ([91.156.7.239]
 helo=[192.168.100.137])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.97-RC1) (envelope-from <luca@coelho.fi>)
 id 1rpndG-00000002dSm-1pVb; Thu, 28 Mar 2024 13:09:20 +0200
Message-ID: <73deb2ec0a72a32214a499b03d9277b2008872c7.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: "Shankar, Uma" <uma.shankar@intel.com>, "Coelho, Luciano"
 <luciano.coelho@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Cc: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, 
 "ville.syrjala@linux.intel.com"
 <ville.syrjala@linux.intel.com>, "Nikula, Jani" <jani.nikula@intel.com>
Date: Thu, 28 Mar 2024 13:09:16 +0200
In-Reply-To: <DM4PR11MB6360EB571BC3C8051993F5DBF4322@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20240318133757.1479189-1-luciano.coelho@intel.com>
 <20240318133757.1479189-2-luciano.coelho@intel.com>
 <DM4PR11MB6360EB571BC3C8051993F5DBF4322@DM4PR11MB6360.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-2 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.0 (2022-12-13) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP autolearn=ham autolearn_force=no version=4.0.0
Subject: Re: [PATCH v3 1/4] drm/i915/display: add support for DMC wakelocks
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

On Thu, 2024-03-21 at 07:43 +0000, Shankar, Uma wrote:
>=20
> > -----Original Message-----
> > From: Coelho, Luciano <luciano.coelho@intel.com>
> > Sent: Monday, March 18, 2024 7:08 PM
> > To: intel-gfx@lists.freedesktop.org
> > Cc: intel-xe@lists.freedesktop.org; Shankar, Uma <uma.shankar@intel.com=
>;
> > ville.syrjala@linux.intel.com; Nikula, Jani <jani.nikula@intel.com>
> > Subject: [PATCH v3 1/4] drm/i915/display: add support for DMC wakelocks
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
>=20
> These are internal links, not sure how useful they will be for upstream d=
iscussions.
> Give the relevant details here which is better I believe instead of an in=
ternal link.

As we discussed offline, this seems to be common practice, and Gustavo
actually asked me to add it in a previous review, so we decided to keep
it.


> > Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
> > ---
> >  drivers/gpu/drm/i915/Makefile                 |   1 +
> >  drivers/gpu/drm/i915/display/intel_de.h       |  97 +++++++-
> >  .../gpu/drm/i915/display/intel_display_core.h |   2 +
> >  .../drm/i915/display/intel_display_driver.c   |   1 +
> >  drivers/gpu/drm/i915/display/intel_dmc_regs.h |   6 +
> >  drivers/gpu/drm/i915/display/intel_dmc_wl.c   | 226 ++++++++++++++++++
> >  drivers/gpu/drm/i915/display/intel_dmc_wl.h   |  30 +++
> >  drivers/gpu/drm/xe/Makefile                   |   1 +
> >  8 files changed, 356 insertions(+), 8 deletions(-)  create mode 100644
> > drivers/gpu/drm/i915/display/intel_dmc_wl.c
> >  create mode 100644 drivers/gpu/drm/i915/display/intel_dmc_wl.h
> >=20
> > diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makef=
ile
> > index 3ef6ed41e62b..af83ea94c771 100644
> > --- a/drivers/gpu/drm/i915/Makefile
> > +++ b/drivers/gpu/drm/i915/Makefile
> > @@ -270,6 +270,7 @@ i915-y +=3D \
> >  	display/intel_display_rps.o \
> >  	display/intel_display_wa.o \
> >  	display/intel_dmc.o \
> > +	display/intel_dmc_wl.o \
> >  	display/intel_dpio_phy.o \
> >  	display/intel_dpll.o \
> >  	display/intel_dpll_mgr.o \
> > diff --git a/drivers/gpu/drm/i915/display/intel_de.h
> > b/drivers/gpu/drm/i915/display/intel_de.h
> > index 42552d8c151e..6728a0077793 100644
> > --- a/drivers/gpu/drm/i915/display/intel_de.h
> > +++ b/drivers/gpu/drm/i915/display/intel_de.h
> > @@ -13,52 +13,125 @@
> >  static inline u32
> >  intel_de_read(struct drm_i915_private *i915, i915_reg_t reg)  {
> > -	return intel_uncore_read(&i915->uncore, reg);
> > +	u32 val;
> > +
> > +	intel_dmc_wl_get(i915, reg);
>=20
> I think one fundamental issue in taking the lock at the granularity of
> every MMIO, we risk adding latency here. We should profile the time
> it adds.

This is a good point! Again, as we concluded in our offline discussion,
the problem here is that we are calling __intel_de_rmw_nowl() whenever
the refcount is zero, so that cause one extra register read (at least).
We should only do this when the wakelock is not taken anymore, i.e.
when the work has already run and released it.

The simplest way to solve this now, is to add a flag that tells us
whether the wakelock is taken or not, regardless of the refcount, so we
don't try to take it again for every MMIO.

In the future, if all the checks we do (without accessing hardware
registers) is still too time-consuming, we can create more helper
functions that bypass the wakelock, like the existing _nowl() versions.


> For modeset for ex, we will end up programming multiple MMIO's from 1 pla=
ce
> But every MMIO call will take the wakelock. This is overkill, instead we =
can just take
> the lock once, do our stuff and then release it.=20
>=20
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
>=20
> Same here and all similar functions.
>=20
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
>=20
> I guess if the register falls in the range, taking just 1 wakelock should=
 be enough.

The second call shouldn't actually take a wakelock again.  It's a
mistake as discussed above.  This was also asked by Gustavo, and we
decided to do it for symmetry, if nothing else.  It should be fine to
keep it if we fix the code to take the wakelock just once.


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
> >  intel_de_wait_for_register(struct drm_i915_private *i915, i915_reg_t r=
eg,
> >  			   u32 mask, u32 value, unsigned int timeout)  {
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
> >  intel_de_wait_for_register_fw(struct drm_i915_private *i915, i915_reg_=
t reg,
> >  			      u32 mask, u32 value, unsigned int timeout)  {
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
> > @@ -67,8 +140,16 @@ __intel_de_wait_for_register(struct drm_i915_privat=
e
> > *i915, i915_reg_t reg,
> >  			     unsigned int fast_timeout_us,
> >  			     unsigned int slow_timeout_ms, u32 *out_value)  {
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
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c
> > b/drivers/gpu/drm/i915/display/intel_display_driver.c
> > index 87dd07e0d138..e4015557af6a 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> > @@ -198,6 +198,7 @@ void intel_display_driver_early_probe(struct
> > drm_i915_private *i915)
> >  	intel_dpll_init_clock_hook(i915);
> >  	intel_init_display_hooks(i915);
> >  	intel_fdi_init_hook(i915);
> > +	intel_dmc_wl_init(i915);
> >  }
> >=20
> >  /* part #1: call before irq install */
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
>=20
> For the start, having just 1 wakelock is good. But plan to extend
> to include remaining wakelocks as well. This will help with latencies.

Yeah, let's see how it behaves IRL and then decide if we need it.  It
should be a relatively simple change, we just need to keep track of
which ones are already taken (e.g. in a bitmask) and take the first
free one.


> > +#define  DMC_WAKELOCK_CTL_REQ	 REG_BIT(31)
> > +#define  DMC_WAKELOCK_CTL_ACK	 REG_BIT(15)
> > +
>=20
> We are missing the use of WAKELOCK_STATUS. This is the one which
> should be used to decide if programming can be done safely in the thread.

AFAICT the WAKELOCK_STATUS register is just for debugging.  My plan is
to add a debugfs entry for it.  I believe it's only the
DMC_WAKELOCK_CTL_ACK register that needs to be checked, right?


> >  #endif /* __INTEL_DMC_REGS_H__ */
> > diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> > b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> > new file mode 100644
> > index 000000000000..5c3d8204ae7e
> > --- /dev/null
> > +++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> > @@ -0,0 +1,226 @@
> > +// SPDX-License-Identifier: MIT
> > +/*
> > + * Copyright (C) 2023 Intel Corporation  */
>=20
> We can change it 2024

Will do.


> > +
> > +#include <linux/kernel.h>
> > +
> > +#include "intel_de.h"
> > +#include "intel_dmc_regs.h"
> > +#include "intel_dmc_wl.h"
> > +
> > +/**
> > + * DOC: DMC wakelock support
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
>=20
> There are some registers (interrupt registers etc). which do not need wak=
elock.
> Have we considered those.

Yeah, as we discussed offline, it doesn't harm to have it for registers
that don't need it, for now.  We'll add the correct tables in a
subsequent patch, when we clarify the exact ranges.

Thanks a lot for your review!

--
Cheers,
Luca.
