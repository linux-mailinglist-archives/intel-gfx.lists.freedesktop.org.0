Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C336A3AABA
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Feb 2025 22:20:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F49D10E778;
	Tue, 18 Feb 2025 21:20:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iO10sWo3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB78510E778
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Feb 2025 21:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739913623; x=1771449623;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=gwLLqbWIqXuli8Yz8sIEe1RNT5hwCR1VTz7N96aSPRM=;
 b=iO10sWo3TmTGd5KomiU7U68uArNMoY5zkIRoAjsF4dTb+foPzE9Y7PnW
 zcDdsEEnl+pwT4fZAsykUX/3Ai4SDmtRL1Ds+6LNyfh5WgxHf8PO+88ba
 +AkaNbhyyVdP7BbN1UlMU9eEK3avrONW1uthMinnIteBNXxd8rSaXXmIc
 kGaYao8tnWt0LMzVh24Qcge19vG+yFc4VAD1eEE13JlkUJ3QQjhwio5mF
 Y1bxRrI1V1p/c0/8IkQAuXQ5OYl06N0dyNrDnlzuk5Ct8ibB86XkeTbjb
 0bvgUOzaPs4nyruQt0tY0CNX2dqatDgd318Vz/xCnJHFDMEewfR1Pe4lt A==;
X-CSE-ConnectionGUID: z1YMdwMER3aJUtkPpFNSBg==
X-CSE-MsgGUID: OWi51ETxQOOqOrEYEG2rSg==
X-IronPort-AV: E=McAfee;i="6700,10204,11348"; a="39862358"
X-IronPort-AV: E=Sophos;i="6.13,296,1732608000"; d="scan'208";a="39862358"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2025 13:20:23 -0800
X-CSE-ConnectionGUID: pJ8RDTXfQWSu5OWvVQv5GA==
X-CSE-MsgGUID: 7LErqQzgS4WweGoVMkkoVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,296,1732608000"; d="scan'208";a="114693585"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 18 Feb 2025 13:20:15 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 18 Feb 2025 23:20:14 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 19/19] drm/i915: Relocate intel_bw_crtc_update()
Date: Tue, 18 Feb 2025 23:19:13 +0200
Message-ID: <20250218211913.27867-20-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250218211913.27867-1-ville.syrjala@linux.intel.com>
References: <20250218211913.27867-1-ville.syrjala@linux.intel.com>
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

intel_bw_crtc_update() is only used by the readout path, so relocate
the function next its only caller. Easier to read the code when related
things are nearby.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 42 ++++++++++++-------------
 1 file changed, 21 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 2a669b8535e0..fba5fc607c30 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -806,27 +806,6 @@ static int intel_bw_crtc_min_cdclk(const struct intel_crtc_state *crtc_state)
 	return DIV_ROUND_UP_ULL(mul_u32_u32(intel_bw_crtc_data_rate(crtc_state), 10), 512);
 }
 
-static void intel_bw_crtc_update(struct intel_bw_state *bw_state,
-				 const struct intel_crtc_state *crtc_state)
-{
-	struct intel_display *display = to_intel_display(crtc_state);
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
-
-	if (DISPLAY_VER(display) >= 11) {
-		bw_state->data_rate[crtc->pipe] =
-			intel_bw_crtc_data_rate(crtc_state);
-		bw_state->num_active_planes[crtc->pipe] =
-			intel_bw_crtc_num_active_planes(crtc_state);
-	}
-	bw_state->force_check_qgv = true;
-
-	drm_dbg_kms(&i915->drm, "pipe %c data rate %u num active planes %u\n",
-		    pipe_name(crtc->pipe),
-		    bw_state->data_rate[crtc->pipe],
-		    bw_state->num_active_planes[crtc->pipe]);
-}
-
 static unsigned int intel_bw_num_active_planes(struct drm_i915_private *dev_priv,
 					       const struct intel_bw_state *bw_state)
 {
@@ -1425,6 +1404,27 @@ int intel_bw_atomic_check(struct intel_atomic_state *state)
 	return 0;
 }
 
+static void intel_bw_crtc_update(struct intel_bw_state *bw_state,
+				 const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+
+	if (DISPLAY_VER(display) >= 11) {
+		bw_state->data_rate[crtc->pipe] =
+			intel_bw_crtc_data_rate(crtc_state);
+		bw_state->num_active_planes[crtc->pipe] =
+			intel_bw_crtc_num_active_planes(crtc_state);
+	}
+	bw_state->force_check_qgv = true;
+
+	drm_dbg_kms(&i915->drm, "pipe %c data rate %u num active planes %u\n",
+		    pipe_name(crtc->pipe),
+		    bw_state->data_rate[crtc->pipe],
+		    bw_state->num_active_planes[crtc->pipe]);
+}
+
 void intel_bw_update_hw_state(struct intel_display *display)
 {
 	struct intel_bw_state *bw_state =
-- 
2.45.3

