Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE4C28B37F0
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Apr 2024 15:04:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49BA81123AA;
	Fri, 26 Apr 2024 13:04:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lUaofKAr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A160E1123AA;
 Fri, 26 Apr 2024 13:04:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714136694; x=1745672694;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VDc4V37xq/u+/K5BJ1NXhuqvncOaG3as94YDBcsKUiM=;
 b=lUaofKArFWyOg8fkb9Qib7J+ZX1fJNGBEErZAgKlLxkZCN1/vBE/P1S2
 LSO51FzbQ554aZRbW0FER0+aAShKYUmw6jjtfqjX4mKED97P7vkoTYmea
 xp6Y9TJEqx2KLKJwCHRJPQA7Gwbo2OCBZUzSkbFkKsNh/eQ+ddEIw3w3N
 /G5/+MaXNQYZd31UnJc7RH+fry/vLwU8zSbYJuM1jP7s/jOqeFRNi1DD0
 kZa1QTYLVl8/0hIGqA4DH9R8zkwqZ8CgdIrw8jydEQRkAxXLyTkF4fusf
 8Yzh/3rOsUE8Uf+zu3K5MGw5I+xOGVUtiQTRyAOGOxX0M4vNAXM9vERrr Q==;
X-CSE-ConnectionGUID: T+6miKiARtaHhmMldlC2pg==
X-CSE-MsgGUID: IHbJp7GCSn6QlPuVDJI0JQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11056"; a="9991765"
X-IronPort-AV: E=Sophos;i="6.07,232,1708416000"; 
   d="scan'208";a="9991765"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2024 06:04:54 -0700
X-CSE-ConnectionGUID: 9u6/9p3BSKCqtNKthadjOw==
X-CSE-MsgGUID: lesG9cyhRBWbWIc2HLk7Qw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,232,1708416000"; d="scan'208";a="25297408"
Received: from dgarbuz-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.48.145])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2024 06:04:53 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 017/123] drm/i915: pass dev_priv explicitly to TRANS_HSYNC
Date: Fri, 26 Apr 2024 16:01:42 +0300
Message-Id: <84e1268646def31277b98ef49f4eb90dfcd0bccf.1714136165.git.jani.nikula@intel.com>
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
explicitly to the TRANS_HSYNC register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c           | 3 ++-
 drivers/gpu/drm/i915/display/intel_display.c     | 6 +++---
 drivers/gpu/drm/i915/display/intel_pch_display.c | 2 +-
 drivers/gpu/drm/i915/i915_reg.h                  | 2 +-
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c      | 8 ++++----
 5 files changed, 11 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index af0d3159369e..f87a2170ac91 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -938,7 +938,8 @@ gen11_dsi_set_transcoder_timings(struct intel_encoder *encoder,
 
 		for_each_dsi_port(port, intel_dsi->ports) {
 			dsi_trans = dsi_port_to_transcoder(port);
-			intel_de_write(dev_priv, TRANS_HSYNC(dsi_trans),
+			intel_de_write(dev_priv,
+				       TRANS_HSYNC(dev_priv, dsi_trans),
 				       HSYNC_START(hsync_start - 1) | HSYNC_END(hsync_end - 1));
 		}
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index b9da3605b6aa..49c63b8855b3 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2711,7 +2711,7 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
 	intel_de_write(dev_priv, TRANS_HBLANK(dev_priv, cpu_transcoder),
 		       HBLANK_START(adjusted_mode->crtc_hblank_start - 1) |
 		       HBLANK_END(adjusted_mode->crtc_hblank_end - 1));
-	intel_de_write(dev_priv, TRANS_HSYNC(cpu_transcoder),
+	intel_de_write(dev_priv, TRANS_HSYNC(dev_priv, cpu_transcoder),
 		       HSYNC_START(adjusted_mode->crtc_hsync_start - 1) |
 		       HSYNC_END(adjusted_mode->crtc_hsync_end - 1));
 
@@ -2817,7 +2817,7 @@ static void intel_get_transcoder_timings(struct intel_crtc *crtc,
 		adjusted_mode->crtc_hblank_end = REG_FIELD_GET(HBLANK_END_MASK, tmp) + 1;
 	}
 
-	tmp = intel_de_read(dev_priv, TRANS_HSYNC(cpu_transcoder));
+	tmp = intel_de_read(dev_priv, TRANS_HSYNC(dev_priv, cpu_transcoder));
 	adjusted_mode->crtc_hsync_start = REG_FIELD_GET(HSYNC_START_MASK, tmp) + 1;
 	adjusted_mode->crtc_hsync_end = REG_FIELD_GET(HSYNC_END_MASK, tmp) + 1;
 
@@ -8167,7 +8167,7 @@ void i830_enable_pipe(struct drm_i915_private *dev_priv, enum pipe pipe)
 		       HACTIVE(640 - 1) | HTOTAL(800 - 1));
 	intel_de_write(dev_priv, TRANS_HBLANK(dev_priv, cpu_transcoder),
 		       HBLANK_START(640 - 1) | HBLANK_END(800 - 1));
-	intel_de_write(dev_priv, TRANS_HSYNC(cpu_transcoder),
+	intel_de_write(dev_priv, TRANS_HSYNC(dev_priv, cpu_transcoder),
 		       HSYNC_START(656 - 1) | HSYNC_END(752 - 1));
 	intel_de_write(dev_priv, TRANS_VTOTAL(cpu_transcoder),
 		       VACTIVE(480 - 1) | VTOTAL(525 - 1));
diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.c b/drivers/gpu/drm/i915/display/intel_pch_display.c
index 625b1fedd54c..480c0e09434d 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_display.c
+++ b/drivers/gpu/drm/i915/display/intel_pch_display.c
@@ -228,7 +228,7 @@ static void ilk_pch_transcoder_set_timings(const struct intel_crtc_state *crtc_s
 	intel_de_write(dev_priv, PCH_TRANS_HBLANK(pch_transcoder),
 		       intel_de_read(dev_priv, TRANS_HBLANK(dev_priv, cpu_transcoder)));
 	intel_de_write(dev_priv, PCH_TRANS_HSYNC(pch_transcoder),
-		       intel_de_read(dev_priv, TRANS_HSYNC(cpu_transcoder)));
+		       intel_de_read(dev_priv, TRANS_HSYNC(dev_priv, cpu_transcoder)));
 
 	intel_de_write(dev_priv, PCH_TRANS_VTOTAL(pch_transcoder),
 		       intel_de_read(dev_priv, TRANS_VTOTAL(cpu_transcoder)));
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index f5ddcb6d9127..57a195c5b698 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1731,7 +1731,7 @@
 
 #define TRANS_HTOTAL(dev_priv, trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_HTOTAL_A)
 #define TRANS_HBLANK(dev_priv, trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_HBLANK_A)
-#define TRANS_HSYNC(trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_HSYNC_A)
+#define TRANS_HSYNC(dev_priv, trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_HSYNC_A)
 #define TRANS_VTOTAL(trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_VTOTAL_A)
 #define TRANS_VBLANK(trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_VBLANK_A)
 #define TRANS_VSYNC(trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_VSYNC_A)
diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
index 7243b36b2a4e..8c614543b79f 100644
--- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
+++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
@@ -228,7 +228,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(REG_50080(PIPE_C, PLANE_SPRITE0));
 	MMIO_D(TRANS_HTOTAL(dev_priv, TRANSCODER_A));
 	MMIO_D(TRANS_HBLANK(dev_priv, TRANSCODER_A));
-	MMIO_D(TRANS_HSYNC(TRANSCODER_A));
+	MMIO_D(TRANS_HSYNC(dev_priv, TRANSCODER_A));
 	MMIO_D(TRANS_VTOTAL(TRANSCODER_A));
 	MMIO_D(TRANS_VBLANK(TRANSCODER_A));
 	MMIO_D(TRANS_VSYNC(TRANSCODER_A));
@@ -237,7 +237,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(PIPESRC(TRANSCODER_A));
 	MMIO_D(TRANS_HTOTAL(dev_priv, TRANSCODER_B));
 	MMIO_D(TRANS_HBLANK(dev_priv, TRANSCODER_B));
-	MMIO_D(TRANS_HSYNC(TRANSCODER_B));
+	MMIO_D(TRANS_HSYNC(dev_priv, TRANSCODER_B));
 	MMIO_D(TRANS_VTOTAL(TRANSCODER_B));
 	MMIO_D(TRANS_VBLANK(TRANSCODER_B));
 	MMIO_D(TRANS_VSYNC(TRANSCODER_B));
@@ -246,7 +246,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(PIPESRC(TRANSCODER_B));
 	MMIO_D(TRANS_HTOTAL(dev_priv, TRANSCODER_C));
 	MMIO_D(TRANS_HBLANK(dev_priv, TRANSCODER_C));
-	MMIO_D(TRANS_HSYNC(TRANSCODER_C));
+	MMIO_D(TRANS_HSYNC(dev_priv, TRANSCODER_C));
 	MMIO_D(TRANS_VTOTAL(TRANSCODER_C));
 	MMIO_D(TRANS_VBLANK(TRANSCODER_C));
 	MMIO_D(TRANS_VSYNC(TRANSCODER_C));
@@ -255,7 +255,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(PIPESRC(TRANSCODER_C));
 	MMIO_D(TRANS_HTOTAL(dev_priv, TRANSCODER_EDP));
 	MMIO_D(TRANS_HBLANK(dev_priv, TRANSCODER_EDP));
-	MMIO_D(TRANS_HSYNC(TRANSCODER_EDP));
+	MMIO_D(TRANS_HSYNC(dev_priv, TRANSCODER_EDP));
 	MMIO_D(TRANS_VTOTAL(TRANSCODER_EDP));
 	MMIO_D(TRANS_VBLANK(TRANSCODER_EDP));
 	MMIO_D(TRANS_VSYNC(TRANSCODER_EDP));
-- 
2.39.2

