Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FB9CA35D7B
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2025 13:23:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8722910EC86;
	Fri, 14 Feb 2025 12:23:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GgwzB/xt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82D1710EC70;
 Fri, 14 Feb 2025 12:22:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739535777; x=1771071777;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=80aa+4yDad+nFY7rQOGP9znleur9DcQu4QQa5YbhYlQ=;
 b=GgwzB/xtV+ud8ii8wSXdP2eSWnfBc7klAwJEh+1x6b2TDOTYQJZYLOYD
 AweBaMUrInrZoj1uxv3pR6jOMRMzxTbfcRzgJ1Y8JOvu2ZQOxzRS2Ba5D
 iDu+M9jcG6fhQjBXgBnHwXulM20Y0rjr9lxivPZ2h5QGxqMbdOPAsqiK3
 Wws+Owr+KHiZWRiqkS/X43l3bAC17KoWW3vQZUFrmRA3QbOsZ8Q573YUU
 dp/UomWKerYqB/8t0MOfFf2y+e6p1LGqkEYsYQlJorbVx0S01ZnSt+nwH
 oVOuDJFW7jPgtD6sViR3aHD1k/AuP2afQ9aASl0xy5PUgmXIlYJkKV26y g==;
X-CSE-ConnectionGUID: b3FJtpjaRGOqKoCTq5RTjw==
X-CSE-MsgGUID: Nf8wLPv9R46xcjBJyqMCGA==
X-IronPort-AV: E=McAfee;i="6700,10204,11345"; a="51256027"
X-IronPort-AV: E=Sophos;i="6.13,285,1732608000"; d="scan'208";a="51256027"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2025 04:22:56 -0800
X-CSE-ConnectionGUID: zBGy4suPRTyQziY3RSTAhQ==
X-CSE-MsgGUID: 4r/UF+ucRh+1eaYdnU9sfg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,285,1732608000"; d="scan'208";a="113309598"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2025 04:22:54 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 15/19] drm/i915/vrr: Always set vrr vmax/vmin/flipline in
 vrr_{enable/disable}
Date: Fri, 14 Feb 2025 17:41:25 +0530
Message-ID: <20250214121130.1808451-16-ankit.k.nautiyal@intel.com>
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

For platforms for which vrr timing generator is always set, VRR_CTL
enable bit does not need to toggle, so modify the vrr_{enable/disable}
for this.
At the moment the helper intel_vrr_always_use_vrr_tg() return false for
all cases. This will be set later when all other bits are in place.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 40 ++++++++++++++++--------
 1 file changed, 27 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 92eb0f215784..e247055bc486 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -536,6 +536,16 @@ bool intel_vrr_is_push_sent(const struct intel_crtc_state *crtc_state)
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
@@ -557,13 +567,15 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
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
 
@@ -592,12 +604,14 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
 	if (intel_crtc_is_joiner_secondary(old_crtc_state))
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

