Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F2E248B5ACA
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Apr 2024 16:02:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76DFC10E512;
	Mon, 29 Apr 2024 14:02:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IcLlhZN8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 48BF410E512
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Apr 2024 14:02:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714399359; x=1745935359;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=s1U4hBbzwn4DM3ERGgvCnl93RxYuQenXkkvjeTyG74E=;
 b=IcLlhZN8dtdSHe3MfgGIMXQHqEQVH+glxaUpAQ4MKlKfbtBmA57GHzuY
 pMdoDNDeWwFRgPfOO5vkV3dF7YauL0rP8fv6sD4/XrzFECG18BIcgycNJ
 8KFtjdY9dU9hAa7NQwuZ5N+5r/n4rwVPGxF+dXgFfmeT4MW6kJNDVOiyg
 CTNErOQMR+5lm+ApRz7Ul5Igibb7DWoIcREy59/YeiIwVPRR/GhmFULUJ
 MavfjeYt916IH0KdAK5ri/qnvoKPDJ8PCm12GY7RGY0P7KHTJALQhFQey
 DT/3e6I5vaLTJuHSvB6LVnsnJpZxgbcCbu8lNTpxPpapkuKMi0dMH7QfH w==;
X-CSE-ConnectionGUID: 9dV1g86nSn+Z4KULpah+gA==
X-CSE-MsgGUID: W5SAEm5QQwifnwF/EyRyKQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11059"; a="32563302"
X-IronPort-AV: E=Sophos;i="6.07,239,1708416000"; d="scan'208";a="32563302"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2024 07:02:32 -0700
X-CSE-ConnectionGUID: SXILw8amQ7C2r9/glMGZ/g==
X-CSE-MsgGUID: +WBGiE1+S9u8rNF31LaM+A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,239,1708416000"; d="scan'208";a="63598989"
Received: from aantonov-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.49.167])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2024 07:02:31 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: rodrigo.vivi@intel.com,
	jani.nikula@intel.com
Subject: [PATCH 1/7] drm/i915: pass dev_priv explicitly to PALETTE
Date: Mon, 29 Apr 2024 17:02:15 +0300
Message-Id: <bf07d29cefef23ebd5d54fbb0d3bf7e41d132d93.1714399071.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1714399071.git.jani.nikula@intel.com>
References: <cover.1714399071.git.jani.nikula@intel.com>
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
 drivers/gpu/drm/i915/display/intel_color.c    | 29 ++++++++++++-------
 .../gpu/drm/i915/display/intel_color_regs.h   |  2 +-
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
diff --git a/drivers/gpu/drm/i915/display/intel_color_regs.h b/drivers/gpu/drm/i915/display/intel_color_regs.h
index 02033c882d7f..250ceffbd481 100644
--- a/drivers/gpu/drm/i915/display/intel_color_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_color_regs.h
@@ -30,7 +30,7 @@
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

