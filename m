Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C37F063BAFC
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Nov 2022 08:51:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AD5210E394;
	Tue, 29 Nov 2022 07:51:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 245A710E394
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Nov 2022 07:51:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669708281; x=1701244281;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=fpu4pg6c1lSvNsm3+1b5dTqAR0Le/RMcCuWLIj930OI=;
 b=m5/qbk4t/ayK+Syc/5J8acI3pjIWPzwjm2j7QGljiaiXrnsUpicdAjRc
 xmSojROmdkVzti1odtZIgILcxspFzBUoDadRPUG68UAhwdZfGwp3ZDiok
 EMT52kPfuRdlxSvUB8qRglQfm0d5CJxS6FvtMSrsKhRS6aJIiVtyom9jZ
 UCz0jv5cnlNVos6LVsdfKKW7UHkuK2tB55rbitiGSW6MrPGrwHlq+jL9p
 144saNdT3f4qCCScdBDNFIJvIknp18bvIzXOJM/X60TJhdFGNdkAb+dHl
 5qMrSF8jyOr+VOdzE21O8ERsyY5Yx4DdIoH1lf6yH7JGssDTj26J7qbZx Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10545"; a="377191864"
X-IronPort-AV: E=Sophos;i="5.96,202,1665471600"; d="scan'208";a="377191864"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2022 23:51:20 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10545"; a="818128783"
X-IronPort-AV: E=Sophos;i="5.96,202,1665471600"; d="scan'208";a="818128783"
Received: from schoenfm-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.249.35.11])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2022 23:51:18 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 29 Nov 2022 09:51:00 +0200
Message-Id: <20221129075100.56655-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/psr: Add continuous full frame bit
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
as SFF is cleared only by HW in subsequent vblank.

Fix the flickering/freeze issue by adding continuous full frame with
single full frame update and switch to partial frame update only when
selective update area is properly calculated and configured.

This is also workaround for HSD 14014971508

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: José Roberto de Souza <jose.souza@intel.com>
Cc: Mika Kahola <mika.kahola@intel.com>

Reported-by: Lee Shawn C <shawn.c.lee@intel.com>
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 19 ++++++++++---------
 1 file changed, 10 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 5b678916e6db..88388201684e 100644
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
+				 * turn continuous full frame off and do a single full frame. Still
+				 * keep cff bit enabled as we don't have proper SU configuration in
+				 * case update is sent for any reason after sff bit gets cleared by
+				 * the HW on next vblank.
 				 */
 				intel_de_write(dev_priv, PSR2_MAN_TRK_CTL(intel_dp->psr.transcoder),
 					       val);
-- 
2.34.1

