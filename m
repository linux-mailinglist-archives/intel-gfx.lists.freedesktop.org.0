Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A12CA35D7C
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2025 13:23:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 977FB10EC88;
	Fri, 14 Feb 2025 12:23:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LPMj1e+R";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8174A10EC7D;
 Fri, 14 Feb 2025 12:22:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739535779; x=1771071779;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tL8+ZtklB8vnQKZoa4NmWuXjbeoV46BjB3Uy15vOhmQ=;
 b=LPMj1e+RPVMhYbGjk4kUw6seF338EgV7ujAFRY5xmfuZKAUC98VPTeSM
 VDPCUT851OMLBLwIJbW0F9+Y+8h9+M1/zuZwDpQzAK0vhQbrUpLQzC9Ma
 sBUCfOZQKwIenwONyi9D4eM07n/l3thJMWlskDS3Op+WxRdSgGMYZrISA
 KuyFaTwA7D1StELQzxqp2ITB7QjR8CG8d/IppNOUi/z82XNzooltYy3eB
 B91X2j0y4+ttCuiIkcY6DWtYVZzcYW5DjlUAkNqWo59be0bMdnwgtcAGk
 b+LDKUbmZpLxzd53UzLonUDTz4blIdiIl8asggwsG7uPKmsRixx3h+KVn Q==;
X-CSE-ConnectionGUID: GF70szt2STW8z9Lnbn4KUg==
X-CSE-MsgGUID: /cEb8nTiQCe86J/uGNaudQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11345"; a="51256028"
X-IronPort-AV: E=Sophos;i="6.13,285,1732608000"; d="scan'208";a="51256028"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2025 04:22:58 -0800
X-CSE-ConnectionGUID: 9KuTcD6XS12weDTtJikLWw==
X-CSE-MsgGUID: 7nivXPG3S5OP/IT02E0kQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,285,1732608000"; d="scan'208";a="113309603"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2025 04:22:56 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 16/19] drm/i915/display: Use fixed_rr timings in modeset
 sequence
Date: Fri, 14 Feb 2025 17:41:26 +0530
Message-ID: <20250214121130.1808451-17-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250214121130.1808451-1-ankit.k.nautiyal@intel.com>
References: <20250214121130.1808451-1-ankit.k.nautiyal@intel.com>
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

During modeset enable sequence, program the fixed timings,
and turn on the VRR Timing Generator (VRR TG) for platforms
that always use VRR TG.

Later if vrr timings are required, vrr_enable() will switch
to the real VRR timings.

With this we dont want to reset TRANS_CTL_VRR Enable bit while updating
the vrr transcoder timings.

v2: Update intel_vrr_set_transcoder_timings for fixed_rr.
v3: Update intel_set_transcoder_timings_lrr for fixed_rr. (Ville)
    Add TRANS_PUSH while enabling VRR for fixed_rr.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 10 +++++--
 drivers/gpu/drm/i915/display/intel_vrr.c     | 29 ++++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_vrr.h     |  3 ++
 3 files changed, 36 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 66c5ad46bfea..c9d1c091b109 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1755,6 +1755,7 @@ static void hsw_set_frame_start_delay(const struct intel_crtc_state *crtc_state)
 
 static void hsw_configure_cpu_transcoder(const struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
@@ -1770,9 +1771,12 @@ static void hsw_configure_cpu_transcoder(const struct intel_crtc_state *crtc_sta
 	}
 
 	intel_set_transcoder_timings(crtc_state);
-	if (HAS_VRR(dev_priv))
-		intel_vrr_set_transcoder_timings(crtc_state);
-
+	if (HAS_VRR(dev_priv)) {
+		if (intel_vrr_always_use_vrr_tg(display))
+			intel_vrr_enable_fixed_rr_timings(crtc_state);
+		else
+			intel_vrr_set_transcoder_timings(crtc_state);
+	}
 	if (cpu_transcoder != TRANSCODER_EDP)
 		intel_de_write(dev_priv, TRANS_MULT(dev_priv, cpu_transcoder),
 			       crtc_state->pixel_multiplier - 1);
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index e247055bc486..4151fcd0f978 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -456,8 +456,12 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
 		       crtc_state->vrr.vmin - 1);
 	intel_de_write(display, TRANS_VRR_VMAX(display, cpu_transcoder),
 		       crtc_state->vrr.vmax - 1);
-	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
-		       trans_vrr_ctl(crtc_state));
+	if (intel_vrr_always_use_vrr_tg(display))
+		intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
+			       VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state));
+	else
+		intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
+			       trans_vrr_ctl(crtc_state));
 	intel_de_write(display, TRANS_VRR_FLIPLINE(display, cpu_transcoder),
 		       crtc_state->vrr.flipline - 1);
 
@@ -536,7 +540,6 @@ bool intel_vrr_is_push_sent(const struct intel_crtc_state *crtc_state)
 	return intel_de_read(display, TRANS_PUSH(display, cpu_transcoder)) & TRANS_PUSH_SEND;
 }
 
-static
 bool intel_vrr_always_use_vrr_tg(struct intel_display *display)
 {
 	if (!HAS_VRR(display))
@@ -616,6 +619,26 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
 	intel_vrr_set_fixed_rr_timings(old_crtc_state);
 }
 
+void intel_vrr_enable_fixed_rr_timings(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+
+	intel_vrr_set_fixed_rr_timings(crtc_state);
+
+	if (HAS_AS_SDP(display))
+		intel_de_write(display,
+			       TRANS_VRR_VSYNC(display, cpu_transcoder),
+			       VRR_VSYNC_END(crtc_state->vrr.vsync_end) |
+			       VRR_VSYNC_START(crtc_state->vrr.vsync_start));
+
+	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
+		       TRANS_PUSH_EN);
+
+	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
+		       VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state));
+}
+
 static
 bool intel_vrr_is_fixed_rr(const struct intel_crtc_state *crtc_state)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
index 514822577e8a..9259964978b1 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.h
+++ b/drivers/gpu/drm/i915/display/intel_vrr.h
@@ -12,6 +12,7 @@ struct drm_connector_state;
 struct intel_atomic_state;
 struct intel_connector;
 struct intel_crtc_state;
+struct intel_display;
 struct intel_dsb;
 
 bool intel_vrr_is_capable(struct intel_connector *connector);
@@ -35,5 +36,7 @@ int intel_vrr_vmin_vtotal(const struct intel_crtc_state *crtc_state);
 int intel_vrr_vmax_vblank_start(const struct intel_crtc_state *crtc_state);
 int intel_vrr_vmin_vblank_start(const struct intel_crtc_state *crtc_state);
 int intel_vrr_vblank_delay(const struct intel_crtc_state *crtc_state);
+bool intel_vrr_always_use_vrr_tg(struct intel_display *display);
+void intel_vrr_enable_fixed_rr_timings(const struct intel_crtc_state *crtc_state);
 
 #endif /* __INTEL_VRR_H__ */
-- 
2.45.2

