Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7616CB81C80
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Sep 2025 22:34:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9EBA10E5AC;
	Wed, 17 Sep 2025 20:34:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="i59oUGt9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5769610E596;
 Wed, 17 Sep 2025 20:34:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758141295; x=1789677295;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bRG8xXuHpfn6AevqiOcMQhY/ejT2Gf1OhDjfHa7AJi0=;
 b=i59oUGt90JZSmi+83Rz1JY7jrIaARM9E3gCYq9S135iDJuG04yWktVVI
 R6otHZrGDyATx13IA9f0hSiTmQqZZk2Z05ftyofwSqHfLbkoJBIZxM9c2
 DnTDmaVnKZDYrCqE4g2zuyqvDbT6k1TFZ/Mphnyn5joE2hRMr/D3BvOTK
 BLGeACjT1aIO6C5vpUWNl2t/erT6B/guUN+tIhUqD7ABIjyOxxp+8kSeO
 bLrfyxZzNdasOQDUyCQQhXORK7+metJhyRtIpZYNWPJay2eUuIT43AWfZ
 e5Afq4mnUg7cjmnWZMLRJOqZFIIGfDOKl0zS7ShT7KNrH/yshmTup0LKI Q==;
X-CSE-ConnectionGUID: Q1So43hkQEaaws7jj0rBeA==
X-CSE-MsgGUID: utK7w7/6TYmYQYLD5sFV+w==
X-IronPort-AV: E=McAfee;i="6800,10657,11556"; a="60570005"
X-IronPort-AV: E=Sophos;i="6.18,273,1751266800"; d="scan'208";a="60570005"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2025 13:34:55 -0700
X-CSE-ConnectionGUID: U/gO1pboQSi2IJ76eCBtkA==
X-CSE-MsgGUID: Zke4M/FfQNWJSZmysjq/Ag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,273,1751266800"; d="scan'208";a="174465030"
Received: from cpetruta-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.83])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2025 13:34:54 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 1/5] drm/i915/vrr: Extract helpers to convert between
 guardband and pipeline_full values
Date: Wed, 17 Sep 2025 23:34:42 +0300
Message-ID: <20250917203446.14374-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20250917203446.14374-1-ville.syrjala@linux.intel.com>
References: <20250917203446.14374-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

I'd like to move towards a world where we can't more or less
pretend that the ICl/TGL VRR hardware works the same way as
ADL+. To that end extract some helpers to convert between
the guardband and pipeline_full representations.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 28 ++++++++++++++++++------
 1 file changed, 21 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 3eed37f271b0..5fee85b0bc99 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -119,6 +119,20 @@ static int intel_vrr_vmin_flipline(const struct intel_crtc_state *crtc_state)
 	return crtc_state->vrr.vmin + intel_vrr_flipline_offset(display);
 }
 
+static int intel_vrr_guardband_to_pipeline_full(const struct intel_crtc_state *crtc_state,
+						int guardband)
+{
+	/* hardware imposes one extra scanline somewhere */
+	return guardband - crtc_state->framestart_delay - 1;
+}
+
+static int intel_vrr_pipeline_full_to_guardband(const struct intel_crtc_state *crtc_state,
+						int pipeline_full)
+{
+	/* hardware imposes one extra scanline somewhere */
+	return pipeline_full + crtc_state->framestart_delay + 1;
+}
+
 /*
  * Without VRR registers get latched at:
  *  vblank_start
@@ -142,8 +156,8 @@ static int intel_vrr_vblank_exit_length(const struct intel_crtc_state *crtc_stat
 	if (DISPLAY_VER(display) >= 13)
 		return crtc_state->vrr.guardband;
 	else
-		/* hardware imposes one extra scanline somewhere */
-		return crtc_state->vrr.pipeline_full + crtc_state->framestart_delay + 1;
+		return intel_vrr_pipeline_full_to_guardband(crtc_state,
+							    crtc_state->vrr.pipeline_full);
 }
 
 int intel_vrr_vmin_vtotal(const struct intel_crtc_state *crtc_state)
@@ -417,18 +431,18 @@ void intel_vrr_compute_config_late(struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
+	int guardband;
 
 	if (!intel_vrr_possible(crtc_state))
 		return;
 
+	guardband = crtc_state->vrr.vmin - adjusted_mode->crtc_vblank_start;
+
 	if (DISPLAY_VER(display) >= 13) {
-		crtc_state->vrr.guardband =
-			crtc_state->vrr.vmin - adjusted_mode->crtc_vblank_start;
+		crtc_state->vrr.guardband = guardband;
 	} else {
-		/* hardware imposes one extra scanline somewhere */
 		crtc_state->vrr.pipeline_full =
-			min(255, crtc_state->vrr.vmin - adjusted_mode->crtc_vblank_start -
-			    crtc_state->framestart_delay - 1);
+			min(255, intel_vrr_guardband_to_pipeline_full(crtc_state, guardband));
 
 		/*
 		 * vmin/vmax/flipline also need to be adjusted by
-- 
2.49.1

