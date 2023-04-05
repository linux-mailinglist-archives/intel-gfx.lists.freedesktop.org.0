Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E2BF6D74E2
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Apr 2023 08:59:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4698010E839;
	Wed,  5 Apr 2023 06:59:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0C3210E839
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Apr 2023 06:59:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680677977; x=1712213977;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EOmt1uGdJMj34XxyT7egA4tBwOXEce1MgvbHLdNdYdc=;
 b=MuiwY64PhJRuEfaEN0dxNoqgXxE6Rtoa5X3a0bQNZ3LwoesBCTHw9e25
 jGTj7G7GTAXvdTQKuuDZFegKLFgEWNohIxlptTZNultybbY9FlkbVmzOR
 b99cqxmI52Eq2TvJD7xkZBRoHfeV9ZG9j4/yQ+Bh2eLYBccwKlGgnNMY2
 zHobAR6q5ubkGlC2hJNKMkrH9JKl8JEc/yG5cStwMYMhtKjdLgrc/p9es
 2ZjiLpqyFdLeBj6JoJwOrvG5MqxhIcQ9mfmXusngD+7pHbU2raILufjPi
 eaRXKfXjCvza4AAUBzbnObZ6GGu9IuTZIhDs6hIhQmk4aQYQ8mNLfvxkl Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="330986238"
X-IronPort-AV: E=Sophos;i="5.98,319,1673942400"; d="scan'208";a="330986238"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2023 23:59:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="719209455"
X-IronPort-AV: E=Sophos;i="5.98,319,1673942400"; d="scan'208";a="719209455"
Received: from rtauro-desk.iind.intel.com ([10.190.239.41])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2023 23:59:35 -0700
From: Riana Tauro <riana.tauro@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  5 Apr 2023 12:29:28 +0530
Message-Id: <20230405065930.3576936-3-riana.tauro@intel.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230405065930.3576936-1-riana.tauro@intel.com>
References: <20230405065930.3576936-1-riana.tauro@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v9 2/4] drm/i915/hwmon: Add helper function to
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
Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
---
 drivers/gpu/drm/i915/i915_hwmon.c | 28 ++++++++++++++++++++++++++++
 drivers/gpu/drm/i915/i915_hwmon.h |  3 +++
 2 files changed, 31 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_hwmon.c b/drivers/gpu/drm/i915/i915_hwmon.c
index 8e7dccc8d3a0..efc2ccaf64d1 100644
--- a/drivers/gpu/drm/i915/i915_hwmon.c
+++ b/drivers/gpu/drm/i915/i915_hwmon.c
@@ -500,6 +500,34 @@ hwm_energy_read(struct hwm_drvdata *ddat, u32 attr, long *val)
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
2.40.0

