Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00ECBA35D72
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2025 13:22:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3351610EC73;
	Fri, 14 Feb 2025 12:22:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EqyIm3hn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F409D10EC6B;
 Fri, 14 Feb 2025 12:22:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739535758; x=1771071758;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Ez/IBQZ/Ux6OnuV6lFSRyHux74GzxRVNOep/m/M1XFU=;
 b=EqyIm3hnid8zRlqtri21DgqGCd4IikxvmVSbWc0P+jJALYuSmXkAyvsk
 pl0RD0vsCarsisnWY/43X6dTu/6UwNbyLjOBdiw8c1PMkPgpSWtlxQort
 UZiV21+vmnQPB+cj/yZC6xpw+IwJxSDsi0nvfz11CDg+fqDfPBqRVhXgj
 Yf07QJd+2JstdPVs4zpoHxtPM33WdhLRg0q8Ob1vO9gL+eowHUCHgKWQq
 RKSj9YuOpHfRE79/OdlqMPZhtzzDWlVNJCOQB16Li3qNpdt16DwHFzETM
 pnfGhslTJTmlCQOJCISYTamh5ZmhFclTdUh2U7ShpNlv5P8mTfIQLLK4f w==;
X-CSE-ConnectionGUID: KjqUaedJTb2oqcBQ4ktPpw==
X-CSE-MsgGUID: mua5kyPHTgmqfJp9+sVT+w==
X-IronPort-AV: E=McAfee;i="6700,10204,11345"; a="51255993"
X-IronPort-AV: E=Sophos;i="6.13,285,1732608000"; d="scan'208";a="51255993"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2025 04:22:38 -0800
X-CSE-ConnectionGUID: SiYcF/nOTXeLHzrWTdDn2g==
X-CSE-MsgGUID: wOueF0ULQieQwZYyQey1yw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,285,1732608000"; d="scan'208";a="113309538"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2025 04:22:35 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 05/19] drm/i915/vrr: Track vrr.enable only for variable timing
Date: Fri, 14 Feb 2025 17:41:15 +0530
Message-ID: <20250214121130.1808451-6-ankit.k.nautiyal@intel.com>
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

Since CMRR is now disabled, use the flag vrr.enable to tracks if vrr timing
generator is used with variable timings.

Avoid setting vrr.enable for CMRR and adjust readout to not set vrr.enable
when vmax == vmin == flipline (fixed refresh rate timing).

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 0ee7fb0362ce..efa2aa284285 100644
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
+	       crtc_state->vrr.flipline == crtc_state->vrr.vmin;
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

