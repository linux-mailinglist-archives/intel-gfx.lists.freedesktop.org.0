Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F917CAF07D
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Dec 2025 07:29:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5CD9C10E48A;
	Tue,  9 Dec 2025 06:29:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="C0RSKZHU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52DC810E1BB;
 Tue,  9 Dec 2025 06:29:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765261761; x=1796797761;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=K0vLzGY9GkMNKgv6jwceZ0ta9kg9yzt4f23oqvApr1c=;
 b=C0RSKZHUoOlCpxo6b14zsWlHWDzLe0cR1HSZcUNXHPjwKMI2Bx0RRq/4
 0qH5203EzmUHTCD//yEZxNRLLehXJM9jxfWiZ7cV/fue1+zxtPJBXj4jN
 BmnQN4ZNA3f5ZtrP8tylINr1/9aMQRrLzVdA9MLcqFOUnpvCFXXIg1Hi9
 hFgFOVZkGJaH+O7UHwI7psVYeyAf4HyL0FMBHk13JiOzfzRD49loPzgCq
 LuTQRjscCciXVh/w35MKYkrYtFYZvIPIGV8Xt7yZk3YYPL1OdQis0/RF5
 fF8ykoOYrPzgmK6p4VMIoWKktj+xjgYkDNL//FSvIzCAT6y5n1VQ0RdE8 A==;
X-CSE-ConnectionGUID: jrjui6v5TtKgwllvU7wVsg==
X-CSE-MsgGUID: 5862yPxnQ5y4LIBy4NJtMQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11636"; a="69804108"
X-IronPort-AV: E=Sophos;i="6.20,260,1758610800"; d="scan'208";a="69804108"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2025 22:29:21 -0800
X-CSE-ConnectionGUID: pt7ykNenT9enlcIJxLqPOA==
X-CSE-MsgGUID: RlFoHTz7SdCklT40z+VtOQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,260,1758610800"; d="scan'208";a="200585570"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by fmviesa005.fm.intel.com with ESMTP; 08 Dec 2025 22:29:17 -0800
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@intel.com, uma.shankar@intel.com,
 Nemesa Garg <nemesa.garg@intel.com>
Subject: [PATCH 4/5] drm/i915/display: Add intel_casf_arm() to enable casf
Date: Tue,  9 Dec 2025 11:55:26 +0530
Message-Id: <20251209062527.620382-5-nemesa.garg@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20251209062527.620382-1-nemesa.garg@intel.com>
References: <20251209062527.620382-1-nemesa.garg@intel.com>
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

Enable casf by writing the register SKL_PS_WIN_SZ as
it is an arming register. It has to be invoked from
both dsb and non-dsb path.

Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
---
 drivers/gpu/drm/i915/display/intel_casf.c    | 27 +++++++++++++++-----
 drivers/gpu/drm/i915/display/intel_casf.h    |  3 +++
 drivers/gpu/drm/i915/display/intel_display.c |  6 +++++
 3 files changed, 30 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_casf.c b/drivers/gpu/drm/i915/display/intel_casf.c
index e9ffbd42a030..6b99eca6f031 100644
--- a/drivers/gpu/drm/i915/display/intel_casf.c
+++ b/drivers/gpu/drm/i915/display/intel_casf.c
@@ -81,14 +81,9 @@ void intel_casf_update_strength(struct intel_dsb *dsb,
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	int win_size;
 
 	intel_de_rmw(display, SHARPNESS_CTL(crtc->pipe), FILTER_STRENGTH_MASK,
 		     FILTER_STRENGTH(crtc_state->hw.casf_params.strength));
-
-	win_size = intel_de_read(display, SKL_PS_WIN_SZ(crtc->pipe, 1));
-
-	intel_de_write_fw(display, SKL_PS_WIN_SZ(crtc->pipe, 1), win_size);
 }
 
 static void intel_casf_compute_win_size(struct intel_crtc_state *crtc_state)
@@ -280,6 +275,27 @@ void intel_casf_enable(struct intel_dsb *dsb,
 	skl_scaler_setup_casf(crtc_state);
 }
 
+void intel_casf_arm(struct intel_dsb *dsb,
+		    const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	const struct drm_display_mode *adjusted_mode =
+		&crtc_state->hw.adjusted_mode;
+	const struct intel_crtc_scaler_state *scaler_state =
+		&crtc_state->scaler_state;
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	enum pipe pipe = crtc->pipe;
+
+	int id, width, height;
+
+	width = adjusted_mode->crtc_hdisplay;
+	height = adjusted_mode->crtc_vdisplay;
+	id = scaler_state->scaler_id;
+
+	intel_de_write_fw(display, SKL_PS_WIN_SZ(pipe, id),
+			  PS_WIN_XSIZE(width) | PS_WIN_YSIZE(height));
+}
+
 void intel_casf_disable(struct intel_dsb *dsb,
 			const struct intel_crtc_state *crtc_state)
 {
@@ -289,7 +305,6 @@ void intel_casf_disable(struct intel_dsb *dsb,
 	intel_de_write_dsb(display, dsb, SKL_PS_CTRL(crtc->pipe, 1), 0);
 	intel_de_write_dsb(display, dsb, SKL_PS_WIN_POS(crtc->pipe, 1), 0);
 	intel_de_write_dsb(display, dsb, SHARPNESS_CTL(crtc->pipe), 0);
-	intel_de_write_dsb(display, dsb, SKL_PS_WIN_SZ(crtc->pipe, 1), 0);
 }
 
 void intel_casf_check(struct intel_atomic_state *state)
diff --git a/drivers/gpu/drm/i915/display/intel_casf.h b/drivers/gpu/drm/i915/display/intel_casf.h
index 16a938e19c71..816fc285a921 100644
--- a/drivers/gpu/drm/i915/display/intel_casf.h
+++ b/drivers/gpu/drm/i915/display/intel_casf.h
@@ -24,5 +24,8 @@ void intel_casf_disable(struct intel_dsb *dsb,
 void intel_casf_scaler_compute_config(struct intel_crtc_state *crtc_state);
 bool intel_casf_needs_scaler(const struct intel_crtc_state *crtc_state);
 void intel_casf_check(struct intel_atomic_state *state);
+void intel_casf_arm(struct intel_dsb *dsb,
+		    const struct intel_crtc_state *crtc_state);
+
 
 #endif /* __INTEL_CASF_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 7edfc8c2ae21..52d1eff4de2e 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6722,6 +6722,9 @@ static void commit_pipe_post_planes(struct intel_atomic_state *state,
 
 	drm_WARN_ON(display->drm, new_crtc_state->use_dsb || new_crtc_state->use_flipq);
 
+	if (new_crtc_state->hw.casf_params.casf_enable)
+		intel_casf_arm(new_crtc_state->dsb_commit,
+			       new_crtc_state);
 	/*
 	 * Disable the scaler(s) after the plane(s) so that we don't
 	 * get a catastrophic underrun even if the two operations
@@ -7364,6 +7367,9 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
 		if (intel_crtc_needs_color_update(new_crtc_state))
 			intel_color_commit_arm(new_crtc_state->dsb_commit,
 					       new_crtc_state);
+		if (new_crtc_state->hw.casf_params.casf_enable)
+			intel_casf_arm(new_crtc_state->dsb_commit,
+				       new_crtc_state);
 		bdw_set_pipe_misc(new_crtc_state->dsb_commit,
 				  new_crtc_state);
 		intel_psr2_program_trans_man_trk_ctl(new_crtc_state->dsb_commit,
-- 
2.25.1

