Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F32889701EC
	for <lists+intel-gfx@lfdr.de>; Sat,  7 Sep 2024 13:25:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C62EF10E176;
	Sat,  7 Sep 2024 11:25:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="F0uhmAEj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1694910E176
 for <intel-gfx@lists.freedesktop.org>; Sat,  7 Sep 2024 11:25:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725708331; x=1757244331;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=oLDWCLi85go0t0qWaPThxnG7vTz8xaufmQ+5UCpO/3I=;
 b=F0uhmAEjRRV7vUpQ3ggLITvvvFOyW1F7tVomt841Kvwt44C8Sg1tXmVR
 3/BZ6sgLIPcXwc6jzOu6fI/J2SYvH8KJVc25slDeHjeKCJX24kqI4T5ku
 BCwcP6ebkazu1PBMPQtSN94r6BKp6HTsk7E6yXtKBI4GYomLiWrtI6K/9
 LsxxffbtwvWAvZRCtf8jO6yDFGwDJu0A0WSo7FDfQrjbPa8Nw4lThM7Zt
 slWzh5Lw6m9+Tv7vvYfvDyHtmp359Ji/Ciqndui/KalgsVMwu8YJbwY/s
 NWtaENdrZC7wCSD3go2vCPTeq86fAiwQ2OtsO3F3f3xZLbGjn5O9fw4ol Q==;
X-CSE-ConnectionGUID: EPC25c7sT9Octe5fD5otGg==
X-CSE-MsgGUID: qpYQNovCTviRR6cNE8f2MA==
X-IronPort-AV: E=McAfee;i="6700,10204,11187"; a="35602829"
X-IronPort-AV: E=Sophos;i="6.10,210,1719903600"; d="scan'208";a="35602829"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2024 04:25:31 -0700
X-CSE-ConnectionGUID: CGHw8ydzQ2a20Tzalfbn+A==
X-CSE-MsgGUID: 3D53xFoXSdC9rdbylNgqtA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,210,1719903600"; d="scan'208";a="70317223"
Received: from black.fi.intel.com ([10.237.72.28])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2024 04:25:27 -0700
Date: Sat, 7 Sep 2024 14:25:24 +0300
From: Raag Jadav <raag.jadav@intel.com>
To: Riana Tauro <riana.tauro@intel.com>
Cc: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, tursulin@ursulin.net, linux@roeck-us.net,
 andi.shyti@linux.intel.com, andriy.shevchenko@linux.intel.com,
 intel-gfx@lists.freedesktop.org, linux-hwmon@vger.kernel.org,
 anshuman.gupta@intel.com, badal.nilawar@intel.com,
 ashutosh.dixit@intel.com, karthik.poosa@intel.com
Subject: Re: [PATCH v2] drm/i915/hwmon: expose package temperature
Message-ID: <Ztw4JIWCpsDpMHN0@black.fi.intel.com>
References: <20240906093118.3068732-1-raag.jadav@intel.com>
 <ec2f4b09-03f7-4866-ae50-2f3b5d093a0d@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ec2f4b09-03f7-4866-ae50-2f3b5d093a0d@intel.com>
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

On Fri, Sep 06, 2024 at 03:15:01PM +0530, Riana Tauro wrote:
> Hi Raag
> 
> On 9/6/2024 3:01 PM, Raag Jadav wrote:
> > Add hwmon support for temp1_input attribute, which will expose package
> > temperature in millidegree Celsius. With this in place we can monitor
> > package temperature using lm-sensors tool.
> > 
> > $ sensors
> > i915-pci-0300
> > Adapter: PCI adapter
> > in0:         990.00 mV
> > fan1:        1260 RPM
> > temp1:        +45.0°C
> > power1:           N/A  (max =  35.00 W)
> > energy1:      12.62 kJ
> > 
> > v2: Use switch case (Anshuman)
> > 
> > Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11276
> > Signed-off-by: Raag Jadav <raag.jadav@intel.com>
> > Reviewed-by: Anshuman Gupta <anshuman.gupta@intel.com>
> > ---
> >   .../ABI/testing/sysfs-driver-intel-i915-hwmon |  8 ++++
> >   drivers/gpu/drm/i915/i915_hwmon.c             | 40 +++++++++++++++++++
> >   drivers/gpu/drm/i915/intel_mchbar_regs.h      |  4 ++
> >   3 files changed, 52 insertions(+)
> > 
> > diff --git a/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon b/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
> > index be4141a7522f..a885e5316d02 100644
> > --- a/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
> > +++ b/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
> > @@ -83,3 +83,11 @@ Contact:	intel-gfx@lists.freedesktop.org
> >   Description:	RO. Fan speed of device in RPM.
> >   		Only supported for particular Intel i915 graphics platforms.
> > +
> > +What:		/sys/bus/pci/drivers/i915/.../hwmon/hwmon<i>/temp1_input
> > +Date:		November 2024
> > +KernelVersion:	6.12
> > +Contact:	intel-gfx@lists.freedesktop.org
> > +Description:	RO. GPU package temperature in millidegree Celsius.
> > +
> > +		Only supported for particular Intel i915 graphics platforms.
> > diff --git a/drivers/gpu/drm/i915/i915_hwmon.c b/drivers/gpu/drm/i915/i915_hwmon.c
> > index 17d30f6b84b0..0a9f483b4105 100644
> > --- a/drivers/gpu/drm/i915/i915_hwmon.c
> > +++ b/drivers/gpu/drm/i915/i915_hwmon.c
> > @@ -7,6 +7,7 @@
> >   #include <linux/hwmon-sysfs.h>
> >   #include <linux/jiffies.h>
> >   #include <linux/types.h>
> > +#include <linux/units.h>
> >   #include "i915_drv.h"
> >   #include "i915_hwmon.h"
> > @@ -32,6 +33,7 @@
> >   struct hwm_reg {
> >   	i915_reg_t gt_perf_status;
> > +	i915_reg_t pkg_temp;
> place it alphabetically after rapl_limit

This follows the ordering of enum hwmon_sensor_types (as the rest of the patch).

> >   	i915_reg_t pkg_power_sku_unit;
> >   	i915_reg_t pkg_power_sku;
> >   	i915_reg_t pkg_rapl_limit;
> > @@ -280,6 +282,7 @@ static const struct attribute_group *hwm_groups[] = {
> >   };
> >   static const struct hwmon_channel_info * const hwm_info[] = {
> > +	HWMON_CHANNEL_INFO(temp, HWMON_T_INPUT),
> >   	HWMON_CHANNEL_INFO(in, HWMON_I_INPUT),
> >   	HWMON_CHANNEL_INFO(power, HWMON_P_MAX | HWMON_P_RATED_MAX | HWMON_P_CRIT),
> >   	HWMON_CHANNEL_INFO(energy, HWMON_E_INPUT),
> > @@ -310,6 +313,37 @@ static int hwm_pcode_write_i1(struct drm_i915_private *i915, u32 uval)
> >   				  POWER_SETUP_SUBCOMMAND_WRITE_I1, 0, uval);
> >   }
> > +static umode_t
> > +hwm_temp_is_visible(const struct hwm_drvdata *ddat, u32 attr)
> > +{
> > +	struct i915_hwmon *hwmon = ddat->hwmon;
> > +
> > +	if (attr == hwmon_temp_input && i915_mmio_reg_valid(hwmon->rg.pkg_temp))
> > +		return 0444;
> > +
> > +	return 0;
> > +}
> > +
> > +static int
> > +hwm_temp_read(struct hwm_drvdata *ddat, u32 attr, long *val)
> > +{
> > +	struct i915_hwmon *hwmon = ddat->hwmon;
> > +	intel_wakeref_t wakeref;
> > +	u32 reg_val;
> > +
> > +	switch (attr) {
> > +	case hwmon_temp_input:
> > +		with_intel_runtime_pm(ddat->uncore->rpm, wakeref)
> > +			reg_val = intel_uncore_read(ddat->uncore, hwmon->rg.pkg_temp);
> > +
> > +		/* HW register value is in degrees, convert to millidegrees. */
> use millidegree Celsius here

The intent here is to signify the conversion rather than the unit.
But okay, will add if we have another version.

Raag
