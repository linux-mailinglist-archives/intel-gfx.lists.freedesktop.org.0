Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 06E771488DC
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2020 15:32:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4070872AD2;
	Fri, 24 Jan 2020 14:32:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EDABD72AD2
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jan 2020 14:32:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 06:31:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,357,1574150400"; d="scan'208";a="222634004"
Received: from slisovsk-lenovo-ideapad-720s-13ikb.fi.intel.com ([10.237.72.89])
 by fmsmga008.fm.intel.com with ESMTP; 24 Jan 2020 06:31:48 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Jan 2020 16:28:13 +0200
Message-Id: <20200124142813.3751-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v1] drm/i915: Fix inconsistance between
 pfit.enable and scaler freeing
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

Despite that during hw readout we seem to have scalers assigned
to pipes, then call atomic_setup_scalers, at the commit stage in
skl_update_scaler there is a check, that if we have fb src and
dest of same size, we stage freeing of that scaler.

However we don't update pfit.enabled flag then, which makes
the state inconsistent, which in turn triggers a WARN_ON
in skl_pfit_enable, because we have pfit enabled,
but no assigned scaler.

To me this looks weird that we kind of do the decision
to use or not use the scaler at skl_update_scaler stage
but not in intel_atomic_setup_scalers, moreover
not updating the whole state consistently.

This fix is to not free the scaler if we have pfit.enabled
flag set, so that the state is now consistent
and the warnings are gone.

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 5768cfcf71c4..23221b8d244d 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5953,7 +5953,7 @@ skl_update_scaler(struct intel_crtc_state *crtc_state, bool force_detach,
 	 * the 90/270 degree plane rotation cases (to match the
 	 * GTT mapping), hence no need to account for rotation here.
 	 */
-	if (src_w != dst_w || src_h != dst_h)
+	if (src_w != dst_w || src_h != dst_h || crtc_state->pch_pfit.enabled)
 		need_scaler = true;
 
 	/*
-- 
2.24.1.485.gad05a3d8e5

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
