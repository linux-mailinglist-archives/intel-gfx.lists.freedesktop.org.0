Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A923663EA48
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Dec 2022 08:23:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE19610E53E;
	Thu,  1 Dec 2022 07:23:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B66E10E53E
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Dec 2022 07:23:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669879412; x=1701415412;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=2M+qeLDscFOjHRredL338M83NdnBmvvcWtvXNh20ocM=;
 b=XDHzYbqTeuWl0nEBkByERLk60qqCurDKR8fw53pxQuobuYz7zWtORAMO
 dlb6jvA/VuE1dvikBrgNMB0UL+UEMeoE8ZEnPr7gZ5+XuwmuixX7NL45n
 L5GPxC3Bf1HdbwmbwvO9o93D0132z4Ld4mZSwjsHTLwlu2y+TT9gxJCGw
 ALyWoVLv0gt+I0lHjNNxrQB2QdjvZsTQ4IKnzQy7Q+ua+68+XgGC3K2mZ
 0FhHDCgSxe2sOzziFgq3tOgE0L3gdjzZP7yPoBa1JdBAiwyEhROi59vSx
 KHzRr5CcLq4cA1SwxW6JrAzP/PBnGHkFlZEgZXGaRbptao4qG9kzlI0eC g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="313241921"
X-IronPort-AV: E=Sophos;i="5.96,207,1665471600"; d="scan'208";a="313241921"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2022 23:23:31 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="973418036"
X-IronPort-AV: E=Sophos;i="5.96,207,1665471600"; d="scan'208";a="973418036"
Received: from wydrak-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.251.211.253])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2022 23:23:29 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  1 Dec 2022 09:23:08 +0200
Message-Id: <20221201072308.1905679-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915/psr: Add continuous full frame bit
 together with single
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

Currently we are observing occasionally display flickering or complete
freeze. This is narrowed down to be caused by single full frame update
(SFF).

SFF bit after it's written gets cleared by HW in subsequent vblank
i.e. when the update is sent to the panel. SFF bit is required to be
written together with partial frame update (PFU) bit. After the SFF
bit gets cleared by the HW psr2 man trk ctl register still contains
PFU bit. If there is subsequent update for any reason we will end up
having selective update/fetch configuration where start line is 0 and
end line is 0. Also selective fetch configuration for the planes is
not properly performed. This seems to be causing problems with some
panels.

Using CFF without SFF doesn't work either because it may happen that
psr2 man track ctl register is overwritten by next update before
vblank triggers sending the update. This is causing problems to
psr_invalidate/flush. Using CFF and SFF together solves the problems
as SFF is cleared only by HW in subsequent vblank and the update gets
sent.

Fix the flickering/freeze issue by keeping CFF bit as set when PSR2 is
enabled unless there is a properly configured selective update via
atomic commit.

v2:
 - Improve commit message and comments
 - No functional changes

This is also workaround for HSD 14014971508

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: José Roberto de Souza <jose.souza@intel.com>
Cc: Mika Kahola <mika.kahola@intel.com>

Reported-by: Lee Shawn C <shawn.c.lee@intel.com>
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Tested-by: Lee Shawn C <shawn.c.lee@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 19 ++++++++++---------
 1 file changed, 10 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 5b678916e6db..619d532bf322 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1510,7 +1510,8 @@ static void psr_force_hw_tracking_exit(struct intel_dp *intel_dp)
 			       PSR2_MAN_TRK_CTL(intel_dp->psr.transcoder),
 			       man_trk_ctl_enable_bit_get(dev_priv) |
 			       man_trk_ctl_partial_frame_bit_get(dev_priv) |
-			       man_trk_ctl_single_full_frame_bit_get(dev_priv));
+			       man_trk_ctl_single_full_frame_bit_get(dev_priv) |
+			       man_trk_ctl_continuos_full_frame(dev_priv));
 
 	/*
 	 * Display WA #0884: skl+
@@ -1624,11 +1625,8 @@ static void psr2_man_trk_ctl_calc(struct intel_crtc_state *crtc_state,
 	val |= man_trk_ctl_partial_frame_bit_get(dev_priv);
 
 	if (full_update) {
-		/*
-		 * Not applying Wa_14014971508:adlp as we do not support the
-		 * feature that requires this workaround.
-		 */
 		val |= man_trk_ctl_single_full_frame_bit_get(dev_priv);
+		val |= man_trk_ctl_continuos_full_frame(dev_priv);
 		goto exit;
 	}
 
@@ -2307,12 +2305,15 @@ static void _psr_flush_handle(struct intel_dp *intel_dp)
 			/* can we turn CFF off? */
 			if (intel_dp->psr.busy_frontbuffer_bits == 0) {
 				u32 val = man_trk_ctl_enable_bit_get(dev_priv) |
-					  man_trk_ctl_partial_frame_bit_get(dev_priv) |
-					  man_trk_ctl_single_full_frame_bit_get(dev_priv);
+					man_trk_ctl_partial_frame_bit_get(dev_priv) |
+					man_trk_ctl_single_full_frame_bit_get(dev_priv) |
+					man_trk_ctl_continuos_full_frame(dev_priv);
 
 				/*
-				 * turn continuous full frame off and do a single
-				 * full frame
+				 * Set psr2_sel_fetch_cff_enabled as false to allow selective
+				 * updates. Still keep cff bit enabled as we don't have proper
+				 * SU configuration in case update is sent for any reason after
+				 * sff bit gets cleared by the HW on next vblank.
 				 */
 				intel_de_write(dev_priv, PSR2_MAN_TRK_CTL(intel_dp->psr.transcoder),
 					       val);
-- 
2.34.1

