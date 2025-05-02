Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56D1AAA713C
	for <lists+intel-gfx@lfdr.de>; Fri,  2 May 2025 14:07:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A374210E05D;
	Fri,  2 May 2025 12:07:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="f26FM5/9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F04110E05D
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 May 2025 12:07:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746187651; x=1777723651;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ExaudXTJ4YsFxnnzyzh8lwsP9cxskn6SYClkIPnNKSY=;
 b=f26FM5/9ip2ag79AvoN2iee9UFNJS/m8iI8ltQS2KcbaaeadBzAxznrA
 cvB0IQudH3iEMB3x8OvJ5inQOY8vnSsHvATW2v4EyaZSqhsJCem1vBpFP
 VBzWKWwZPWdsl/myeUfOcx5+I6upH5I7CEFHhpCC7n0U/8kO8AKHqqPWJ
 2wlb2/i3XkvXGblR1dzulHDFxPGIdDr7AB5fMG4995Z5C1sIe729N+DxU
 ZPuBg8cu6IAQUuVAnjYdTmCMDzbCCG/2SlgEOF0/AseCLROJ4DdM5kVaY
 +WJ6Uq5SWuwnrF694eiA06NtXZeL0qfRzd6cdpBwO4tx5jKFbA7UH2isk w==;
X-CSE-ConnectionGUID: Tjr90eZJT9SXghw/QWjr6Q==
X-CSE-MsgGUID: x0erQsEERau99V7WuNA6Uw==
X-IronPort-AV: E=McAfee;i="6700,10204,11421"; a="47126485"
X-IronPort-AV: E=Sophos;i="6.15,256,1739865600"; d="scan'208";a="47126485"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2025 05:07:30 -0700
X-CSE-ConnectionGUID: 43luh+grQMysxgcF/SmNdA==
X-CSE-MsgGUID: nAvRfYosS3aOumGv/S0hBA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,256,1739865600"; d="scan'208";a="139433441"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.144])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2025 05:07:29 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH] drm/i915/irq: stop using HAS_GMCH()
Date: Fri,  2 May 2025 15:07:25 +0300
Message-Id: <20250502120725.439800-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
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

Right or wrong, HAS_GMCH() has become a display only thing. The last
three users outside of display are in irq code. Reorder the if ladders
to stop using HAS_GMCH().

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_irq.c | 105 +++++++++++++++-----------------
 1 file changed, 48 insertions(+), 57 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index d06694d6531e..1a3b504252c7 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -1175,71 +1175,62 @@ void intel_irq_fini(struct drm_i915_private *i915)
 
 static irq_handler_t intel_irq_handler(struct drm_i915_private *dev_priv)
 {
-	if (HAS_GMCH(dev_priv)) {
-		if (IS_CHERRYVIEW(dev_priv))
-			return cherryview_irq_handler;
-		else if (IS_VALLEYVIEW(dev_priv))
-			return valleyview_irq_handler;
-		else if (GRAPHICS_VER(dev_priv) == 4)
-			return i965_irq_handler;
-		else
-			return i915_irq_handler;
-	} else {
-		if (GRAPHICS_VER_FULL(dev_priv) >= IP_VER(12, 10))
-			return dg1_irq_handler;
-		else if (GRAPHICS_VER(dev_priv) >= 11)
-			return gen11_irq_handler;
-		else if (GRAPHICS_VER(dev_priv) >= 8)
-			return gen8_irq_handler;
-		else
-			return ilk_irq_handler;
-	}
+	if (GRAPHICS_VER_FULL(dev_priv) >= IP_VER(12, 10))
+		return dg1_irq_handler;
+	else if (GRAPHICS_VER(dev_priv) >= 11)
+		return gen11_irq_handler;
+	else if (IS_CHERRYVIEW(dev_priv))
+		return cherryview_irq_handler;
+	else if (GRAPHICS_VER(dev_priv) >= 8)
+		return gen8_irq_handler;
+	else if (IS_VALLEYVIEW(dev_priv))
+		return valleyview_irq_handler;
+	else if (GRAPHICS_VER(dev_priv) >= 5)
+		return ilk_irq_handler;
+	else if (GRAPHICS_VER(dev_priv) == 4)
+		return i965_irq_handler;
+	else
+		return i915_irq_handler;
 }
 
 static void intel_irq_reset(struct drm_i915_private *dev_priv)
 {
-	if (HAS_GMCH(dev_priv)) {
-		if (IS_CHERRYVIEW(dev_priv))
-			cherryview_irq_reset(dev_priv);
-		else if (IS_VALLEYVIEW(dev_priv))
-			valleyview_irq_reset(dev_priv);
-		else if (GRAPHICS_VER(dev_priv) == 4)
-			i965_irq_reset(dev_priv);
-		else
-			i915_irq_reset(dev_priv);
-	} else {
-		if (GRAPHICS_VER_FULL(dev_priv) >= IP_VER(12, 10))
-			dg1_irq_reset(dev_priv);
-		else if (GRAPHICS_VER(dev_priv) >= 11)
-			gen11_irq_reset(dev_priv);
-		else if (GRAPHICS_VER(dev_priv) >= 8)
-			gen8_irq_reset(dev_priv);
-		else
-			ilk_irq_reset(dev_priv);
-	}
+	if (GRAPHICS_VER_FULL(dev_priv) >= IP_VER(12, 10))
+		dg1_irq_reset(dev_priv);
+	else if (GRAPHICS_VER(dev_priv) >= 11)
+		gen11_irq_reset(dev_priv);
+	else if (IS_CHERRYVIEW(dev_priv))
+		cherryview_irq_reset(dev_priv);
+	else if (GRAPHICS_VER(dev_priv) >= 8)
+		gen8_irq_reset(dev_priv);
+	else if (IS_VALLEYVIEW(dev_priv))
+		valleyview_irq_reset(dev_priv);
+	else if (GRAPHICS_VER(dev_priv) >= 5)
+		ilk_irq_reset(dev_priv);
+	else if (GRAPHICS_VER(dev_priv) == 4)
+		i965_irq_reset(dev_priv);
+	else
+		i915_irq_reset(dev_priv);
 }
 
 static void intel_irq_postinstall(struct drm_i915_private *dev_priv)
 {
-	if (HAS_GMCH(dev_priv)) {
-		if (IS_CHERRYVIEW(dev_priv))
-			cherryview_irq_postinstall(dev_priv);
-		else if (IS_VALLEYVIEW(dev_priv))
-			valleyview_irq_postinstall(dev_priv);
-		else if (GRAPHICS_VER(dev_priv) == 4)
-			i965_irq_postinstall(dev_priv);
-		else
-			i915_irq_postinstall(dev_priv);
-	} else {
-		if (GRAPHICS_VER_FULL(dev_priv) >= IP_VER(12, 10))
-			dg1_irq_postinstall(dev_priv);
-		else if (GRAPHICS_VER(dev_priv) >= 11)
-			gen11_irq_postinstall(dev_priv);
-		else if (GRAPHICS_VER(dev_priv) >= 8)
-			gen8_irq_postinstall(dev_priv);
-		else
-			ilk_irq_postinstall(dev_priv);
-	}
+	if (GRAPHICS_VER_FULL(dev_priv) >= IP_VER(12, 10))
+		dg1_irq_postinstall(dev_priv);
+	else if (GRAPHICS_VER(dev_priv) >= 11)
+		gen11_irq_postinstall(dev_priv);
+	else if (IS_CHERRYVIEW(dev_priv))
+		cherryview_irq_postinstall(dev_priv);
+	else if (GRAPHICS_VER(dev_priv) >= 8)
+		gen8_irq_postinstall(dev_priv);
+	else if (IS_VALLEYVIEW(dev_priv))
+		valleyview_irq_postinstall(dev_priv);
+	else if (GRAPHICS_VER(dev_priv) >= 5)
+		ilk_irq_postinstall(dev_priv);
+	else if (GRAPHICS_VER(dev_priv) == 4)
+		i965_irq_postinstall(dev_priv);
+	else
+		i915_irq_postinstall(dev_priv);
 }
 
 /**
-- 
2.39.5

