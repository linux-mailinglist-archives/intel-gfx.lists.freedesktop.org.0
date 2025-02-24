Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C548AA42144
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2025 14:43:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2A4D10E461;
	Mon, 24 Feb 2025 13:42:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UIkHbDBJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFEC110E13C;
 Mon, 24 Feb 2025 06:29:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740378579; x=1771914579;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=P2pSZFE3Y0MDvNGbEOkRn8lChwoq0sYDsLU9/od5+MY=;
 b=UIkHbDBJeVSGjWcHBhSGgiFu0+KZzds4lETbtyAlaT267b+WXLBT9/tQ
 364e0q78xl8lqq2+1x6PznHHbG+vM1RlXrsWH2ZB++1f3ZWAC8Eriz49F
 dqTMoFWgEJxVa8F2wAzSq/7V+kyxYtiAYKLpJL0R76zC6H+yA1kYrerFS
 M3rrbNT0g3UGubKLkz5nOJSMTM5e9cqHjv5auJD+SvlaYU+n4BA1WyMT5
 mZBpU499I5Dto7+BhKeR0t8uHATUu5tc7MeN8LyxKTnHhAd5DoIv5LaS/
 L9oHNzxIptyIvmh+1GM3aW4WyRCK8lURkkfxv4CUOH6/ZlfjjyeIhUUJc g==;
X-CSE-ConnectionGUID: 375kAjdSQ4WV25E4bEdNUQ==
X-CSE-MsgGUID: IMRQS2a4TsK13sHMj1s5Mw==
X-IronPort-AV: E=McAfee;i="6700,10204,11354"; a="28719651"
X-IronPort-AV: E=Sophos;i="6.13,309,1732608000"; d="scan'208";a="28719651"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2025 22:29:39 -0800
X-CSE-ConnectionGUID: /PKR0aOYTfqjsOoR1+ilwA==
X-CSE-MsgGUID: SKHAKcnCTWORUH6o3BLxgg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="120076498"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2025 22:29:39 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 05/20] drm/i915/vrr: Track vrr.enable only for variable timing
Date: Mon, 24 Feb 2025 11:47:02 +0530
Message-ID: <20250224061717.1095226-6-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250224061717.1095226-1-ankit.k.nautiyal@intel.com>
References: <20250224061717.1095226-1-ankit.k.nautiyal@intel.com>
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

Since CMRR is now disabled, use the flag vrr.enable to tracks if vrr timing
generator is used with variable timings.

Avoid setting vrr.enable for CMRR and adjust readout to not set vrr.enable
when vmax == vmin == flipline (fixed refresh rate timing).

v2: Use intel_vrr_vmin_flipline() to account for adjustments required
for icl/tgl. (Ville)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 0ee7fb0362ce..4d7f29be55b8 100644
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
@@ -528,6 +527,14 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
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
@@ -537,7 +544,6 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 	trans_vrr_ctl = intel_de_read(display,
 				      TRANS_VRR_CTL(display, cpu_transcoder));
 
-	crtc_state->vrr.enable = trans_vrr_ctl & VRR_CTL_VRR_ENABLE;
 	if (HAS_CMRR(display))
 		crtc_state->cmrr.enable = (trans_vrr_ctl & VRR_CTL_CMRR_ENABLE);
 
@@ -577,6 +583,9 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 		}
 	}
 
+	crtc_state->vrr.enable = trans_vrr_ctl & VRR_CTL_VRR_ENABLE &&
+				 !intel_vrr_is_fixed_rr(crtc_state);
+
 	if (crtc_state->vrr.enable)
 		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
 }
-- 
2.45.2

