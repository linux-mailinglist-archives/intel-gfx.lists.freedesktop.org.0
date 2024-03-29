Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B4AF389102D
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Mar 2024 02:13:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D25B10E83B;
	Fri, 29 Mar 2024 01:13:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CwcJcdJQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F76210E79D
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Mar 2024 01:13:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711674784; x=1743210784;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=j5YLmP3h4Qo9DVdFlT0gA7zzkhCFVDEDxmgdg95AG3Q=;
 b=CwcJcdJQaoD5T1pjvVo3mAyX5OiTF3tNYsNX0EIXnNmZTiF0554gXArK
 rLYyYLyCZdFqrNUwCkRQjihtWoU439xyxBuOyDS/Oz0Jb+t/TR0YPLeSd
 nJ33bpx3dWuyTgPFyWcaLJSjdFjnXsmN1El7J+KweYBmLS+j+wGWX1gIk
 Rco+AA2vd8a52wvowB9CiLvLPYibpPe4GdBwkSq8F1y5wIlrd7MeMWCHk
 KtGSzd7n+x5R9KUPLFhXZ6WgW7BsVJdn0Ms/6q7YoIg955Txv6AlvgMPk
 vVK2zh1it87tnH8j2vp02Cixy0q6pCjCHG5UL5RSTF25Y7FhqtsMPa198 A==;
X-CSE-ConnectionGUID: x/adRPMoRAGnomY9Fl0/Ww==
X-CSE-MsgGUID: Eph5vBkqT7WocDwyQ7T/Rw==
X-IronPort-AV: E=McAfee;i="6600,9927,11027"; a="6756270"
X-IronPort-AV: E=Sophos;i="6.07,162,1708416000"; 
   d="scan'208";a="6756270"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2024 18:13:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11027"; a="827786766"
X-IronPort-AV: E=Sophos;i="6.07,162,1708416000"; d="scan'208";a="827786766"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 28 Mar 2024 18:13:01 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 29 Mar 2024 03:13:00 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 02/22] drm/i915: Fix intel_modeset_pipe_config_late() for
 bigjoiner
Date: Fri, 29 Mar 2024 03:12:34 +0200
Message-ID: <20240329011254.24160-3-ville.syrjala@linux.intel.com>
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

Currently intel_modeset_pipe_config_late() is called after the
bigjoiner state copy, and it will actually not do anything for
bigjoiner slaves. This can lead to a mismatched state between
the master and slave.

The two things that we do in the encoder .compute_config_late()
hook are mst master transcoder and port sync master transcoder
elections. So if either of either MST or port sync is combined
with bigjoiner then we can see the mismatch.

Currently this problem is more or less theoretical; MST+bigjoiner
has not been implemented yet, and port sync+bigjoiner would
require a tiled display with >5k tiles (or a very high
dotclock per tile). Although we do have kms_tiled_display in
igt which can fake a tiled display, and we can now force bigjoiner
via debugfs, so it is possible to trigger this if you try hard
enough.

Reorder the code such that intel_modeset_pipe_config_late()
will be called before the bigjoiner state copy happens so
that both pipes will end up with the same state.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 46 ++++++++++++++------
 1 file changed, 32 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 614e60420a29..08705042b4f8 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4753,8 +4753,6 @@ intel_modeset_pipe_config_late(struct intel_atomic_state *state,
 	struct drm_connector *connector;
 	int i;
 
-	intel_bigjoiner_adjust_pipe_src(crtc_state);
-
 	for_each_new_connector_in_state(&state->base, connector,
 					conn_state, i) {
 		struct intel_encoder *encoder =
@@ -6248,27 +6246,37 @@ static int intel_atomic_check_config(struct intel_atomic_state *state,
 			continue;
 		}
 
-		if (intel_crtc_is_bigjoiner_slave(new_crtc_state)) {
-			drm_WARN_ON(&i915->drm, new_crtc_state->uapi.enable);
+		if (drm_WARN_ON(&i915->drm, intel_crtc_is_bigjoiner_slave(new_crtc_state)))
 			continue;
-		}
 
 		ret = intel_crtc_prepare_cleared_state(state, crtc);
 		if (ret)
-			break;
+			goto fail;
 
 		if (!new_crtc_state->hw.enable)
 			continue;
 
 		ret = intel_modeset_pipe_config(state, crtc, limits);
 		if (ret)
-			break;
+			goto fail;
+	}
 
-		ret = intel_atomic_check_bigjoiner(state, crtc);
+	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
+		if (!intel_crtc_needs_modeset(new_crtc_state))
+			continue;
+
+		if (drm_WARN_ON(&i915->drm, intel_crtc_is_bigjoiner_slave(new_crtc_state)))
+			continue;
+
+		if (!new_crtc_state->hw.enable)
+			continue;
+
+		ret = intel_modeset_pipe_config_late(state, crtc);
 		if (ret)
-			break;
+			goto fail;
 	}
 
+fail:
 	if (ret)
 		*failed_pipe = crtc->pipe;
 
@@ -6364,16 +6372,26 @@ int intel_atomic_check(struct drm_device *dev,
 	if (ret)
 		goto fail;
 
+	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
+		if (!intel_crtc_needs_modeset(new_crtc_state))
+			continue;
+
+		if (intel_crtc_is_bigjoiner_slave(new_crtc_state)) {
+			drm_WARN_ON(&dev_priv->drm, new_crtc_state->uapi.enable);
+			continue;
+		}
+
+		ret = intel_atomic_check_bigjoiner(state, crtc);
+		if (ret)
+			goto fail;
+	}
+
 	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
 					    new_crtc_state, i) {
 		if (!intel_crtc_needs_modeset(new_crtc_state))
 			continue;
 
-		if (new_crtc_state->hw.enable) {
-			ret = intel_modeset_pipe_config_late(state, crtc);
-			if (ret)
-				goto fail;
-		}
+		intel_bigjoiner_adjust_pipe_src(new_crtc_state);
 
 		intel_crtc_check_fastset(old_crtc_state, new_crtc_state);
 	}
-- 
2.43.2

