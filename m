Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9842C8B37DD
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Apr 2024 15:03:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04B2A11239B;
	Fri, 26 Apr 2024 13:03:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aXq9+7LZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFB7410E9E9;
 Fri, 26 Apr 2024 13:03:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714136628; x=1745672628;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Vi6iNRGPvtpiGixGY/YB8D/r5u78bI4IIhTI2UbQpOQ=;
 b=aXq9+7LZw2OzT9PSoC6Rgtj8Ztsq3b6SE/JljLNiDBpQhXUFmfs8uK3b
 fA8JjbxESDXEriWjMOBB5PXsBlV6j54Pm9fAFGrxhbRQdjEp1oS3XyIH9
 PZPNXRCtkR5fgCxuev1VueJ7heChpBhlgwsxFnvEMU2Dku41QTr/14+EI
 eeEFbPP/X/A5h61sBJ6NM46A0RRHwJORbHdgSNfLFQ9sqYgW16m0wcxX0
 9lOQRLtUHA/VAQ8IlXtywW3AB2B3iGKOJwdPJ1FLqCibkAiKFAd+gk0W7
 eGTPquOIxa2gH9WKJmP4brGRdkgJJtOrDaBAFcZxag0hYElLYy+wsJLto w==;
X-CSE-ConnectionGUID: GZPujd5jS7SLyD4Oqs32FA==
X-CSE-MsgGUID: yXDr4GyNQruEj6zKLVCTYA==
X-IronPort-AV: E=McAfee;i="6600,9927,11056"; a="10084166"
X-IronPort-AV: E=Sophos;i="6.07,232,1708416000"; d="scan'208";a="10084166"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2024 06:03:48 -0700
X-CSE-ConnectionGUID: zputsxXvSt65JY3JlSzWHQ==
X-CSE-MsgGUID: /Mk+K/FQRNG831PRtmYuvw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,232,1708416000"; d="scan'208";a="25435912"
Received: from dgarbuz-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.48.145])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2024 06:03:46 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 003/123] drm/i915: pass dev_priv explicitly to PALETTE
Date: Fri, 26 Apr 2024 16:01:28 +0300
Message-Id: <15c80e5103bd3742bfd90ae240f10695a4289efd.1714136165.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1714136165.git.jani.nikula@intel.com>
References: <cover.1714136165.git.jani.nikula@intel.com>
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

Avoid the implicit dev_priv local variable use, and pass dev_priv
explicitly to the PALETTE register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 29 ++++++++++++++--------
 drivers/gpu/drm/i915/i915_reg.h            |  2 +-
 2 files changed, 20 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index ca7112b32cb3..edb805fc9c97 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -1227,7 +1227,7 @@ static void i9xx_load_lut_8(struct intel_crtc *crtc,
 	lut = blob->data;
 
 	for (i = 0; i < 256; i++)
-		intel_de_write_fw(dev_priv, PALETTE(pipe, i),
+		intel_de_write_fw(dev_priv, PALETTE(dev_priv, pipe, i),
 				  i9xx_lut_8(&lut[i]));
 }
 
@@ -1240,9 +1240,11 @@ static void i9xx_load_lut_10(struct intel_crtc *crtc,
 	enum pipe pipe = crtc->pipe;
 
 	for (i = 0; i < lut_size - 1; i++) {
-		intel_de_write_fw(dev_priv, PALETTE(pipe, 2 * i + 0),
+		intel_de_write_fw(dev_priv,
+				  PALETTE(dev_priv, pipe, 2 * i + 0),
 				  i9xx_lut_10_ldw(&lut[i]));
-		intel_de_write_fw(dev_priv, PALETTE(pipe, 2 * i + 1),
+		intel_de_write_fw(dev_priv,
+				  PALETTE(dev_priv, pipe, 2 * i + 1),
 				  i9xx_lut_10_udw(&lut[i]));
 	}
 }
@@ -1274,9 +1276,11 @@ static void i965_load_lut_10p6(struct intel_crtc *crtc,
 	enum pipe pipe = crtc->pipe;
 
 	for (i = 0; i < lut_size - 1; i++) {
-		intel_de_write_fw(dev_priv, PALETTE(pipe, 2 * i + 0),
+		intel_de_write_fw(dev_priv,
+				  PALETTE(dev_priv, pipe, 2 * i + 0),
 				  i965_lut_10p6_ldw(&lut[i]));
-		intel_de_write_fw(dev_priv, PALETTE(pipe, 2 * i + 1),
+		intel_de_write_fw(dev_priv,
+				  PALETTE(dev_priv, pipe, 2 * i + 1),
 				  i965_lut_10p6_udw(&lut[i]));
 	}
 
@@ -3150,7 +3154,8 @@ static struct drm_property_blob *i9xx_read_lut_8(struct intel_crtc *crtc)
 	lut = blob->data;
 
 	for (i = 0; i < LEGACY_LUT_LENGTH; i++) {
-		u32 val = intel_de_read_fw(dev_priv, PALETTE(pipe, i));
+		u32 val = intel_de_read_fw(dev_priv,
+					   PALETTE(dev_priv, pipe, i));
 
 		i9xx_lut_8_pack(&lut[i], val);
 	}
@@ -3176,8 +3181,10 @@ static struct drm_property_blob *i9xx_read_lut_10(struct intel_crtc *crtc)
 	lut = blob->data;
 
 	for (i = 0; i < lut_size - 1; i++) {
-		ldw = intel_de_read_fw(dev_priv, PALETTE(pipe, 2 * i + 0));
-		udw = intel_de_read_fw(dev_priv, PALETTE(pipe, 2 * i + 1));
+		ldw = intel_de_read_fw(dev_priv,
+				       PALETTE(dev_priv, pipe, 2 * i + 0));
+		udw = intel_de_read_fw(dev_priv,
+				       PALETTE(dev_priv, pipe, 2 * i + 1));
 
 		i9xx_lut_10_pack(&lut[i], ldw, udw);
 	}
@@ -3224,8 +3231,10 @@ static struct drm_property_blob *i965_read_lut_10p6(struct intel_crtc *crtc)
 	lut = blob->data;
 
 	for (i = 0; i < lut_size - 1; i++) {
-		u32 ldw = intel_de_read_fw(dev_priv, PALETTE(pipe, 2 * i + 0));
-		u32 udw = intel_de_read_fw(dev_priv, PALETTE(pipe, 2 * i + 1));
+		u32 ldw = intel_de_read_fw(dev_priv,
+					   PALETTE(dev_priv, pipe, 2 * i + 0));
+		u32 udw = intel_de_read_fw(dev_priv,
+					   PALETTE(dev_priv, pipe, 2 * i + 1));
 
 		i965_lut_10p6_pack(&lut[i], ldw, udw);
 	}
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 744698a9c107..5c07b489073d 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1480,7 +1480,7 @@
 #define   PALETTE_10BIT_BLUE_EXP_MASK	REG_GENMASK(7, 6)
 #define   PALETTE_10BIT_BLUE_MANT_MASK	REG_GENMASK(5, 2)
 #define   PALETTE_10BIT_BLUE_UDW_MASK	REG_GENMASK(1, 0)
-#define PALETTE(pipe, i) _MMIO(DISPLAY_MMIO_BASE(dev_priv) +			\
+#define PALETTE(dev_priv, pipe, i) _MMIO(DISPLAY_MMIO_BASE(dev_priv) +			\
 			       _PICK_EVEN_2RANGES(pipe, 2,			\
 						  _PALETTE_A, _PALETTE_B,	\
 						  _CHV_PALETTE_C, _CHV_PALETTE_C) + \
-- 
2.39.2

