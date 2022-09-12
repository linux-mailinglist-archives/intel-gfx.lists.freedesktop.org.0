Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E3AE75B5EA9
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Sep 2022 18:56:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C8E010E1AB;
	Mon, 12 Sep 2022 16:56:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45ADD10E448
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Sep 2022 16:55:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663001730; x=1694537730;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=omX9dpA4Ig/j/QuLvcWfDjXxybzoxtIceAXx5Cx7rYU=;
 b=hSSB83N0rBbVeNb55tn3EyUtUr7Ol7iop99CQJctvRT/jd+yIK93iCds
 ma6pz4GT2hYO7eo6/YnxVVHWmJfKwOSfaR07/y3y3xwEdPvrxPq7VtRD1
 Uim2I/fYFQ/OrbnL0bQ9mtlB9DJ4MDo1BaKWosfsSpejm/q5Kq5zm0rTJ
 QCMxH/kTJyfXL7hs4kR7LE5wDP4p26XnB4ioVF4Zav6fJUbiEAPgBGtg2
 i3kGWoIGQqoxYO0x4I0dYkiYThlj9IeuIknH8egxX047I5LgHQiaCXPvn
 UYh8lQg8wxsiY21LMkLHaQIqfoLLddTavUwcUjWrtDgQJOKtAHde0l7dR w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10468"; a="278309233"
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="278309233"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2022 09:55:29 -0700
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="616121051"
Received: from abijaz-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.58.140])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2022 09:55:28 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Sep 2022 19:54:34 +0300
Message-Id: <ac28c6d38aa6b99b3547861bd287576298fd30a1.1662999695.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1662999695.git.jani.nikula@intel.com>
References: <cover.1662999695.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 12/15] drm/i915/reg: move masked field helpers
 to i915_reg_defs.h
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

This is a more logical place for generic helpers.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h      | 13 -------------
 drivers/gpu/drm/i915/i915_reg_defs.h | 13 +++++++++++++
 2 files changed, 13 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 52462cbfdc66..3727fc1d5d61 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -171,19 +171,6 @@
 					      INTEL_INFO(dev_priv)->display.cursor_offsets[PIPE_A] + \
 					      DISPLAY_MMIO_BASE(dev_priv) + (reg))
 
-#define __MASKED_FIELD(mask, value) ((mask) << 16 | (value))
-#define _MASKED_FIELD(mask, value) ({					   \
-	if (__builtin_constant_p(mask))					   \
-		BUILD_BUG_ON_MSG(((mask) & 0xffff0000), "Incorrect mask"); \
-	if (__builtin_constant_p(value))				   \
-		BUILD_BUG_ON_MSG((value) & 0xffff0000, "Incorrect value"); \
-	if (__builtin_constant_p(mask) && __builtin_constant_p(value))	   \
-		BUILD_BUG_ON_MSG((value) & ~(mask),			   \
-				 "Incorrect value for mask");		   \
-	__MASKED_FIELD(mask, value); })
-#define _MASKED_BIT_ENABLE(a)	({ typeof(a) _a = (a); _MASKED_FIELD(_a, _a); })
-#define _MASKED_BIT_DISABLE(a)	(_MASKED_FIELD((a), 0))
-
 #define GU_CNTL				_MMIO(0x101010)
 #define   LMEM_INIT			REG_BIT(7)
 
diff --git a/drivers/gpu/drm/i915/i915_reg_defs.h b/drivers/gpu/drm/i915/i915_reg_defs.h
index 8f486f77609f..7536f1b72778 100644
--- a/drivers/gpu/drm/i915/i915_reg_defs.h
+++ b/drivers/gpu/drm/i915/i915_reg_defs.h
@@ -98,6 +98,19 @@
  */
 #define REG_FIELD_GET64(__mask, __val)	((u64)FIELD_GET(__mask, __val))
 
+#define __MASKED_FIELD(mask, value) ((mask) << 16 | (value))
+#define _MASKED_FIELD(mask, value) ({					   \
+	if (__builtin_constant_p(mask))					   \
+		BUILD_BUG_ON_MSG(((mask) & 0xffff0000), "Incorrect mask"); \
+	if (__builtin_constant_p(value))				   \
+		BUILD_BUG_ON_MSG((value) & 0xffff0000, "Incorrect value"); \
+	if (__builtin_constant_p(mask) && __builtin_constant_p(value))	   \
+		BUILD_BUG_ON_MSG((value) & ~(mask),			   \
+				 "Incorrect value for mask");		   \
+	__MASKED_FIELD(mask, value); })
+#define _MASKED_BIT_ENABLE(a)	({ typeof(a) _a = (a); _MASKED_FIELD(_a, _a); })
+#define _MASKED_BIT_DISABLE(a)	(_MASKED_FIELD((a), 0))
+
 typedef struct {
 	u32 reg;
 } i915_reg_t;
-- 
2.34.1

