Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD3B3A259EB
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Feb 2025 13:50:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CBEF10E4F0;
	Mon,  3 Feb 2025 12:50:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RSaICNKj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62BE010E4DA;
 Mon,  3 Feb 2025 12:50:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738587044; x=1770123044;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pOoZ/1kZA6SIRb6pxZ0HZTl7IPautmD6W12vOOvriWw=;
 b=RSaICNKjIg/+7aaWhjU0n7mfdczCjfHvFoVl6zB3JemSE03gRZDFJqPj
 LbaSQJyXk5AyFoaX9AeTnWW2wAz42di3/hotygHLmd7ErorUr/KgXMVdF
 0Z2h5q3XgvhT3iOw9VBwYJCTklPfAlfwGxSuUN//eOIj2vqWjbGnuo2PM
 KwF2Xav1K359W+jhvxNlUNdJ1nSTamA0+tAZiV3Bgp2EmS8IQDy4L//5E
 4By0TlnxUwy6Pem3PJ/ECcw/1JHXNBaXqoethEbgMTEO8qtAxRngAOksz
 DzhTitChFImn5aVPzn1nfaefHVUvwxNsRPpe/WZiNzWtNOYNQ6jevKexe g==;
X-CSE-ConnectionGUID: xZElMsoZRcy4qwqhz+rMxg==
X-CSE-MsgGUID: cZR3D8vfSSqJs1R8EhIi9w==
X-IronPort-AV: E=McAfee;i="6700,10204,11335"; a="61548141"
X-IronPort-AV: E=Sophos;i="6.13,255,1732608000"; d="scan'208";a="61548141"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2025 04:50:44 -0800
X-CSE-ConnectionGUID: kjzHPFBWT4mkKp2gy9lNnQ==
X-CSE-MsgGUID: yJUw9LM4QiuBqaDgAzmWZw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="133529095"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2025 04:50:42 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 25/28] drm/i915/vrr: Always set vrr vmax/vmin/flipline in
 vrr_{enable/disable}
Date: Mon,  3 Feb 2025 18:08:37 +0530
Message-ID: <20250203123840.3855874-26-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250203123840.3855874-1-ankit.k.nautiyal@intel.com>
References: <20250203123840.3855874-1-ankit.k.nautiyal@intel.com>
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

For platforms for which vrr timing generator is always set, VRR_CTL
enable bit does not need to toggle, so modify the vrr_{enable/disable}
for this.
At the moment the helper intel_vrr_always_use_vrr_tg() return false for
all cases. This will be set later when all other bits are in place.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 46 +++++++++++++++---------
 1 file changed, 30 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index e44335cdc383..046c19336b91 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -517,6 +517,16 @@ bool intel_vrr_is_push_sent(const struct intel_crtc_state *crtc_state)
 	return intel_de_read(display, TRANS_PUSH(display, cpu_transcoder)) & TRANS_PUSH_SEND;
 }
 
+static
+bool intel_vrr_always_use_vrr_tg(struct intel_display *display)
+{
+	if (!HAS_VRR(display))
+		return false;
+
+	/* #TODO return true for platforms supporting fixed_rr */
+	return false;
+}
+
 void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
@@ -535,16 +545,18 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
 	intel_de_write(display, TRANS_VRR_FLIPLINE(display, cpu_transcoder),
 		       crtc_state->vrr.flipline - 1);
 
-	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
-		       TRANS_PUSH_EN);
-
-	if (crtc_state->vrr.mode == INTEL_VRRTG_MODE_CMRR) {
-		intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
-			       VRR_CTL_VRR_ENABLE | VRR_CTL_CMRR_ENABLE |
-			       trans_vrr_ctl(crtc_state));
-	} else {
-		intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
-			       VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state));
+	if (!intel_vrr_always_use_vrr_tg(display)) {
+		intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
+			       TRANS_PUSH_EN);
+
+		if (crtc_state->vrr.mode == INTEL_VRRTG_MODE_CMRR) {
+			intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
+				       VRR_CTL_VRR_ENABLE | VRR_CTL_CMRR_ENABLE |
+				       trans_vrr_ctl(crtc_state));
+		} else {
+			intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
+				       VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state));
+		}
 	}
 }
 
@@ -573,12 +585,14 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
 	if (!intel_vrr_is_enabled(old_crtc_state))
 		return;
 
-	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
-		       trans_vrr_ctl(old_crtc_state));
-	intel_de_wait_for_clear(display,
-				TRANS_VRR_STATUS(display, cpu_transcoder),
-				VRR_STATUS_VRR_EN_LIVE, 1000);
-	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder), 0);
+	if (!intel_vrr_always_use_vrr_tg(display)) {
+		intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
+			       trans_vrr_ctl(old_crtc_state));
+		intel_de_wait_for_clear(display,
+					TRANS_VRR_STATUS(display, cpu_transcoder),
+					VRR_STATUS_VRR_EN_LIVE, 1000);
+		intel_de_write(display, TRANS_PUSH(display, cpu_transcoder), 0);
+	}
 
 	intel_vrr_set_fixed_rr_timings(old_crtc_state);
 }
-- 
2.45.2

