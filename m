Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AF0B8FB74B
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2024 17:31:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94C9310E510;
	Tue,  4 Jun 2024 15:31:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="M9RNd99b";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 183F910E511
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2024 15:31:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717515064; x=1749051064;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1XOB3eKjdH6eHD3oeDpK1Fxxuzm40CdOem0h5ZyE8Lc=;
 b=M9RNd99bKttX3IY6qvsNF+VfoqFT2kMuwib4LC2X9gTy+o7X6q5NP/up
 yirha4bZeQeRLiuc+RcDRFXO0onikPOAXtLSLR7StF/hCD5EnfvScskaS
 w0nz2OAKJi9aRthxAHNA8RxHJoUl38XKuqJl822/Lw3SACyRb9AxvCLHP
 CrmK0YlOx3SdtoC427sU/RxD+XbGxVWNrKIuNmYoBG+HL+LV4aJM1dnG6
 GW/CxVFe7uVyz3slojMVl8UHjwn5Q0xrvuIfdjAoRAbJm4hyo5vss1cpi
 bduSOJVsOm3NOTTvJwponBkNdGBh0N+bM01scS6k0JiICCNx5aq+i5uW7 w==;
X-CSE-ConnectionGUID: 3HHMuUfJS3e2aj+XVXmmcQ==
X-CSE-MsgGUID: 42IBCZc5QJWoyQDt2dIC/w==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="13821943"
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="13821943"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:30:46 -0700
X-CSE-ConnectionGUID: yNick/BzRTSGL13MYIsFNQ==
X-CSE-MsgGUID: 6vmCnqNGRF+dIQYhI9Y8NQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="37859419"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.123])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:30:45 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 54/65] drm/i915: pass dev_priv explicitly to PIPE_LINK_M1
Date: Tue,  4 Jun 2024 18:26:12 +0300
Message-Id: <bf25d447d98009f56f2c5b2205719ab2d9a70c93.1717514638.git.jani.nikula@intel.com>
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
explicitly to the PIPE_LINK_M1 register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 6 ++++--
 drivers/gpu/drm/i915/gvt/display.c           | 4 ++--
 drivers/gpu/drm/i915/gvt/handlers.c          | 2 +-
 drivers/gpu/drm/i915/i915_reg.h              | 2 +-
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c  | 8 ++++----
 5 files changed, 12 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 7bf5b2559143..a3249d782a8b 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2643,7 +2643,8 @@ void intel_cpu_transcoder_set_m1_n1(struct intel_crtc *crtc,
 		intel_set_m_n(dev_priv, m_n,
 			      PIPE_DATA_M1(dev_priv, transcoder),
 			      PIPE_DATA_N1(dev_priv, transcoder),
-			      PIPE_LINK_M1(transcoder), PIPE_LINK_N1(transcoder));
+			      PIPE_LINK_M1(dev_priv, transcoder),
+			      PIPE_LINK_N1(transcoder));
 	else
 		intel_set_m_n(dev_priv, m_n,
 			      PIPE_DATA_M_G4X(pipe), PIPE_DATA_N_G4X(pipe),
@@ -3341,7 +3342,8 @@ void intel_cpu_transcoder_get_m1_n1(struct intel_crtc *crtc,
 		intel_get_m_n(dev_priv, m_n,
 			      PIPE_DATA_M1(dev_priv, transcoder),
 			      PIPE_DATA_N1(dev_priv, transcoder),
-			      PIPE_LINK_M1(transcoder), PIPE_LINK_N1(transcoder));
+			      PIPE_LINK_M1(dev_priv, transcoder),
+			      PIPE_LINK_N1(transcoder));
 	else
 		intel_get_m_n(dev_priv, m_n,
 			      PIPE_DATA_M_G4X(pipe), PIPE_DATA_N_G4X(pipe),
diff --git a/drivers/gpu/drm/i915/gvt/display.c b/drivers/gpu/drm/i915/gvt/display.c
index 5f3ee57b5982..eea956603cc8 100644
--- a/drivers/gpu/drm/i915/gvt/display.c
+++ b/drivers/gpu/drm/i915/gvt/display.c
@@ -264,7 +264,7 @@ static void emulate_monitor_status_change(struct intel_vgpu *vgpu)
 		vgpu_vreg_t(vgpu, PIPE_DATA_M1(dev_priv, TRANSCODER_A)) = TU_SIZE(64);
 		vgpu_vreg_t(vgpu, PIPE_DATA_M1(dev_priv, TRANSCODER_A)) |= 0x5b425e;
 		vgpu_vreg_t(vgpu, PIPE_DATA_N1(dev_priv, TRANSCODER_A)) = 0x800000;
-		vgpu_vreg_t(vgpu, PIPE_LINK_M1(TRANSCODER_A)) = 0x3cd6e;
+		vgpu_vreg_t(vgpu, PIPE_LINK_M1(dev_priv, TRANSCODER_A)) = 0x3cd6e;
 		vgpu_vreg_t(vgpu, PIPE_LINK_N1(TRANSCODER_A)) = 0x80000;
 
 		/* Enable per-DDI/PORT vreg */
@@ -398,7 +398,7 @@ static void emulate_monitor_status_change(struct intel_vgpu *vgpu)
 		vgpu_vreg_t(vgpu, PIPE_DATA_M1(dev_priv, TRANSCODER_A)) = TU_SIZE(64);
 		vgpu_vreg_t(vgpu, PIPE_DATA_M1(dev_priv, TRANSCODER_A)) |= 0x5b425e;
 		vgpu_vreg_t(vgpu, PIPE_DATA_N1(dev_priv, TRANSCODER_A)) = 0x800000;
-		vgpu_vreg_t(vgpu, PIPE_LINK_M1(TRANSCODER_A)) = 0x3cd6e;
+		vgpu_vreg_t(vgpu, PIPE_LINK_M1(dev_priv, TRANSCODER_A)) = 0x3cd6e;
 		vgpu_vreg_t(vgpu, PIPE_LINK_N1(TRANSCODER_A)) = 0x80000;
 	}
 
diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/gvt/handlers.c
index 88ef8b7b9ab4..ae5a3e2a5c50 100644
--- a/drivers/gpu/drm/i915/gvt/handlers.c
+++ b/drivers/gpu/drm/i915/gvt/handlers.c
@@ -673,7 +673,7 @@ static void vgpu_update_refresh_rate(struct intel_vgpu *vgpu)
 		dp_br = skl_vgpu_get_dp_bitrate(vgpu, port);
 
 	/* Get DP link symbol clock M/N */
-	link_m = vgpu_vreg_t(vgpu, PIPE_LINK_M1(TRANSCODER_A));
+	link_m = vgpu_vreg_t(vgpu, PIPE_LINK_M1(dev_priv, TRANSCODER_A));
 	link_n = vgpu_vreg_t(vgpu, PIPE_LINK_N1(TRANSCODER_A));
 
 	/* Get H/V total from transcoder timing */
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 465d73ef43e2..a9f3c4a85318 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2383,7 +2383,7 @@
 #define PIPE_DATA_N1(dev_priv, tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_DATA_N1)
 #define PIPE_DATA_M2(dev_priv, tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_DATA_M2)
 #define PIPE_DATA_N2(dev_priv, tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_DATA_N2)
-#define PIPE_LINK_M1(tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_LINK_M1)
+#define PIPE_LINK_M1(dev_priv, tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_LINK_M1)
 #define PIPE_LINK_N1(tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_LINK_N1)
 #define PIPE_LINK_M2(tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_LINK_M2)
 #define PIPE_LINK_N2(tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_LINK_N2)
diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
index 829196c665c6..c08b8e755377 100644
--- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
+++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
@@ -270,7 +270,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(PIPE_DATA_N1(dev_priv, TRANSCODER_A));
 	MMIO_D(PIPE_DATA_M2(dev_priv, TRANSCODER_A));
 	MMIO_D(PIPE_DATA_N2(dev_priv, TRANSCODER_A));
-	MMIO_D(PIPE_LINK_M1(TRANSCODER_A));
+	MMIO_D(PIPE_LINK_M1(dev_priv, TRANSCODER_A));
 	MMIO_D(PIPE_LINK_N1(TRANSCODER_A));
 	MMIO_D(PIPE_LINK_M2(TRANSCODER_A));
 	MMIO_D(PIPE_LINK_N2(TRANSCODER_A));
@@ -278,7 +278,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(PIPE_DATA_N1(dev_priv, TRANSCODER_B));
 	MMIO_D(PIPE_DATA_M2(dev_priv, TRANSCODER_B));
 	MMIO_D(PIPE_DATA_N2(dev_priv, TRANSCODER_B));
-	MMIO_D(PIPE_LINK_M1(TRANSCODER_B));
+	MMIO_D(PIPE_LINK_M1(dev_priv, TRANSCODER_B));
 	MMIO_D(PIPE_LINK_N1(TRANSCODER_B));
 	MMIO_D(PIPE_LINK_M2(TRANSCODER_B));
 	MMIO_D(PIPE_LINK_N2(TRANSCODER_B));
@@ -286,7 +286,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(PIPE_DATA_N1(dev_priv, TRANSCODER_C));
 	MMIO_D(PIPE_DATA_M2(dev_priv, TRANSCODER_C));
 	MMIO_D(PIPE_DATA_N2(dev_priv, TRANSCODER_C));
-	MMIO_D(PIPE_LINK_M1(TRANSCODER_C));
+	MMIO_D(PIPE_LINK_M1(dev_priv, TRANSCODER_C));
 	MMIO_D(PIPE_LINK_N1(TRANSCODER_C));
 	MMIO_D(PIPE_LINK_M2(TRANSCODER_C));
 	MMIO_D(PIPE_LINK_N2(TRANSCODER_C));
@@ -294,7 +294,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(PIPE_DATA_N1(dev_priv, TRANSCODER_EDP));
 	MMIO_D(PIPE_DATA_M2(dev_priv, TRANSCODER_EDP));
 	MMIO_D(PIPE_DATA_N2(dev_priv, TRANSCODER_EDP));
-	MMIO_D(PIPE_LINK_M1(TRANSCODER_EDP));
+	MMIO_D(PIPE_LINK_M1(dev_priv, TRANSCODER_EDP));
 	MMIO_D(PIPE_LINK_N1(TRANSCODER_EDP));
 	MMIO_D(PIPE_LINK_M2(TRANSCODER_EDP));
 	MMIO_D(PIPE_LINK_N2(TRANSCODER_EDP));
-- 
2.39.2

