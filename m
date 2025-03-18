Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F4D2A66C7A
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Mar 2025 08:47:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89EA110E1F0;
	Tue, 18 Mar 2025 07:47:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="egEHexHx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F81410E34E;
 Tue, 18 Mar 2025 07:47:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742284071; x=1773820071;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=aNqr4BCAWweSxrBx1q3c3VWev5Wp9dnRtTxgmktJ2qg=;
 b=egEHexHx4a36Sn9F9jJAmXpnUtQ5QA4qMb7vfqvgyzT7TCaZfdkBtpfL
 RK6ZsLqr1x1CpBREvZ0EMQjEVAu+iegO5OMYCuyIKTPy5ewSIPbGSlAz9
 KNSLnSHtLFRHvvJXZIqTdjEVjhGSKylBHwlKojQyuUjWewsqksYdjvhyp
 fc8plrsC/vNdXmyEuHINsY6vi855I1ozbUfFAo0WHTuf7H2sYP0D2ytiO
 SIAM6KJok+HOOkNMa8Ndz1KyqYvlVz6qeqHZFWamelemgvfq5cpS/df5I
 DQNAlBY/Vi6oCWclkJi6vTcGEGRyV0m7Mhij8RfIv4/tBOjMSMgmtzIjo w==;
X-CSE-ConnectionGUID: QZhVgY59Sk273nZDEHy5kg==
X-CSE-MsgGUID: b4dIl0UgQWu/XPMug2x00g==
X-IronPort-AV: E=McAfee;i="6700,10204,11376"; a="46173799"
X-IronPort-AV: E=Sophos;i="6.14,256,1736841600"; d="scan'208";a="46173799"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2025 00:47:50 -0700
X-CSE-ConnectionGUID: 41S4xRQESuKJ9mGf4O53uA==
X-CSE-MsgGUID: U8qIKvyvS+ClLXxPFSbD5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,256,1736841600"; d="scan'208";a="122681657"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2025 00:47:49 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 08/16] drm/i915/vrr: Always set vrr vmax/vmin/flipline in
 vrr_{enable/disable}
Date: Tue, 18 Mar 2025 13:05:32 +0530
Message-ID: <20250318073540.2773890-9-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250318073540.2773890-1-ankit.k.nautiyal@intel.com>
References: <20250318073540.2773890-1-ankit.k.nautiyal@intel.com>
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

For platforms for which vrr timing generator is always set, VRR_CTL
enable bit does not need to toggle, so modify the vrr_{enable/disable}
for this.
At the moment the helper intel_vrr_always_use_vrr_tg() return false for
all cases. This will be set later when all other bits are in place.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 40 ++++++++++++++++--------
 1 file changed, 27 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 34c02d66167e..3f610e382883 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -558,6 +558,16 @@ bool intel_vrr_is_push_sent(const struct intel_crtc_state *crtc_state)
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
@@ -576,13 +586,15 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
 	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
 		       TRANS_PUSH_EN);
 
-	if (crtc_state->cmrr.enable) {
-		intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
-			       VRR_CTL_VRR_ENABLE | VRR_CTL_CMRR_ENABLE |
-			       trans_vrr_ctl(crtc_state));
-	} else {
-		intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
-			       VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state));
+	if (!intel_vrr_always_use_vrr_tg(display)) {
+		if (crtc_state->cmrr.enable) {
+			intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
+				       VRR_CTL_VRR_ENABLE | VRR_CTL_CMRR_ENABLE |
+				       trans_vrr_ctl(crtc_state));
+		} else {
+			intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
+				       VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state));
+		}
 	}
 }
 
@@ -594,12 +606,14 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
 	if (!old_crtc_state->vrr.enable)
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

