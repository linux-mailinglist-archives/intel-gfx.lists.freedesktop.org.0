Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F3AAD197BD4
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2020 14:27:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E22D96E290;
	Mon, 30 Mar 2020 12:27:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BEB46E28E
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Mar 2020 12:27:48 +0000 (UTC)
IronPort-SDR: gZygZJswywBTRA0bI0bEUGN/Y4asDj0Np3ZWzbAihPP8m8ku8Zl6n7db5kKalRuU4h3VrjPGPv
 PbzlmXVi962g==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2020 05:27:48 -0700
IronPort-SDR: kxJPLglrUOkU3JvwIaC35jSKKVEjZO7RR700/Hqx9y5ZEN9u2zoFnGadX+RIsQ53qk2uJ7rp3p
 s53K9+5a6omw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,324,1580803200"; d="scan'208";a="248684202"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.89])
 by orsmga003.jf.intel.com with ESMTP; 30 Mar 2020 05:27:46 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 30 Mar 2020 15:23:54 +0300
Message-Id: <20200330122354.24752-6-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
In-Reply-To: <20200330122354.24752-1-stanislav.lisovskiy@intel.com>
References: <20200330122354.24752-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 5/5] drm/i915: Remove unneeded hack now for
 CDCLK
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

No need to bump up CDCLK now, as it is now correctly
calculated, accounting for DBuf BW as BSpec says.

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 12 ------------
 1 file changed, 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 036774e7f3ec..13e7ea6f471e 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -2077,18 +2077,6 @@ int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_state)
 	/* Account for additional needs from the planes */
 	min_cdclk = max(intel_planes_min_cdclk(crtc_state), min_cdclk);
 
-	/*
-	 * HACK. Currently for TGL platforms we calculate
-	 * min_cdclk initially based on pixel_rate divided
-	 * by 2, accounting for also plane requirements,
-	 * however in some cases the lowest possible CDCLK
-	 * doesn't work and causing the underruns.
-	 * Explicitly stating here that this seems to be currently
-	 * rather a Hack, than final solution.
-	 */
-	if (IS_TIGERLAKE(dev_priv))
-		min_cdclk = max(min_cdclk, (int)crtc_state->pixel_rate);
-
 	/*
 	 * Similar story as with skl_write_plane_wm and intel_enable_sagv
 	 * - in some certain driver parts, we don't have any guarantee that
-- 
2.24.1.485.gad05a3d8e5

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
