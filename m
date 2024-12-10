Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 48E659EBB9A
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2024 22:10:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4C9E10E97C;
	Tue, 10 Dec 2024 21:10:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="a9AwZj+h";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89EE510E97C
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Dec 2024 21:10:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733865052; x=1765401052;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=JeWF8rlH1xvOqPuectXPHir2zpCu5ulyJcn4a5Vpku4=;
 b=a9AwZj+hKEO5YqJLcsgWQ53NNqjHuG7EOuYVDO+3voirpUwUATjYN/1B
 IsmLa8OJfDNRecS8UZNfrOzcKHdiPmN+sdqhnVN79LImYPJJSDyp2h7lf
 GfI4haI8nMf19lxLG0SHqPV6AVfPqHPwyaFq3lS/hKgW3d7sQficsKKvc
 vKdwJpy2no+LAPPsDQsKUB/z1+R5IeeJeEh4T9RNFVfrn6R6YmHjXcNqz
 Q7GpdjOP10hn5pcBhEWOPaWd6z5vBHEtBq/sw2RU10tU8+oBMPGpxPO31
 6s9uUEA+uyqVHiSK/bVag5dhqebk3OVH1I+Sk3TsMJ03d9ESYwPDt4oy2 w==;
X-CSE-ConnectionGUID: eW+vmDobQzyhXOEDg3OuuA==
X-CSE-MsgGUID: tW9dglM5Tn28GUU+IbbbzA==
X-IronPort-AV: E=McAfee;i="6700,10204,11282"; a="59620215"
X-IronPort-AV: E=Sophos;i="6.12,223,1728975600"; d="scan'208";a="59620215"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2024 13:10:51 -0800
X-CSE-ConnectionGUID: q9wII1qQS06yrvkbI6hQhw==
X-CSE-MsgGUID: XXNUKftaSOi/ybb0S8FOpQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,223,1728975600"; d="scan'208";a="95735136"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 10 Dec 2024 13:10:50 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 10 Dec 2024 23:10:48 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 15/18] drm/i915/vrr: Add extra vblank delay to estimates
Date: Tue, 10 Dec 2024 23:10:04 +0200
Message-ID: <20241210211007.5976-16-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241210211007.5976-1-ville.syrjala@linux.intel.com>
References: <20241210211007.5976-1-ville.syrjala@linux.intel.com>
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

On ICL/TGL the VRR hardware injects an extra scanline just after
vactive. This essentically behaves the same as an extra line of
vblank delay, except it only appears in this one specific spot.

Considee our DSB interrupt signalling scheme:
1. arm the update
2. wait for undelayed vblank (or rather safe window with VRR)
3. wait for enough usecs to get past the delayed vblank
4. signal interrupt to indicate that arming has latched

If step 2 waits for end of vactive step 3 needs to account for
the extra one scanline, or else we risk signalling the interrupt
before the delayed vblank has actuall elapsed. So include the
extra scanline in our vblank delay estimates.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 33 +++++++++++++++++++-----
 1 file changed, 27 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index c08dd1e5cffc..98dd92316595 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -76,12 +76,33 @@ intel_vrr_check_modeset(struct intel_atomic_state *state)
 	}
 }
 
-int intel_vrr_vblank_delay(const struct intel_crtc_state *crtc_state)
+static int intel_vrr_real_vblank_delay(const struct intel_crtc_state *crtc_state)
 {
 	return crtc_state->hw.adjusted_mode.crtc_vblank_start -
 		crtc_state->hw.adjusted_mode.crtc_vdisplay;
 }
 
+static int intel_vrr_extra_vblank_delay(struct intel_display *display)
+{
+	/*
+	 * On ICL/TGL VRR hardware inserts one extra scanline
+	 * just after vactive, which pushes the vmin decision
+	 * boundary ahead accordingly. We'll include the extra
+	 * scanline in our vblank delay estimates to make sure
+	 * that we never underestimate how long we have until
+	 * the delayed vblank has passed.
+	 */
+	return DISPLAY_VER(display) < 13 ? 1 : 0;
+}
+
+int intel_vrr_vblank_delay(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+
+	return intel_vrr_real_vblank_delay(crtc_state) +
+		intel_vrr_extra_vblank_delay(display);
+}
+
 static int intel_vrr_flipline_offset(struct intel_display *display)
 {
 	/* ICL/TGL hardware imposes flipline>=vmin+1 */
@@ -131,7 +152,7 @@ int intel_vrr_vmin_vtotal(const struct intel_crtc_state *crtc_state)
 		return intel_vrr_vmin_flipline(crtc_state);
 	else
 		return intel_vrr_vmin_flipline(crtc_state) +
-			intel_vrr_vblank_delay(crtc_state);
+			intel_vrr_real_vblank_delay(crtc_state);
 }
 
 int intel_vrr_vmax_vtotal(const struct intel_crtc_state *crtc_state)
@@ -142,7 +163,7 @@ int intel_vrr_vmax_vtotal(const struct intel_crtc_state *crtc_state)
 		return crtc_state->vrr.vmax;
 	else
 		return crtc_state->vrr.vmax +
-			intel_vrr_vblank_delay(crtc_state);
+			intel_vrr_real_vblank_delay(crtc_state);
 }
 
 int intel_vrr_vmin_vblank_start(const struct intel_crtc_state *crtc_state)
@@ -310,9 +331,9 @@ void intel_vrr_compute_config_late(struct intel_crtc_state *crtc_state)
 		 * vmin/vmax/flipline also need to be adjusted by
 		 * the vblank delay to maintain correct vtotals.
 		 */
-		crtc_state->vrr.vmin -= intel_vrr_vblank_delay(crtc_state);
-		crtc_state->vrr.vmax -= intel_vrr_vblank_delay(crtc_state);
-		crtc_state->vrr.flipline -= intel_vrr_vblank_delay(crtc_state);
+		crtc_state->vrr.vmin -= intel_vrr_real_vblank_delay(crtc_state);
+		crtc_state->vrr.vmax -= intel_vrr_real_vblank_delay(crtc_state);
+		crtc_state->vrr.flipline -= intel_vrr_real_vblank_delay(crtc_state);
 	}
 }
 
-- 
2.45.2

