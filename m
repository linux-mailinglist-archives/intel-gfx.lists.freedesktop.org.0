Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B47A086E360
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Mar 2024 15:36:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F5F610F08E;
	Fri,  1 Mar 2024 14:36:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="egS9sM97";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 781E010F088
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Mar 2024 14:36:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709303777; x=1740839777;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LKM4YVx9rhS1RGCWGbHYv3U8gNiWp09ybDn/GZLl6bA=;
 b=egS9sM97pqi8v2PLkkW3JJCArBLveApbEGkm9nDiSdTBZShb6EEDsdrC
 ZVajDH6r9RJmWT/S6+lMOvBZ5hReEl2Wjkcznw7rIhATLQ70a+t3dYYh6
 St6mOYymtZMjUkML+oxRblmQDgr7pnwh+fzqwxvy8NrWdfkXPVh3QJQy+
 Zsgb5uGYsatxnAjpSlImGdm6ysQ3N7jCAg1mMyWoi2puXdMFoZcM82lW5
 3kRn3b/Ikg145TgvXkxKUbJz3TH7Q/Jm0i3McxEmPSNDjcu9WHGmpZYMp
 +ndgCvJkHr53LU+N/ofcQxig/YhhVaDEK3F91BufOdOLwHGG+0/q/L7jb Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11000"; a="15275839"
X-IronPort-AV: E=Sophos;i="6.06,196,1705392000"; d="scan'208";a="15275839"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2024 06:36:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11000"; a="827771985"
X-IronPort-AV: E=Sophos;i="6.06,196,1705392000"; d="scan'208";a="827771985"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 01 Mar 2024 06:36:14 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 01 Mar 2024 16:36:13 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Subject: [PATCH 4/8] drm/i915: Utilize intel_crtc_joined_pipe_mask() more
Date: Fri,  1 Mar 2024 16:35:56 +0200
Message-ID: <20240301143600.1334-5-ville.syrjala@linux.intel.com>
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

Unify the master vs. slave handling in
intel_ddi_post_disable_hdmi_or_sst() by looping over all the
pipes in one go.

This also lets us move the intel_crtc_vblank_off() calls to
happen in a consistent place vs. the transcoder disable.
Previously we did the master vs. slaves on different sides
of that.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 32 ++++++++++++------------
 1 file changed, 16 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index f3f8ecf1a87e..1e06d7599c2a 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3101,30 +3101,30 @@ static void intel_ddi_post_disable_hdmi_or_sst(struct intel_atomic_state *state,
 					       const struct drm_connector_state *old_conn_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	struct intel_crtc *slave_crtc;
+	u8 pipe_mask = intel_crtc_joined_pipe_mask(old_master_crtc_state);
+	struct intel_crtc *crtc;
 
-	intel_crtc_vblank_off(old_master_crtc_state);
+	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, crtc, pipe_mask) {
+		const struct intel_crtc_state *old_crtc_state =
+			intel_atomic_get_old_crtc_state(state, crtc);
+
+		intel_crtc_vblank_off(old_crtc_state);
+	}
 
 	intel_disable_transcoder(old_master_crtc_state);
 
 	intel_ddi_disable_transcoder_func(old_master_crtc_state);
 
-	intel_dsc_disable(old_master_crtc_state);
+	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, crtc, pipe_mask) {
+		const struct intel_crtc_state *old_crtc_state =
+			intel_atomic_get_old_crtc_state(state, crtc);
 
-	if (DISPLAY_VER(dev_priv) >= 9)
-		skl_scaler_disable(old_master_crtc_state);
-	else
-		ilk_pfit_disable(old_master_crtc_state);
+		intel_dsc_disable(old_crtc_state);
 
-	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, slave_crtc,
-					 intel_crtc_bigjoiner_slave_pipes(old_master_crtc_state)) {
-		const struct intel_crtc_state *old_slave_crtc_state =
-			intel_atomic_get_old_crtc_state(state, slave_crtc);
-
-		intel_crtc_vblank_off(old_slave_crtc_state);
-
-		intel_dsc_disable(old_slave_crtc_state);
-		skl_scaler_disable(old_slave_crtc_state);
+		if (DISPLAY_VER(dev_priv) >= 9)
+			skl_scaler_disable(old_crtc_state);
+		else
+			ilk_pfit_disable(old_crtc_state);
 	}
 }
 
-- 
2.43.0

