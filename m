Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C93F39701E7
	for <lists+intel-gfx@lfdr.de>; Sat,  7 Sep 2024 13:19:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFCE910E059;
	Sat,  7 Sep 2024 11:19:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VPa2w7nt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92C3310E059
 for <intel-gfx@lists.freedesktop.org>; Sat,  7 Sep 2024 11:19:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725707943; x=1757243943;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=+SnVCuPelbEhXz9I2+/ppMPjANbEqVOMCNfPROIHK2k=;
 b=VPa2w7ntQdljO5+rNisXldU7/ZvTnxworpSb2MtMIjfrtE+18E6eSlbl
 +CttNjakzu7HWg2X48nO1u57vuXkFQXu9NUTD1VjW0OJYCywhn463YcOr
 hkPyXS1w/f9IFBSODVVcctlL8GdIa1niqR6LNfWy2ECfrYn3fs8yTbH5j
 wVudbl/n40ZnS6dKH4OdoTpNMzc0CkGmOXPHm3iLtXJYWRD/V0/pJa3Ho
 43xwRyr1Z0j6q84OBKAgiaPDE5lD9gTnIfrrwjcm35zWtXJ4WhdzyNvWV
 K/JEHVcPRogHIe79xbbNNLMMBhNdRSUDW/Drv6xTluIRRAejS6naGEukE Q==;
X-CSE-ConnectionGUID: 8lQHruNRQXWdSL3itzFtfg==
X-CSE-MsgGUID: JB4i7mXyTpmKwDdOvb13pQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11187"; a="23963194"
X-IronPort-AV: E=Sophos;i="6.10,210,1719903600"; d="scan'208";a="23963194"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2024 04:19:02 -0700
X-CSE-ConnectionGUID: 5fvwHkdcQOGuU+5/uw/Csg==
X-CSE-MsgGUID: 25dScr8/Sk+Y+oOSSM6t2Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,210,1719903600"; d="scan'208";a="66926548"
Received: from black.fi.intel.com ([10.237.72.28])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2024 04:18:58 -0700
Date: Sat, 7 Sep 2024 14:18:55 +0300
From: Raag Jadav <raag.jadav@intel.com>
To: "Nilawar, Badal" <badal.nilawar@intel.com>
Cc: Anshuman Gupta <anshuman.gupta@intel.com>, jani.nikula@linux.intel.com,
 joonas.lahtinen@linux.intel.com, rodrigo.vivi@intel.com,
 tursulin@ursulin.net, linux@roeck-us.net,
 andi.shyti@linux.intel.com, andriy.shevchenko@linux.intel.com,
 intel-gfx@lists.freedesktop.org, linux-hwmon@vger.kernel.org,
 riana.tauro@intel.com, ashutosh.dixit@intel.com, karthik.poosa@intel.com
Subject: Re: [PATCH v1] drm/i915/hwmon: expose package temperature
Message-ID: <Ztw2nw5gCINySnau@black.fi.intel.com>
References: <20240828044512.2710381-1-raag.jadav@intel.com>
 <07c01d49-aa9c-429e-bd4d-65cf2648329e@intel.com>
 <Ztlx-xAd2JSpolZA@black.fi.intel.com>
 <56zmt55kfwgeq3bsbci7ghooe4qv3nqxulbaipceng2jqb6dtl@hxvgnwznnzpy>
 <ZtoD-SoxljuJQuj9@black.fi.intel.com>
 <2kraxnckxoucjzdpxx2qqfu4dymegudms7qwdqfmsn2mqofxam@6sr7ymprietf>
 <22c3a070-f09d-423d-970e-9422d7021879@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <22c3a070-f09d-423d-970e-9422d7021879@intel.com>
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

On Fri, Sep 06, 2024 at 04:33:12PM +0530, Nilawar, Badal wrote:
> On 06-09-2024 11:56, Anshuman Gupta wrote:
> > On 2024-09-05 at 22:18:17 +0300, Raag Jadav wrote:
> > > On Thu, Sep 05, 2024 at 07:39:31PM +0530, Anshuman Gupta wrote:
> > > > On 2024-09-05 at 11:55:23 +0300, Raag Jadav wrote:
> > > > > On Thu, Sep 05, 2024 at 11:56:15AM +0530, Nilawar, Badal wrote:
> > > > > > 
> > > > > > 
> > > > > > On 28-08-2024 10:15, Raag Jadav wrote:
> > > > > > > Add hwmon support for temp1_input attribute, which will expose package
> > > > > > > temperature in millidegree Celsius. With this in place we can monitor
> > > > > > > package temperature using lm-sensors tool.
> > > > > > > 
> > > > > > > $ sensors
> > > > > > > i915-pci-0300
> > > > > > > Adapter: PCI adapter
> > > > > > > in0:         990.00 mV
> > > > > > > fan1:        1260 RPM
> > > > > > > temp1:        +45.0°C
> > > > > > > power1:           N/A  (max =  35.00 W)
> > > > > > > energy1:      12.62 kJ
> > > > > > > 
> > > > > > > Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11276
> > > > > > > Signed-off-by: Raag Jadav <raag.jadav@intel.com>
> > > > > > > ---
> > > > > > >    .../ABI/testing/sysfs-driver-intel-i915-hwmon |  8 ++++
> > > > > > >    drivers/gpu/drm/i915/i915_hwmon.c             | 39 +++++++++++++++++++
> > > > > > >    drivers/gpu/drm/i915/intel_mchbar_regs.h      |  4 ++
> > > > > > >    3 files changed, 51 insertions(+)
> > > > > > > 
> > > > > > > diff --git a/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon b/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
> > > > > > > index be4141a7522f..a885e5316d02 100644
> > > > > > > --- a/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
> > > > > > > +++ b/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
> > > > > > > @@ -83,3 +83,11 @@ Contact:	intel-gfx@lists.freedesktop.org
> > > > > > >    Description:	RO. Fan speed of device in RPM.
> > > > > > >    		Only supported for particular Intel i915 graphics platforms.
> > > > > > > +
> > > > > > > +What:		/sys/bus/pci/drivers/i915/.../hwmon/hwmon<i>/temp1_input
> > > > > > > +Date:		November 2024
> > > > > > > +KernelVersion:	6.12
> > > > > > > +Contact:	intel-gfx@lists.freedesktop.org
> > > > > > > +Description:	RO. GPU package temperature in millidegree Celsius.
> > > > > > > +
> > > > > > > +		Only supported for particular Intel i915 graphics platforms.
> > > > > > > diff --git a/drivers/gpu/drm/i915/i915_hwmon.c b/drivers/gpu/drm/i915/i915_hwmon.c
> > > > > > > index 17d30f6b84b0..9f1a2300510b 100644
> > > > > > > --- a/drivers/gpu/drm/i915/i915_hwmon.c
> > > > > > > +++ b/drivers/gpu/drm/i915/i915_hwmon.c
> > > > > > > @@ -7,6 +7,7 @@
> > > > > > >    #include <linux/hwmon-sysfs.h>
> > > > > > >    #include <linux/jiffies.h>
> > > > > > >    #include <linux/types.h>
> > > > > > > +#include <linux/units.h>
> > > > > > >    #include "i915_drv.h"
> > > > > > >    #include "i915_hwmon.h"
> > > > > > > @@ -32,6 +33,7 @@
> > > > > > >    struct hwm_reg {
> > > > > > >    	i915_reg_t gt_perf_status;
> > > > > > > +	i915_reg_t pkg_temp;
> > > > > > >    	i915_reg_t pkg_power_sku_unit;
> > > > > > >    	i915_reg_t pkg_power_sku;
> > > > > > >    	i915_reg_t pkg_rapl_limit;
> > > > > > > @@ -280,6 +282,7 @@ static const struct attribute_group *hwm_groups[] = {
> > > > > > >    };
> > > > > > >    static const struct hwmon_channel_info * const hwm_info[] = {
> > > > > > > +	HWMON_CHANNEL_INFO(temp, HWMON_T_INPUT),
> > > > > > >    	HWMON_CHANNEL_INFO(in, HWMON_I_INPUT),
> > > > > > >    	HWMON_CHANNEL_INFO(power, HWMON_P_MAX | HWMON_P_RATED_MAX | HWMON_P_CRIT),
> > > > > > >    	HWMON_CHANNEL_INFO(energy, HWMON_E_INPUT),
> > > > > > > @@ -310,6 +313,36 @@ static int hwm_pcode_write_i1(struct drm_i915_private *i915, u32 uval)
> > > > > > >    				  POWER_SETUP_SUBCOMMAND_WRITE_I1, 0, uval);
> > > > > > >    }
> > > > > > > +static umode_t
> > > > > > > +hwm_temp_is_visible(const struct hwm_drvdata *ddat, u32 attr)
> > > > > > > +{
> > > > > > > +	struct i915_hwmon *hwmon = ddat->hwmon;
> > > > > > > +
> > > > > > > +	if (attr == hwmon_temp_input && i915_mmio_reg_valid(hwmon->rg.pkg_temp))
> > > > > > > +		return 0444;
> > > > > > > +
> > > > > > > +	return 0;
> > > > > > > +}
> > > > > > > +
> > > > > > > +static int
> > > > > > > +hwm_temp_read(struct hwm_drvdata *ddat, u32 attr, long *val)
> > > > > > > +{
> > > > > > > +	struct i915_hwmon *hwmon = ddat->hwmon;
> > > > > > > +	intel_wakeref_t wakeref;
> > > > > > > +	u32 reg_val;
> > > > > > > +
> > > > > > > +	if (attr == hwmon_temp_input) {
> > > > > > > +		with_intel_runtime_pm(ddat->uncore->rpm, wakeref)
> > > > > > > +			reg_val = intel_uncore_read(ddat->uncore, hwmon->rg.pkg_temp);
> > > > > > > +
> > > > > > > +		/* HW register value is in degrees, convert to millidegrees. */
> > > > > > > +		*val = REG_FIELD_GET(TEMP_MASK, reg_val) * MILLIDEGREE_PER_DEGREE;
> > > > > > > +		return 0;
> > > > > > > +	}
> > > > > > > +
> > > > > > > +	return -EOPNOTSUPP;
> > > > > > > +}
> > > > > > Let's try to have synergy between previous attribute, such as hwm_fan_input,
> > > > > > and this one.
> > > > > 
> > > > > This one's simple enough to be inline IMHO.
> > > > > Besides, it's already in synergy with hwm_in_read() which has similar
> > > > > implementation.
> > > > Agree this is pretty simple to have an any helper but IMO it would have been cleaner to have a switch
> > > > like hwm_in_read() to return -EOPNOTSUPP in default case. i think that was reason switch case was
> > > > used in entire file.
> > > 
> > > Extending on the simplicity argument above, if() makes more sense for a single case.
> > IMO lets prefer the style which was used in this entire file,
> > that is more readable along with other attributes.
> > Idea behind switch was scalable attribute for future.
> > It is something related to individual preference therefore
> >   let's prefer the symmetry with other hwmon attributes.
> I agree with this, but even if this approach is used file-wide, there were
> concerns about using a switch case for a single case while implementing the
> fan_input attribute.
> https://patchwork.freedesktop.org/patch/607642/?series=136036&rev=4"
> So I suggested to implement temp_input the way fan_input is implemented, at
> least we should follow this approach to maintain symmetry with new
> attributes. But in case if there is agreement to use file wide approach then
> please follow that approach for fan_input as well.

Let's try to keep it simple and use whatever works for the case.
I'm sure the driver is much easier to maintain with a few less lines.

Raag
