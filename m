Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E8CD86E35E
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Mar 2024 15:36:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B692010F084;
	Fri,  1 Mar 2024 14:36:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="U7CM4TSW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0AA8E10F082
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Mar 2024 14:36:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709303770; x=1740839770;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nicoTOqphiSLhgOKWfpJc/27cL8G0qHoAN965/PnIkc=;
 b=U7CM4TSWoHDjj7voKeQ0g3J2waFPc15HEkMXvYGI4PvmUxk+qNTJABdb
 NJW73XMiYxpVVlCaHxj1A91iKsEpMApiRyUFldhJ37Qw3Xje9iYBIkWlj
 xPTbWqWfcKIRnn6eQ9Wk2/4Z2EHi/rTlI/dRRW12REHcrZHACC349KS13
 K+H0uo6T/YGh/Pa9LKfb9bRqcyBYWtuRgD0uPH6yiSSD5SLKkUWfNRf7x
 qmSQfPdfhvz1J6CAUnSDcwZzYxjblIcFTcLGk3LGBnuyGo5fbp3h/JgR2
 kfc9xUlmhUXUquV4LU/0k9G8zC6HG34Gz1wVdt6oWeF4ERaGWcBVfAlhK w==;
X-IronPort-AV: E=McAfee;i="6600,9927,11000"; a="15275835"
X-IronPort-AV: E=Sophos;i="6.06,196,1705392000"; d="scan'208";a="15275835"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2024 06:36:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11000"; a="827771979"
X-IronPort-AV: E=Sophos;i="6.06,196,1705392000"; d="scan'208";a="827771979"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 01 Mar 2024 06:36:07 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 01 Mar 2024 16:36:06 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Subject: [PATCH 2/8] drm/i915: Introduce intel_crtc_joined_pipe_mask()
Date: Fri,  1 Mar 2024 16:35:54 +0200
Message-ID: <20240301143600.1334-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240301143600.1334-1-ville.syrjala@linux.intel.com>
References: <20240301143600.1334-1-ville.syrjala@linux.intel.com>
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

Add a small helper to compute the set of pipes that the current
crtc is using.

And we have at least one trivial place in
intel_ddi_update_active_dpll() where we can use it
immediately, so let's do that.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c     | 9 ++++-----
 drivers/gpu/drm/i915/display/intel_display.c | 7 +++++++
 drivers/gpu/drm/i915/display/intel_display.h | 1 +
 3 files changed, 12 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 6287629f9e77..0e5834f8af6e 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3472,17 +3472,16 @@ void intel_ddi_update_active_dpll(struct intel_atomic_state *state,
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct intel_crtc_state *master_crtc_state =
 		intel_atomic_get_new_crtc_state(state, master_crtc);
-	struct intel_crtc *slave_crtc;
+	u8 pipe_mask = intel_crtc_joined_pipe_mask(master_crtc_state);
 	enum phy phy = intel_port_to_phy(i915, encoder->port);
+	struct intel_crtc *crtc;
 
 	/* FIXME: Add MTL pll_mgr */
 	if (DISPLAY_VER(i915) >= 14 || !intel_phy_is_tc(i915, phy))
 		return;
 
-	intel_update_active_dpll(state, master_crtc, encoder);
-	for_each_intel_crtc_in_pipe_mask(&i915->drm, slave_crtc,
-					 intel_crtc_bigjoiner_slave_pipes(master_crtc_state))
-		intel_update_active_dpll(state, slave_crtc, encoder);
+	for_each_intel_crtc_in_pipe_mask(&i915->drm, crtc, pipe_mask)
+		intel_update_active_dpll(state, crtc, encoder);
 }
 
 static void
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index f29d38a8035e..8cc5de31c1dd 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -275,6 +275,13 @@ static int intel_bigjoiner_num_pipes(const struct intel_crtc_state *crtc_state)
 	return hweight8(crtc_state->bigjoiner_pipes);
 }
 
+u8 intel_crtc_joined_pipe_mask(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+
+	return BIT(crtc->pipe) | crtc_state->bigjoiner_pipes;
+}
+
 struct intel_crtc *intel_master_crtc(const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index f4a0773f0fca..6df84098ff8c 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -408,6 +408,7 @@ intel_cpu_transcoder_mode_valid(struct drm_i915_private *i915,
 enum phy intel_port_to_phy(struct drm_i915_private *i915, enum port port);
 bool is_trans_port_sync_mode(const struct intel_crtc_state *state);
 bool is_trans_port_sync_master(const struct intel_crtc_state *state);
+u8 intel_crtc_joined_pipe_mask(const struct intel_crtc_state *crtc_state);
 bool intel_crtc_is_bigjoiner_slave(const struct intel_crtc_state *crtc_state);
 bool intel_crtc_is_bigjoiner_master(const struct intel_crtc_state *crtc_state);
 u8 intel_crtc_bigjoiner_slave_pipes(const struct intel_crtc_state *crtc_state);
-- 
2.43.0

