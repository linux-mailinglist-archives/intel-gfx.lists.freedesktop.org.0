Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 20A25A54BF4
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Mar 2025 14:23:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E59E10E978;
	Thu,  6 Mar 2025 13:23:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gGSH+iTd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4303710E979;
 Thu,  6 Mar 2025 13:23:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741267394; x=1772803394;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=25AyOOFW8lx/wcVTPeUldmGb7poUa6eMHthPvWuq5aY=;
 b=gGSH+iTd/Gy1lDJLbcLPnF+DP4w6NaK4UJYThpjmX2mjRllJX6lR0Y/E
 fyhn98Tn9l7F74rPxlGWSQBCrqEBe23j6dbzDjFTgIGE+7N1QlWP/5iVB
 j8LWq/JJDX54scUTcBd8TBwZ+BUAxNxswKrhDdvSwILN6l5BW158kIfLL
 53vqlvR4A/YZORLL+qpiHgOGtO/vnFrA54QlFPWyvEKNP5ZHSKmcBlOXQ
 VZ0soHya4N6/Hjn0a/PoIxJh8tRaBhizmlQqmaOPZAogyz5Fln0r0ccqm
 +H7+i56tj1BKiHdWLuVMX1yvyl9K/PwLZDlDmPJP7jaZRD3tHMAd1hMVs Q==;
X-CSE-ConnectionGUID: ckFlEdBuRoWVWWdYoenoJg==
X-CSE-MsgGUID: /yQzibGhTDqjR4sg+58ouw==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="41524616"
X-IronPort-AV: E=Sophos;i="6.14,226,1736841600"; d="scan'208";a="41524616"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2025 05:23:14 -0800
X-CSE-ConnectionGUID: K7BZqJlUSSqaP4Xag1RTmA==
X-CSE-MsgGUID: Kag6OOmqQ4efS+cLpba+0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,226,1736841600"; d="scan'208";a="142243118"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2025 05:23:12 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 05/21] drm/i915/vrr: Track vrr.enable only for variable timing
Date: Thu,  6 Mar 2025 18:40:44 +0530
Message-ID: <20250306131100.3989503-6-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250306131100.3989503-1-ankit.k.nautiyal@intel.com>
References: <20250306131100.3989503-1-ankit.k.nautiyal@intel.com>
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

