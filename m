Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E1936638B7A
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Nov 2022 14:44:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C8A510E7A2;
	Fri, 25 Nov 2022 13:44:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94ADD10E7A7
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Nov 2022 13:44:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669383846; x=1700919846;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=+9CYYQ1gZMbXFZ8P/tVJVlAPwlMXDw6J+HOf7R2XABE=;
 b=I3my1cyowfirS/6TEVrxErP8gPKpwc/fJyFR9wxxZC0dn6HXO07ubrnZ
 sw+RYpuesmj94v5Mdy1KFdKWr8SUU1bqfs1j7hioyOeUONHY3w/JJieEz
 gz94cvvJOvHOUN3PNWFnL/ELk2fS+6mksYzrjvItXwyxXLQgG3HGjgJNz
 Le5l7kjLEGjXX7xP+gGfPseWt4K8TMskrgY9b+LnRT1Vh2joKjLwAGW5P
 pGb2VAOPlafb9r13kCFVGgMZYD8WoROMDLyOS4GQrnrnu4cKVRRpXiQ6/
 RM2WfrBIS2D7iCBqCYthpBO/jtbxGgcS3wVGtFjsPBzEtycKYLq6u04CM w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10541"; a="294868333"
X-IronPort-AV: E=Sophos;i="5.96,193,1665471600"; d="scan'208";a="294868333"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2022 05:44:06 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10541"; a="642708075"
X-IronPort-AV: E=Sophos;i="5.96,193,1665471600"; d="scan'208";a="642708075"
Received: from dcordova-mobl.amr.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.252.49.72])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2022 05:44:02 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Nov 2022 15:43:36 +0200
Message-Id: <20221125134336.3999296-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/psr: Use continuous full frame update
 instead of single
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
written together with partial frame update (PFU) bit. After the bit
gets cleared by the HW psr2 man trk ctl register still contains PFU
bit. If there is subsequent update for any reason we will end up
having selective update/fetch configuration where start line is 0 and
end line is 0. Also selective fetch configuration for the planes is
not properly performed. This seems to be causing problems with some
panels.

Fix this by using continuous full frame update instead and switch to
partial frame update only when selective update area is properly
calculated and configured.

This is also workaround for HSD 14014971508

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: José Roberto de Souza <jose.souza@intel.com>
Cc: Mika Kahola <mika.kahola@intel.com>

Reported-by: Lee Shawn C <shawn.c.lee@intel.com>
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 21 ++-------------------
 1 file changed, 2 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 5b678916e6db..41b0718eb3a1 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1480,13 +1480,6 @@ static u32 man_trk_ctl_enable_bit_get(struct drm_i915_private *dev_priv)
 		PSR2_MAN_TRK_CTL_ENABLE;
 }
 
-static u32 man_trk_ctl_single_full_frame_bit_get(struct drm_i915_private *dev_priv)
-{
-	return IS_ALDERLAKE_P(dev_priv) || DISPLAY_VER(dev_priv) >= 14 ?
-	       ADLP_PSR2_MAN_TRK_CTL_SF_SINGLE_FULL_FRAME :
-	       PSR2_MAN_TRK_CTL_SF_SINGLE_FULL_FRAME;
-}
-
 static u32 man_trk_ctl_partial_frame_bit_get(struct drm_i915_private *dev_priv)
 {
 	return IS_ALDERLAKE_P(dev_priv) || DISPLAY_VER(dev_priv) >= 14 ?
@@ -1510,7 +1503,7 @@ static void psr_force_hw_tracking_exit(struct intel_dp *intel_dp)
 			       PSR2_MAN_TRK_CTL(intel_dp->psr.transcoder),
 			       man_trk_ctl_enable_bit_get(dev_priv) |
 			       man_trk_ctl_partial_frame_bit_get(dev_priv) |
-			       man_trk_ctl_single_full_frame_bit_get(dev_priv));
+			       man_trk_ctl_continuos_full_frame(dev_priv));
 
 	/*
 	 * Display WA #0884: skl+
@@ -1624,11 +1617,7 @@ static void psr2_man_trk_ctl_calc(struct intel_crtc_state *crtc_state,
 	val |= man_trk_ctl_partial_frame_bit_get(dev_priv);
 
 	if (full_update) {
-		/*
-		 * Not applying Wa_14014971508:adlp as we do not support the
-		 * feature that requires this workaround.
-		 */
-		val |= man_trk_ctl_single_full_frame_bit_get(dev_priv);
+		val |= man_trk_ctl_continuos_full_frame(dev_priv);
 		goto exit;
 	}
 
@@ -2306,16 +2295,10 @@ static void _psr_flush_handle(struct intel_dp *intel_dp)
 		if (intel_dp->psr.psr2_sel_fetch_cff_enabled) {
 			/* can we turn CFF off? */
 			if (intel_dp->psr.busy_frontbuffer_bits == 0) {
-				u32 val = man_trk_ctl_enable_bit_get(dev_priv) |
-					  man_trk_ctl_partial_frame_bit_get(dev_priv) |
-					  man_trk_ctl_single_full_frame_bit_get(dev_priv);
-
 				/*
 				 * turn continuous full frame off and do a single
 				 * full frame
 				 */
-				intel_de_write(dev_priv, PSR2_MAN_TRK_CTL(intel_dp->psr.transcoder),
-					       val);
 				intel_de_write(dev_priv, CURSURFLIVE(intel_dp->psr.pipe), 0);
 				intel_dp->psr.psr2_sel_fetch_cff_enabled = false;
 			}
-- 
2.34.1

