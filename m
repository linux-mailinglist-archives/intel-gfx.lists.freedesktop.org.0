Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E0EF35E829
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Apr 2021 23:22:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10EBB6E200;
	Tue, 13 Apr 2021 21:22:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 699C16E200
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Apr 2021 21:22:15 +0000 (UTC)
IronPort-SDR: gypGbZUVtV+fbFcbfo0mt7wTjJwPvxDzAaW65jeJCndP4/kfcfgJj86tWO/UaM71xPr5L5nleN
 L41m9TXDBHfw==
X-IronPort-AV: E=McAfee;i="6200,9189,9953"; a="192378784"
X-IronPort-AV: E=Sophos;i="5.82,220,1613462400"; d="scan'208";a="192378784"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2021 14:22:08 -0700
IronPort-SDR: MDaQaNTHksGXjl0TxT98PWbxLbKSZwBIequdpDX1FMj7hC4YhiovfY0Wn8TSDLg2nboWfcnrZR
 6gS0qXFjtdFA==
X-IronPort-AV: E=Sophos;i="5.82,220,1613462400"; d="scan'208";a="532432908"
Received: from dbstims-dev.fm.intel.com ([10.1.27.177])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2021 14:22:07 -0700
From: Dale B Stimson <dale.b.stimson@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 13 Apr 2021 14:22:02 -0700
Message-Id: <20210413212203.793-1-dale.b.stimson@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v1 0/1] drm/i915/dg1: Add HWMON power sensor
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

As part of the System Managemenent Interface (SMI), use the HWMON
subsystem to display power utilization.

The following standard HWMON power sensors are currently supported
(and appropriately scaled):
  /sys/class/drm/card0/device/hwmon/hwmon<i>
	- energy1_input
	- power1_cap
	- power1_max

Some non-standard HWMON power information is also provided, such as
enable bits and intervals.

---------------------

V2  Rename local function parameter field_mask to field_msk in order to avoid
    shadowing the name of function field_mask() from include/linux/bitfield.h.

V2  Change a comment introduction from "/**" to "/*", as it is not intended
    to match a pattern that triggers documentation.
    Reported-by: kernel test robot <lkp@intel.com>

V2  Slight movement of calls:
    - i915_hwmon_init slightly later, after call to i915_setup_sysfs()
    - i915_hwmon_fini slightly earlier, before i915_teardown_sysfs()

V2  Fixed some strong typing issues with le32 functions.
    Detected by sparse in a run by kernel test robot:
    Reported-by: kernel test robot <lkp@intel.com>

Dale B Stimson (1):
  drm/i915/dg1: Add HWMON power sensor support

 drivers/gpu/drm/i915/Kconfig      |   1 +
 drivers/gpu/drm/i915/Makefile     |   1 +
 drivers/gpu/drm/i915/i915_drv.c   |   9 +
 drivers/gpu/drm/i915/i915_drv.h   |   3 +
 drivers/gpu/drm/i915/i915_hwmon.c | 788 ++++++++++++++++++++++++++++++
 drivers/gpu/drm/i915/i915_hwmon.h |  41 ++
 drivers/gpu/drm/i915/i915_reg.h   |  53 ++
 7 files changed, 896 insertions(+)
 create mode 100644 drivers/gpu/drm/i915/i915_hwmon.c
 create mode 100644 drivers/gpu/drm/i915/i915_hwmon.h

Range-diff against v1:
1:  34631511e00c1 ! 1:  25117970961b4 drm/i915/dg1: Add HWMON power sensor support
    @@ drivers/gpu/drm/i915/i915_hwmon.c (new)
     +
     +#include <linux/hwmon.h>
     +#include <linux/hwmon-sysfs.h>
    ++#include <linux/types.h>
     +
     +#include "i915_drv.h"
     +#include "gt/intel_gt.h"
    @@ drivers/gpu/drm/i915/i915_hwmon.c (new)
     + */
     +static __always_inline u64
     +_field_read_and_scale(struct intel_uncore *uncore, i915_reg_t rgadr,
    -+		      u32 field_mask, int nshift, unsigned int scale_factor)
    ++		      u32 field_msk, int nshift, unsigned int scale_factor)
     +{
     +	intel_wakeref_t wakeref;
     +	u32 reg_value;
    @@ drivers/gpu/drm/i915/i915_hwmon.c (new)
     +	with_intel_runtime_pm(uncore->rpm, wakeref)
     +		reg_value = intel_uncore_read(uncore, rgadr);
     +
    -+	reg_value = le32_get_bits(reg_value, field_mask);
    ++	reg_value = le32_get_bits(cpu_to_le32(reg_value), field_msk);
     +	scaled_val = mul_u32_u32(scale_factor, reg_value);
     +
     +	/* Shift, rounding to nearest */
    @@ drivers/gpu/drm/i915/i915_hwmon.c (new)
     + */
     +static __always_inline u64
     +_field_read64_and_scale(struct intel_uncore *uncore, i915_reg_t rgadr,
    -+			u64 field_mask, int nshift, unsigned int scale_factor)
    ++			u64 field_msk, int nshift, unsigned int scale_factor)
     +{
     +	intel_wakeref_t wakeref;
     +	u64 reg_value;
    @@ drivers/gpu/drm/i915/i915_hwmon.c (new)
     +	with_intel_runtime_pm(uncore->rpm, wakeref)
     +		reg_value = intel_uncore_read64(uncore, rgadr);
     +
    -+	reg_value = le64_get_bits(reg_value, field_mask);
    ++	reg_value = le64_get_bits(cpu_to_le64(reg_value), field_msk);
     +	scaled_val = scale_factor * reg_value;
     +
     +	/* Shift, rounding to nearest */
    @@ drivers/gpu/drm/i915/i915_hwmon.c (new)
     +static __always_inline void
     +_field_scale_and_write(struct intel_uncore *uncore,
     +		       i915_reg_t rgadr,
    -+		       u32 field_mask, int nshift,
    ++		       u32 field_msk, int nshift,
     +		       unsigned int scale_factor, long lval)
     +{
     +	u32 nval;
    @@ drivers/gpu/drm/i915/i915_hwmon.c (new)
     +	/* Computation in 64-bits to avoid overflow. Round to nearest. */
     +	nval = DIV_ROUND_CLOSEST_ULL((u64)lval << nshift, scale_factor);
     +
    -+	bits_to_clear = field_mask;
    -+	bits_to_set = le32_encode_bits(nval, field_mask);
    ++	bits_to_clear = field_msk;
    ++	bits_to_set = le32_to_cpu(le32_encode_bits(nval, field_msk));
     +
     +	_locked_with_pm_intel_uncore_rmw(uncore, rgadr,
     +					 bits_to_clear, bits_to_set);
    @@ drivers/gpu/drm/i915/i915_hwmon.c (new)
     +	struct intel_uncore *uncore = &i915->uncore;
     +	intel_wakeref_t wakeref;
     +	u32 val_sku_unit;
    ++	__le32 le_sku_unit;
     +
     +	if (IS_DG1(i915)) {
     +		hwmon->rg.pkg_power_sku_unit = PCU_PACKAGE_POWER_SKU_UNIT;
    @@ drivers/gpu/drm/i915/i915_hwmon.c (new)
     +
     +	intel_runtime_pm_put(uncore->rpm, wakeref);
     +
    -+	hwmon->scl_shift_power = le32_get_bits(val_sku_unit, PKG_PWR_UNIT);
    -+	hwmon->scl_shift_energy = le32_get_bits(val_sku_unit, PKG_ENERGY_UNIT);
    -+	hwmon->scl_shift_time = le32_get_bits(val_sku_unit, PKG_TIME_UNIT);
    ++	le_sku_unit = cpu_to_le32(val_sku_unit);
    ++	hwmon->scl_shift_power = le32_get_bits(le_sku_unit, PKG_PWR_UNIT);
    ++	hwmon->scl_shift_energy = le32_get_bits(le_sku_unit, PKG_ENERGY_UNIT);
    ++	hwmon->scl_shift_time = le32_get_bits(le_sku_unit, PKG_TIME_UNIT);
     +
     +	/*
     +	 * There is no direct way to obtain the power default_limit.
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
