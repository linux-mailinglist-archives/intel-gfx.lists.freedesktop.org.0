Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05FCEA78A03
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Apr 2025 10:32:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56EBE10E706;
	Wed,  2 Apr 2025 08:32:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Kcs+lRnY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C06C10E6FA;
 Wed,  2 Apr 2025 08:32:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743582767; x=1775118767;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3+ytsS8HPHMx2ncAobC51QTCD1Sy5sEta5d+18zWfFs=;
 b=Kcs+lRnYoJYAEBI7AHslIDbcUJcRZKiKXftkVmH0VaMc3S0GRFQwQjv8
 dbwxz/3oPuXikGvAjbcxpOztuMeFRKTaNVDw756vgrd6ip+uLjCBuQ5wt
 CNN7Hd3SwwT5vrlu4A5fS6t7m0h1ji9phOccLosX++qja5FlScaLGKMJ0
 HEmBngZPjvNQY3C0/47fyMQiHdMCvDFpwghpPJ6n8bFF+Zvk0FmV0umCv
 Qsn5oOGOe3tsVoypEfmtFmSOM1uIhnn08s8cd2ad0NpH40bol1Yj58ltM
 cVGuuMQYTsnwBdK059o2k2vhCYH+2N8f+R7+vynjCdqZPWJqDOZ5dFA44 g==;
X-CSE-ConnectionGUID: r9kl2+2rQxysUb8+pHulRw==
X-CSE-MsgGUID: 3oGUabn6QEa9pyvnnudP6Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11391"; a="44828745"
X-IronPort-AV: E=Sophos;i="6.14,295,1736841600"; d="scan'208";a="44828745"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2025 01:32:41 -0700
X-CSE-ConnectionGUID: cFuT/lrSRhmflz5dPdnqjg==
X-CSE-MsgGUID: IBNawXVsT920PRPErhLFOw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,295,1736841600"; d="scan'208";a="126612494"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa007.fm.intel.com with ESMTP; 02 Apr 2025 01:32:37 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, uma.shankar@intel.com, jani.nikula@intel.com,
 mika.kahola@intel.com, ville.syrjala@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 15/16] drm/i915/dpll: Rename intel_compute_dpll_globals
Date: Wed,  2 Apr 2025 14:02:03 +0530
Message-Id: <20250402083204.1523470-16-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250402083204.1523470-1-suraj.kandpal@intel.com>
References: <20250402083204.1523470-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
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

Rename intel_compute_dpll_globals to intel_dpll_compute in an
effort to make sure all function names that are exported have
the filename at start.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll.c     | 6 +++---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 8 ++++----
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h | 6 +++---
 3 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index 13a70ef95804..1cdd54e5beaf 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -1162,7 +1162,7 @@ static int hsw_crtc_compute_clock(struct intel_atomic_state *state,
 	    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DSI))
 		return 0;
 
-	ret = intel_compute_dpll_globals(state, crtc, encoder);
+	ret = intel_dpll_compute(state, crtc, encoder);
 	if (ret)
 		return ret;
 
@@ -1224,7 +1224,7 @@ static int mtl_crtc_compute_clock(struct intel_atomic_state *state,
 	if (ret)
 		return ret;
 
-	/* TODO: Do the readback via intel_compute_dpll_globals() */
+	/* TODO: Do the readback via intel_dpll_compute() */
 	crtc_state->port_clock = intel_cx0pll_calc_port_clock(encoder, &crtc_state->dpll_hw_state.cx0pll);
 
 	crtc_state->hw.adjusted_mode.crtc_clock = intel_crtc_dotclock(crtc_state);
@@ -1397,7 +1397,7 @@ static int ilk_crtc_compute_clock(struct intel_atomic_state *state,
 	ilk_compute_dpll(crtc_state, &crtc_state->dpll,
 			 &crtc_state->dpll);
 
-	ret = intel_compute_dpll_globals(state, crtc, NULL);
+	ret = intel_dpll_compute(state, crtc, NULL);
 	if (ret)
 		return ret;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 7faf1b2e6399..03c08ada0261 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -4385,7 +4385,7 @@ void intel_dpll_global_init(struct intel_display *display)
 }
 
 /**
- * intel_compute_dpll_globals - compute DPLL state CRTC and encoder combination
+ * intel_dpll_compute - compute DPLL state CRTC and encoder combination
  * @state: atomic state
  * @crtc: CRTC to compute DPLLs for
  * @encoder: encoder
@@ -4398,9 +4398,9 @@ void intel_dpll_global_init(struct intel_display *display)
  * Returns:
  * 0 on success, negative error code on failure.
  */
-int intel_compute_dpll_globals(struct intel_atomic_state *state,
-			       struct intel_crtc *crtc,
-			       struct intel_encoder *encoder)
+int intel_dpll_compute(struct intel_atomic_state *state,
+		       struct intel_crtc *crtc,
+		       struct intel_encoder *encoder)
 {
 	struct intel_display *display = to_intel_display(state);
 	const struct intel_dpll_mgr *dpll_mgr = display->dpll.mgr;
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
index b6d5a15b8103..9bd71aba6c6a 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
@@ -396,9 +396,9 @@ void assert_dpll_global(struct intel_display *display,
 			bool state);
 #define assert_dpll_global_enabled(d, p) assert_dpll_global(d, p, true)
 #define assert_dpll_global_disabled(d, p) assert_dpll_global(d, p, false)
-int intel_compute_dpll_globals(struct intel_atomic_state *state,
-			       struct intel_crtc *crtc,
-			       struct intel_encoder *encoder);
+int intel_dpll_compute(struct intel_atomic_state *state,
+		       struct intel_crtc *crtc,
+		       struct intel_encoder *encoder);
 int intel_dpll_reserve(struct intel_atomic_state *state,
 		       struct intel_crtc *crtc,
 		       struct intel_encoder *encoder);
-- 
2.34.1

