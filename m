Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 77C146D750C
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Apr 2023 09:14:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F8C710E83C;
	Wed,  5 Apr 2023 07:14:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8261C10E30F
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Apr 2023 07:14:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680678874; x=1712214874;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EOmt1uGdJMj34XxyT7egA4tBwOXEce1MgvbHLdNdYdc=;
 b=eJFaEmTFIk58HjXAO1xKeLE1/ZTK07h0gdyOdsa/SsKAX3OpaWPQLH9Y
 Jwy0qtgGYQykik2AfwpNnEPq3p3HVXtZvGm5LYBKqD8TNFR3EMdu9Ryd+
 WK1oYLeW6A+L7WcNFtXEtF9FIFauewMFFFWlRJ/6LY9G6RvQBf8Klb0jt
 Cl1zOaQKe+o0cWYoAi6NnEgsyzgThRlJz4P1M5qdOcbghgE1teqI4Qgev
 93bWQvFDyROwsDyggT6K+fqCv78ON/puhLMv8d69cmQAgpPEPwBVo95xS
 FEAZr+dOvC4SLIr1AJOSh3crVD0snufRuxlpj9zekA69a+7eDccgJacrI Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="370211196"
X-IronPort-AV: E=Sophos;i="5.98,319,1673942400"; d="scan'208";a="370211196"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2023 00:14:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="636797370"
X-IronPort-AV: E=Sophos;i="5.98,319,1673942400"; d="scan'208";a="636797370"
Received: from rtauro-desk.iind.intel.com ([10.190.239.41])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2023 00:14:27 -0700
From: Riana Tauro <riana.tauro@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  5 Apr 2023 12:44:30 +0530
Message-Id: <20230405071432.3582592-3-riana.tauro@intel.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230405071432.3582592-1-riana.tauro@intel.com>
References: <20230405071432.3582592-1-riana.tauro@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v10 2/4] drm/i915/hwmon: Add helper function to
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

