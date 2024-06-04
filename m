Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2C768FB6F8
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2024 17:27:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A53410E4BB;
	Tue,  4 Jun 2024 15:27:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="b3jax7pd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C030C10E4CE
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2024 15:26:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717514809; x=1749050809;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=L9A58QRh5kZKnFQDqkYvtDmNilIaYDTBf9K7Afmjh/M=;
 b=b3jax7pdtQb3mRAe6BkBYCX3NywihKnzt03qUR725x7xFBLsCQBpuJTv
 nf/XzyMh93cDS9wsajeUk0qp0f2pAVXO02S1lUIVTueRCwkTAM/ZAAXln
 ezeEH04Dt1SG9/5dwa11C1I2iv0vD3oI7StjItLBatCqJTWDplNCwzrFF
 Yi9kfeSuFYHl+doV42ECjVgwFa1KoEiSXF6bzGtL+e5Vpb81DILUyEN0T
 khdw33aZziwGKwLAqQS9bxHo/JTPlCM/eppZ2MIapmNMDCylTov7WnEFR
 J8seaBZol1twyDUIpPXc+mo6O6xvW2564qoVS+cg4zENfGv6M/SwQ+Z3n w==;
X-CSE-ConnectionGUID: 9Bb424vuQ3iDatAoVMhfPw==
X-CSE-MsgGUID: OnDTtMZbTyS28ehjzYId/A==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="13949233"
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="13949233"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:26:48 -0700
X-CSE-ConnectionGUID: Al8ELjFNQimbNmckCej+Lg==
X-CSE-MsgGUID: E5wjqTE1R0W1sNQ962EohQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="60464463"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.123])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:26:47 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 04/65] drm/i915: pass dev_priv explicitly to TRANS_HBLANK
Date: Tue,  4 Jun 2024 18:25:22 +0300
Message-Id: <19d3d11d522be1787db89bdc254ae826ca4fb50a.1717514638.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1717514638.git.jani.nikula@intel.com>
References: <cover.1717514638.git.jani.nikula@intel.com>
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
index 481e076b17e6..997418fb7310 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2713,7 +2713,7 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
 	intel_de_write(dev_priv, TRANS_HTOTAL(dev_priv, cpu_transcoder),
 		       HACTIVE(adjusted_mode->crtc_hdisplay - 1) |
 		       HTOTAL(adjusted_mode->crtc_htotal - 1));
-	intel_de_write(dev_priv, TRANS_HBLANK(cpu_transcoder),
+	intel_de_write(dev_priv, TRANS_HBLANK(dev_priv, cpu_transcoder),
 		       HBLANK_START(adjusted_mode->crtc_hblank_start - 1) |
 		       HBLANK_END(adjusted_mode->crtc_hblank_end - 1));
 	intel_de_write(dev_priv, TRANS_HSYNC(cpu_transcoder),
@@ -2816,7 +2816,8 @@ static void intel_get_transcoder_timings(struct intel_crtc *crtc,
 	adjusted_mode->crtc_htotal = REG_FIELD_GET(HTOTAL_MASK, tmp) + 1;
 
 	if (!transcoder_is_dsi(cpu_transcoder)) {
-		tmp = intel_de_read(dev_priv, TRANS_HBLANK(cpu_transcoder));
+		tmp = intel_de_read(dev_priv,
+				    TRANS_HBLANK(dev_priv, cpu_transcoder));
 		adjusted_mode->crtc_hblank_start = REG_FIELD_GET(HBLANK_START_MASK, tmp) + 1;
 		adjusted_mode->crtc_hblank_end = REG_FIELD_GET(HBLANK_END_MASK, tmp) + 1;
 	}
@@ -8191,7 +8192,7 @@ void i830_enable_pipe(struct drm_i915_private *dev_priv, enum pipe pipe)
 
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
index 8398826e9c2d..66e652119a7e 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1218,7 +1218,7 @@
 #define _TRANS_VSYNCSHIFT_DSI1	0x6b828
 
 #define TRANS_HTOTAL(dev_priv, trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_HTOTAL_A)
-#define TRANS_HBLANK(trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_HBLANK_A)
+#define TRANS_HBLANK(dev_priv, trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_HBLANK_A)
 #define TRANS_HSYNC(trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_HSYNC_A)
 #define TRANS_VTOTAL(trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_VTOTAL_A)
 #define TRANS_VBLANK(trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_VBLANK_A)
diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
index 2bc90909d980..47681fa69020 100644
--- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
+++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
@@ -232,7 +232,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(SPRSURFLIVE(PIPE_C));
 	MMIO_D(REG_50080(PIPE_C, PLANE_SPRITE0));
 	MMIO_D(TRANS_HTOTAL(dev_priv, TRANSCODER_A));
-	MMIO_D(TRANS_HBLANK(TRANSCODER_A));
+	MMIO_D(TRANS_HBLANK(dev_priv, TRANSCODER_A));
 	MMIO_D(TRANS_HSYNC(TRANSCODER_A));
 	MMIO_D(TRANS_VTOTAL(TRANSCODER_A));
 	MMIO_D(TRANS_VBLANK(TRANSCODER_A));
@@ -241,7 +241,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(TRANS_VSYNCSHIFT(TRANSCODER_A));
 	MMIO_D(PIPESRC(TRANSCODER_A));
 	MMIO_D(TRANS_HTOTAL(dev_priv, TRANSCODER_B));
-	MMIO_D(TRANS_HBLANK(TRANSCODER_B));
+	MMIO_D(TRANS_HBLANK(dev_priv, TRANSCODER_B));
 	MMIO_D(TRANS_HSYNC(TRANSCODER_B));
 	MMIO_D(TRANS_VTOTAL(TRANSCODER_B));
 	MMIO_D(TRANS_VBLANK(TRANSCODER_B));
@@ -250,7 +250,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(TRANS_VSYNCSHIFT(TRANSCODER_B));
 	MMIO_D(PIPESRC(TRANSCODER_B));
 	MMIO_D(TRANS_HTOTAL(dev_priv, TRANSCODER_C));
-	MMIO_D(TRANS_HBLANK(TRANSCODER_C));
+	MMIO_D(TRANS_HBLANK(dev_priv, TRANSCODER_C));
 	MMIO_D(TRANS_HSYNC(TRANSCODER_C));
 	MMIO_D(TRANS_VTOTAL(TRANSCODER_C));
 	MMIO_D(TRANS_VBLANK(TRANSCODER_C));
@@ -259,7 +259,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
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

