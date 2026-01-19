Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A056D39D7B
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Jan 2026 05:30:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E1EB10E356;
	Mon, 19 Jan 2026 04:30:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gfOUbRMO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FFCF10E356;
 Mon, 19 Jan 2026 04:30:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768797031; x=1800333031;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=59TQShMTvXgj83r8FSlIBSfRCIBT5Yfg5HSGo9SqkoI=;
 b=gfOUbRMOrxF7wflQb9zGge6XSL2bQrZVHooPgfYTn0ks5Jnz4A/fdpoh
 hDW8/7zzR56o8UcucSUoKUScKrTMyeGTDosJS2GXrJeD2QHaY2JtoHIFB
 ijWaPCUTY9kYTsDjoZcOX6ERy5irm6HNkbW6t5FKE6lHfHCKFlhomKumN
 9q5u9+yuDTEp8WzENSt7R63V1kXgtowDwuBH5Okl9I+Etj0/5/fzzGH5E
 RyNops9hB53j9elU2SKZ/ZZ45q0PHrzHdjusnl3411rR1v7Fb6OcwbaE1
 slTvWvg2PlelB8K/tF9S4DXWgSKkq7BsFY66vADfnzDRlcXAX/558pA5x g==;
X-CSE-ConnectionGUID: lYfT7hApQ+K9fjTJed3iOA==
X-CSE-MsgGUID: TsxGb7AKRpqorcugRNFmgg==
X-IronPort-AV: E=McAfee;i="6800,10657,11675"; a="69205928"
X-IronPort-AV: E=Sophos;i="6.21,237,1763452800"; d="scan'208";a="69205928"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2026 20:30:30 -0800
X-CSE-ConnectionGUID: QnU4E6JVQjWzIXT9sMFKqQ==
X-CSE-MsgGUID: 8bvLkvXUT9Cebdg438U95Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,237,1763452800"; d="scan'208";a="204916605"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa006.jf.intel.com with ESMTP; 18 Jan 2026 20:30:29 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH] drm/i915/display: Wait for pipe start to avoid vblank and
 scanline jumps
Date: Mon, 19 Jan 2026 10:00:25 +0530
Message-Id: <20260119043025.589754-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
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

Check for if scanline values are updated or not in PIPE_SCANLINE
register before we move on from trnascoder enablement.
This needs to be done because we need to make sure we are not getting
stale values from PIPE_SCANLINE register since we use the scanline
value to make a decision if an atomic commit can go through. Without
this change we see Atomic update failure warning with the following
signature:
[drm] *ERROR* Atomic update failure on pipe B (start=457 end=458) time
50 us, min 2128, max 2161, scanline start 411, end 2165
where the atomic commit takes less than 100us but we still see a
vblank count jump and a big leap in scanline.

Bspec: 69961
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 7491e00e3858..c6f830033509 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -490,14 +490,15 @@ void intel_enable_transcoder(const struct intel_crtc_state *new_crtc_state)
 	intel_de_posting_read(display, TRANSCONF(display, cpu_transcoder));
 
 	/*
-	 * Until the pipe starts PIPEDSL reads will return a stale value,
-	 * which causes an apparent vblank timestamp jump when PIPEDSL
+	 * Until the pipe starts PIPEDSL/PIPE_SCANLINE reads will return a
+	 * stale value, this is because it may take 1 vblank for TRANSCONF
+	 * register to enable the pipe, which causes an apparent vblank
+	 * timestamp and scaline jump  jump when PIPEDSL/PIPE_SCANLINE
 	 * resets to its proper value. That also messes up the frame count
 	 * when it's derived from the timestamps. So let's wait for the
 	 * pipe to start properly before we call drm_crtc_vblank_on()
 	 */
-	if (intel_crtc_max_vblank_count(new_crtc_state) == 0)
-		intel_wait_for_pipe_scanline_moving(crtc);
+	intel_wait_for_pipe_scanline_moving(crtc);
 }
 
 void intel_disable_transcoder(const struct intel_crtc_state *old_crtc_state)
-- 
2.34.1

