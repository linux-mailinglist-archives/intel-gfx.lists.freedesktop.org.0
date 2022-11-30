Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C90A463CEBA
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Nov 2022 06:33:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1CC310E28C;
	Wed, 30 Nov 2022 05:33:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9053110E28A
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Nov 2022 05:33:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669786395; x=1701322395;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=i6IG+26XnELfsUzMkVZCkULMTTw/TfBQ1l/IugshM0o=;
 b=Kcfq4pHyAJSVGAIcrNMLgW5MXpr9sCcsHI7YlkppIlkRiUmi0yTqT/Av
 2sR22iNqdF548oRUVCYLsM5efzv0p9QOKM1N5wQ4Y2NAE4AsTbRUS5FMK
 oU7pFYZXMv4LBKAtP4kL/7q33tQCLLuQ5tkHH6DSB9BPffilbovA9pViW
 Rdpo4ffI+AYimM1C4ncE1G1cSCmWt0fS0yK6+vcGOjd+q/D3F09toHiyL
 cVBPdZyMn3wE1o1GK+NssckNRnmmKcHU1kTAFyijmb+bwLcCJ8z3VLpgt
 zq8wH/vkdO5Y33naZs1jsjkTclZAcJGAG+8nF/qsL3FQCeQfwBhQiiywn w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10546"; a="401588249"
X-IronPort-AV: E=Sophos;i="5.96,205,1665471600"; d="scan'208";a="401588249"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2022 21:33:15 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10546"; a="818498633"
X-IronPort-AV: E=Sophos;i="5.96,205,1665471600"; d="scan'208";a="818498633"
Received: from rtauro-desk.iind.intel.com ([10.190.239.41])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2022 21:33:13 -0800
From: Riana Tauro <riana.tauro@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 30 Nov 2022 11:04:26 +0530
Message-Id: <20221130053427.2207600-3-riana.tauro@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221130053427.2207600-1-riana.tauro@intel.com>
References: <20221130053427.2207600-1-riana.tauro@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 2/3] drm/i915/hwmon: Add helper function to
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
per-gt energy if register is valid else returns the device level
energy. This is used by selftest to verify power consumption

v2 : use i915_hwmon prefix (Anshuman)
v3 : re-use is_visible function of energy to remove
     redundant code (Anshuman)
v4 : fix kernel-doc (Anshuman)
     add per-gt hwmon support (Ashutosh)

Signed-off-by: Riana Tauro <riana.tauro@intel.com>
Reviewed-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/i915_hwmon.c | 28 ++++++++++++++++++++++++++++
 drivers/gpu/drm/i915/i915_hwmon.h |  3 +++
 2 files changed, 31 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_hwmon.c b/drivers/gpu/drm/i915/i915_hwmon.c
index c588a17f97e9..57d4e96d5c72 100644
--- a/drivers/gpu/drm/i915/i915_hwmon.c
+++ b/drivers/gpu/drm/i915/i915_hwmon.c
@@ -442,6 +442,34 @@ hwm_energy_read(struct hwm_drvdata *ddat, u32 attr, long *val)
 	}
 }
 
+/**
+ * i915_hwmon_get_energy - obtains energy value
+ * @gt: intel_gt structure
+ * @energy: pointer to store energy in uJ
+ *
+ * This function checks for the validity of the underlying energy
+ * hardware register and obtains the per-gt/package level energy
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
+	else if (hwm_energy_is_visible(ddat, hwmon_energy_input))
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

