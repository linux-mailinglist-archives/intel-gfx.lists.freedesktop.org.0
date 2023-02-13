Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F095A694D1F
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Feb 2023 17:44:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 629F710E624;
	Mon, 13 Feb 2023 16:44:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D26810E624
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Feb 2023 16:44:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676306696; x=1707842696;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=A3MYACgKujrr0n0YPT8GiJ9cfT4vKskwW8x3XXCG9YA=;
 b=gwSSCZKdVh89vddLPAEYX5RVmIjKzDY796sLHNIrj/2lKAdCS5DKS0RO
 B63gb+0Slde4VPERnt30XAciNYqOkIHW8log1V7LjV94+uy+yYuoDCWUT
 nupUfTNdGj9BkpCGpNIAgn4V1ouuTNFdxivAvWp6v0klBs5742NlcbmOE
 LG69pFhWIXiP8uW6y52y1ZnwFZkpaXLd9EO+U83Qh5WRfwJMWI2kHFpxB
 KazhaCoLcVFNuUkIN+YCT1mtWYAFCa/ahSYzBSRZc0MUmhZB3pPfQigow
 fTg1tqE6ZR/Vs1D7Im1DnhYHvm67oZw3Lpsca04B6qVz8Dp82QugBCWP2 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="318953593"
X-IronPort-AV: E=Sophos;i="5.97,294,1669104000"; d="scan'208";a="318953593"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2023 08:44:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="701329331"
X-IronPort-AV: E=Sophos;i="5.97,294,1669104000"; d="scan'208";a="701329331"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by orsmga001.jf.intel.com with ESMTP; 13 Feb 2023 08:44:54 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 13 Feb 2023 18:44:53 +0200
Message-Id: <20230213164453.5782-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] Copy highest enabled wm level to disabled wm
 levels for gen >= 9
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

There was a specific SW workaround requested, which should prevent
some watermark issues happening, which requires copying highest
enabled wm level to those disabled wm levels(bit 31 is of course
still needs to be cleared).
This is related to different subsystems like PSR and others, which
may still consult a low power wm values ocassionally, despite those
are disabled. For that reason we need to keep sane values in
correspondent registers, even when those are disabled.

HSDES: 22016115093

v2: Remove redundant WA for ICL and extend this WA for all platforms
    starting from SKL, as it seems that we needed this anyway on
    all of those(Ville Syrjälä)

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 26 +++++++++++---------
 1 file changed, 15 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 962666e74333..227a777e4331 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -1407,16 +1407,22 @@ skl_check_nv12_wm_level(struct skl_wm_level *wm, struct skl_wm_level *uv_wm,
 	}
 }
 
-static bool icl_need_wm1_wa(struct drm_i915_private *i915,
-			    enum plane_id plane_id)
+static bool skl_need_wm_copy_wa(struct drm_i915_private *i915, int level,
+				const struct skl_plane_wm *wm)
 {
 	/*
 	 * Wa_1408961008:icl, ehl
 	 * Wa_14012656716:tgl, adl
-	 * Underruns with WM1+ disabled
+	 * Wa_14017887344:icl
+	 * Wa_14017868169:adl, tgl
+	 * Due to some power saving optimizations, different subsystems
+	 * like PSR, might still use even disabled wm level registers,
+	 * for "reference", so lets keep at least the values sane.
+	 * Considering amount of WA requiring us to do similar things, was
+	 * decided to simply do it for all of the platforms, as those wm
+	 * levels are disabled, this isn't going to do harm anyway.
 	 */
-	return DISPLAY_VER(i915) == 11 ||
-	       (IS_DISPLAY_VER(i915, 12, 13) && plane_id == PLANE_CURSOR);
+	return DISPLAY_VER(i915) >= 9 && level > 0 && !wm->wm[level].enable;
 }
 
 struct skl_plane_ddb_iter {
@@ -1585,12 +1591,10 @@ skl_crtc_allocate_plane_ddb(struct intel_atomic_state *state,
 			else
 				skl_check_wm_level(&wm->wm[level], ddb);
 
-			if (icl_need_wm1_wa(i915, plane_id) &&
-			    level == 1 && !wm->wm[level].enable &&
-			    wm->wm[0].enable) {
-				wm->wm[level].blocks = wm->wm[0].blocks;
-				wm->wm[level].lines = wm->wm[0].lines;
-				wm->wm[level].ignore_lines = wm->wm[0].ignore_lines;
+			if (skl_need_wm_copy_wa(i915, level, wm)) {
+				wm->wm[level].blocks = wm->wm[level - 1].blocks;
+				wm->wm[level].lines = wm->wm[level - 1].lines;
+				wm->wm[level].ignore_lines = wm->wm[level - 1].ignore_lines;
 			}
 		}
 	}
-- 
2.37.3

