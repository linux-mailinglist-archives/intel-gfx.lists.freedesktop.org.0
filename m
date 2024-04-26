Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 771D18B37EF
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Apr 2024 15:04:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C82981123A5;
	Fri, 26 Apr 2024 13:04:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LZKjiQRr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0239F1123AD;
 Fri, 26 Apr 2024 13:04:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714136689; x=1745672689;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KKlXM1JGMXwjKwzzLbA6wuE/jp7+yKZNAB/V4qggrUI=;
 b=LZKjiQRrfPCo/wdZoQyjFpBDlUFdOScUp1DzloRhasGpD2zafSxVcghN
 hiTj6T6r76HZ0aNh0YmrSVlcdsIdhqsPajRoNdm96+3itIESPV5svApg9
 BgEyQGy5cp4PKHBGKWOdr4WpgIe4l1t+q9GrK3o9E1rPkluvXoQAxCNb1
 2iOlH+q17WflhjvBx9XTy5oXzBMgIke2EnRhZQV70OQ2c/GvMHb+GbjB3
 VcHoWbX8PVmMVlqeEJB4VoeXpRmTb3qU6Uyr3A7m7EhDL97qCw/udH6hA
 EsYxTnruIbSQBiZ3pkjmWb8d2QacjNvtvlDcMIgjHN3Hc0wvPkqRRWIkN A==;
X-CSE-ConnectionGUID: Tc1ZfrYsQ6ak6l8Q3y0YkQ==
X-CSE-MsgGUID: oNcw54JtRnCyEp/iLIaT8Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11056"; a="32368305"
X-IronPort-AV: E=Sophos;i="6.07,232,1708416000"; d="scan'208";a="32368305"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2024 06:04:49 -0700
X-CSE-ConnectionGUID: Skj4VaYbS8mvoIKmw+7aZQ==
X-CSE-MsgGUID: YaRyLmVpTKyzFQbDw6voPA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,232,1708416000"; d="scan'208";a="62889636"
Received: from dgarbuz-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.48.145])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2024 06:04:48 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 016/123] drm/i915: pass dev_priv explicitly to TRANS_HBLANK
Date: Fri, 26 Apr 2024 16:01:41 +0300
Message-Id: <bcf7949c83ece58b125ee64efcc64477e426a287.1714136165.git.jani.nikula@intel.com>
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
explicitly to the TRANS_HBLANK register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c     | 7 ++++---
 drivers/gpu/drm/i915/display/intel_pch_display.c | 2 +-
 drivers/gpu/drm/i915/i915_reg.h                  | 2 +-
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c      | 8 ++++----
 4 files changed, 10 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index d84c5541f3ee..b9da3605b6aa 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2708,7 +2708,7 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
 	intel_de_write(dev_priv, TRANS_HTOTAL(dev_priv, cpu_transcoder),
 		       HACTIVE(adjusted_mode->crtc_hdisplay - 1) |
 		       HTOTAL(adjusted_mode->crtc_htotal - 1));
-	intel_de_write(dev_priv, TRANS_HBLANK(cpu_transcoder),
+	intel_de_write(dev_priv, TRANS_HBLANK(dev_priv, cpu_transcoder),
 		       HBLANK_START(adjusted_mode->crtc_hblank_start - 1) |
 		       HBLANK_END(adjusted_mode->crtc_hblank_end - 1));
 	intel_de_write(dev_priv, TRANS_HSYNC(cpu_transcoder),
@@ -2811,7 +2811,8 @@ static void intel_get_transcoder_timings(struct intel_crtc *crtc,
 	adjusted_mode->crtc_htotal = REG_FIELD_GET(HTOTAL_MASK, tmp) + 1;
 
 	if (!transcoder_is_dsi(cpu_transcoder)) {
-		tmp = intel_de_read(dev_priv, TRANS_HBLANK(cpu_transcoder));
+		tmp = intel_de_read(dev_priv,
+				    TRANS_HBLANK(dev_priv, cpu_transcoder));
 		adjusted_mode->crtc_hblank_start = REG_FIELD_GET(HBLANK_START_MASK, tmp) + 1;
 		adjusted_mode->crtc_hblank_end = REG_FIELD_GET(HBLANK_END_MASK, tmp) + 1;
 	}
@@ -8164,7 +8165,7 @@ void i830_enable_pipe(struct drm_i915_private *dev_priv, enum pipe pipe)
 
 	intel_de_write(dev_priv, TRANS_HTOTAL(dev_priv, cpu_transcoder),
 		       HACTIVE(640 - 1) | HTOTAL(800 - 1));
-	intel_de_write(dev_priv, TRANS_HBLANK(cpu_transcoder),
+	intel_de_write(dev_priv, TRANS_HBLANK(dev_priv, cpu_transcoder),
 		       HBLANK_START(640 - 1) | HBLANK_END(800 - 1));
 	intel_de_write(dev_priv, TRANS_HSYNC(cpu_transcoder),
 		       HSYNC_START(656 - 1) | HSYNC_END(752 - 1));
diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.c b/drivers/gpu/drm/i915/display/intel_pch_display.c
index 2bf00d5336e3..625b1fedd54c 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_display.c
+++ b/drivers/gpu/drm/i915/display/intel_pch_display.c
@@ -226,7 +226,7 @@ static void ilk_pch_transcoder_set_timings(const struct intel_crtc_state *crtc_s
 	intel_de_write(dev_priv, PCH_TRANS_HTOTAL(pch_transcoder),
 		       intel_de_read(dev_priv, TRANS_HTOTAL(dev_priv, cpu_transcoder)));
 	intel_de_write(dev_priv, PCH_TRANS_HBLANK(pch_transcoder),
-		       intel_de_read(dev_priv, TRANS_HBLANK(cpu_transcoder)));
+		       intel_de_read(dev_priv, TRANS_HBLANK(dev_priv, cpu_transcoder)));
 	intel_de_write(dev_priv, PCH_TRANS_HSYNC(pch_transcoder),
 		       intel_de_read(dev_priv, TRANS_HSYNC(cpu_transcoder)));
 
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 3ab39bbd1d2d..f5ddcb6d9127 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1730,7 +1730,7 @@
 #define _TRANS_VSYNCSHIFT_DSI1	0x6b828
 
 #define TRANS_HTOTAL(dev_priv, trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_HTOTAL_A)
-#define TRANS_HBLANK(trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_HBLANK_A)
+#define TRANS_HBLANK(dev_priv, trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_HBLANK_A)
 #define TRANS_HSYNC(trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_HSYNC_A)
 #define TRANS_VTOTAL(trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_VTOTAL_A)
 #define TRANS_VBLANK(trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_VBLANK_A)
diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
index 09db1d7a777d..7243b36b2a4e 100644
--- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
+++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
@@ -227,7 +227,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(SPRSURFLIVE(PIPE_C));
 	MMIO_D(REG_50080(PIPE_C, PLANE_SPRITE0));
 	MMIO_D(TRANS_HTOTAL(dev_priv, TRANSCODER_A));
-	MMIO_D(TRANS_HBLANK(TRANSCODER_A));
+	MMIO_D(TRANS_HBLANK(dev_priv, TRANSCODER_A));
 	MMIO_D(TRANS_HSYNC(TRANSCODER_A));
 	MMIO_D(TRANS_VTOTAL(TRANSCODER_A));
 	MMIO_D(TRANS_VBLANK(TRANSCODER_A));
@@ -236,7 +236,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(TRANS_VSYNCSHIFT(TRANSCODER_A));
 	MMIO_D(PIPESRC(TRANSCODER_A));
 	MMIO_D(TRANS_HTOTAL(dev_priv, TRANSCODER_B));
-	MMIO_D(TRANS_HBLANK(TRANSCODER_B));
+	MMIO_D(TRANS_HBLANK(dev_priv, TRANSCODER_B));
 	MMIO_D(TRANS_HSYNC(TRANSCODER_B));
 	MMIO_D(TRANS_VTOTAL(TRANSCODER_B));
 	MMIO_D(TRANS_VBLANK(TRANSCODER_B));
@@ -245,7 +245,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(TRANS_VSYNCSHIFT(TRANSCODER_B));
 	MMIO_D(PIPESRC(TRANSCODER_B));
 	MMIO_D(TRANS_HTOTAL(dev_priv, TRANSCODER_C));
-	MMIO_D(TRANS_HBLANK(TRANSCODER_C));
+	MMIO_D(TRANS_HBLANK(dev_priv, TRANSCODER_C));
 	MMIO_D(TRANS_HSYNC(TRANSCODER_C));
 	MMIO_D(TRANS_VTOTAL(TRANSCODER_C));
 	MMIO_D(TRANS_VBLANK(TRANSCODER_C));
@@ -254,7 +254,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(TRANS_VSYNCSHIFT(TRANSCODER_C));
 	MMIO_D(PIPESRC(TRANSCODER_C));
 	MMIO_D(TRANS_HTOTAL(dev_priv, TRANSCODER_EDP));
-	MMIO_D(TRANS_HBLANK(TRANSCODER_EDP));
+	MMIO_D(TRANS_HBLANK(dev_priv, TRANSCODER_EDP));
 	MMIO_D(TRANS_HSYNC(TRANSCODER_EDP));
 	MMIO_D(TRANS_VTOTAL(TRANSCODER_EDP));
 	MMIO_D(TRANS_VBLANK(TRANSCODER_EDP));
-- 
2.39.2

