Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4122AA4D66E
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Mar 2025 09:32:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F1B810E524;
	Tue,  4 Mar 2025 08:32:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GbO2mkJE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EEBD210E51C;
 Tue,  4 Mar 2025 08:32:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741077125; x=1772613125;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=25AyOOFW8lx/wcVTPeUldmGb7poUa6eMHthPvWuq5aY=;
 b=GbO2mkJERzasUfuWOE5m0Fqe6GowckVibVeMD3TiHDpItGLXG9SIp1bW
 TlJprtLBrl/MgUlbnsIC3ufDgkzW3VYHcUDwzmMeysrqEO5S+2ne5Q6uz
 y9wcS+JtCB7WGsDpd3FeF3ED2vOGAUjvCCgyGGnFQu2o36y5ZWh7+6X03
 OzQM2QpVgRbnRud+CdZDC1ZFWWkPib5WBdANSM6QEco/6ctdSckRe0dUE
 TtrY6ESS4hslSfWKZJD5b0CrojGmuQYppUXjQVcJdAt0oY/aJf1ggUmWY
 tl0A6IbeAM8CLIpK3siNJwKR5SpRTaZEQsTJoSOF6IsNEEJX9pGbuZrFM Q==;
X-CSE-ConnectionGUID: VXK0EnP1R5q3GIrtjiUyjg==
X-CSE-MsgGUID: rlMf3CtlR9C3U1d3iLavaw==
X-IronPort-AV: E=McAfee;i="6700,10204,11362"; a="45910151"
X-IronPort-AV: E=Sophos;i="6.13,331,1732608000"; d="scan'208";a="45910151"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 00:32:05 -0800
X-CSE-ConnectionGUID: /P0O3ORbRtSYlJa4BYo7Jg==
X-CSE-MsgGUID: S67nmBJdQEGgFOtJCC3rxQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="155492169"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 00:32:03 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 05/22] drm/i915/vrr: Track vrr.enable only for variable timing
Date: Tue,  4 Mar 2025 13:49:31 +0530
Message-ID: <20250304081948.3177034-6-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250304081948.3177034-1-ankit.k.nautiyal@intel.com>
References: <20250304081948.3177034-1-ankit.k.nautiyal@intel.com>
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

Since CMRR is now disabled, use the flag vrr.enable to tracks if vrr timing
generator is used with variable timings.

Avoid setting vrr.enable for CMRR and adjust readout to not set vrr.enable
when vmax == vmin == flipline (fixed refresh rate timing).

v2: Use intel_vrr_vmin_flipline() to account for adjustments required
for icl/tgl. (Ville)

v3: Add a #TODO for handling I915_MODE_FLAG_VRR better for CMRR. (Ville)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 18 ++++++++++++++++--
 1 file changed, 16 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index a57659820f4b..7320eb97991f 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -226,7 +226,6 @@ cmrr_get_vtotal(struct intel_crtc_state *crtc_state, bool video_mode_required)
 static
 void intel_vrr_compute_cmrr_timings(struct intel_crtc_state *crtc_state)
 {
-	crtc_state->vrr.enable = true;
 	crtc_state->cmrr.enable = true;
 	/*
 	 * TODO: Compute precise target refresh rate to determine
@@ -527,6 +526,14 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
 	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder), 0);
 }
 
+static
+bool intel_vrr_is_fixed_rr(const struct intel_crtc_state *crtc_state)
+{
+	return crtc_state->vrr.flipline &&
+	       crtc_state->vrr.flipline == crtc_state->vrr.vmax &&
+	       crtc_state->vrr.flipline == intel_vrr_vmin_flipline(crtc_state);
+}
+
 void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
@@ -536,7 +543,6 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 	trans_vrr_ctl = intel_de_read(display,
 				      TRANS_VRR_CTL(display, cpu_transcoder));
 
-	crtc_state->vrr.enable = trans_vrr_ctl & VRR_CTL_VRR_ENABLE;
 	if (HAS_CMRR(display))
 		crtc_state->cmrr.enable = (trans_vrr_ctl & VRR_CTL_CMRR_ENABLE);
 
@@ -576,6 +582,14 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 		}
 	}
 
+	crtc_state->vrr.enable = trans_vrr_ctl & VRR_CTL_VRR_ENABLE &&
+				 !intel_vrr_is_fixed_rr(crtc_state);
+
+	/*
+	 * #TODO: For Both VRR and CMRR the flag I915_MODE_FLAG_VRR is set for mode_flags.
+	 * Since CMRR is currently disabled, set this flag for VRR for now.
+	 * Need to keep this in mind while re-enabling CMRR.
+	 */
 	if (crtc_state->vrr.enable)
 		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
 }
-- 
2.45.2

