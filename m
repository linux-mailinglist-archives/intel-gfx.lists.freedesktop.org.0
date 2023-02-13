Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BEDB8695285
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Feb 2023 22:01:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FEB010E0C4;
	Mon, 13 Feb 2023 21:00:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38E4710E6D6
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Feb 2023 21:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676322054; x=1707858054;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=IJ/xMsE8oYbVrFStu5170dGaUb4//n7xTmCg6/+dk7U=;
 b=RFl18DWgr0hXAw2YU5sF7PmmV9wUN2xsxHk2sp7IZbU580/2wCI3gMkG
 SZ3uF7h4rr1q6N77UtYKPOcuPPlUFgfTzSvp2+H5hwpr85KEh4i5FE5XS
 yZDgLBdGHPV2l4eOGiemPAJMZsmirqfIWJNxawUYetbADlWfvz04P/5eX
 aA5AzDFW5MJquJMWAQLxfSr0tVrC6bYGkibZ7pH+D3qn6nDbrJHIK+Kcw
 MlTlZW1p0h13MkcSrrWbFS6mrEodcUOpztHPNlDSvMT1ZO9jxuFsbZjo9
 YWMQ7O5Cd5zIQbcVx01Kpj4RD4WhhUZofqY8MOKA6xXMdfK/DWqAqsg3M A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="310633172"
X-IronPort-AV: E=Sophos;i="5.97,294,1669104000"; d="scan'208";a="310633172"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2023 13:00:53 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="792856386"
X-IronPort-AV: E=Sophos;i="5.97,294,1669104000"; d="scan'208";a="792856386"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2023 13:00:53 -0800
From: Ashutosh Dixit <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 13 Feb 2023 13:00:47 -0800
Message-Id: <20230213210049.1900681-2-ashutosh.dixit@intel.com>
X-Mailer: git-send-email 2.38.0
In-Reply-To: <20230213210049.1900681-1-ashutosh.dixit@intel.com>
References: <20230213210049.1900681-1-ashutosh.dixit@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/3] drm/i915/hwmon: Replace
 hwm_field_scale_and_write with hwm_power_max_write
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

hwm_field_scale_and_write has a single caller hwm_power_write and is
specific to hwm_power_write but makes it appear that it is a general
function which can have multiple callers. Replace the function with
hwm_power_max_write which is specific to hwm_power_write and use that in
future patches where the function needs to be extended.

Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
---
 drivers/gpu/drm/i915/i915_hwmon.c | 36 ++++++++++++++-----------------
 1 file changed, 16 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_hwmon.c b/drivers/gpu/drm/i915/i915_hwmon.c
index 1225bc432f0d5..85195d61f89c7 100644
--- a/drivers/gpu/drm/i915/i915_hwmon.c
+++ b/drivers/gpu/drm/i915/i915_hwmon.c
@@ -99,20 +99,6 @@ hwm_field_read_and_scale(struct hwm_drvdata *ddat, i915_reg_t rgadr,
 	return mul_u64_u32_shr(reg_value, scale_factor, nshift);
 }
 
-static void
-hwm_field_scale_and_write(struct hwm_drvdata *ddat, i915_reg_t rgadr,
-			  int nshift, unsigned int scale_factor, long lval)
-{
-	u32 nval;
-
-	/* Computation in 64-bits to avoid overflow. Round to nearest. */
-	nval = DIV_ROUND_CLOSEST_ULL((u64)lval << nshift, scale_factor);
-
-	hwm_locked_with_pm_intel_uncore_rmw(ddat, rgadr,
-					    PKG_PWR_LIM_1,
-					    REG_FIELD_PREP(PKG_PWR_LIM_1, nval));
-}
-
 /*
  * hwm_energy - Obtain energy value
  *
@@ -391,6 +377,21 @@ hwm_power_max_read(struct hwm_drvdata *ddat, long *val)
 	return 0;
 }
 
+static int
+hwm_power_max_write(struct hwm_drvdata *ddat, long val)
+{
+	struct i915_hwmon *hwmon = ddat->hwmon;
+	u32 nval;
+
+	/* Computation in 64-bits to avoid overflow. Round to nearest. */
+	nval = DIV_ROUND_CLOSEST_ULL((u64)val << hwmon->scl_shift_power, SF_POWER);
+
+	hwm_locked_with_pm_intel_uncore_rmw(ddat, hwmon->rg.pkg_rapl_limit,
+					    PKG_PWR_LIM_1,
+					    REG_FIELD_PREP(PKG_PWR_LIM_1, nval));
+	return 0;
+}
+
 static int
 hwm_power_read(struct hwm_drvdata *ddat, u32 attr, int chan, long *val)
 {
@@ -425,16 +426,11 @@ hwm_power_read(struct hwm_drvdata *ddat, u32 attr, int chan, long *val)
 static int
 hwm_power_write(struct hwm_drvdata *ddat, u32 attr, int chan, long val)
 {
-	struct i915_hwmon *hwmon = ddat->hwmon;
 	u32 uval;
 
 	switch (attr) {
 	case hwmon_power_max:
-		hwm_field_scale_and_write(ddat,
-					  hwmon->rg.pkg_rapl_limit,
-					  hwmon->scl_shift_power,
-					  SF_POWER, val);
-		return 0;
+		return hwm_power_max_write(ddat, val);
 	case hwmon_power_crit:
 		uval = DIV_ROUND_CLOSEST_ULL(val << POWER_SETUP_I1_SHIFT, SF_POWER);
 		return hwm_pcode_write_i1(ddat->uncore->i915, uval);
-- 
2.38.0

