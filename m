Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 12601603988
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Oct 2022 08:04:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8675B10EA6A;
	Wed, 19 Oct 2022 06:04:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 444EE10E415
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Oct 2022 06:04:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666159476; x=1697695476;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6ybq6eX+tWw4v7EYi7jSm0s4SbAHfoeR1qBZ7Im7zIo=;
 b=ICgy1WWy1zTz2RE3H1cA+46wcOahx/2GhXllmwdA/QOBxubGXx8xZnec
 CMUUux0RqD+iqxtwH4rWT7T3UZhRvK/q3IKRog+VnIjDW1wqrgUyODdSB
 AzwZDirN6TbV26BEcokGhW6Ok/227pKVZh47MwyygZUt9W6IoWz3AaMPU
 TCrH6orAw9xn3DNwcrAdYU+m9DTQCNUnWm+LHe4w38OnvSohcGzrh2c0j
 3frkTXGrWHOB4No40EpD7smnDdiCgxiW6+U53RferpnjqIpNrU64/IJtk
 AJ7ddy1iV4ssE/DUpyNJXDVENhgCPE+c8aLOAwGvkKy9dcumpPAp23yxc Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10504"; a="368367038"
X-IronPort-AV: E=Sophos;i="5.95,195,1661842800"; d="scan'208";a="368367038"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2022 23:04:36 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10504"; a="580170673"
X-IronPort-AV: E=Sophos;i="5.95,195,1661842800"; d="scan'208";a="580170673"
Received: from rtauro-desk.iind.intel.com ([10.190.239.41])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2022 23:04:33 -0700
From: Riana Tauro <riana.tauro@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 19 Oct 2022 11:34:01 +0530
Message-Id: <20221019060402.2807360-3-riana.tauro@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221019060402.2807360-1-riana.tauro@intel.com>
References: <20221019060402.2807360-1-riana.tauro@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/hwmon: Add helper function to
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

Signed-off-by: Riana Tauro <riana.tauro@intel.com>
---
 drivers/gpu/drm/i915/i915_hwmon.c | 23 ++++++++++++++++++++---
 drivers/gpu/drm/i915/i915_hwmon.h |  1 +
 2 files changed, 21 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_hwmon.c b/drivers/gpu/drm/i915/i915_hwmon.c
index 9e9781493025..1eb85cd96171 100644
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
+ * i915_hwm_get_energy - obtains energy value
+ * Returns: 0 on success or a negative error code
+ */
+int
+i915_hwm_get_energy(struct drm_i915_private *i915, long *energy)
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
index 7ca9cf2c34c9..fa3b13568b37 100644
--- a/drivers/gpu/drm/i915/i915_hwmon.h
+++ b/drivers/gpu/drm/i915/i915_hwmon.h
@@ -12,6 +12,7 @@ struct drm_i915_private;
 #if IS_REACHABLE(CONFIG_HWMON)
 void i915_hwmon_register(struct drm_i915_private *i915);
 void i915_hwmon_unregister(struct drm_i915_private *i915);
+int i915_hwm_get_energy(struct drm_i915_private *i915, long *energy);
 #else
 static inline void i915_hwmon_register(struct drm_i915_private *i915) { };
 static inline void i915_hwmon_unregister(struct drm_i915_private *i915) { };
-- 
2.25.1

