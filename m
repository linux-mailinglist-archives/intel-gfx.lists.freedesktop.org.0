Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 786E4AC4C91
	for <lists+intel-gfx@lfdr.de>; Tue, 27 May 2025 12:59:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D7A310E499;
	Tue, 27 May 2025 10:59:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WdZ4/2B5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 67B9C10E488;
 Tue, 27 May 2025 10:59:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748343576; x=1779879576;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/HaxquT5sIqv3HfH7sieQGY3qiug8swVQoCHwkNfHT4=;
 b=WdZ4/2B51u8shhf/4jkGkTKDdFMrYrtiuEcT3hPZqrmfRHL1zZLmShQm
 xE3s6H4EXJout5Thz57aVOtPlcI2kiqgciuER1sCcLh24P1A69w2lqP2g
 KbfhMhG7falXXKVkHwbbJPn1bfZs+XXkplFgvVwj3XokJdiyBLVfzGOAs
 kfBrXqPmpbebTSULPG2xEbFutmpPGpuK5moUerueOcUZAuXLYyJ/4gyEm
 5bKDkg3WYsVPS/CTanAg/3gKfSxmgU+HLevLZPERccSrWTSeKgei5427A
 o83X1FlsJ+CAb+/HIu/uD3D0O9bV/bnS82fEeBzfTPUtHulFwtzDSnlTM g==;
X-CSE-ConnectionGUID: Qx8A4Az9TPGo2Na+7ryJPw==
X-CSE-MsgGUID: C8JhIeE+QRO12BWgJvOrMA==
X-IronPort-AV: E=McAfee;i="6700,10204,11445"; a="72859865"
X-IronPort-AV: E=Sophos;i="6.15,318,1739865600"; d="scan'208";a="72859865"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2025 03:59:36 -0700
X-CSE-ConnectionGUID: rmP2vQF3SYmbRe/juCdTrQ==
X-CSE-MsgGUID: DhDJZgIZRfi3VcymZQCcUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,318,1739865600"; d="scan'208";a="142768863"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.244.119])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2025 03:59:35 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [RESEND 4/8] drm/i915/de: rename timeout parameters timeout_ms to
 highlight unit
Date: Tue, 27 May 2025 13:59:10 +0300
Message-Id: <cd4c775ad323a577f612e6a942f83b22641fb798.1748343520.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1748343520.git.jani.nikula@intel.com>
References: <cover.1748343520.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

The timeout parameters are in ms. Rename the parameters to highlight the
unit.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_de.h | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_de.h b/drivers/gpu/drm/i915/display/intel_de.h
index 54ce3e4f8fd9..823290e0cf7d 100644
--- a/drivers/gpu/drm/i915/display/intel_de.h
+++ b/drivers/gpu/drm/i915/display/intel_de.h
@@ -107,10 +107,10 @@ intel_de_rmw(struct intel_display *display, i915_reg_t reg, u32 clear, u32 set)
 static inline int
 __intel_de_wait_for_register_nowl(struct intel_display *display,
 				  i915_reg_t reg,
-				  u32 mask, u32 value, unsigned int timeout)
+				  u32 mask, u32 value, unsigned int timeout_ms)
 {
 	return intel_wait_for_register(__to_uncore(display), reg, mask,
-				       value, timeout);
+				       value, timeout_ms);
 }
 
 static inline int
@@ -125,14 +125,14 @@ __intel_de_wait_for_register_atomic_nowl(struct intel_display *display,
 
 static inline int
 intel_de_wait(struct intel_display *display, i915_reg_t reg,
-	      u32 mask, u32 value, unsigned int timeout)
+	      u32 mask, u32 value, unsigned int timeout_ms)
 {
 	int ret;
 
 	intel_dmc_wl_get(display, reg);
 
 	ret = __intel_de_wait_for_register_nowl(display, reg, mask, value,
-						timeout);
+						timeout_ms);
 
 	intel_dmc_wl_put(display, reg);
 
@@ -141,14 +141,14 @@ intel_de_wait(struct intel_display *display, i915_reg_t reg,
 
 static inline int
 intel_de_wait_fw(struct intel_display *display, i915_reg_t reg,
-		 u32 mask, u32 value, unsigned int timeout)
+		 u32 mask, u32 value, unsigned int timeout_ms)
 {
 	int ret;
 
 	intel_dmc_wl_get(display, reg);
 
 	ret = intel_wait_for_register_fw(__to_uncore(display), reg, mask,
-					 value, timeout);
+					 value, timeout_ms);
 
 	intel_dmc_wl_put(display, reg);
 
@@ -176,16 +176,16 @@ intel_de_wait_custom(struct intel_display *display, i915_reg_t reg,
 
 static inline int
 intel_de_wait_for_set(struct intel_display *display, i915_reg_t reg,
-		      u32 mask, unsigned int timeout)
+		      u32 mask, unsigned int timeout_ms)
 {
-	return intel_de_wait(display, reg, mask, mask, timeout);
+	return intel_de_wait(display, reg, mask, mask, timeout_ms);
 }
 
 static inline int
 intel_de_wait_for_clear(struct intel_display *display, i915_reg_t reg,
-			u32 mask, unsigned int timeout)
+			u32 mask, unsigned int timeout_ms)
 {
-	return intel_de_wait(display, reg, mask, 0, timeout);
+	return intel_de_wait(display, reg, mask, 0, timeout_ms);
 }
 
 /*
-- 
2.39.5

