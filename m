Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FF938A35A4
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Apr 2024 20:27:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7520C10F7AB;
	Fri, 12 Apr 2024 18:27:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VFs4nevw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 804EE10F7A0
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Apr 2024 18:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712946454; x=1744482454;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=O2qAgS7LQqrn/ReMf4dMXIE/39h7iN2BSplC1TVqcDU=;
 b=VFs4nevwVampJqNih1bVhMccLfr+uCvivPAHUNo8ixbp2nMuDisQravA
 7TIDPSQ/o7N32itp6lbaMrYbOdB8muMEdsf5G9+BT49ek1bcDY+3t/O5x
 /V4YEQpO/A9FWmlURjJk16vz6m0g9MUFeVg6kV8DYBt2ObllFbxMrPNBq
 i4KyWhlSqhYSa847gtc4aB6k64J8yoYsfbMN9YL0ruXhMzkX/b2FykI3V
 aykQN6CO33bx/SPmYE/St1kJP4h47oExscaekQNdjwzKbcDotpdeTZP9f
 xzBJ3kAFe0VPS7daG+t83JzTgsI3tX6wc9RjSlXemG3LLLrYRFX5Bqu1A Q==;
X-CSE-ConnectionGUID: m3vlkL9yQlyJgH1YGgk7DQ==
X-CSE-MsgGUID: MtD6O81mS4uU7kZ44ZHKEA==
X-IronPort-AV: E=McAfee;i="6600,9927,11042"; a="19560549"
X-IronPort-AV: E=Sophos;i="6.07,196,1708416000"; d="scan'208";a="19560549"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2024 11:27:33 -0700
X-CSE-ConnectionGUID: aoSoJgbNQZ2YzMv30RZp1Q==
X-CSE-MsgGUID: +7KgZdQIQT2dmFeyK1QACg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,196,1708416000"; d="scan'208";a="21394627"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 12 Apr 2024 11:27:30 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 12 Apr 2024 21:27:29 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 09/18] drm/i915: Extract i965_dpll_md()
Date: Fri, 12 Apr 2024 21:26:54 +0300
Message-ID: <20240412182703.19916-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240412182703.19916-1-ville.syrjala@linux.intel.com>
References: <20240412182703.19916-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

We have three copies of the DPLL_MD value computation.
Share it.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index 693e22f06aee..9e1f94a2ce92 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -1008,6 +1008,11 @@ static void i9xx_update_pll_dividers(struct intel_crtc_state *crtc_state,
 	crtc_state->dpll_hw_state.fp1 = fp2;
 }
 
+static u32 i965_dpll_md(const struct intel_crtc_state *crtc_state)
+{
+	return (crtc_state->pixel_multiplier - 1) << DPLL_MD_UDI_MULTIPLIER_SHIFT;
+}
+
 static void i9xx_compute_dpll(struct intel_crtc_state *crtc_state,
 			      const struct dpll *clock,
 			      const struct dpll *reduced_clock)
@@ -1080,11 +1085,8 @@ static void i9xx_compute_dpll(struct intel_crtc_state *crtc_state,
 	dpll |= DPLL_VCO_ENABLE;
 	crtc_state->dpll_hw_state.dpll = dpll;
 
-	if (DISPLAY_VER(dev_priv) >= 4) {
-		u32 dpll_md = (crtc_state->pixel_multiplier - 1)
-			<< DPLL_MD_UDI_MULTIPLIER_SHIFT;
-		crtc_state->dpll_hw_state.dpll_md = dpll_md;
-	}
+	if (DISPLAY_VER(dev_priv) >= 4)
+		crtc_state->dpll_hw_state.dpll_md = i965_dpll_md(crtc_state);
 }
 
 static void i8xx_compute_dpll(struct intel_crtc_state *crtc_state,
@@ -1425,8 +1427,7 @@ void vlv_compute_dpll(struct intel_crtc_state *crtc_state)
 		crtc_state->dpll_hw_state.dpll |= DPLL_VCO_ENABLE |
 			DPLL_EXT_BUFFER_ENABLE_VLV;
 
-	crtc_state->dpll_hw_state.dpll_md =
-		(crtc_state->pixel_multiplier - 1) << DPLL_MD_UDI_MULTIPLIER_SHIFT;
+	crtc_state->dpll_hw_state.dpll_md = i965_dpll_md(crtc_state);
 }
 
 void chv_compute_dpll(struct intel_crtc_state *crtc_state)
@@ -1442,8 +1443,7 @@ void chv_compute_dpll(struct intel_crtc_state *crtc_state)
 	if (!intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DSI))
 		crtc_state->dpll_hw_state.dpll |= DPLL_VCO_ENABLE;
 
-	crtc_state->dpll_hw_state.dpll_md =
-		(crtc_state->pixel_multiplier - 1) << DPLL_MD_UDI_MULTIPLIER_SHIFT;
+	crtc_state->dpll_hw_state.dpll_md = i965_dpll_md(crtc_state);
 }
 
 static int chv_crtc_compute_clock(struct intel_atomic_state *state,
-- 
2.43.2

