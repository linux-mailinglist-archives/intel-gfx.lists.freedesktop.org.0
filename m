Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A1FC987DAB
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2024 06:44:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65A8110EC02;
	Fri, 27 Sep 2024 04:43:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Q5moZCGI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E360210EC02
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Sep 2024 04:43:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727412236; x=1758948236;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6yxzs2iYNwKiBPbnfi3ixYdF+mjKMha7fcjUOBC6A80=;
 b=Q5moZCGIFIdXQvAnzaF5FTq/Dpxojp7LyHU8J0wrvXCbXJZjmlBfxGq5
 ANlt1YPWIpSJeXdEmevUHw9GJsiU321d56IJmB/nrtEavsdqOQ8U5erIA
 GbADOp9vou+PlMmqJfWOxxEdD6Rq5FTmoEQeic86nhYSRsLlDPd2+KNhd
 bdrtKn2GZOdk64dzjvEByqL3XufPDJa8R+6WeLvPJlL2KeqTWWBXkepbm
 7DoQ68Abdz7VsCYhdRcYHI/e/6Wyu937Cc7NjnKGndcgVH1Rz9T06EueS
 CwwuKmNCvuHLGOFe1MLmNYpKnejSkBwvn+lhoDNtdF94IA6xQ8aNZrZj+ g==;
X-CSE-ConnectionGUID: OUve2eDmSBKcI3FBG6S5gw==
X-CSE-MsgGUID: A2o76lVbQcG6j1cdAJPE0g==
X-IronPort-AV: E=McAfee;i="6700,10204,11207"; a="26416947"
X-IronPort-AV: E=Sophos;i="6.11,157,1725346800"; d="scan'208";a="26416947"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2024 21:43:56 -0700
X-CSE-ConnectionGUID: mbI9p/rQR0KmQO9OKo88uQ==
X-CSE-MsgGUID: UIvtDe+kRZuFIH4nnHOnYw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,157,1725346800"; d="scan'208";a="76463059"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmviesa003.fm.intel.com with ESMTP; 26 Sep 2024 21:43:53 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 jouni.hogander@intel.com, arun.r.murthy@intel.com,
 ankit.k.nautiyal@intel.com, mitulkumar.ajitkumar.golani@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v12 3/3] drm/i915/display: Introduve intel_vrr_possible
Date: Fri, 27 Sep 2024 09:55:09 +0530
Message-Id: <20240927042509.4081753-4-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20240927042509.4081753-1-animesh.manna@intel.com>
References: <20240927042509.4081753-1-animesh.manna@intel.com>
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

Add a separate function to check if vrr possible or not
using vrr.flipline variable.

Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |  2 +-
 drivers/gpu/drm/i915/display/intel_vrr.c     | 11 +++++++++--
 drivers/gpu/drm/i915/display/intel_vrr.h     |  1 +
 3 files changed, 11 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index bab8b2141b14..a8f846b654e9 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4000,7 +4000,7 @@ void intel_crtc_adjust_vblank_delay(struct intel_crtc_state *crtc_state)
 	 * crtc_vdisplay from crtc_vblank_start, so incrementing crtc_vblank_start
 	 * by 1 if both are equal.
 	 */
-	if (!crtc_state->vrr.flipline && crtc_state->has_psr &&
+	if (intel_vrr_possible(crtc_state) && crtc_state->has_psr &&
 	    adjusted_mode->crtc_vblank_start == adjusted_mode->crtc_vdisplay &&
 	    IS_DISPLAY_VER(display, 13, 14))
 		adjusted_mode->crtc_vblank_start += 1;
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 6c4af3d79761..a1175e846c80 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -71,6 +71,11 @@ intel_vrr_check_modeset(struct intel_atomic_state *state)
 	}
 }
 
+bool intel_vrr_possible(const struct intel_crtc_state *crtc_state)
+{
+	return crtc_state->vrr.flipline;
+}
+
 /*
  * Without VRR registers get latched at:
  *  vblank_start
@@ -246,7 +251,8 @@ void intel_vrr_compute_config_late(struct intel_crtc_state *crtc_state)
 	struct intel_display *display = to_intel_display(crtc_state);
 	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
 
-	if (!crtc_state->vrr.flipline)
+	//if (!crtc_state->vrr.flipline)
+	if (!intel_vrr_possible(crtc_state))
 		return;
 
 	if (DISPLAY_VER(display) >= 13) {
@@ -286,7 +292,8 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
 		intel_de_rmw(display, CHICKEN_TRANS(cpu_transcoder),
 			     0, PIPE_VBLANK_WITH_DELAY);
 
-	if (!crtc_state->vrr.flipline) {
+	//if (!crtc_state->vrr.flipline) {
+	if (!intel_vrr_possible(crtc_state)) {
 		intel_de_write(display,
 			       TRANS_VRR_CTL(display, cpu_transcoder), 0);
 		return;
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
index 3127c94e9778..4371775ea7ec 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.h
+++ b/drivers/gpu/drm/i915/display/intel_vrr.h
@@ -16,6 +16,7 @@ struct intel_crtc_state;
 bool intel_vrr_is_capable(struct intel_connector *connector);
 bool intel_vrr_is_in_range(struct intel_connector *connector, int vrefresh);
 void intel_vrr_check_modeset(struct intel_atomic_state *state);
+bool intel_vrr_possible(const struct intel_crtc_state *crtc_state);
 void intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 			      struct drm_connector_state *conn_state);
 void intel_vrr_compute_config_late(struct intel_crtc_state *crtc_state);
-- 
2.29.0

