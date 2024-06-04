Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D098E8FB6FD
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2024 17:27:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 013F610E4ED;
	Tue,  4 Jun 2024 15:27:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ps/Q4mfX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9442D10E4E0
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2024 15:27:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717514834; x=1749050834;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZY4VDPN+3tuIeplaGAuDPMahtLpFebU94dhaFCfY+1o=;
 b=Ps/Q4mfXNFwrybfZkjM2oPXJ3C+7+xW3EzbClNWYK8TwnPUjdyZ9yTkW
 8JNp8gwT9lhkLYIe62ly65XcLFhNNKDM4L/tVMkqv7GBVEoJ/9Uad2iEA
 SAaWVfEyHEZioIKQBZU+qvQmPkFZiOv42BYfxaRfuutcDHdh0AGm8A8lB
 ZbYGQ7k8s+QzYG3grnpDztiUpNUggXOFwiLorOU8JDfmYum06XH9kQeZX
 mNj8lJZta5FunUYlT5pshjLxY7kxxGiAt9HwOoZoyBnVanjqDvXsE+zbn
 ZnZQCTszxCtXG4bjmi8cvNpO7w/fhTRV0tyAZlTFEo0DETnkTNqx6/YFA Q==;
X-CSE-ConnectionGUID: XKgqOl0gSXWAiEDNXlkZaA==
X-CSE-MsgGUID: COi3AUq+THuVPRLE4QPemg==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="14225533"
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="14225533"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:27:14 -0700
X-CSE-ConnectionGUID: jhWIwmJ/RQ+RC969laVBJA==
X-CSE-MsgGUID: HNp+qk+zTGK57d9k6d7ZiQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="37382310"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.123])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:27:13 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 09/65] drm/i915: pass dev_priv explicitly to BCLRPAT
Date: Tue,  4 Jun 2024 18:25:27 +0300
Message-Id: <f04d0313032d5820a14cc504af390b4b1006fae6.1717514638.git.jani.nikula@intel.com>
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
explicitly to the BCLRPAT register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_crt.c     | 10 ++++++----
 drivers/gpu/drm/i915/display/intel_display.c |  2 +-
 drivers/gpu/drm/i915/i915_reg.h              |  2 +-
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c  |  8 ++++----
 4 files changed, 12 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index 15569cf96c9c..2660c4a53e6f 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -193,7 +193,7 @@ static void intel_crt_set_dpms(struct intel_encoder *encoder,
 		adpa |= ADPA_PIPE_SEL(crtc->pipe);
 
 	if (!HAS_PCH_SPLIT(dev_priv))
-		intel_de_write(dev_priv, BCLRPAT(crtc->pipe), 0);
+		intel_de_write(dev_priv, BCLRPAT(dev_priv, crtc->pipe), 0);
 
 	switch (mode) {
 	case DRM_MODE_DPMS_ON:
@@ -707,7 +707,8 @@ intel_crt_load_detect(struct intel_crt *crt, enum pipe pipe)
 
 	drm_dbg_kms(&dev_priv->drm, "starting load-detect on CRT\n");
 
-	save_bclrpat = intel_de_read(dev_priv, BCLRPAT(cpu_transcoder));
+	save_bclrpat = intel_de_read(dev_priv,
+				     BCLRPAT(dev_priv, cpu_transcoder));
 	save_vtotal = intel_de_read(dev_priv,
 				    TRANS_VTOTAL(dev_priv, cpu_transcoder));
 	vblank = intel_de_read(dev_priv,
@@ -720,7 +721,7 @@ intel_crt_load_detect(struct intel_crt *crt, enum pipe pipe)
 	vblank_end = REG_FIELD_GET(VBLANK_END_MASK, vblank) + 1;
 
 	/* Set the border color to purple. */
-	intel_de_write(dev_priv, BCLRPAT(cpu_transcoder), 0x500050);
+	intel_de_write(dev_priv, BCLRPAT(dev_priv, cpu_transcoder), 0x500050);
 
 	if (DISPLAY_VER(dev_priv) != 2) {
 		u32 transconf = intel_de_read(dev_priv, TRANSCONF(cpu_transcoder));
@@ -800,7 +801,8 @@ intel_crt_load_detect(struct intel_crt *crt, enum pipe pipe)
 	}
 
 	/* Restore previous settings */
-	intel_de_write(dev_priv, BCLRPAT(cpu_transcoder), save_bclrpat);
+	intel_de_write(dev_priv, BCLRPAT(dev_priv, cpu_transcoder),
+		       save_bclrpat);
 
 	return status;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 776e4450e4af..49f7ac0f7997 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1870,7 +1870,7 @@ static void i9xx_pfit_enable(const struct intel_crtc_state *crtc_state)
 
 	/* Border color in case we don't scale up to the full screen. Black by
 	 * default, change to something else for debugging. */
-	intel_de_write(dev_priv, BCLRPAT(crtc->pipe), 0);
+	intel_de_write(dev_priv, BCLRPAT(dev_priv, crtc->pipe), 0);
 }
 
 /* Prefer intel_encoder_is_combo() */
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index c47aae3f70cd..92d9e8cdf782 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1223,7 +1223,7 @@
 #define TRANS_VTOTAL(dev_priv, trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_VTOTAL_A)
 #define TRANS_VBLANK(dev_priv, trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_VBLANK_A)
 #define TRANS_VSYNC(dev_priv, trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_VSYNC_A)
-#define BCLRPAT(trans)		_MMIO_TRANS2(dev_priv, (trans), _BCLRPAT_A)
+#define BCLRPAT(dev_priv, trans)		_MMIO_TRANS2(dev_priv, (trans), _BCLRPAT_A)
 #define TRANS_VSYNCSHIFT(trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_VSYNCSHIFT_A)
 #define PIPESRC(pipe)		_MMIO_TRANS2(dev_priv, (pipe), _PIPEASRC)
 #define TRANS_MULT(trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_MULT_A)
diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
index e618a16eafac..5e1ef52922cc 100644
--- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
+++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
@@ -237,7 +237,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(TRANS_VTOTAL(dev_priv, TRANSCODER_A));
 	MMIO_D(TRANS_VBLANK(dev_priv, TRANSCODER_A));
 	MMIO_D(TRANS_VSYNC(dev_priv, TRANSCODER_A));
-	MMIO_D(BCLRPAT(TRANSCODER_A));
+	MMIO_D(BCLRPAT(dev_priv, TRANSCODER_A));
 	MMIO_D(TRANS_VSYNCSHIFT(TRANSCODER_A));
 	MMIO_D(PIPESRC(TRANSCODER_A));
 	MMIO_D(TRANS_HTOTAL(dev_priv, TRANSCODER_B));
@@ -246,7 +246,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(TRANS_VTOTAL(dev_priv, TRANSCODER_B));
 	MMIO_D(TRANS_VBLANK(dev_priv, TRANSCODER_B));
 	MMIO_D(TRANS_VSYNC(dev_priv, TRANSCODER_B));
-	MMIO_D(BCLRPAT(TRANSCODER_B));
+	MMIO_D(BCLRPAT(dev_priv, TRANSCODER_B));
 	MMIO_D(TRANS_VSYNCSHIFT(TRANSCODER_B));
 	MMIO_D(PIPESRC(TRANSCODER_B));
 	MMIO_D(TRANS_HTOTAL(dev_priv, TRANSCODER_C));
@@ -255,7 +255,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(TRANS_VTOTAL(dev_priv, TRANSCODER_C));
 	MMIO_D(TRANS_VBLANK(dev_priv, TRANSCODER_C));
 	MMIO_D(TRANS_VSYNC(dev_priv, TRANSCODER_C));
-	MMIO_D(BCLRPAT(TRANSCODER_C));
+	MMIO_D(BCLRPAT(dev_priv, TRANSCODER_C));
 	MMIO_D(TRANS_VSYNCSHIFT(TRANSCODER_C));
 	MMIO_D(PIPESRC(TRANSCODER_C));
 	MMIO_D(TRANS_HTOTAL(dev_priv, TRANSCODER_EDP));
@@ -264,7 +264,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(TRANS_VTOTAL(dev_priv, TRANSCODER_EDP));
 	MMIO_D(TRANS_VBLANK(dev_priv, TRANSCODER_EDP));
 	MMIO_D(TRANS_VSYNC(dev_priv, TRANSCODER_EDP));
-	MMIO_D(BCLRPAT(TRANSCODER_EDP));
+	MMIO_D(BCLRPAT(dev_priv, TRANSCODER_EDP));
 	MMIO_D(TRANS_VSYNCSHIFT(TRANSCODER_EDP));
 	MMIO_D(PIPE_DATA_M1(TRANSCODER_A));
 	MMIO_D(PIPE_DATA_N1(TRANSCODER_A));
-- 
2.39.2

