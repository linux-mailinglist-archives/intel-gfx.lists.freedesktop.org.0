Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 71B79616096
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Nov 2022 11:09:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A775310E482;
	Wed,  2 Nov 2022 10:09:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A7A210E489
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Nov 2022 10:09:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667383756; x=1698919756;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=R5oN7cs6d2iHPZaU7ucjWyb3NBTeET08EhxltU2XUns=;
 b=i6IOkxCyvio5yBHiw/cnmP89KVPYnCaW4/6iV9AmA9eZoW7sF406C5PO
 LVI+6PKjWXcdNxganON5uFf2pWuPynSDpIWVgh4RmRGQTOMNEQriGVMrO
 ZcqNk/uvXVNZMzPyZeHG+YKSM3q7uVedRcEoDM+RcHA13yK3oHjx9Ly8R
 fYV2XEQmKGD4PFaXJufoMi290Je//Un9bQXyHidrTH89sVjofYjXsN5j0
 INOzhAs2EiSNJSzhIGpv9o7EhR+090D3qRG6i2hRfI8MocSldJPaRl8Lv
 kUlQE/4HsW5RtQj5DSsZtx4mtDWwYvxm7SrFmd3uRILVSxPell8LKazQx Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="308086400"
X-IronPort-AV: E=Sophos;i="5.95,232,1661842800"; d="scan'208";a="308086400"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 03:09:15 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="634204463"
X-IronPort-AV: E=Sophos;i="5.95,232,1661842800"; d="scan'208";a="634204463"
Received: from cjokeeff-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.15.91])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 03:09:14 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  2 Nov 2022 12:08:20 +0200
Message-Id: <02426ffa810151316a0c42cad2e2f8f9dff247d4.1667383630.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1667383630.git.jani.nikula@intel.com>
References: <cover.1667383630.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v1 12/16] drm/i915/reg: move masked field
 helpers to i915_reg_defs.h
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
index 1c0da50c0dc7..9724a04c0b7d 100644
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

