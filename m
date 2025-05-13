Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FA67AB548C
	for <lists+intel-gfx@lfdr.de>; Tue, 13 May 2025 14:17:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34EF010E1F7;
	Tue, 13 May 2025 12:17:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Dr84fYmN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C2D910E595;
 Tue, 13 May 2025 12:17:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747138650; x=1778674650;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/HaxquT5sIqv3HfH7sieQGY3qiug8swVQoCHwkNfHT4=;
 b=Dr84fYmNzJdZDjFiUGAtp9sDQXcvcJgLoK/im0GfQsJ8NEc7OnxkMg8l
 sSSSUUmjL83fCX/wtOSIX5A5Rqg1tuypVNNl1hvWY2zUPWqXl8U1d4DGa
 XmaGvLPcGHT9rtiDo26yPCuPy9EEC2EZ36Lhn+hayWU/B8Xk4174GWsTV
 JNW7zEMQn6m/wQaLVzHn4K5Ak1ltGDwE8JlWu4KZE9Gc9NDpa17ry4y2U
 XYz47P/fuM8umyCD2pyX5I+NTzn6kxzg5kMgyoAWM+Dy7CUpuj/3octbO
 Y6TArV03PFtVjEtfISJC3LBpkw6kxztDub0jUEiLR7ohG+s3U8gljlNNn w==;
X-CSE-ConnectionGUID: 13Fsehs3QqOpn72IDcOzFA==
X-CSE-MsgGUID: KwvALRazRASkEsRjEH96Xw==
X-IronPort-AV: E=McAfee;i="6700,10204,11431"; a="48235895"
X-IronPort-AV: E=Sophos;i="6.15,285,1739865600"; d="scan'208";a="48235895"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2025 05:17:30 -0700
X-CSE-ConnectionGUID: ZyNxgYb2Th2phE/rDYAVag==
X-CSE-MsgGUID: WWlxvkSuSGm5f6bPMkFpcQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,285,1739865600"; d="scan'208";a="138205816"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.175])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2025 05:17:29 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 4/8] drm/i915/de: rename timeout parameters timeout_ms to
 highlight unit
Date: Tue, 13 May 2025 15:17:03 +0300
Message-Id: <52f2dd4afdf95f31849be9aa7465587bc03b44f4.1747138550.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1747138550.git.jani.nikula@intel.com>
References: <cover.1747138550.git.jani.nikula@intel.com>
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

