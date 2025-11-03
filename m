Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44DD1C2A133
	for <lists+intel-gfx@lfdr.de>; Mon, 03 Nov 2025 06:30:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2A5310E351;
	Mon,  3 Nov 2025 05:30:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hdSnqima";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDC7210E351;
 Mon,  3 Nov 2025 05:30:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762147824; x=1793683824;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dJovRdpa0AiACuJdSrDxUvDjk+1teZnpOg+/GuGGDIA=;
 b=hdSnqima5BLYy4ILv9ch3xoh5CcK8c1UGrDsu09cwog+RKsMqnh6EBNE
 lt+OGUv2/zEnzcMCgai1e+uYI6HFLJU4cl3olAvFpdWx+4aMj9J3oLlaC
 vbiBgtKzMeIYE3y2LQfiQdETZQWVHLnutQCtysgiB7q4ZkIw5ld1b9Lam
 Bizqf1+lWuk39rl0+wnlbdBxSuqfhMRnz50rg5wX0Ttre+taemLEhvpFY
 w3qZbTmK8nE6d/N7k5y7AdqadrwaE7NDYcSgjndZXhU7qX5bXiWH7EPmS
 s4t+3Q7h7uD1yyD6XMFT6J5WmQfWEX2Lkq2wjCEU9170kZu5H165TSRml w==;
X-CSE-ConnectionGUID: arvK2engQ7eTX2KN+gsJuw==
X-CSE-MsgGUID: PaQhXeFIRoKSxErGBAsVxw==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="64143861"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="64143861"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2025 21:30:24 -0800
X-CSE-ConnectionGUID: vt56oUGgQtqJj0fYJLDIwA==
X-CSE-MsgGUID: Ppf/Se4zSv2DoBJ+j+VaQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,275,1754982000"; d="scan'208";a="186925325"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa008.jf.intel.com with ESMTP; 02 Nov 2025 21:30:22 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, mitulkumar.ajitkumar.golani@intel.com,
 ankit.k.nautiyal@intel.com, uma.shankar@intel.com,
 ville.syrjala@linux.intel.com
Subject: [RESEND,
 11/22] drm/i915/vrr: Add function reset DC balance accumulated params
Date: Mon,  3 Nov 2025 10:59:51 +0530
Message-ID: <20251103053002.3002695-12-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251103053002.3002695-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20251103053002.3002695-1-mitulkumar.ajitkumar.golani@intel.com>
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

Add function which resets all accumulated DC Balance parameters
whenever adaptive mode of VRR goes off. This helps to give a
fresh start when VRR is re-enabled.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |  1 +
 drivers/gpu/drm/i915/display/intel_vrr.c     | 13 +++++++++++++
 drivers/gpu/drm/i915/display/intel_vrr.h     |  2 ++
 3 files changed, 16 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 323293f4bf6d..b256517d58cf 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1149,6 +1149,7 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
 	if (intel_crtc_vrr_disabling(state, crtc)) {
 		intel_vrr_disable(old_crtc_state);
 		intel_vrr_dcb_reset_flip_count(old_crtc_state, crtc);
+		intel_vrr_dcb_balance_reset(old_crtc_state, crtc);
 		intel_crtc_update_active_timings(old_crtc_state, false);
 	}
 
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 2ae27751e5b4..6168caff9cf0 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -639,6 +639,19 @@ void intel_vrr_dcb_reset_flip_count(const struct intel_crtc_state *crtc_state,
 	intel_de_write(display, PIPEDMC_DCB_FLIP_COUNT(pipe), 0);
 }
 
+void
+intel_vrr_dcb_balance_reset(const struct intel_crtc_state *crtc_state,
+			    struct intel_crtc *crtc)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	enum pipe pipe = crtc->pipe;
+
+	if (!crtc_state->vrr.dc_balance.enable)
+		return;
+
+	intel_de_write(display, PIPEDMC_DCB_BALANCE_RESET(pipe), 0);
+}
+
 void intel_vrr_send_push(struct intel_dsb *dsb,
 			 const struct intel_crtc_state *crtc_state)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
index 8f97525b8e2d..a713d1a1e3dd 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.h
+++ b/drivers/gpu/drm/i915/display/intel_vrr.h
@@ -44,6 +44,8 @@ void intel_vrr_dcb_increment_flip_count(struct intel_crtc_state *crtc_state,
 					struct intel_crtc *crtc);
 void intel_vrr_dcb_reset_flip_count(const struct intel_crtc_state *crtc_state,
 				    struct intel_crtc *crtc);
+void intel_vrr_dcb_balance_reset(const struct intel_crtc_state *crtc_state,
+				 struct intel_crtc *crtc);
 bool intel_vrr_always_use_vrr_tg(struct intel_display *display);
 int intel_vrr_safe_window_start(const struct intel_crtc_state *crtc_state);
 int intel_vrr_vmin_safe_window_end(const struct intel_crtc_state *crtc_state);
-- 
2.48.1

