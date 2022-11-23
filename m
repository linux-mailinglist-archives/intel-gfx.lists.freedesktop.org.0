Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C4829636C37
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Nov 2022 22:19:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D46B110E640;
	Wed, 23 Nov 2022 21:18:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91B3C88C4C
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Nov 2022 21:18:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669238328; x=1700774328;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OLiYFQJmWYffIfJ2qigwsTAzemsBZWL7QeJKohUawkM=;
 b=aQ7r0jrxs8/onOJR7nkVgEwlArh8f0VKXP2eAmLItnWg1xfVnGipgr/m
 9NNzbFmXCfu0u/+vsHTeDYskxzEeZi3+wvMoiqu7TH3eu3ujtdIBJxvz+
 WODtPqzHuI7wIamiIT7wEbrvUFvLsv9BGnEXaFgDMZtK8OUHIiVWRJ0XC
 qusHoA+K3ejm39NLRmZ6sVq3TxOk4OnIAuKamyQXIJJeX0Q5DrNQxZ3Jw
 dLdZYCovDBVeHEq+UBquE97LB40aC3ENTmmBJQigbV+GFVXmjberUSgem
 92jtjdQG3OE9PPuASzEXPoGPCi1AJYPm4oqmlNS3nT17BO9uIQ7tcUHLt g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="315982107"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="315982107"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2022 13:18:35 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="766865345"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="766865345"
Received: from jgronski-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.16.163])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2022 13:18:33 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Nov 2022 23:18:14 +0200
Message-Id: <c2bc064e233a7b4eebad34f56dea8eeb3022a061.1669238194.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1669238194.git.jani.nikula@intel.com>
References: <cover.1669238194.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 01/12] drm/i915/de: Add more macros to remove
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

v2 by Jani:
- drop pcode stuff for now
- rename intel_de_write_samevalue -> intel_de_rewrite_fw

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_de.h | 43 +++++++++++++++++++++++++
 1 file changed, 43 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_de.h b/drivers/gpu/drm/i915/display/intel_de.h
index 9c104f65e4c8..7fd74eda89fc 100644
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
@@ -81,4 +104,24 @@ intel_de_write_fw(struct drm_i915_private *i915, i915_reg_t reg, u32 val)
 	intel_uncore_write_fw(&i915->uncore, reg, val);
 }
 
+static inline void
+intel_de_rewrite_fw(struct drm_i915_private *i915, i915_reg_t reg)
+{
+	spin_lock_irq(&i915->uncore.lock);
+	intel_de_write_fw(i915, reg, intel_de_read_fw(i915, reg));
+	spin_unlock_irq(&i915->uncore.lock);
+}
+
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

