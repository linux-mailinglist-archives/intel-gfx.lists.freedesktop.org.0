Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BD47997B9A
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Oct 2024 06:03:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7BF210E84C;
	Thu, 10 Oct 2024 04:03:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BBT0aXS2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2050810E849
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Oct 2024 04:03:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728533016; x=1760069016;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ILl71tu9K4NG6ZJOk2mKh2OoTcr0aPAIdID5EQkSW3M=;
 b=BBT0aXS2BmtWzutHju7PlpIyI4+1yj5gESDAh4KhmiJsgZW/CGh//W3c
 h2Rinvw6v8B8XOgCPFJIj7brIF///Sc3IBzpcLPgCNzBat+nBOmomA84f
 SjubXZrk1X3RdZ21sChq2M2wLyGkAXSEE1LMMG4nUlL9ynTI6YDlvxYf0
 Doh6lmGkJa6eW6Gxhc7/RJVnEnee5acVORPtNmL+3piSeReFC2KWRZBcu
 MS9unvBW4SUe5VaUoZc406ayvcdwvnRKNrLtQWVubDXMgrC5R9cMjKVIc
 PfUc4Xib2x4ntRFAQu/CMedmzNH9MXgmLp6Ml3/oGg3QQInGgd9DPaOyy w==;
X-CSE-ConnectionGUID: U0sTlk9OQlqjBJsALk6M7g==
X-CSE-MsgGUID: RLtKqvAJRcKQDR5f7wX6vQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11220"; a="38454106"
X-IronPort-AV: E=Sophos;i="6.11,191,1725346800"; d="scan'208";a="38454106"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 21:03:35 -0700
X-CSE-ConnectionGUID: W761FCHKR6a7PhcX4S2AJA==
X-CSE-MsgGUID: VB8PV83jRiKbhut24DCcfw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,191,1725346800"; d="scan'208";a="107301323"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa002.jf.intel.com with ESMTP; 09 Oct 2024 21:03:34 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jani.nikula@intel.com,
 ankit.k.nautiyal@intel.com, uma.shankar@intel.com, animesh.manna@intel.com
Subject: [PATCH v14 3/3] drm/i915/panelreplay: Panel replay workaround with VRR
Date: Thu, 10 Oct 2024 09:35:03 +0530
Message-ID: <20241010040503.1795399-4-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20241010040503.1795399-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20241010040503.1795399-1-mitulkumar.ajitkumar.golani@intel.com>
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

From: Animesh Manna <animesh.manna@intel.com>

Panel Replay VSC SDP not getting sent when VRR is enabled
and W1 and W2 are 0. So Program Set Context Latency in
TRANS_SET_CONTEXT_LATENCY register to at least a value of 1.
The same is applicable for PSR1/PSR2 as well.

HSD: 14015406119

v1: Initial version.
v2: Update timings stored in adjusted_mode struct. [Ville]
v3: Add WA in compute_config(). [Ville]
v4:
- Add DISPLAY_VER() check and improve code comment. [Rodrigo]
- Introduce centralized intel_crtc_vblank_delay(). [Ville]
v5: Move to crtc_compute_config(). [Ville]
v6: Restrict DISPLAY_VER till 14. [Mitul]
v7:
- Corrected code-comment. [Mitul]
- dev_priv local variable removed. [Jani]
v8: Introduce late_compute_config() which will take care late
vblank-delay adjustment. [Ville]
v9: Implementation simplified and split into multiple patches.
v10:
- Split vrr changes and use struct intel_display in DISPLAY_VER(). [Ankit]
- Use for_each_new_intel_connector_in_state(). [Jani]
v11: Remove loop and use flipline instead of vrr.enable flag. [Ville]
v12:
- Use intel_Vrr_possible helper.
- Correct flag check for flipline.
v13:
- Refactor workaround [Jonathan]
- Drop the comment around woraround number. [Ville]

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index b1e3551c7594..81fe32ca063c 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2609,13 +2609,29 @@ static int intel_crtc_compute_pipe_mode(struct intel_crtc_state *crtc_state)
 	return 0;
 }
 
+static bool intel_crtc_needs_wa_14015401596(struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
+
+	return (intel_vrr_possible(crtc_state) && crtc_state->has_psr &&
+		adjusted_mode->crtc_vblank_start == adjusted_mode->crtc_vdisplay &&
+		IS_DISPLAY_VER(display, 13, 14));
+}
+
 static int intel_crtc_compute_config(struct intel_atomic_state *state,
 				     struct intel_crtc *crtc)
 {
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
+	struct drm_display_mode *adjusted_mode =
+		&crtc_state->hw.adjusted_mode;
 	int ret;
 
+	/* Wa_14015401596 */
+	if (intel_crtc_needs_wa_14015401596(crtc_state))
+		adjusted_mode->crtc_vblank_start += 1;
+
 	ret = intel_dpll_crtc_compute_clock(state, crtc);
 	if (ret)
 		return ret;
-- 
2.46.0

