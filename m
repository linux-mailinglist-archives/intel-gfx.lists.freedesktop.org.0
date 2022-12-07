Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AF4B6458D4
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Dec 2022 12:20:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A10F510E38D;
	Wed,  7 Dec 2022 11:20:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D347A10E1A4
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Dec 2022 11:20:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670412041; x=1701948041;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PfIFukyNGvThMDuM2E9zcPOfV2YnPEw9++e5Lnii3Nk=;
 b=NtuxwmJ6SheXYtU6pMh7Q/MnEmjqZVnIsjKcrOsKP7ohGDNrBw86XcWj
 ho64VbHRzph82SJN12QVM0DR6Fg+aOouZIKmNmMhiuAZAik4RLYGs1HIs
 3d0TQtJDFprOGsgwVJ6vXesm6lYbCv+MBdC9Ni3TqLB7Ba+GfSOOK5Sly
 z4kTiyQx0QWgDrSw+pz1UFisFY7VTLtPnum0vX07f125PSPjG6zumGgKw
 nZylZZ2lsK2rGZfGwucfl8n/QhUzcYzs28bYhRE8Z1Pa49V1BXRUS5frQ
 tIRK+vF6K1MDxxr7Awm7STXm66B42X+G7o2PVPbtoKNa8PeVDKJRQT4nW A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="343897480"
X-IronPort-AV: E=Sophos;i="5.96,225,1665471600"; d="scan'208";a="343897480"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2022 03:20:41 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="753058525"
X-IronPort-AV: E=Sophos;i="5.96,225,1665471600"; d="scan'208";a="753058525"
Received: from rtauro-desk.iind.intel.com ([10.190.239.41])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2022 03:20:38 -0800
From: Riana Tauro <riana.tauro@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Dec 2022 16:51:03 +0530
Message-Id: <20221207112104.3356169-3-riana.tauro@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221207112104.3356169-1-riana.tauro@intel.com>
References: <20221207112104.3356169-1-riana.tauro@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v7 2/3] drm/i915/hwmon: Add helper function to
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

Add an interface to obtain hwmon energy values. The function returns
per-gt energy if gt level energy is available else returns the package
level energy if there is a single gt.
This is used by selftests to verify power consumption

v2 : use i915_hwmon prefix (Anshuman)
v3 : re-use is_visible function of energy to remove
     redundant code (Anshuman)
v4 : fix kernel-doc (Anshuman)
     add per-gt hwmon support (Ashutosh)
v5 : add check to return package level energy only when there
     is a single gt and gt level energy is not available. (Ashutosh)

Signed-off-by: Riana Tauro <riana.tauro@intel.com>
Reviewed-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/i915_hwmon.c | 28 ++++++++++++++++++++++++++++
 drivers/gpu/drm/i915/i915_hwmon.h |  3 +++
 2 files changed, 31 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_hwmon.c b/drivers/gpu/drm/i915/i915_hwmon.c
index cca7a4350ec8..ea0214ab09ae 100644
--- a/drivers/gpu/drm/i915/i915_hwmon.c
+++ b/drivers/gpu/drm/i915/i915_hwmon.c
@@ -446,6 +446,34 @@ hwm_energy_read(struct hwm_drvdata *ddat, u32 attr, long *val)
 	}
 }
 
+/**
+ * i915_hwmon_get_energy - obtains energy value
+ * @gt: intel_gt structure
+ * @energy: pointer to store energy in uJ
+ *
+ * This function checks for the validity of the underlying energy
+ * hardware register and obtains per-gt level energy
+ * values.
+ *
+ * Return: 0 on success, -EOPNOTSUPP if register is invalid
+ */
+int
+i915_hwmon_get_energy(struct intel_gt *gt, long *energy)
+{
+	struct i915_hwmon *hwmon = gt->i915->hwmon;
+	struct hwm_drvdata *ddat = &hwmon->ddat;
+	struct hwm_drvdata *ddat_gt = hwmon->ddat_gt + gt->info.id;
+
+	if (hwm_energy_is_visible(ddat_gt, hwmon_energy_input))
+		hwm_energy(ddat_gt, energy);
+	else if (!HAS_EXTRA_GT_LIST(gt->i915) && hwm_energy_is_visible(ddat, hwmon_energy_input))
+		hwm_energy(ddat, energy);
+	else
+		return -EOPNOTSUPP;
+
+	return 0;
+}
+
 static umode_t
 hwm_curr_is_visible(const struct hwm_drvdata *ddat, u32 attr)
 {
diff --git a/drivers/gpu/drm/i915/i915_hwmon.h b/drivers/gpu/drm/i915/i915_hwmon.h
index 7ca9cf2c34c9..1c38cfdbb7e9 100644
--- a/drivers/gpu/drm/i915/i915_hwmon.h
+++ b/drivers/gpu/drm/i915/i915_hwmon.h
@@ -8,13 +8,16 @@
 #define __I915_HWMON_H__
 
 struct drm_i915_private;
+struct intel_gt;
 
 #if IS_REACHABLE(CONFIG_HWMON)
 void i915_hwmon_register(struct drm_i915_private *i915);
 void i915_hwmon_unregister(struct drm_i915_private *i915);
+int i915_hwmon_get_energy(struct intel_gt *gt, long *energy);
 #else
 static inline void i915_hwmon_register(struct drm_i915_private *i915) { };
 static inline void i915_hwmon_unregister(struct drm_i915_private *i915) { };
+static inline int i915_hwmon_get_energy(struct intel_gt *gt, long *energy) { return -EOPNOTSUPP; }
 #endif
 
 #endif /* __I915_HWMON_H__ */
-- 
2.25.1

