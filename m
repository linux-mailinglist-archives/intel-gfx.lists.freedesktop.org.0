Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EC6D9622F30
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Nov 2022 16:41:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3E3210E5EF;
	Wed,  9 Nov 2022 15:41:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7A8D10E5EF
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Nov 2022 15:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668008485; x=1699544485;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pEAOLckm14wgy+koH5RarhjCFrwU1mpGvswy6XDTy60=;
 b=ZHrxsHqSasc3ukZvy/Y0XSVrKG8xSTnste9XAZ1KZbIO8WskwcWAczBn
 GwJ9QOVPV5kR65e7lhIP2UDZ+3AMttxiAv1+fOxz4JH2eALqfl5Z77Gac
 rslTKVmCE7NvbA3Wl/o+CZYv3tqtoljAxVxj/bhdTIxcMDZkCGaym2U5t
 /vO/LFQETvgIM459zKxK7UYFrrLpCI/xw06P880QREJpo5Nv7AcAeLM7R
 lssdmfFo9shXKUHfgsazOEMGTR/fMimacp3A2Oe8oZ3W7f3Q0yS6TsWoV
 JgJV1gdHMyzmHZ445ysZ0Y2NI0KOPIgzsIYnOxshRfPSdZQpYlsSVkRbN g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="375285549"
X-IronPort-AV: E=Sophos;i="5.96,151,1665471600"; d="scan'208";a="375285549"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2022 07:35:30 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="811668849"
X-IronPort-AV: E=Sophos;i="5.96,151,1665471600"; d="scan'208";a="811668849"
Received: from skorobko-mobl2.ccr.corp.intel.com (HELO localhost)
 ([10.252.15.56])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2022 07:35:29 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  9 Nov 2022 17:35:19 +0200
Message-Id: <5161a0c6d98df206c6c4c1add3fc3f2f408020b1.1668008071.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1668008071.git.jani.nikula@intel.com>
References: <cover.1668008071.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/4] drm/i915/reg: move masked field helpers
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
Cc: Jani Nikula <jani.nikula@intel.com>, lucas.demarchi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is a more logical place for generic helpers.

Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h      | 13 -------------
 drivers/gpu/drm/i915/i915_reg_defs.h | 13 +++++++++++++
 2 files changed, 13 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index a37ed0c61f20..0d54d69c2eb1 100644
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
index f1859046a9c4..e94558a336f1 100644
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

