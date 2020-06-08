Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 82B2F1F1324
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jun 2020 08:59:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9EFD26E479;
	Mon,  8 Jun 2020 06:59:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E24446E46F
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jun 2020 06:59:30 +0000 (UTC)
IronPort-SDR: yHn/qNrAQIMfseDTYLuHv73ZJ3J2DamSWVJWPb9B2A2ZlpvNH7CJOQZeOrqWth19jP/wxYcTfj
 QeuCkulXyvnA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2020 23:59:30 -0700
IronPort-SDR: P1wuZDLkNV25i4mPHCsKpNtw91k4JUq0HywCLbRoVf/tf0as8j0jRvxPu3ZG7L0lyuTNrz5xRi
 33mfYktmDSnQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,487,1583222400"; d="scan'208";a="472479510"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.89])
 by fmsmga006.fm.intel.com with ESMTP; 07 Jun 2020 23:59:29 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  8 Jun 2020 09:55:52 +0300
Message-Id: <20200608065552.21728-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] Revert "drm/i915: Remove unneeded hack now for
 CDCLK"
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

This reverts commit 82ea174dc5425d4e85e25d0c4ba961a2e494392a.

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Fixes: cd1915460861 ("drm/i915: Adjust CDCLK accordingly to our DBuf bw needs")
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 08468b121d02..45f7f33d1144 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -2071,6 +2071,18 @@ int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_state)
 	/* Account for additional needs from the planes */
 	min_cdclk = max(intel_planes_min_cdclk(crtc_state), min_cdclk);
 
+	/*
+	 * HACK. Currently for TGL platforms we calculate
+	 * min_cdclk initially based on pixel_rate divided
+	 * by 2, accounting for also plane requirements,
+	 * however in some cases the lowest possible CDCLK
+	 * doesn't work and causing the underruns.
+	 * Explicitly stating here that this seems to be currently
+	 * rather a Hack, than final solution.
+	 */
+	if (IS_TIGERLAKE(dev_priv))
+		min_cdclk = max(min_cdclk, (int)crtc_state->pixel_rate);
+
 	if (min_cdclk > dev_priv->max_cdclk_freq) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "required cdclk (%d kHz) exceeds max (%d kHz)\n",
-- 
2.24.1.485.gad05a3d8e5

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
