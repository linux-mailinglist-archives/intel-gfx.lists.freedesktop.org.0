Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A4D841341AF
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2020 13:29:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2CF046E28B;
	Wed,  8 Jan 2020 12:29:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FD6B6E28B
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jan 2020 12:29:13 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jan 2020 04:29:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,409,1571727600"; d="scan'208";a="218056322"
Received: from slisovsk-lenovo-ideapad-720s-13ikb.fi.intel.com ([10.237.72.89])
 by fmsmga008.fm.intel.com with ESMTP; 08 Jan 2020 04:29:11 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 Jan 2020 14:26:50 +0200
Message-Id: <20200108122650.13823-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v1] drm/i915: Bump up CDCLK to eliminate
 underruns on TGL
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

There seems to be some undocumented bandwidth
bottleneck/dependency which scales with CDCLK,
causing FIFO underruns when CDCLK is too low,
even when it's correct from BSpec point of view.

Currently for TGL platforms we calculate
min_cdclk initially based on pixel_rate divided
by 2, accounting for also plane requirements,
however in some cases the lowest possible CDCLK
doesn't work and causing the underruns.

Explicitly stating here that this seems to be currently
rather a Hack, than final solution.

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Bugzilla: https://gitlab.freedesktop.org/drm/intel/issues/402
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 7d1ab1e5b7c3..3db4060ed190 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -2004,6 +2004,13 @@ int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_state)
 	/* Account for additional needs from the planes */
 	min_cdclk = max(intel_planes_min_cdclk(crtc_state), min_cdclk);
 
+	if (IS_GEN(dev_priv, 12)) {
+		if (min_cdclk <= DIV_ROUND_UP(crtc_state->pixel_rate, 2)) {
+			min_cdclk = min(min_cdclk * 2,
+				    ((int)dev_priv->max_cdclk_freq));
+		}
+	}
+
 	if (min_cdclk > dev_priv->max_cdclk_freq) {
 		DRM_DEBUG_KMS("required cdclk (%d kHz) exceeds max (%d kHz)\n",
 			      min_cdclk, dev_priv->max_cdclk_freq);
-- 
2.24.1.485.gad05a3d8e5

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
