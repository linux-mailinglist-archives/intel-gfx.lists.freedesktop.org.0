Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 79051645FE5
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Dec 2022 18:17:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D35289CAD;
	Wed,  7 Dec 2022 17:17:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44C7589CAD
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Dec 2022 17:17:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670433458; x=1701969458;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QQmuJBH/fq72iA8N7G9jHBhBpHSFkFPalqhnl3J3cfg=;
 b=JP2nyxqsWDWUnDDEAfbfTr0CZzASuwFs+onmzC3j+u5KKn6opM4wHXFv
 gxB85/kdwox9mJglpL4PB+djqrZOVjTAcp4ztif+H1ZOmCSz+m6nVfvXj
 rpaNcgFw4dIuiOfvZPlTtFHlMGM0N3J/2r9NMZyaS6SOBzDZOBfbXc/tZ
 mnCIXxNUq+h4e7N4PqOrcfVtMxi2LpHZdPf5c467JAec/f5rKBE8wn2rs
 fyvU06dYlXc5CZm7qSwpuQ2z5eUShOWo8M+cck3ysOWobXACLFOxE5tiR
 Up717HwEm/R5q0yOHiX8045cKDVh1Q8xheUqhCJt3GRM+02ss6exTArxy Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="315663345"
X-IronPort-AV: E=Sophos;i="5.96,225,1665471600"; d="scan'208";a="315663345"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2022 09:17:38 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="788968524"
X-IronPort-AV: E=Sophos;i="5.96,225,1665471600"; d="scan'208";a="788968524"
Received: from fbackhou-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.36.192])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2022 09:17:36 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Dec 2022 19:17:18 +0200
Message-Id: <0d051554dfeeb4d8aa3bc9136ed111fa35f647d8.1670433372.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1670433372.git.jani.nikula@intel.com>
References: <cover.1670433372.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 01/11] drm/i915/de: Add more macros to remove
 all direct calls to uncore
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>

Add more de helpers to be able to avoid direct calls to uncore.

v3 by Jani:
- drop intel_de_write_samevalue/intel_de_rewrite_fw altogether

v2 by Jani:
- drop pcode stuff for now
- rename intel_de_write_samevalue -> intel_de_rewrite_fw

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_de.h | 35 +++++++++++++++++++++++++
 1 file changed, 35 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_de.h b/drivers/gpu/drm/i915/display/intel_de.h
index 9c104f65e4c8..004f01906fd7 100644
--- a/drivers/gpu/drm/i915/display/intel_de.h
+++ b/drivers/gpu/drm/i915/display/intel_de.h
@@ -16,6 +16,12 @@ intel_de_read(struct drm_i915_private *i915, i915_reg_t reg)
 	return intel_uncore_read(&i915->uncore, reg);
 }
 
+static inline u8
+intel_de_read8(struct drm_i915_private *i915, i915_reg_t reg)
+{
+	return intel_uncore_read8(&i915->uncore, reg);
+}
+
 static inline void
 intel_de_posting_read(struct drm_i915_private *i915, i915_reg_t reg)
 {
@@ -41,6 +47,23 @@ intel_de_wait_for_register(struct drm_i915_private *i915, i915_reg_t reg,
 	return intel_wait_for_register(&i915->uncore, reg, mask, value, timeout);
 }
 
+static inline int
+intel_de_wait_for_register_fw(struct drm_i915_private *i915, i915_reg_t reg,
+			      u32 mask, u32 value, unsigned int timeout)
+{
+	return intel_wait_for_register_fw(&i915->uncore, reg, mask, value, timeout);
+}
+
+static inline int
+__intel_de_wait_for_register(struct drm_i915_private *i915, i915_reg_t reg,
+			     u32 mask, u32 value,
+			     unsigned int fast_timeout_us,
+			     unsigned int slow_timeout_ms, u32 *out_value)
+{
+	return __intel_wait_for_register(&i915->uncore, reg, mask, value,
+					 fast_timeout_us, slow_timeout_ms, out_value);
+}
+
 static inline int
 intel_de_wait_for_set(struct drm_i915_private *i915, i915_reg_t reg,
 		      u32 mask, unsigned int timeout)
@@ -81,4 +104,16 @@ intel_de_write_fw(struct drm_i915_private *i915, i915_reg_t reg, u32 val)
 	intel_uncore_write_fw(&i915->uncore, reg, val);
 }
 
+static inline u32
+intel_de_read_notrace(struct drm_i915_private *i915, i915_reg_t reg)
+{
+	return intel_uncore_read_notrace(&i915->uncore, reg);
+}
+
+static inline void
+intel_de_write_notrace(struct drm_i915_private *i915, i915_reg_t reg, u32 val)
+{
+	intel_uncore_write_notrace(&i915->uncore, reg, val);
+}
+
 #endif /* __INTEL_DE_H__ */
-- 
2.34.1

