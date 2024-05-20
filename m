Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 75FB78C9967
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2024 09:38:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3FE810E10E;
	Mon, 20 May 2024 07:38:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UAS6S2Cp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D59F10E02E
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 May 2024 07:38:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716190726; x=1747726726;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=iWrAG/79lLDbP+YrBF8Sa6EOwX1b0Oi5gHCH3vy6RcE=;
 b=UAS6S2CpHvJCBPDG3/A48W9tH93aHpNQ1DfvDCy0sph68pBAEAHl8YG2
 K4wutsGvi9D9NQ7xid6gjwVgoezmzqrHd87aQHzuUw67YTtSZy/1Jtmf/
 Mhl83NwV/ID86lEMOUN0q1QASpNR0bcjfyodvnIr70Lc5Qq1xvga3ZhIp
 kwxS/15keXy8V+oWBuJMaNLKE2MkEZlyWqe+ZDVll7ZxHAJMgjU9E6nd0
 NaQ5D5i2uBGHUc655ugQnW8q444FzTy/UK45eU1pkeo8aHlBC3oW07jhA
 S2P9KyRvIYhNjCvCrebB1vSa6pHzcM6leJpf5ZDqR11B6/zRUB0SVNAKy Q==;
X-CSE-ConnectionGUID: m3eaQPmvREC5s8X/4VR20w==
X-CSE-MsgGUID: tk/0zKkiRKe8M/VziUCORw==
X-IronPort-AV: E=McAfee;i="6600,9927,11077"; a="23445001"
X-IronPort-AV: E=Sophos;i="6.08,174,1712646000"; d="scan'208";a="23445001"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2024 00:38:45 -0700
X-CSE-ConnectionGUID: xy0WgZWKRgGt+LylONEbGQ==
X-CSE-MsgGUID: UdzaZQdDRZykQoq9MzoNTA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,174,1712646000"; d="scan'208";a="33053217"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by orviesa007.jf.intel.com with ESMTP; 20 May 2024 00:38:44 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.saarinen@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 2/5] drm/i915: Implement basic functions for ultrajoiner
 support
Date: Mon, 20 May 2024 10:38:36 +0300
Message-Id: <20240520073839.23881-3-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20240520073839.23881-1-stanislav.lisovskiy@intel.com>
References: <20240520073839.23881-1-stanislav.lisovskiy@intel.com>
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

Lets implement or change basic functions required for ultrajoiner
support from atomic commit/modesetting point of view.

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 66 +++++++++++++++++---
 1 file changed, 56 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index c74721188e59..c390b79a43d6 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -242,33 +242,65 @@ is_trans_port_sync_mode(const struct intel_crtc_state *crtc_state)
 		is_trans_port_sync_slave(crtc_state);
 }
 
-static enum pipe joiner_master_pipe(const struct intel_crtc_state *crtc_state)
+static u8 joiner_master_pipes(const struct intel_crtc_state *crtc_state)
 {
-	return ffs(crtc_state->joiner_pipes) - 1;
+	return BIT(PIPE_A) | BIT(PIPE_C);
+}
+
+static u8 joiner_primary_master_pipes(const struct intel_crtc_state *crtc_state)
+{
+	return BIT(PIPE_A);
 }
 
 u8 intel_crtc_joiner_slave_pipes(const struct intel_crtc_state *crtc_state)
 {
-	if (crtc_state->joiner_pipes)
-		return crtc_state->joiner_pipes & ~BIT(joiner_master_pipe(crtc_state));
+	if (intel_is_ultrajoiner(crtc_state))
+		return crtc_state->joiner_pipes & ~joiner_primary_master_pipes(crtc_state);
+	else if (intel_is_bigjoiner(crtc_state))
+		return crtc_state->joiner_pipes & ~joiner_master_pipes(crtc_state);
 	else
 		return 0;
 }
 
-bool intel_crtc_is_joiner_slave(const struct intel_crtc_state *crtc_state)
+bool intel_crtc_is_bigjoiner_slave(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 
 	return crtc_state->joiner_pipes &&
-		crtc->pipe != joiner_master_pipe(crtc_state);
+		!(BIT(crtc->pipe) & joiner_master_pipes(crtc_state));
+}
+
+bool intel_crtc_is_bigjoiner_master(const struct intel_crtc_state *crtc_state)
+{
+	return !intel_crtc_is_bigjoiner_slave(crtc_state);
+}
+
+bool intel_crtc_is_joiner_slave(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+
+	if (intel_is_ultrajoiner(crtc_state))
+		return crtc_state->joiner_pipes &&
+			!(BIT(crtc->pipe) & joiner_primary_master_pipes(crtc_state));
+	return intel_crtc_is_bigjoiner_slave(crtc_state);
 }
 
 bool intel_crtc_is_joiner_master(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 
+	if (intel_is_ultrajoiner(crtc_state))
+		return crtc_state->joiner_pipes &&
+			(BIT(crtc->pipe) & joiner_primary_master_pipes(crtc_state));
+	return intel_crtc_is_bigjoiner_master(crtc_state);
+}
+
+bool intel_crtc_is_joiner_primary_master(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+
 	return crtc_state->joiner_pipes &&
-		crtc->pipe == joiner_master_pipe(crtc_state);
+		(BIT(crtc->pipe) & joiner_primary_master_pipes(crtc_state));
 }
 
 static int intel_joiner_num_pipes(const struct intel_crtc_state *crtc_state)
@@ -283,12 +315,26 @@ u8 intel_crtc_joined_pipe_mask(const struct intel_crtc_state *crtc_state)
 	return BIT(crtc->pipe) | crtc_state->joiner_pipes;
 }
 
+enum pipe intel_crtc_master_pipe(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+
+	if (intel_is_ultrajoiner(crtc_state)) {
+		return ffs(joiner_primary_master_pipes(crtc_state)) - 1;
+	} else if (intel_is_bigjoiner(crtc_state)) {
+		return intel_crtc_is_joiner_slave(crtc_state) ?
+			crtc->pipe - 1 : crtc->pipe;
+	} else {
+		return crtc->pipe;
+	}
+}
+
 struct intel_crtc *intel_master_crtc(const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
 
 	if (intel_crtc_is_joiner_slave(crtc_state))
-		return intel_crtc_for_pipe(i915, joiner_master_pipe(crtc_state));
+		return intel_crtc_for_pipe(i915, intel_crtc_master_pipe(crtc_state));
 	else
 		return to_intel_crtc(crtc_state->uapi.crtc);
 }
@@ -2857,7 +2903,7 @@ static void intel_joiner_adjust_pipe_src(struct intel_crtc_state *crtc_state)
 	if (num_pipes < 2)
 		return;
 
-	master_pipe = joiner_master_pipe(crtc_state);
+	master_pipe = intel_crtc_master_pipe(crtc_state);
 	width = drm_rect_width(&crtc_state->pipe_src);
 
 	drm_rect_translate_to(&crtc_state->pipe_src,
@@ -5898,7 +5944,7 @@ static int intel_atomic_check_joiner(struct intel_atomic_state *state,
 
 	/* sanity check */
 	if (drm_WARN_ON(&i915->drm,
-			master_crtc->pipe != joiner_master_pipe(master_crtc_state)))
+			master_crtc->pipe != intel_crtc_master_pipe(master_crtc_state)))
 		return -EINVAL;
 
 	if (master_crtc_state->joiner_pipes & ~joiner_pipes(i915)) {
-- 
2.37.3

