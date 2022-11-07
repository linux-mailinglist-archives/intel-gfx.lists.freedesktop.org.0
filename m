Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B7EC61EA46
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Nov 2022 05:53:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 017CC10E1E3;
	Mon,  7 Nov 2022 04:53:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6CAB310E0B1
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Nov 2022 04:53:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667796791; x=1699332791;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5Z3GQnlEyE+Dcf7G8hjS4vgaDsQtkyTpfDHTIXYQeQI=;
 b=CtafQJdJY2oc+fue9syRBW9V6x5pGQWj76AoqhEkIOYViIjNMxXK8HzE
 kHK0Da66cWp4Roo+4PDZbLljXQGdKmL/7MNjA9P30druhBXeJN7L8whLT
 rCYcbAkFwIHz8qXPo8afehEEnV1BhGe4mGSYJ9p82EG8uEFCojA98H7EZ
 mF7XSsheFfWsRcDtJD3yJXIZ+8REGYDfU5tZPJtJpVssU8Z8jACVYBLsy
 GKWaClRMy2m6jVn7tb0Ib2oGjPqO+qrPPLGDrgBpht1axpCJKrnIJqdzJ
 T/STGGOX9liTFuAmfchMukPAS3z1NQTzNag8klgMdjrShAWTjelXU7SeX Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10523"; a="290713896"
X-IronPort-AV: E=Sophos;i="5.96,143,1665471600"; d="scan'208";a="290713896"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2022 20:53:11 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10523"; a="638230563"
X-IronPort-AV: E=Sophos;i="5.96,143,1665471600"; d="scan'208";a="638230563"
Received: from rtauro-desk.iind.intel.com ([10.190.239.41])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2022 20:53:08 -0800
From: Riana Tauro <riana.tauro@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  7 Nov 2022 10:22:39 +0530
Message-Id: <20221107045240.4164358-3-riana.tauro@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221107045240.4164358-1-riana.tauro@intel.com>
References: <20221107045240.4164358-1-riana.tauro@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/3] drm/i915/hwmon: Add helper function to
 obtain energy values
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

Add an interface to obtain hwmon energy values. This is used
by selftest to verify power consumption

v2 : use i915_hwmon prefix (Anshuman)

Signed-off-by: Riana Tauro <riana.tauro@intel.com>
---
 drivers/gpu/drm/i915/i915_hwmon.c | 23 ++++++++++++++++++++---
 drivers/gpu/drm/i915/i915_hwmon.h |  1 +
 2 files changed, 21 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_hwmon.c b/drivers/gpu/drm/i915/i915_hwmon.c
index 9e9781493025..8fa861ac0712 100644
--- a/drivers/gpu/drm/i915/i915_hwmon.c
+++ b/drivers/gpu/drm/i915/i915_hwmon.c
@@ -138,7 +138,7 @@ hwm_field_scale_and_write(struct hwm_drvdata *ddat, i915_reg_t rgadr,
  * hwmon->scl_shift_energy of 14 bits we have 57 (63 - 20 + 14) bits before
  * energy1_input overflows. This at 1000 W is an overflow duration of 278 years.
  */
-static void
+static int
 hwm_energy(struct hwm_drvdata *ddat, long *energy)
 {
 	struct intel_uncore *uncore = ddat->uncore;
@@ -153,6 +153,9 @@ hwm_energy(struct hwm_drvdata *ddat, long *energy)
 	else
 		rgaddr = hwmon->rg.energy_status_all;
 
+	if (!i915_mmio_reg_valid(rgaddr))
+		return -EOPNOTSUPP;
+
 	mutex_lock(&hwmon->hwmon_lock);
 
 	with_intel_runtime_pm(uncore->rpm, wakeref)
@@ -167,6 +170,21 @@ hwm_energy(struct hwm_drvdata *ddat, long *energy)
 	*energy = mul_u64_u32_shr(ei->accum_energy, SF_ENERGY,
 				  hwmon->scl_shift_energy);
 	mutex_unlock(&hwmon->hwmon_lock);
+
+	return 0;
+}
+
+/*
+ * i915_hwmon_get_energy - obtains energy value
+ * Returns: 0 on success or a negative error code
+ */
+int
+i915_hwmon_get_energy(struct drm_i915_private *i915, long *energy)
+{
+	struct i915_hwmon *hwmon = i915->hwmon;
+	struct hwm_drvdata *ddat = &hwmon->ddat;
+
+	return hwm_energy(ddat, energy);
 }
 
 static ssize_t
@@ -441,8 +459,7 @@ hwm_energy_read(struct hwm_drvdata *ddat, u32 attr, long *val)
 {
 	switch (attr) {
 	case hwmon_energy_input:
-		hwm_energy(ddat, val);
-		return 0;
+		return hwm_energy(ddat, val);
 	default:
 		return -EOPNOTSUPP;
 	}
diff --git a/drivers/gpu/drm/i915/i915_hwmon.h b/drivers/gpu/drm/i915/i915_hwmon.h
index 7ca9cf2c34c9..a6c8efeb868d 100644
--- a/drivers/gpu/drm/i915/i915_hwmon.h
+++ b/drivers/gpu/drm/i915/i915_hwmon.h
@@ -12,6 +12,7 @@ struct drm_i915_private;
 #if IS_REACHABLE(CONFIG_HWMON)
 void i915_hwmon_register(struct drm_i915_private *i915);
 void i915_hwmon_unregister(struct drm_i915_private *i915);
+int i915_hwmon_get_energy(struct drm_i915_private *i915, long *energy);
 #else
 static inline void i915_hwmon_register(struct drm_i915_private *i915) { };
 static inline void i915_hwmon_unregister(struct drm_i915_private *i915) { };
-- 
2.25.1

