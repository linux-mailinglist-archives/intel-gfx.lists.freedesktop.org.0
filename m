Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E7C790B172
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Jun 2024 16:19:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C01C910E3E0;
	Mon, 17 Jun 2024 14:19:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fpdgdjEv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D3EB10E3E0;
 Mon, 17 Jun 2024 14:19:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718633961; x=1750169961;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yanv56szG+ThJkyYknIv2uah8syWvuCvPX2B4g74ogc=;
 b=fpdgdjEv2Pyvn3mocq6+tJbD+JPBR2QeaVohCoPct4AYKlU+2BPiSFWv
 nO1srhQUkPUbwVKpDmU/fvp5S6mRTbxLzncXvfcGo9c2WJVrYZYVQNh/F
 1CBJPhQHp+Z6fA0L4UiDD/K9caimmCB79zAXYtHdtLzf4XIGTjXe/GmkA
 4ahkRAkfg3+kXN8p25isAbOxqXiO1HGtH++JYoGdNvA/MXHtbzDlsImOB
 SSK9m9hw10liIyK3HS2x2TBzfnBMpnmcVeFZx88d4ObWRl3yg4iKu+tSG
 UogJgDbhroiZwYPoaFTy3ihJhYprMGg1FwWA+SHno5WIvHkrzsQ2n2maV g==;
X-CSE-ConnectionGUID: u31srAuZSeSD3Aha/tsqZA==
X-CSE-MsgGUID: w7Q1xWWyTvWpTzk6g2ciCA==
X-IronPort-AV: E=McAfee;i="6700,10204,11105"; a="15593293"
X-IronPort-AV: E=Sophos;i="6.08,244,1712646000"; d="scan'208";a="15593293"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2024 07:19:21 -0700
X-CSE-ConnectionGUID: +ah75LEDS/iSnsheGkge5A==
X-CSE-MsgGUID: n7NELmCvQNOxJyfs6F+qlA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,244,1712646000"; d="scan'208";a="41083510"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.85])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2024 07:19:19 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 1/5] drm/i915/frontbuffer: un-inline frontbuffer bits checks
Date: Mon, 17 Jun 2024 17:18:58 +0300
Message-Id: <53a8e43c2846c513f248b37bc4ba2173b2ec1378.1718633874.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1718633874.git.jani.nikula@intel.com>
References: <cover.1718633874.git.jani.nikula@intel.com>
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

Move frontbuffer bits read and check from intel_frontbuffer.h inline
functions to intel_frontbuffer.c, in preparation for making struct
intel_frontbuffer opaque.

Rename __intel_fb_* to __intel_frontbuffer_* while at it, because fb
sounds like framebuffer more than frontbuffer.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_frontbuffer.c  | 22 ++++++++++-----
 .../gpu/drm/i915/display/intel_frontbuffer.h  | 27 +++++--------------
 2 files changed, 22 insertions(+), 27 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.c b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
index 4923c340a0b6..7964eaa6a60a 100644
--- a/drivers/gpu/drm/i915/display/intel_frontbuffer.c
+++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
@@ -167,11 +167,15 @@ void intel_frontbuffer_flip(struct drm_i915_private *i915,
 	frontbuffer_flush(i915, frontbuffer_bits, ORIGIN_FLIP);
 }
 
-void __intel_fb_invalidate(struct intel_frontbuffer *front,
-			   enum fb_op_origin origin,
-			   unsigned int frontbuffer_bits)
+bool __intel_frontbuffer_invalidate(struct intel_frontbuffer *front,
+				    enum fb_op_origin origin)
 {
 	struct drm_i915_private *i915 = intel_bo_to_i915(front->obj);
+	unsigned int frontbuffer_bits;
+
+	frontbuffer_bits = atomic_read(&front->bits);
+	if (!frontbuffer_bits)
+		return false;
 
 	if (origin == ORIGIN_CS) {
 		spin_lock(&i915->display.fb_tracking.lock);
@@ -186,13 +190,19 @@ void __intel_fb_invalidate(struct intel_frontbuffer *front,
 	intel_psr_invalidate(i915, frontbuffer_bits, origin);
 	intel_drrs_invalidate(i915, frontbuffer_bits);
 	intel_fbc_invalidate(i915, frontbuffer_bits, origin);
+
+	return true;
 }
 
-void __intel_fb_flush(struct intel_frontbuffer *front,
-		      enum fb_op_origin origin,
-		      unsigned int frontbuffer_bits)
+void __intel_frontbuffer_flush(struct intel_frontbuffer *front,
+			       enum fb_op_origin origin)
 {
 	struct drm_i915_private *i915 = intel_bo_to_i915(front->obj);
+	unsigned int frontbuffer_bits;
+
+	frontbuffer_bits = atomic_read(&front->bits);
+	if (!frontbuffer_bits)
+		return;
 
 	if (origin == ORIGIN_CS) {
 		spin_lock(&i915->display.fb_tracking.lock);
diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.h b/drivers/gpu/drm/i915/display/intel_frontbuffer.h
index abb51e8bb920..f4a3495300de 100644
--- a/drivers/gpu/drm/i915/display/intel_frontbuffer.h
+++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.h
@@ -79,9 +79,8 @@ void intel_frontbuffer_put(struct intel_frontbuffer *front);
 struct intel_frontbuffer *
 intel_frontbuffer_get(struct drm_i915_gem_object *obj);
 
-void __intel_fb_invalidate(struct intel_frontbuffer *front,
-			   enum fb_op_origin origin,
-			   unsigned int frontbuffer_bits);
+bool __intel_frontbuffer_invalidate(struct intel_frontbuffer *front,
+				    enum fb_op_origin origin);
 
 /**
  * intel_frontbuffer_invalidate - invalidate frontbuffer object
@@ -97,22 +96,14 @@ void __intel_fb_invalidate(struct intel_frontbuffer *front,
 static inline bool intel_frontbuffer_invalidate(struct intel_frontbuffer *front,
 						enum fb_op_origin origin)
 {
-	unsigned int frontbuffer_bits;
-
 	if (!front)
 		return false;
 
-	frontbuffer_bits = atomic_read(&front->bits);
-	if (!frontbuffer_bits)
-		return false;
-
-	__intel_fb_invalidate(front, origin, frontbuffer_bits);
-	return true;
+	return __intel_frontbuffer_invalidate(front, origin);
 }
 
-void __intel_fb_flush(struct intel_frontbuffer *front,
-		      enum fb_op_origin origin,
-		      unsigned int frontbuffer_bits);
+void __intel_frontbuffer_flush(struct intel_frontbuffer *front,
+			       enum fb_op_origin origin);
 
 /**
  * intel_frontbuffer_flush - flush frontbuffer object
@@ -125,16 +116,10 @@ void __intel_fb_flush(struct intel_frontbuffer *front,
 static inline void intel_frontbuffer_flush(struct intel_frontbuffer *front,
 					   enum fb_op_origin origin)
 {
-	unsigned int frontbuffer_bits;
-
 	if (!front)
 		return;
 
-	frontbuffer_bits = atomic_read(&front->bits);
-	if (!frontbuffer_bits)
-		return;
-
-	__intel_fb_flush(front, origin, frontbuffer_bits);
+	__intel_frontbuffer_flush(front, origin);
 }
 
 void intel_frontbuffer_queue_flush(struct intel_frontbuffer *front);
-- 
2.39.2

