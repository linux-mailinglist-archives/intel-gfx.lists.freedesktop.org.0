Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C7D08FB700
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2024 17:27:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AAA0710E4E0;
	Tue,  4 Jun 2024 15:27:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gRpTAlog";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20D6610E4FE
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2024 15:27:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717514839; x=1749050839;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=l18xkIRbcXa6F4aIUA4eiFxD9TBrZMD8r7eFl4nmFc8=;
 b=gRpTAlogO3++W1jM5GvpUfQ8kiQIn2IjV+Z1hrddUpL4wkTk+ypBa79X
 FccQ9WAp6+xfnwJ19iHfM7VYXmJW2nPjKWQESx3EHHUOnNMXASU8ofmln
 hTxdYajB5WyC6bf8fiOs+H+9c6XNHLMaWL0iNnTNdhUS9ZARe96Z31k/E
 5tk14yq9PCET/wnmmZ+HPlVo2H4Pludz19P9Bfb5FbVTL6N7kQKGg6V3L
 tzOLHoXYtOTBG+AOfuTxvRkBPMrQ+GKb45LkzJCaTzIknOZ5iTJJ8b1Fk
 YIe4jtc9tutijrAc4BQ9Cygmkbu7raBfEM+p4lMakJ/cG95TJ+gZpMH9u A==;
X-CSE-ConnectionGUID: CLgnUcurRJ+gRVmUObDuCg==
X-CSE-MsgGUID: GJDJJeG1SsaBYKmm0Kit9w==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="14225542"
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="14225542"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:27:19 -0700
X-CSE-ConnectionGUID: Qqr6B4DQQ5OefrMit1fbLQ==
X-CSE-MsgGUID: KBF8mPcdST+6zVrpEZtkjw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="37382328"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.123])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:27:17 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 10/65] drm/i915: pass dev_priv explicitly to TRANS_VSYNCSHIFT
Date: Tue,  4 Jun 2024 18:25:28 +0300
Message-Id: <8103a31fbf6da725e6aed3bb86c15bbd581164fb.1717514638.git.jani.nikula@intel.com>
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
explicitly to the TRANS_VSYNCSHIFT register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c           | 3 ++-
 drivers/gpu/drm/i915/display/intel_display.c     | 3 ++-
 drivers/gpu/drm/i915/display/intel_pch_display.c | 2 +-
 drivers/gpu/drm/i915/i915_reg.h                  | 2 +-
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c      | 8 ++++----
 5 files changed, 10 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index b267099fde8a..0625c4d5ee0b 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -982,7 +982,8 @@ gen11_dsi_set_transcoder_timings(struct intel_encoder *encoder,
 	if (is_vid_mode(intel_dsi)) {
 		for_each_dsi_port(port, intel_dsi->ports) {
 			dsi_trans = dsi_port_to_transcoder(port);
-			intel_de_write(dev_priv, TRANS_VSYNCSHIFT(dsi_trans),
+			intel_de_write(dev_priv,
+				       TRANS_VSYNCSHIFT(dev_priv, dsi_trans),
 				       vsync_shift);
 		}
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 49f7ac0f7997..993eb0935f6b 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2707,7 +2707,8 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
 	}
 
 	if (DISPLAY_VER(dev_priv) >= 4)
-		intel_de_write(dev_priv, TRANS_VSYNCSHIFT(cpu_transcoder),
+		intel_de_write(dev_priv,
+			       TRANS_VSYNCSHIFT(dev_priv, cpu_transcoder),
 			       vsyncshift);
 
 	intel_de_write(dev_priv, TRANS_HTOTAL(dev_priv, cpu_transcoder),
diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.c b/drivers/gpu/drm/i915/display/intel_pch_display.c
index 9f8269705171..6a45bc1651c3 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_display.c
+++ b/drivers/gpu/drm/i915/display/intel_pch_display.c
@@ -237,7 +237,7 @@ static void ilk_pch_transcoder_set_timings(const struct intel_crtc_state *crtc_s
 	intel_de_write(dev_priv, PCH_TRANS_VSYNC(pch_transcoder),
 		       intel_de_read(dev_priv, TRANS_VSYNC(dev_priv, cpu_transcoder)));
 	intel_de_write(dev_priv, PCH_TRANS_VSYNCSHIFT(pch_transcoder),
-		       intel_de_read(dev_priv, TRANS_VSYNCSHIFT(cpu_transcoder)));
+		       intel_de_read(dev_priv, TRANS_VSYNCSHIFT(dev_priv, cpu_transcoder)));
 }
 
 static void ilk_enable_pch_transcoder(const struct intel_crtc_state *crtc_state)
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 92d9e8cdf782..d961f3f70aaa 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1224,7 +1224,7 @@
 #define TRANS_VBLANK(dev_priv, trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_VBLANK_A)
 #define TRANS_VSYNC(dev_priv, trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_VSYNC_A)
 #define BCLRPAT(dev_priv, trans)		_MMIO_TRANS2(dev_priv, (trans), _BCLRPAT_A)
-#define TRANS_VSYNCSHIFT(trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_VSYNCSHIFT_A)
+#define TRANS_VSYNCSHIFT(dev_priv, trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_VSYNCSHIFT_A)
 #define PIPESRC(pipe)		_MMIO_TRANS2(dev_priv, (pipe), _PIPEASRC)
 #define TRANS_MULT(trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_MULT_A)
 
diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
index 5e1ef52922cc..5abae7df0bfe 100644
--- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
+++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
@@ -238,7 +238,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(TRANS_VBLANK(dev_priv, TRANSCODER_A));
 	MMIO_D(TRANS_VSYNC(dev_priv, TRANSCODER_A));
 	MMIO_D(BCLRPAT(dev_priv, TRANSCODER_A));
-	MMIO_D(TRANS_VSYNCSHIFT(TRANSCODER_A));
+	MMIO_D(TRANS_VSYNCSHIFT(dev_priv, TRANSCODER_A));
 	MMIO_D(PIPESRC(TRANSCODER_A));
 	MMIO_D(TRANS_HTOTAL(dev_priv, TRANSCODER_B));
 	MMIO_D(TRANS_HBLANK(dev_priv, TRANSCODER_B));
@@ -247,7 +247,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(TRANS_VBLANK(dev_priv, TRANSCODER_B));
 	MMIO_D(TRANS_VSYNC(dev_priv, TRANSCODER_B));
 	MMIO_D(BCLRPAT(dev_priv, TRANSCODER_B));
-	MMIO_D(TRANS_VSYNCSHIFT(TRANSCODER_B));
+	MMIO_D(TRANS_VSYNCSHIFT(dev_priv, TRANSCODER_B));
 	MMIO_D(PIPESRC(TRANSCODER_B));
 	MMIO_D(TRANS_HTOTAL(dev_priv, TRANSCODER_C));
 	MMIO_D(TRANS_HBLANK(dev_priv, TRANSCODER_C));
@@ -256,7 +256,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(TRANS_VBLANK(dev_priv, TRANSCODER_C));
 	MMIO_D(TRANS_VSYNC(dev_priv, TRANSCODER_C));
 	MMIO_D(BCLRPAT(dev_priv, TRANSCODER_C));
-	MMIO_D(TRANS_VSYNCSHIFT(TRANSCODER_C));
+	MMIO_D(TRANS_VSYNCSHIFT(dev_priv, TRANSCODER_C));
 	MMIO_D(PIPESRC(TRANSCODER_C));
 	MMIO_D(TRANS_HTOTAL(dev_priv, TRANSCODER_EDP));
 	MMIO_D(TRANS_HBLANK(dev_priv, TRANSCODER_EDP));
@@ -265,7 +265,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(TRANS_VBLANK(dev_priv, TRANSCODER_EDP));
 	MMIO_D(TRANS_VSYNC(dev_priv, TRANSCODER_EDP));
 	MMIO_D(BCLRPAT(dev_priv, TRANSCODER_EDP));
-	MMIO_D(TRANS_VSYNCSHIFT(TRANSCODER_EDP));
+	MMIO_D(TRANS_VSYNCSHIFT(dev_priv, TRANSCODER_EDP));
 	MMIO_D(PIPE_DATA_M1(TRANSCODER_A));
 	MMIO_D(PIPE_DATA_N1(TRANSCODER_A));
 	MMIO_D(PIPE_DATA_M2(TRANSCODER_A));
-- 
2.39.2

