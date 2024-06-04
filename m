Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 875818FB74C
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2024 17:31:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E317E10E527;
	Tue,  4 Jun 2024 15:31:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lppL3iOY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B3B910E519
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2024 15:31:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717515071; x=1749051071;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BqNStlXXsXROdcUxoT3xFtla93Se2W94BOlwoNWOsIg=;
 b=lppL3iOYrNn7Mm7G5pi7iq0uF+dLd0IEnLa76qKDEb045ybx8Lt5Gko4
 ELGrP5ezJzKOdJrSOSyD26uJNKNHDHteh2bSgZeNbY+CkvDwMR3Uivvj8
 fR/WfE2aKJdixZ8lqVSpvAFFQI52b6rWgTlFm6F/kN4LXEANg/7JGGkgd
 lGoksLV7NDNi3ymHxW090Biu9tqkWKhcR4qF+yGhnEU8qaw2e6YSFBYi4
 NLAfwrGW9tOJEalRDPhsnsvuhJh22uQrgsUGxh7C37BSJ6WBdgoKnFVip
 3gRNNZpXX/ifskiLA+YCyDA+VJjJZcZdvWfd1WVkRgvaqKLk+XaidfBCC g==;
X-CSE-ConnectionGUID: 6MuuPUw7QmqLlP3RqJhQhA==
X-CSE-MsgGUID: C9stSwMzQBehkecAUHxCzA==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="13822026"
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="13822026"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:30:51 -0700
X-CSE-ConnectionGUID: gsrEPwc3SuWgRdfQJteSzQ==
X-CSE-MsgGUID: 1rZKfDi2Q7iDEoY8FouSTg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="37859434"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.123])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:30:49 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 55/65] drm/i915: pass dev_priv explicitly to PIPE_LINK_N1
Date: Tue,  4 Jun 2024 18:26:13 +0300
Message-Id: <0960c3726a36999b38084dce6c3824882921c475.1717514638.git.jani.nikula@intel.com>
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
explicitly to the PIPE_LINK_N1 register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 4 ++--
 drivers/gpu/drm/i915/gvt/display.c           | 4 ++--
 drivers/gpu/drm/i915/gvt/handlers.c          | 2 +-
 drivers/gpu/drm/i915/i915_reg.h              | 2 +-
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c  | 8 ++++----
 5 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index a3249d782a8b..eef317984564 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2644,7 +2644,7 @@ void intel_cpu_transcoder_set_m1_n1(struct intel_crtc *crtc,
 			      PIPE_DATA_M1(dev_priv, transcoder),
 			      PIPE_DATA_N1(dev_priv, transcoder),
 			      PIPE_LINK_M1(dev_priv, transcoder),
-			      PIPE_LINK_N1(transcoder));
+			      PIPE_LINK_N1(dev_priv, transcoder));
 	else
 		intel_set_m_n(dev_priv, m_n,
 			      PIPE_DATA_M_G4X(pipe), PIPE_DATA_N_G4X(pipe),
@@ -3343,7 +3343,7 @@ void intel_cpu_transcoder_get_m1_n1(struct intel_crtc *crtc,
 			      PIPE_DATA_M1(dev_priv, transcoder),
 			      PIPE_DATA_N1(dev_priv, transcoder),
 			      PIPE_LINK_M1(dev_priv, transcoder),
-			      PIPE_LINK_N1(transcoder));
+			      PIPE_LINK_N1(dev_priv, transcoder));
 	else
 		intel_get_m_n(dev_priv, m_n,
 			      PIPE_DATA_M_G4X(pipe), PIPE_DATA_N_G4X(pipe),
diff --git a/drivers/gpu/drm/i915/gvt/display.c b/drivers/gpu/drm/i915/gvt/display.c
index eea956603cc8..95b4b76d3b45 100644
--- a/drivers/gpu/drm/i915/gvt/display.c
+++ b/drivers/gpu/drm/i915/gvt/display.c
@@ -265,7 +265,7 @@ static void emulate_monitor_status_change(struct intel_vgpu *vgpu)
 		vgpu_vreg_t(vgpu, PIPE_DATA_M1(dev_priv, TRANSCODER_A)) |= 0x5b425e;
 		vgpu_vreg_t(vgpu, PIPE_DATA_N1(dev_priv, TRANSCODER_A)) = 0x800000;
 		vgpu_vreg_t(vgpu, PIPE_LINK_M1(dev_priv, TRANSCODER_A)) = 0x3cd6e;
-		vgpu_vreg_t(vgpu, PIPE_LINK_N1(TRANSCODER_A)) = 0x80000;
+		vgpu_vreg_t(vgpu, PIPE_LINK_N1(dev_priv, TRANSCODER_A)) = 0x80000;
 
 		/* Enable per-DDI/PORT vreg */
 		if (intel_vgpu_has_monitor_on_port(vgpu, PORT_A)) {
@@ -399,7 +399,7 @@ static void emulate_monitor_status_change(struct intel_vgpu *vgpu)
 		vgpu_vreg_t(vgpu, PIPE_DATA_M1(dev_priv, TRANSCODER_A)) |= 0x5b425e;
 		vgpu_vreg_t(vgpu, PIPE_DATA_N1(dev_priv, TRANSCODER_A)) = 0x800000;
 		vgpu_vreg_t(vgpu, PIPE_LINK_M1(dev_priv, TRANSCODER_A)) = 0x3cd6e;
-		vgpu_vreg_t(vgpu, PIPE_LINK_N1(TRANSCODER_A)) = 0x80000;
+		vgpu_vreg_t(vgpu, PIPE_LINK_N1(dev_priv, TRANSCODER_A)) = 0x80000;
 	}
 
 	if (intel_vgpu_has_monitor_on_port(vgpu, PORT_B)) {
diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/gvt/handlers.c
index ae5a3e2a5c50..f2af234769bf 100644
--- a/drivers/gpu/drm/i915/gvt/handlers.c
+++ b/drivers/gpu/drm/i915/gvt/handlers.c
@@ -674,7 +674,7 @@ static void vgpu_update_refresh_rate(struct intel_vgpu *vgpu)
 
 	/* Get DP link symbol clock M/N */
 	link_m = vgpu_vreg_t(vgpu, PIPE_LINK_M1(dev_priv, TRANSCODER_A));
-	link_n = vgpu_vreg_t(vgpu, PIPE_LINK_N1(TRANSCODER_A));
+	link_n = vgpu_vreg_t(vgpu, PIPE_LINK_N1(dev_priv, TRANSCODER_A));
 
 	/* Get H/V total from transcoder timing */
 	htotal = (vgpu_vreg_t(vgpu, TRANS_HTOTAL(dev_priv, TRANSCODER_A)) >> TRANS_HTOTAL_SHIFT);
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index a9f3c4a85318..ac9ef4bd176e 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2384,7 +2384,7 @@
 #define PIPE_DATA_M2(dev_priv, tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_DATA_M2)
 #define PIPE_DATA_N2(dev_priv, tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_DATA_N2)
 #define PIPE_LINK_M1(dev_priv, tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_LINK_M1)
-#define PIPE_LINK_N1(tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_LINK_N1)
+#define PIPE_LINK_N1(dev_priv, tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_LINK_N1)
 #define PIPE_LINK_M2(tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_LINK_M2)
 #define PIPE_LINK_N2(tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_LINK_N2)
 
diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
index c08b8e755377..00ce7147a9b6 100644
--- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
+++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
@@ -271,7 +271,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(PIPE_DATA_M2(dev_priv, TRANSCODER_A));
 	MMIO_D(PIPE_DATA_N2(dev_priv, TRANSCODER_A));
 	MMIO_D(PIPE_LINK_M1(dev_priv, TRANSCODER_A));
-	MMIO_D(PIPE_LINK_N1(TRANSCODER_A));
+	MMIO_D(PIPE_LINK_N1(dev_priv, TRANSCODER_A));
 	MMIO_D(PIPE_LINK_M2(TRANSCODER_A));
 	MMIO_D(PIPE_LINK_N2(TRANSCODER_A));
 	MMIO_D(PIPE_DATA_M1(dev_priv, TRANSCODER_B));
@@ -279,7 +279,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(PIPE_DATA_M2(dev_priv, TRANSCODER_B));
 	MMIO_D(PIPE_DATA_N2(dev_priv, TRANSCODER_B));
 	MMIO_D(PIPE_LINK_M1(dev_priv, TRANSCODER_B));
-	MMIO_D(PIPE_LINK_N1(TRANSCODER_B));
+	MMIO_D(PIPE_LINK_N1(dev_priv, TRANSCODER_B));
 	MMIO_D(PIPE_LINK_M2(TRANSCODER_B));
 	MMIO_D(PIPE_LINK_N2(TRANSCODER_B));
 	MMIO_D(PIPE_DATA_M1(dev_priv, TRANSCODER_C));
@@ -287,7 +287,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(PIPE_DATA_M2(dev_priv, TRANSCODER_C));
 	MMIO_D(PIPE_DATA_N2(dev_priv, TRANSCODER_C));
 	MMIO_D(PIPE_LINK_M1(dev_priv, TRANSCODER_C));
-	MMIO_D(PIPE_LINK_N1(TRANSCODER_C));
+	MMIO_D(PIPE_LINK_N1(dev_priv, TRANSCODER_C));
 	MMIO_D(PIPE_LINK_M2(TRANSCODER_C));
 	MMIO_D(PIPE_LINK_N2(TRANSCODER_C));
 	MMIO_D(PIPE_DATA_M1(dev_priv, TRANSCODER_EDP));
@@ -295,7 +295,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(PIPE_DATA_M2(dev_priv, TRANSCODER_EDP));
 	MMIO_D(PIPE_DATA_N2(dev_priv, TRANSCODER_EDP));
 	MMIO_D(PIPE_LINK_M1(dev_priv, TRANSCODER_EDP));
-	MMIO_D(PIPE_LINK_N1(TRANSCODER_EDP));
+	MMIO_D(PIPE_LINK_N1(dev_priv, TRANSCODER_EDP));
 	MMIO_D(PIPE_LINK_M2(TRANSCODER_EDP));
 	MMIO_D(PIPE_LINK_N2(TRANSCODER_EDP));
 	MMIO_D(PF_CTL(PIPE_A));
-- 
2.39.2

