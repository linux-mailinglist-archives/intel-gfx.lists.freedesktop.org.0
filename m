Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 86A54397DBA
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Jun 2021 02:42:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D33AF6EB3B;
	Wed,  2 Jun 2021 00:42:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A12E86EB3B;
 Wed,  2 Jun 2021 00:42:48 +0000 (UTC)
IronPort-SDR: mb5R/Ov0fmeUwdBn6ipWVa7TQtHBsMhZIOinGJnPK31qnCIDfPlVCnGdGQHQ64VVRKiH9cQAGU
 o67ucJLwLwrw==
X-IronPort-AV: E=McAfee;i="6200,9189,10002"; a="289299670"
X-IronPort-AV: E=Sophos;i="5.83,241,1616482800"; d="scan'208";a="289299670"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2021 17:42:43 -0700
IronPort-SDR: a62Mtr+u4hkQeMjYEo5Pyea23c+c6JiwQtUGtuMZApzt7EYGs2tnl3Bz4lb22P0X1UPlfoc+79
 x+/Jtnr1no0A==
X-IronPort-AV: E=Sophos;i="5.83,241,1616482800"; d="scan'208";a="467259123"
Received: from dbstims-dev.fm.intel.com ([10.1.27.177])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2021 17:42:43 -0700
Date: Tue, 1 Jun 2021 17:42:42 -0700
From: Dale B Stimson <dale.b.stimson@intel.com>
To: "Sundaresan, Sujaritha" <sujaritha.sundaresan@intel.com>
Message-ID: <20210602004241.GA90099@dbstims-dev.fm.intel.com>
References: <20210528004428.35258-1-dale.b.stimson@intel.com>
 <20210528004428.35258-2-dale.b.stimson@intel.com>
 <6518131d-3d34-4b28-f6a3-3fee586064ff@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6518131d-3d34-4b28-f6a3-3fee586064ff@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v4 1/1] drm/i915/dg1: Add HWMON power sensor
 support
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2021-06-01 14:39:11, Sundaresan, Sujaritha wrote:
> Date: Tue, 1 Jun 2021 14:39:11 -0700
> From: "Sundaresan, Sujaritha" <sujaritha.sundaresan@intel.com>
> To: Dale B Stimson <dale.b.stimson@intel.com>,
>  intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
> CC: Jon Ewins <jon.ewins@intel.com>, Jani Nikula
>  <jani.nikula@linux.intel.com>
> Subject: Re: [PATCH v4 1/1] drm/i915/dg1: Add HWMON power sensor support
> User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0)
>  Gecko/20100101 Thunderbird/78.10.2
> =

> =

> On 5/27/2021 5:44 PM, Dale B Stimson wrote:
> > As part of the System Managemenent Interface (SMI), use the HWMON
> > subsystem to display power utilization.
> > =

> > The following standard HWMON power sensors are currently supported
> > (and appropriately scaled):
> >    /sys/class/drm/card0/device/hwmon/hwmon<i>
> > 	- energy1_input
> > 	- power1_cap
> > 	- power1_max
> > =

> > Some non-standard HWMON power information is also provided, such as
> > enable bits and intervals.
> > =

> > Signed-off-by: Dale B Stimson <dale.b.stimson@intel.com>
> > ---
> >   .../ABI/testing/sysfs-driver-intel-i915-hwmon | 116 +++
> >   drivers/gpu/drm/i915/Kconfig                  |   1 +
> >   drivers/gpu/drm/i915/Makefile                 |   1 +
> >   drivers/gpu/drm/i915/i915_drv.c               |   6 +
> >   drivers/gpu/drm/i915/i915_drv.h               |   3 +
> >   drivers/gpu/drm/i915/i915_hwmon.c             | 757 ++++++++++++++++++
> >   drivers/gpu/drm/i915/i915_hwmon.h             |  42 +
> >   drivers/gpu/drm/i915/i915_reg.h               |  52 ++
> >   8 files changed, 978 insertions(+)
> >   create mode 100644 Documentation/ABI/testing/sysfs-driver-intel-i915-=
hwmon
> >   create mode 100644 drivers/gpu/drm/i915/i915_hwmon.c
> >   create mode 100644 drivers/gpu/drm/i915/i915_hwmon.h
> > =

> > diff --git a/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon b/=
Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
> > new file mode 100644
> > index 0000000000000..2ee7c413ca190
> > --- /dev/null
> > +++ b/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
> > @@ -0,0 +1,116 @@
> > +What:           /sys/devices/.../hwmon/hwmon<i>/energy1_input
> > +Date:           June 2021
> > +KernelVersion:  5.14
> > +Contact:        dri-devel@lists.freedesktop.org
> > +Description:
> > +                RO. Energy input of device in microjoules.
> > +
> > +		The returned textual representation is an unsigned integer
> > +		number that can be stored in 64-bits.  Warning: The hardware
> > +		register is 32-bits wide and can overflow by wrapping around.
> > +		A single wrap-around between calls to read this value can
> > +		be detected and will be accounted for in the returned value.
> > +		At a power consumption of 1 watt, the 32-bit hardware register
> > +		would wrap-around approximately every 3 days.
> > +
> > +		Only supported for particular Intel i915 graphics platforms.
> > +
> > +What:           /sys/devices/.../hwmon/hwmon<i>/power1_max_enable
> > +Date:           June 2021
> > +KernelVersion:  5.14
> > +Contact:        dri-devel@lists.freedesktop.org
> > +Description:
> > +                RW.  Sustained power limit is enabled - true or false.
> =

> Hi Dale,
> =

> This attribute should be read-only ?

That is correct.  The hardware implementation is read-only.

> > +
> > +                The power controller will throttle the operating frequ=
ency
> > +                if the power averaged over a window (typically seconds)
> > +                exceeds this limit.
> > +
> > +                See power1_max_enable power1_max power1_max_interval
> > +
> > +		Only supported for particular Intel i915 graphics platforms.
> > +
> > +What:           /sys/devices/.../hwmon/hwmon<i>/power1_max
> > +Date:           June 2021
> > +KernelVersion:  5.14
> > +Contact:        dri-devel@lists.freedesktop.org
> > +Description:
> > +                RW.  Sustained power limit in milliwatts
> > +
> > +                The power controller will throttle the operating frequ=
ency
> > +                if the power averaged over a window (typically seconds)
> > +                exceeds this limit.
> > +
> > +                See power1_max_enable power1_max power1_max_interval
> > +
> > +		Only supported for particular Intel i915 graphics platforms.
> > +
> > +What:           /sys/devices/.../hwmon/hwmon<i>/power1_max_interval
> > +Date:           June 2021
> > +KernelVersion:  5.14
> > +Contact:        dri-devel@lists.freedesktop.org
> > +Description:
> > +                RW. Sustained power limit interval in milliseconds over
> > +                which sustained power is averaged.
> > +
> > +                See power1_max_enable power1_max power1_max_interval
> > +
> > +		Only supported for particular Intel i915 graphics platforms.
> > +
> > +What:           /sys/devices/.../hwmon/hwmon<i>/power1_cap_enable
> > +Date:           June 2021
> > +KernelVersion:  5.14
> > +Contact:        dri-devel@lists.freedesktop.org
> > +Description:
> > +		RW.  Power burst limit is enabled - true or false
> > +
> > +                See power1_cap_enable power1_cap
> > +
> > +		Only supported for particular Intel i915 graphics platforms.
> > +
> > +What:           /sys/devices/.../hwmon/hwmon<i>/power1_cap
> > +Date:           June 2021
> > +KernelVersion:  5.14
> > +Contact:        dri-devel@lists.freedesktop.org
> > +Description:
> > +		RW.  Power burst limit in milliwatts.
> > +
> > +                See power1_cap_enable power1_cap
> > +
> > +		Only supported for particular Intel i915 graphics platforms.
> > +
> > +What:           /sys/devices/.../hwmon/hwmon<i>/power_default_limit
> > +Date:           June 2021
> > +KernelVersion:  5.14
> > +Contact:        dri-devel@lists.freedesktop.org
> > +Description:
> > +                RO.  Default power limit.
> > +
> > +		Only supported for particular Intel i915 graphics platforms.
> > +
> > +What:           /sys/devices/.../hwmon/hwmon<i>/power_min_limit
> > +Date:           June 2021
> > +KernelVersion:  5.14
> > +Contact:        dri-devel@lists.freedesktop.org
> > +Description:
> > +                RO.  Default minimum power limit.
> > +
> > +		Only supported for particular Intel i915 graphics platforms.
> > +
> > +		If not supported, then attribute will be absent, or attempted
> > +		access will give error return or return value as 0.
> > +
> > +What:           /sys/devices/.../hwmon/hwmon<i>/power_max_limit
> > +Date:           June 2021
> > +KernelVersion:  5.14
> > +Contact:        dri-devel@lists.freedesktop.org
> > +Description:
> > +                RO.  Default maximum power limit.
> > +
> > +		Only supported for particular Intel i915 graphics platforms.
> > +
> > +		If not supported, then one of: absent, error return or value
> > +		returned as 0 or UINT_MAX.
> > +
> > +		If not supported, then attribute will be absent, or attempted
> > +		access will give error return or return value as 0 or UINT_MAX.
> > diff --git a/drivers/gpu/drm/i915/Kconfig b/drivers/gpu/drm/i915/Kconfig
> > index 93f4d059fc89f..cd1b9b406c725 100644
> > --- a/drivers/gpu/drm/i915/Kconfig
> > +++ b/drivers/gpu/drm/i915/Kconfig
> > @@ -14,6 +14,7 @@ config DRM_I915
> >   	select DRM_MIPI_DSI
> >   	select RELAY
> >   	select IRQ_WORK
> > +	select HWMON
> >   	# i915 depends on ACPI_VIDEO when ACPI is enabled
> >   	# but for select to work, need to select ACPI_VIDEO's dependencies, =
ick
> >   	select BACKLIGHT_CLASS_DEVICE if ACPI
> > diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makef=
ile
> > index 6947495bf34b8..993c0a9943ef8 100644
> > --- a/drivers/gpu/drm/i915/Makefile
> > +++ b/drivers/gpu/drm/i915/Makefile
> > @@ -37,6 +37,7 @@ i915-y +=3D i915_drv.o \
> >   	  i915_config.o \
> >   	  i915_irq.o \
> >   	  i915_getparam.o \
> > +	  i915_hwmon.o \
> >   	  i915_mitigations.o \
> >   	  i915_params.o \
> >   	  i915_pci.o \
> > diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i91=
5_drv.c
> > index 2f06bb7b3ed2c..3636755622c37 100644
> > --- a/drivers/gpu/drm/i915/i915_drv.c
> > +++ b/drivers/gpu/drm/i915/i915_drv.c
> > @@ -70,6 +70,7 @@
> >   #include "i915_debugfs.h"
> >   #include "i915_drv.h"
> > +#include "i915_hwmon.h"
> >   #include "i915_ioc32.h"
> >   #include "i915_irq.h"
> >   #include "i915_memcpy.h"
> > @@ -681,6 +682,8 @@ static void i915_driver_register(struct drm_i915_pr=
ivate *dev_priv)
> >   	intel_gt_driver_register(&dev_priv->gt);
> > +	i915_hwmon_register(dev_priv);
> > +
> >   	intel_display_driver_register(dev_priv);
> >   	intel_power_domains_enable(dev_priv);
> > @@ -707,9 +710,12 @@ static void i915_driver_unregister(struct drm_i915=
_private *dev_priv)
> >   	intel_display_driver_unregister(dev_priv);
> > +	i915_hwmon_unregister(dev_priv);
> > +
> >   	intel_gt_driver_unregister(&dev_priv->gt);
> >   	i915_perf_unregister(dev_priv);
> > +
> >   	i915_pmu_unregister(dev_priv);
> >   	i915_teardown_sysfs(dev_priv);
> > diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i91=
5_drv.h
> > index 0f6d27da69acd..f0476908e0359 100644
> > --- a/drivers/gpu/drm/i915/i915_drv.h
> > +++ b/drivers/gpu/drm/i915/i915_drv.h
> > @@ -60,6 +60,7 @@
> >   #include <drm/drm_connector.h>
> >   #include <drm/i915_mei_hdcp_interface.h>
> > +#include "i915_hwmon.h"
> >   #include "i915_params.h"
> >   #include "i915_reg.h"
> >   #include "i915_utils.h"
> > @@ -1118,6 +1119,8 @@ struct drm_i915_private {
> >   	struct i915_perf perf;
> > +	struct i915_hwmon hwmon;
> > +
> >   	/* Abstract the submission mechanism (legacy ringbuffer or execlists=
) away */
> >   	struct intel_gt gt;
> > diff --git a/drivers/gpu/drm/i915/i915_hwmon.c b/drivers/gpu/drm/i915/i=
915_hwmon.c
> > new file mode 100644
> > index 0000000000000..e9e532fcf9d1e
> > --- /dev/null
> > +++ b/drivers/gpu/drm/i915/i915_hwmon.c
> > @@ -0,0 +1,757 @@
> > +// SPDX-License-Identifier: MIT
> > +/*
> > + * Copyright =A9 2020 Intel Corporation
> > + */
> > +
> > +/*
> > + * Power-related hwmon entries.
> > + */
> > +
> > +#include <linux/hwmon.h>
> > +#include <linux/hwmon-sysfs.h>
> > +#include <linux/types.h>
> > +
> > +#include "i915_drv.h"
> > +#include "gt/intel_gt.h"
> > +#include "i915_hwmon.h"
> > +
> > +/*
> > + * SF_* - scale factors for particular quantities.
> > + * The hwmon standard says that quantities of the given types are spec=
ified
> > + * in the given units:
> > + * - time   - milliseconds
> > + * - power  - microwatts
> > + * - energy - microjoules
> > + */
> > +
> > +#define SF_TIME		   1000

> Maybe just me, but is the indent supposed to be different from the ones
> below ?

The right-most column of the numbers are aligned.  You are seeing the value
for SF_TIME offset to the right because tabs were used, the introductory
"+" shifted the tab stop one to the right, and the previous alignment was
on the tab stop.

> > +#define SF_POWER	1000000
> > +#define SF_ENERGY	1000000
> > +
> > +#define FIELD_SHIFT(__mask)				    \
> > +	(BUILD_BUG_ON_ZERO(!__builtin_constant_p(__mask)) + \
> > +		BUILD_BUG_ON_ZERO((__mask) =3D=3D 0) +	    \
> > +		__bf_shf(__mask))
> > +
> > +static void
> > +_locked_with_pm_intel_uncore_rmw(struct intel_uncore *uncore,
> > +				 i915_reg_t reg, u32 clear, u32 set)
> > +{
> > +	struct drm_i915_private *i915 =3D uncore->i915;
> > +	struct i915_hwmon *hwmon =3D &i915->hwmon;
> > +	intel_wakeref_t wakeref;
> > +
> > +	mutex_lock(&hwmon->hwmon_lock);
> > +
> > +	with_intel_runtime_pm(uncore->rpm, wakeref)
> > +		intel_uncore_rmw(uncore, reg, clear, set);
> > +
> > +	mutex_unlock(&hwmon->hwmon_lock);
> > +}
> > +
> > +/*
> > + * This function's return type of u64 allows for the case where the sc=
aling
> > + * of the field taken from the 32-bit register value might cause a res=
ult to
> > + * exceed 32 bits.
> > + */
> > +static u64
> > +_field_read_and_scale(struct intel_uncore *uncore, i915_reg_t rgadr,
> > +		      u32 field_msk, int field_shift,
> > +		      int nshift, unsigned int scale_factor)
> > +{
> > +	intel_wakeref_t wakeref;
> > +	u32 reg_value;
> > +	u64 scaled_val;
> > +
> > +	with_intel_runtime_pm(uncore->rpm, wakeref)
> > +		reg_value =3D intel_uncore_read(uncore, rgadr);
> > +
> > +	reg_value =3D (reg_value & field_msk) >> field_shift;
> =

> Any reason why le32_get_bits won't work here ?

Yes.  I wanted to have a function to do the read plus the scaling.  Macro
le_32_get_bits() requires that its field_mask arg be a compile-time constan=
t.
(This is so it can compute the field's bit shift at compile time).

Using le_32_get_bits() inside the function would require that function arg
field_mask be a compile-time constant inside the function.  This would only=
 be
the case (given gcc's actual behavior) if the function is inline.  The only
way to guarantee that the function is always inline is to use __always_inli=
ne.
Indeed, that was the original implementation.

A reviewer comment about the __always_inline caused me to re-examine this.
I concluded that using __always_inline for this purpose (and depending on
gcc's ill-defined but empirically observed behavior) was too much of a hack.

Accordingly, the function now computes the field bit shift (using the
compile-time constant definition of the field_mask) at the caller site and
also passes that as an arg to the function.

> Thanks,
> =

> Suja
> =

> > +	scaled_val =3D mul_u32_u32(scale_factor, reg_value);
> > +
> > +	/* Shift, rounding to nearest */
> > +	if (nshift > 0)
> > +		scaled_val =3D (scaled_val + (1 << (nshift - 1))) >> nshift;
> > +
> > +	return scaled_val;
> > +}
> > +
> > +static u64
> > +_field_read64_and_scale(struct intel_uncore *uncore, i915_reg_t rgadr,
> > +			u64 field_msk, int field_shift,
> > +			int nshift, unsigned int scale_factor)
> > +{
> > +	intel_wakeref_t wakeref;
> > +	u64 reg_value;
> > +	u64 scaled_val;
> > +
> > +	with_intel_runtime_pm(uncore->rpm, wakeref)
> > +		reg_value =3D intel_uncore_read64(uncore, rgadr);
> > +
> > +	reg_value =3D (reg_value & field_msk) >> field_shift;
> > +	scaled_val =3D scale_factor * reg_value;
> > +
> > +	/* Shift, rounding to nearest */
> > +	if (nshift > 0)
> > +		scaled_val =3D (scaled_val + (1 << (nshift - 1))) >> nshift;
> > +
> > +	return scaled_val;
> > +}
> > +
> > +static void
> > +_field_scale_and_write(struct intel_uncore *uncore,
> > +		       i915_reg_t rgadr,
> > +		       u32 field_msk, int field_shift,
> > +		       int nshift, unsigned int scale_factor, long lval)
> > +{
> > +	u32 nval;
> > +	u32 bits_to_clear;
> > +	u32 bits_to_set;
> > +
> > +	/* Computation in 64-bits to avoid overflow. Round to nearest. */
> > +	nval =3D DIV_ROUND_CLOSEST_ULL((u64)lval << nshift, scale_factor);
> > +
> > +	bits_to_clear =3D field_msk;
> > +	bits_to_set =3D (nval << field_shift) | field_msk;
> > +
> > +	_locked_with_pm_intel_uncore_rmw(uncore, rgadr,
> > +					 bits_to_clear, bits_to_set);
> > +}
> > +
> > +/*
> > + * i915_energy1_input_show - A custom function to obtain energy1_input.
> > + * Use a custom function instead of the usual hwmon helpers in order to
> > + * guarantee 64-bits of result to user-space.
> > + * Units are microjoules.
> > + *
> > + * The underlying hardware register is 32-bits and is subject to overf=
low.
> > + * This function compensates for overflow of the 32-bit register by de=
tecting
> > + * wrap-around and incrementing an overflow counter.
> > + * This only works if the register is sampled often enough to avoid
> > + * missing an instance of overflow - achieved either by repeated
> > + * queries through the API, or via a possible timer (future - TBD) that
> > + * ensures values are read often enough to catch all overflows.
> > + *
> > + * How long before overflow?  For example, with an example scaling bit
> > + * shift of 14 bits (see register *PACKAGE_POWER_SKU_UNIT) and a power=
 draw of
> > + * 1000 watts, the 32-bit counter will overflow in approximately 4.36 =
minutes.
> > + *
> > + * Examples:
> > + *    1 watt:  (2^32 >> 14) /    1 W / (60 * 60 * 24) secs/day -> 3 da=
ys
> > + * 1000 watts: (2^32 >> 14) / 1000 W / 60             secs/min -> 4.36=
 minutes
> > + */
> > +static ssize_t
> > +i915_energy1_input_show(struct device *dev, struct device_attribute *a=
ttr,
> > +			char *buf)
> > +{
> > +	struct drm_i915_private *i915 =3D dev_get_drvdata(dev);
> > +	struct intel_uncore *uncore =3D &i915->uncore;
> > +	struct i915_hwmon *hwmon =3D &i915->hwmon;
> > +	int nshift =3D hwmon->scl_shift_energy;
> > +	ssize_t ret;
> > +	intel_wakeref_t wakeref;
> > +	u32 reg_value;
> > +	u64 vlo;
> > +	u64 vhi;
> > +
> > +	mutex_lock(&hwmon->hwmon_lock);
> > +
> > +	with_intel_runtime_pm(uncore->rpm, wakeref)
> > +		reg_value =3D intel_uncore_read(uncore,
> > +					      hwmon->rg.pkg_energy_status);
> > +
> > +	/*
> > +	 * The u32 register concatenated with the u32 overflow counter
> > +	 * gives an effective energy counter size of 64-bits.  However, the
> > +	 * computations below are done modulo 2^96 to avoid overflow during
> > +	 * scaling in the conversion to microjoules.
> > +	 *
> > +	 * The low-order 64-bits of the resulting quantity are returned to
> > +	 * the caller in units of microjoules, encoded into a decimal string.
> > +	 *
> > +	 * For a power of 1000 watts, 64 bits in units of microjoules will
> > +	 * overflow after 584 years.
> > +	 */
> > +
> > +	if (hwmon->energy_counter_prev > reg_value)
> > +		hwmon->energy_counter_overflow++;
> > +
> > +	hwmon->energy_counter_prev =3D reg_value;
> > +
> > +	/*
> > +	 * 64-bit variables vlo and vhi are used for the scaling process.
> > +	 * The 96-bit counter value is composed from the two 64-bit variables
> > +	 * vhi and vlo thusly:  counter =3D=3D vhi << 32 + vlo .
> > +	 * The 32-bits of overlap between the two variables is convenient for
> > +	 * handling overflows out of vlo.
> > +	 */
> > +
> > +	vlo =3D reg_value;
> > +	vhi =3D hwmon->energy_counter_overflow;
> > +
> > +	mutex_unlock(&hwmon->hwmon_lock);
> > +
> > +	vlo =3D SF_ENERGY * vlo;
> > +
> > +	/* Prepare to round to nearest */
> > +	if (nshift > 0)
> > +		vlo +=3D 1 << (nshift - 1);
> > +
> > +	/*
> > +	 * Anything in the upper-32 bits of vlo gets added into vhi here,
> > +	 * and then cleared from vlo.
> > +	 */
> > +	vhi =3D (SF_ENERGY * vhi) + (vlo >> 32);
> > +	vlo &=3D 0xffffffffULL;
> > +
> > +	/*
> > +	 * Apply the right shift.
> > +	 * - vlo shifted by itself.
> > +	 * - vlo receiving what's shifted out of vhi.
> > +	 * - vhi shifted by itself
> > +	 */
> > +	vlo =3D vlo >> nshift;
> > +	vlo |=3D (vhi << (32 - nshift)) & 0xffffffffULL;
> > +	vhi =3D vhi >> nshift;
> > +
> > +	/* Combined to get a 64-bit result in vlo. */
> > +	vlo |=3D (vhi << 32);
> > +
> > +	ret =3D sysfs_emit(buf, "%llu\n", vlo);

> Is sysfs_emit now being used in place of scnprintf ? Is there a reason for
> the switch ?

Yes, that is the new standard.  See Documentation/filesystems/sysfs.rst .

-Dale

> > +
> > +	return ret;
> > +}
> > +
> > +static ssize_t
> > +i915_power1_max_enable_show(struct device *dev, struct device_attribut=
e *attr,
> > +			    char *buf)
> > +{
> > +	struct drm_i915_private *i915 =3D dev_get_drvdata(dev);
> > +	struct intel_uncore *uncore =3D &i915->uncore;
> > +	intel_wakeref_t wakeref;
> > +	ssize_t ret;
> > +	u32 reg_value;
> > +	bool is_enabled;
> > +
> > +	with_intel_runtime_pm(uncore->rpm, wakeref)
> > +		reg_value =3D intel_uncore_read(uncore,
> > +					      i915->hwmon.rg.pkg_rapl_limit);
> > +
> > +	is_enabled =3D !!(reg_value & PKG_PWR_LIM_1_EN);
> > +
> > +	ret =3D sysfs_emit(buf, "%u\n", is_enabled);
> > +
> > +	return ret;
> > +}
> > +
> > +static ssize_t
> > +i915_power1_max_interval_show(struct device *dev, struct device_attrib=
ute *attr,
> > +			      char *buf)
> > +{
> > +	struct drm_i915_private *i915 =3D dev_get_drvdata(dev);
> > +	struct intel_uncore *uncore =3D &i915->uncore;
> > +	struct i915_hwmon *hwmon =3D &i915->hwmon;
> > +	ssize_t ret;
> > +	u64 ullval;
> > +
> > +	ullval =3D _field_read_and_scale(uncore, hwmon->rg.pkg_rapl_limit,
> > +				       PKG_PWR_LIM_1_TIME,
> > +				       FIELD_SHIFT(PKG_PWR_LIM_1_TIME),
> > +				       hwmon->scl_shift_time, SF_TIME);
> > +
> > +	ret =3D sysfs_emit(buf, "%llu\n", ullval);
> > +
> > +	return ret;
> > +}
> > +
> > +static ssize_t
> > +i915_power1_max_interval_store(struct device *dev,
> > +			       struct device_attribute *attr,
> > +			       const char *buf, size_t count)
> > +{
> > +	struct drm_i915_private *i915 =3D dev_get_drvdata(dev);
> > +	struct intel_uncore *uncore =3D &i915->uncore;
> > +	struct i915_hwmon *hwmon =3D &i915->hwmon;
> > +	ssize_t ret;
> > +	long val;
> > +
> > +	ret =3D kstrtoul(buf, 0, &val);
> > +	if (ret)
> > +		return ret;
> > +
> > +	_field_scale_and_write(uncore, hwmon->rg.pkg_rapl_limit,
> > +			       PKG_PWR_LIM_2_TIME,
> > +			       FIELD_SHIFT(PKG_PWR_LIM_2_TIME),
> > +			       hwmon->scl_shift_time, SF_TIME, val);
> > +
> > +	return count;
> > +}
> > +
> > +static ssize_t
> > +i915_power1_cap_enable_show(struct device *dev, struct device_attribut=
e *attr,
> > +			    char *buf)
> > +{
> > +	struct drm_i915_private *i915 =3D dev_get_drvdata(dev);
> > +	struct intel_uncore *uncore =3D &i915->uncore;
> > +	struct i915_hwmon *hwmon =3D &i915->hwmon;
> > +	intel_wakeref_t wakeref;
> > +	ssize_t ret;
> > +	u32 reg_value;
> > +	bool is_enabled;
> > +
> > +	with_intel_runtime_pm(uncore->rpm, wakeref)
> > +		reg_value =3D intel_uncore_read(uncore,
> > +					      hwmon->rg.pkg_rapl_limit_udw);
> > +
> > +	is_enabled =3D !!(reg_value & PKG_PWR_LIM_2_EN);
> > +
> > +	ret =3D sysfs_emit(buf, "%u\n", is_enabled);
> > +
> > +	return ret;
> > +}
> > +
> > +static ssize_t
> > +i915_power1_cap_enable_store(struct device *dev, struct device_attribu=
te *attr,
> > +			     const char *buf, size_t count)
> > +{
> > +	struct drm_i915_private *i915 =3D dev_get_drvdata(dev);
> > +	struct intel_uncore *uncore =3D &i915->uncore;
> > +	struct i915_hwmon *hwmon =3D &i915->hwmon;
> > +	ssize_t ret;
> > +	u32 val;
> > +	u32 bits_to_clear;
> > +	u32 bits_to_set;
> > +
> > +	ret =3D kstrtou32(buf, 0, &val);
> > +	if (ret)
> > +		return ret;
> > +
> > +	bits_to_clear =3D PKG_PWR_LIM_2_EN;
> > +	if (!val)
> > +		bits_to_set =3D 0;
> > +	else
> > +		bits_to_set =3D PKG_PWR_LIM_2_EN;
> > +
> > +	_locked_with_pm_intel_uncore_rmw(uncore, hwmon->rg.pkg_rapl_limit_udw,
> > +					 bits_to_clear, bits_to_set);
> > +
> > +	return count;
> > +}
> > +
> > +static ssize_t
> > +i915_power_default_limit_show(struct device *dev, struct device_attrib=
ute *attr,
> > +			      char *buf)
> > +{
> > +	struct drm_i915_private *i915 =3D dev_get_drvdata(dev);
> > +	struct i915_hwmon *hwmon =3D &i915->hwmon;
> > +	ssize_t ret;
> > +
> > +	ret =3D sysfs_emit(buf, "%u\n", hwmon->power_max_initial_value);
> > +
> > +	return ret;
> > +}
> > +
> > +static ssize_t
> > +i915_power_min_limit_show(struct device *dev, struct device_attribute =
*attr,
> > +			  char *buf)
> > +{
> > +	struct drm_i915_private *i915 =3D dev_get_drvdata(dev);
> > +	struct intel_uncore *uncore =3D &i915->uncore;
> > +	struct i915_hwmon *hwmon =3D &i915->hwmon;
> > +	ssize_t ret;
> > +	u32 uval;
> > +
> > +	/*
> > +	 * This is a 64-bit register but the individual fields are under 32 b=
its
> > +	 * in size even after scaling.
> > +	 * The UAPI specifies a size of 32 bits.
> > +	 * The UAPI specifies that 0 should be returned if unsupported.
> > +	 * So, using u32 and %u is sufficient.
> > +	 */
> > +	if (i915_mmio_reg_valid(hwmon->rg.pkg_power_sku))
> > +		uval =3D (u32)_field_read64_and_scale(uncore,
> > +						    hwmon->rg.pkg_power_sku,
> > +						    PKG_MIN_PWR,
> > +						    FIELD_SHIFT(PKG_MIN_PWR),
> > +						    hwmon->scl_shift_power,
> > +						    SF_POWER);
> > +	else
> > +		uval =3D 0;
> > +
> > +	ret =3D sysfs_emit(buf, "%u\n", uval);
> > +
> > +	return ret;
> > +}
> > +
> > +static ssize_t
> > +i915_power_max_limit_show(struct device *dev, struct device_attribute =
*attr,
> > +			  char *buf)
> > +{
> > +	struct drm_i915_private *i915 =3D dev_get_drvdata(dev);
> > +	struct intel_uncore *uncore =3D &i915->uncore;
> > +	struct i915_hwmon *hwmon =3D &i915->hwmon;
> > +	ssize_t ret;
> > +	u32 uval;
> > +
> > +	/*
> > +	 * This is a 64-bit register but the individual fields are under 32 b=
its
> > +	 * in size even after scaling.
> > +	 * The UAPI specifies a size of 32 bits.
> > +	 * The UAPI specifies that UINT_MAX should be returned if unsupported.
> > +	 * So, using u32 and %u is sufficient.
> > +	 */
> > +	if (i915_mmio_reg_valid(hwmon->rg.pkg_power_sku))
> > +		uval =3D (u32)_field_read64_and_scale(uncore,
> > +						    hwmon->rg.pkg_power_sku,
> > +						    PKG_MAX_PWR,
> > +						    FIELD_SHIFT(PKG_MAX_PWR),
> > +						    hwmon->scl_shift_power,
> > +						    SF_POWER);
> > +	else
> > +		uval =3D UINT_MAX;
> > +
> > +	ret =3D sysfs_emit(buf, "%u\n", uval);
> > +
> > +	return ret;
> > +}
> > +
> > +static SENSOR_DEVICE_ATTR(power1_max_enable, 0444,
> > +			  i915_power1_max_enable_show, NULL, 0);
> > +static SENSOR_DEVICE_ATTR(power1_max_interval, 0664,
> > +			  i915_power1_max_interval_show,
> > +			  i915_power1_max_interval_store, 0);
> > +static SENSOR_DEVICE_ATTR(power1_cap_enable, 0664,
> > +			  i915_power1_cap_enable_show,
> > +			  i915_power1_cap_enable_store, 0);
> > +static SENSOR_DEVICE_ATTR(power_default_limit, 0444,
> > +			  i915_power_default_limit_show, NULL, 0);
> > +static SENSOR_DEVICE_ATTR(power_min_limit, 0444,
> > +			  i915_power_min_limit_show, NULL, 0);
> > +static SENSOR_DEVICE_ATTR(power_max_limit, 0444,
> > +			  i915_power_max_limit_show, NULL, 0);
> > +static SENSOR_DEVICE_ATTR(energy1_input, 0444,
> > +			  i915_energy1_input_show, NULL, 0);
> > +
> > +static struct attribute *hwmon_attributes[] =3D {
> > +	&sensor_dev_attr_power1_max_enable.dev_attr.attr,
> > +	&sensor_dev_attr_power1_max_interval.dev_attr.attr,
> > +	&sensor_dev_attr_power1_cap_enable.dev_attr.attr,
> > +	&sensor_dev_attr_power_default_limit.dev_attr.attr,
> > +	&sensor_dev_attr_power_min_limit.dev_attr.attr,
> > +	&sensor_dev_attr_power_max_limit.dev_attr.attr,
> > +	&sensor_dev_attr_energy1_input.dev_attr.attr,
> > +	NULL
> > +};
> > +
> > +static umode_t hwmon_attributes_visible(struct kobject *kobj,
> > +					struct attribute *attr, int index)
> > +{
> > +	struct device *dev =3D kobj_to_dev(kobj);
> > +	struct drm_i915_private *i915 =3D dev_get_drvdata(dev);
> > +	struct i915_hwmon *hwmon =3D &i915->hwmon;
> > +	i915_reg_t rgadr;
> > +
> > +	if (attr =3D=3D &sensor_dev_attr_energy1_input.dev_attr.attr)
> > +		rgadr =3D hwmon->rg.pkg_energy_status;
> > +	else if (attr =3D=3D &sensor_dev_attr_power1_max_enable.dev_attr.attr)
> > +		rgadr =3D hwmon->rg.pkg_rapl_limit;
> > +	else if (attr =3D=3D &sensor_dev_attr_power1_max_interval.dev_attr.at=
tr)
> > +		rgadr =3D hwmon->rg.pkg_rapl_limit;
> > +	else if (attr =3D=3D &sensor_dev_attr_power1_cap_enable.dev_attr.attr)
> > +		rgadr =3D hwmon->rg.pkg_rapl_limit_udw;
> > +	else if (attr =3D=3D &sensor_dev_attr_power_default_limit.dev_attr.at=
tr)
> > +		rgadr =3D hwmon->rg.pkg_rapl_limit;
> > +	else if (attr =3D=3D &sensor_dev_attr_power_min_limit.dev_attr.attr)
> > +		return attr->mode;
> > +	else if (attr =3D=3D &sensor_dev_attr_power_max_limit.dev_attr.attr)
> > +		return attr->mode;
> > +	else
> > +		return 0;
> > +
> > +	if (!i915_mmio_reg_valid(rgadr))
> > +		return 0;
> > +
> > +	return attr->mode;
> > +}
> > +
> > +static const struct attribute_group hwmon_attrgroup =3D {
> > +	.attrs =3D hwmon_attributes,
> > +	.is_visible =3D hwmon_attributes_visible,
> > +};
> > +
> > +static const struct attribute_group *hwmon_groups[] =3D {
> > +	&hwmon_attrgroup,
> > +	NULL
> > +};
> > +
> > +/*
> > + * HWMON SENSOR TYPE =3D hwmon_power
> > + *  - Sustained Power (power1_max)
> > + *  - Burst power     (power1_cap)
> > + *  - Peak power      (power1_crit)
> > + */
> > +static const u32 i915_config_power[] =3D {
> > +	HWMON_P_CAP | HWMON_P_MAX,
> > +	0
> > +};
> > +
> > +static const struct hwmon_channel_info i915_power =3D {
> > +	.type =3D hwmon_power,
> > +	.config =3D i915_config_power,
> > +};
> > +
> > +static const struct hwmon_channel_info *i915_info[] =3D {
> > +	&i915_power,
> > +	NULL
> > +};
> > +
> > +static umode_t
> > +i915_power_is_visible(const struct drm_i915_private *i915, u32 attr, i=
nt chan)
> > +{
> > +	i915_reg_t rgadr;
> > +
> > +	switch (attr) {
> > +	case hwmon_power_max:
> > +		rgadr =3D i915->hwmon.rg.pkg_rapl_limit;
> > +		break;
> > +	case hwmon_power_cap:
> > +		rgadr =3D i915->hwmon.rg.pkg_rapl_limit_udw;
> > +		break;
> > +	default:
> > +		return 0;
> > +	}
> > +
> > +	if (!i915_mmio_reg_valid(rgadr))
> > +		return 0;
> > +
> > +	return 0664;
> > +}
> > +
> > +static int
> > +i915_power_read(struct drm_i915_private *i915, u32 attr, int chan, lon=
g *val)
> > +{
> > +	struct intel_uncore *uncore =3D &i915->uncore;
> > +	struct i915_hwmon *hwmon =3D &i915->hwmon;
> > +	int ret =3D 0;
> > +
> > +	switch (attr) {
> > +	case hwmon_power_max:
> > +		*val =3D (long)_field_read_and_scale(uncore,
> > +						   hwmon->rg.pkg_rapl_limit,
> > +						   PKG_PWR_LIM_1,
> > +						   FIELD_SHIFT(PKG_PWR_LIM_1),
> > +						   hwmon->scl_shift_power,
> > +						   SF_POWER);
> > +		break;
> > +	case hwmon_power_cap:
> > +		*val =3D (long)_field_read_and_scale(uncore,
> > +						   hwmon->rg.pkg_rapl_limit_udw,
> > +						   PKG_PWR_LIM_2,
> > +						   FIELD_SHIFT(PKG_PWR_LIM_2),
> > +						   hwmon->scl_shift_power,
> > +						   SF_POWER);
> > +		break;
> > +	default:
> > +		ret =3D -EOPNOTSUPP;
> > +	}
> > +
> > +	return ret;
> > +}
> > +
> > +static int
> > +i915_power_write(struct drm_i915_private *i915, u32 attr, int chan, lo=
ng val)
> > +{
> > +	struct intel_uncore *uncore =3D &i915->uncore;
> > +	struct i915_hwmon *hwmon =3D &i915->hwmon;
> > +	int ret =3D 0;
> > +
> > +	switch (attr) {
> > +	case hwmon_power_max:
> > +		_field_scale_and_write(uncore,
> > +				       hwmon->rg.pkg_rapl_limit,
> > +				       PKG_PWR_LIM_1,
> > +				       FIELD_SHIFT(PKG_PWR_LIM_1),
> > +				       hwmon->scl_shift_power,
> > +				       SF_POWER, val);
> > +		break;
> > +	case hwmon_power_cap:
> > +		_field_scale_and_write(uncore,
> > +				       hwmon->rg.pkg_rapl_limit_udw,
> > +				       PKG_PWR_LIM_2,
> > +				       FIELD_SHIFT(PKG_PWR_LIM_2),
> > +				       hwmon->scl_shift_power,
> > +				       SF_POWER, val);
> > +		break;
> > +	default:
> > +		ret =3D -EOPNOTSUPP;
> > +	}
> > +
> > +	return ret;
> > +}
> > +
> > +static umode_t
> > +i915_is_visible(const void *data, enum hwmon_sensor_types type,
> > +		u32 attr, int channel)
> > +{
> > +	struct drm_i915_private *i915 =3D (struct drm_i915_private *)data;
> > +
> > +	switch (type) {
> > +	case hwmon_power:
> > +		return i915_power_is_visible(i915, attr, channel);
> > +	default:
> > +		return 0;
> > +	}
> > +}
> > +
> > +static int
> > +i915_read(struct device *dev, enum hwmon_sensor_types type, u32 attr,
> > +	  int channel, long *val)
> > +{
> > +	struct drm_i915_private *i915 =3D kdev_to_i915(dev);
> > +
> > +	switch (type) {
> > +	case hwmon_power:
> > +		return i915_power_read(i915, attr, channel, val);
> > +	default:
> > +		return -EOPNOTSUPP;
> > +	}
> > +}
> > +
> > +static int
> > +i915_write(struct device *dev, enum hwmon_sensor_types type, u32 attr,
> > +	   int channel, long val)
> > +{
> > +	struct drm_i915_private *i915 =3D kdev_to_i915(dev);
> > +
> > +	switch (type) {
> > +	case hwmon_power:
> > +		return i915_power_write(i915, attr, channel, val);
> > +	default:
> > +		return -EOPNOTSUPP;
> > +	}
> > +}
> > +
> > +static const struct hwmon_ops i915_hwmon_ops =3D {
> > +	.is_visible =3D i915_is_visible,
> > +	.read =3D i915_read,
> > +	.write =3D i915_write,
> > +};
> > +
> > +static const struct hwmon_chip_info i915_chip_info =3D {
> > +	.ops =3D &i915_hwmon_ops,
> > +	.info =3D i915_info,
> > +};
> > +
> > +static void
> > +i915_hwmon_get_preregistration_info(struct drm_i915_private *i915)
> > +{
> > +	struct i915_hwmon *hwmon =3D &i915->hwmon;
> > +	struct intel_uncore *uncore =3D &i915->uncore;
> > +	intel_wakeref_t wakeref;
> > +	u32 val_sku_unit;
> > +	__le32 le_sku_unit;
> > +
> > +	if (IS_DG1(i915)) {
> > +		hwmon->rg.pkg_power_sku_unit =3D PCU_PACKAGE_POWER_SKU_UNIT;
> > +		hwmon->rg.pkg_power_sku =3D PCU_PACKAGE_POWER_SKU;
> > +		hwmon->rg.pkg_energy_status =3D PCU_PACKAGE_ENERGY_STATUS;
> > +		hwmon->rg.pkg_rapl_limit =3D PCU_PACKAGE_RAPL_LIMIT;
> > +		hwmon->rg.pkg_rapl_limit_udw =3D PCU_PACKAGE_RAPL_LIMIT_UDW;
> > +	} else {
> > +		hwmon->rg.pkg_power_sku_unit =3D INVALID_MMIO_REG;
> > +		hwmon->rg.pkg_power_sku =3D INVALID_MMIO_REG;
> > +		hwmon->rg.pkg_energy_status =3D INVALID_MMIO_REG;
> > +		hwmon->rg.pkg_rapl_limit =3D INVALID_MMIO_REG;
> > +		hwmon->rg.pkg_rapl_limit_udw =3D INVALID_MMIO_REG;
> > +	}
> > +
> > +	wakeref =3D intel_runtime_pm_get(uncore->rpm);
> > +
> > +	/*
> > +	 * The contents of register hwmon->rg.pkg_power_sku_unit do not chang=
e,
> > +	 * so read it once and store the shift values.
> > +	 */
> > +	if (i915_mmio_reg_valid(hwmon->rg.pkg_power_sku_unit))
> > +		val_sku_unit =3D intel_uncore_read(uncore,
> > +						 hwmon->rg.pkg_power_sku_unit);
> > +	else
> > +		val_sku_unit =3D 0;
> > +
> > +	hwmon->energy_counter_overflow =3D 0;
> > +
> > +	if (i915_mmio_reg_valid(hwmon->rg.pkg_energy_status))
> > +		hwmon->energy_counter_prev =3D
> > +			intel_uncore_read(uncore, hwmon->rg.pkg_energy_status);
> > +	else
> > +		hwmon->energy_counter_prev =3D 0;
> > +
> > +	intel_runtime_pm_put(uncore->rpm, wakeref);
> > +
> > +	le_sku_unit =3D cpu_to_le32(val_sku_unit);
> > +	hwmon->scl_shift_power =3D le32_get_bits(le_sku_unit, PKG_PWR_UNIT);
> > +	hwmon->scl_shift_energy =3D le32_get_bits(le_sku_unit, PKG_ENERGY_UNI=
T);
> > +	hwmon->scl_shift_time =3D le32_get_bits(le_sku_unit, PKG_TIME_UNIT);
> > +
> > +	/*
> > +	 * There is no direct way to obtain the power default_limit.
> > +	 * The best known workaround is to use the initial value of power1_ma=
x.
> > +	 *
> > +	 * The value of power1_max is reset to the default on reboot, but is
> > +	 * not reset by a module unload/load sequence.  To allow proper
> > +	 * functioning after a module reload, the value for power1_max is
> > +	 * restored to its original value at module unload time in
> > +	 * i915_hwmon_unregister().
> > +	 */
> > +	hwmon->power_max_initial_value =3D
> > +		(u32)_field_read_and_scale(uncore,
> > +					   hwmon->rg.pkg_rapl_limit,
> > +					   PKG_PWR_LIM_1,
> > +					   FIELD_SHIFT(PKG_PWR_LIM_1),
> > +					   hwmon->scl_shift_power, SF_POWER);
> > +}
> > +
> > +void i915_hwmon_register(struct drm_i915_private *i915)
> > +{
> > +	struct drm_device *drm_dev =3D &i915->drm;
> > +	struct i915_hwmon *hwmon =3D &i915->hwmon;
> > +	struct device *hwmon_dev;
> > +
> > +	mutex_init(&hwmon->hwmon_lock);
> > +
> > +	i915_hwmon_get_preregistration_info(i915);
> > +
> > +	hwmon_dev =3D hwmon_device_register_with_info(drm_dev->dev, "i915",
> > +						    drm_dev,
> > +						    &i915_chip_info,
> > +						    hwmon_groups);
> > +
> > +	if (IS_ERR(hwmon_dev)) {
> > +		mutex_destroy(&hwmon->hwmon_lock);
> > +		drm_info(&i915->drm, "Failed to register hwmon for i915\n");
> > +		return;
> > +	}
> > +
> > +	hwmon->dev =3D hwmon_dev;
> > +}
> > +
> > +void i915_hwmon_unregister(struct drm_i915_private *i915)
> > +{
> > +	struct i915_hwmon *hwmon =3D &i915->hwmon;
> > +
> > +	if (hwmon->power_max_initial_value) {
> > +		/* Restore power1_max. */
> > +		_field_scale_and_write(&i915->uncore, hwmon->rg.pkg_rapl_limit,
> > +				       PKG_PWR_LIM_1,
> > +				       FIELD_SHIFT(PKG_PWR_LIM_1),
> > +				       hwmon->scl_shift_power,
> > +				       SF_POWER,
> > +				       hwmon->power_max_initial_value);
> > +	}
> > +
> > +	if (hwmon->dev)
> > +		hwmon_device_unregister(hwmon->dev);
> > +
> > +	mutex_destroy(&hwmon->hwmon_lock);
> > +
> > +	memset(hwmon, 0, sizeof(*hwmon));
> > +}
> > diff --git a/drivers/gpu/drm/i915/i915_hwmon.h b/drivers/gpu/drm/i915/i=
915_hwmon.h
> > new file mode 100644
> > index 0000000000000..2fff4f9a6303f
> > --- /dev/null
> > +++ b/drivers/gpu/drm/i915/i915_hwmon.h
> > @@ -0,0 +1,42 @@
> > +/* SPDX-License-Identifier: MIT */
> > +
> > +/*
> > + * Copyright =A9 2020 Intel Corporation
> > + */
> > +
> > +#ifndef __INTEL_HWMON_H__
> > +#define __INTEL_HWMON_H__
> > +
> > +#include <linux/types.h>
> > +#include <linux/mutex.h>
> > +#include "i915_reg.h"
> > +
> > +struct i915_hwmon_reg {
> > +	i915_reg_t pkg_power_sku_unit;
> > +	i915_reg_t pkg_power_sku;
> > +	i915_reg_t pkg_energy_status;
> > +	i915_reg_t pkg_rapl_limit;
> > +	i915_reg_t pkg_rapl_limit_udw;
> > +};
> > +
> > +struct i915_hwmon {
> > +	struct device *dev;
> > +	struct mutex hwmon_lock;	/* counter overflow logic and rmw */
> > +
> > +	struct i915_hwmon_reg rg;
> > +
> > +	u32 energy_counter_overflow;
> > +	u32 energy_counter_prev;
> > +	u32 power_max_initial_value;
> > +
> > +	int scl_shift_power;
> > +	int scl_shift_energy;
> > +	int scl_shift_time;
> > +};
> > +
> > +struct drm_i915_private;
> > +
> > +void i915_hwmon_register(struct drm_i915_private *i915);
> > +void i915_hwmon_unregister(struct drm_i915_private *i915);
> > +
> > +#endif
> > diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i91=
5_reg.h
> > index 4979b4965a828..931fdd3a681ac 100644
> > --- a/drivers/gpu/drm/i915/i915_reg.h
> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > @@ -4083,6 +4083,58 @@ static inline bool i915_mmio_reg_valid(i915_reg_=
t reg)
> >   #define BXT_RP_STATE_CAP        _MMIO(0x138170)
> >   #define GEN9_RP_STATE_LIMITS	_MMIO(0x138148)
> > +/* DG1 */
> > +
> > +/* based on MCHBAR_MIRROR_BASE_SNB =3D=3D 0x140000 */
> > +#define PCU_PACKAGE_POWER_SKU_UNIT	_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x59=
38)
> > +#define PCU_PACKAGE_ENERGY_STATUS	_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x593=
c)
> > +#define PCU_PACKAGE_RAPL_LIMIT		_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x59a0)
> > +#define PCU_PACKAGE_RAPL_LIMIT_UDW	_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x59=
a4)
> > +#define PCU_PACKAGE_POWER_SKU		INVALID_MMIO_REG
> > +
> > +/* Fields for *_PACKAGE_RAPL_LIMIT: */
> > +#define   PKG_PWR_LIM_1			REG_GENMASK(14, 0)
> > +#define   PKG_PWR_LIM_1_EN		REG_BIT(15)
> > +#define   PKG_PWR_LIM_1_TIME		REG_GENMASK(23, 17)
> > +
> > +/*
> > + * Fields for *_PACKAGE_RAPL_LIMIT_UDW:
> > + * In docs, these fields may be defined relative to the entire 64-bit
> > + * register, but here they are defined relative to the 32-bit boundary.
> > + */
> > +#define   PKG_PWR_LIM_2			REG_GENMASK(14, 0)	// 46:32
> > +#define   PKG_PWR_LIM_2_EN		REG_BIT(15)		// 47:47
> > +#define   PKG_PWR_LIM_2_TIME		REG_GENMASK(23, 17)	// 55:49
> > +
> > +/*
> > + * *_PACKAGE_POWER_SKU_UNIT - fields specifying scaling for PCU quanti=
ties.
> > + * - PKG_PWR_UNIT - Power Units used for power control registers. The
> > + *   actual unit value is calculated by 1 W / Power(2,PKG_PWR_UNIT).
> > + * - PKG_ENERGY_UNIT - Energy Units used for power control registers. =
The
> > + *   actual unit value is calculated by 1 J / Power(2,PKG_ENERGY_UNIT).
> > + * - PKG_TIME_UNIT - Time Units used for power control registers. The
> > + *   actual unit value is calculated by 1 s / Power(2,PKG_TIME_UNIT).
> > + */
> > +#define   PKG_PWR_UNIT			REG_GENMASK(3, 0)
> > +#define   PKG_ENERGY_UNIT		REG_GENMASK(12, 8)
> > +#define   PKG_TIME_UNIT			REG_GENMASK(19, 16)
> > +
> > +/*
> > + * *_PACKAGE_POWER_SKU - SKU power and timing parameters.
> > + * Used herein as a 64-bit bit register.
> > + * These masks are defined using GENMASK_ULL as REG_GENMASK is limited=
 to u32
> > + * and as GENMASK is "long" and therefore 32-bits on a 32-bit system.
> > + * PKG_PKG_TDP, PKG_MIN_PWR, and PKG_MAX_PWR are scaled in the same wa=
y as
> > + * PKG_PWR_LIM_*, above.
> > + * PKG_MAX_WIN has sub-fields for x and y, and has the value: is 1.x *=
 2^y.
> > + */
> > +#define   PKG_PKG_TDP			GENMASK_ULL(14, 0)
> > +#define   PKG_MIN_PWR			GENMASK_ULL(30, 16)
> > +#define   PKG_MAX_PWR			GENMASK_ULL(46, 32)
> > +#define   PKG_MAX_WIN			GENMASK_ULL(54, 48)
> > +#define     PKG_MAX_WIN_Y		GENMASK_ULL(54, 53)
> > +#define     PKG_MAX_WIN_X		GENMASK_ULL(52, 48)
> > +
> >   /*
> >    * Logical Context regs
> >    */
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
