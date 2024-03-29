Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A58389103C
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Mar 2024 02:13:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1AA810EDF6;
	Fri, 29 Mar 2024 01:13:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IB+i6Y35";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB1AE10E939
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Mar 2024 01:13:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711674827; x=1743210827;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=fJdqZXNAqXTcgyyhdJd+5N/M6rHcOXzsRo3qDoAHcuw=;
 b=IB+i6Y35bu5r0/sXQ7aN6LwB04Iy9MGVfZGmCV+4k5vMQ4OUTzozXPJR
 VR3RVOvVAnr8+5yK5IsWbx6HfTAzQMyppxa+kTADFSpS0b9FaCc7uzl0N
 1N3E4QS7JcPrE8adh9FDX9lO/70oHaHbK/svKDP/ZsuDqFFrVdhNoQnQz
 cSdAjGLzNBTddWfzYOtkSfAeuiFlafKif61ZIS8FRenHt6mHZL1XssfRL
 CUk+MmtmOoX1Uxqosx9CF8nPRhbhAOMLToEtOK8nwi6Zr1K4M7+WinS2p
 7UPu0sPvoAakTBMhGm67+g7usch0tA+7KBj2znFEoNwzk5DzE7oU0RqUf w==;
X-CSE-ConnectionGUID: 4S81v6emSAK8pr55AyjjGg==
X-CSE-MsgGUID: fBb6RvnwTPKvZsBrn1vycQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11027"; a="6756334"
X-IronPort-AV: E=Sophos;i="6.07,162,1708416000"; 
   d="scan'208";a="6756334"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2024 18:13:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11027"; a="827786781"
X-IronPort-AV: E=Sophos;i="6.07,162,1708416000"; d="scan'208";a="827786781"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 28 Mar 2024 18:13:44 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 29 Mar 2024 03:13:44 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 17/22] drm/i915: Utilize intel_crtc_joined_pipe_mask() more
Date: Fri, 29 Mar 2024 03:12:49 +0200
Message-ID: <20240329011254.24160-18-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240329011254.24160-1-ville.syrjala@linux.intel.com>
References: <20240329011254.24160-1-ville.syrjala@linux.intel.com>
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

v2: Use the name 'pipe_crtc' for the per-pipe crtc pointer

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 25 ++++++++++++++++++------
 1 file changed, 19 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 1130bfb7363c..af34e905a85d 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3098,19 +3098,32 @@ static void intel_ddi_post_disable_hdmi_or_sst(struct intel_atomic_state *state,
 					       const struct drm_connector_state *old_conn_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_crtc *pipe_crtc;
 
-	intel_crtc_vblank_off(old_crtc_state);
+	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, pipe_crtc,
+					 intel_crtc_joined_pipe_mask(old_crtc_state)) {
+		const struct intel_crtc_state *old_pipe_crtc_state =
+			intel_atomic_get_old_crtc_state(state, pipe_crtc);
+
+		intel_crtc_vblank_off(old_pipe_crtc_state);
+	}
 
 	intel_disable_transcoder(old_crtc_state);
 
 	intel_ddi_disable_transcoder_func(old_crtc_state);
 
-	intel_dsc_disable(old_crtc_state);
+	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, pipe_crtc,
+					 intel_crtc_joined_pipe_mask(old_crtc_state)) {
+		const struct intel_crtc_state *old_pipe_crtc_state =
+			intel_atomic_get_old_crtc_state(state, pipe_crtc);
 
-	if (DISPLAY_VER(dev_priv) >= 9)
-		skl_scaler_disable(old_crtc_state);
-	else
-		ilk_pfit_disable(old_crtc_state);
+		intel_dsc_disable(old_pipe_crtc_state);
+
+		if (DISPLAY_VER(dev_priv) >= 9)
+			skl_scaler_disable(old_pipe_crtc_state);
+		else
+			ilk_pfit_disable(old_pipe_crtc_state);
+	}
 }
 
 static void intel_ddi_post_disable(struct intel_atomic_state *state,
-- 
2.43.2

