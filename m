Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 87DD719463E
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2020 19:14:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9CF56E90A;
	Thu, 26 Mar 2020 18:14:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9B626E904
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2020 18:14:10 +0000 (UTC)
IronPort-SDR: 3VFxCQICNM5NUBmkx8qzC87VBsLW0a43mwsrW02H0jKBX6x6fKJjvgF/OUMfkza8Ihex+guEBy
 zkcTB/fRUJBA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2020 11:14:10 -0700
IronPort-SDR: CW0yBfz9OKuaDGhz1OFLh8EyDzRfIND/Z9c7w3bGNm/zVT/MgNAF5550LvUAnprXP+ZxyJ3/GB
 SS+tG7sz5cEg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,309,1580803200"; d="scan'208";a="420808311"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.89])
 by orsmga005.jf.intel.com with ESMTP; 26 Mar 2020 11:14:08 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 26 Mar 2020 20:10:03 +0200
Message-Id: <20200326181005.11775-9-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
In-Reply-To: <20200326181005.11775-1-stanislav.lisovskiy@intel.com>
References: <20200326181005.11775-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v20 08/10] drm/i915: Rename bw_state to
 new_bw_state
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

That is a preparation patch before next one where we
introduce old_bw_state and a bunch of other changes
as well.
In a review comment it was suggested to split out
at least that renaming into a separate patch, what
is done here.

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 24 ++++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index a8b2038db4d2..d16771dd2b10 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -418,7 +418,7 @@ int intel_bw_atomic_check(struct intel_atomic_state *state)
 {
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
 	struct intel_crtc_state *new_crtc_state, *old_crtc_state;
-	struct intel_bw_state *bw_state = NULL;
+	struct intel_bw_state *new_bw_state = NULL;
 	unsigned int data_rate, max_data_rate;
 	unsigned int num_active_planes;
 	struct intel_crtc *crtc;
@@ -447,29 +447,29 @@ int intel_bw_atomic_check(struct intel_atomic_state *state)
 		    old_active_planes == new_active_planes)
 			continue;
 
-		bw_state  = intel_atomic_get_bw_state(state);
-		if (IS_ERR(bw_state))
-			return PTR_ERR(bw_state);
+		new_bw_state  = intel_atomic_get_bw_state(state);
+		if (IS_ERR(new_bw_state))
+			return PTR_ERR(new_bw_state);
 
-		bw_state->data_rate[crtc->pipe] = new_data_rate;
-		bw_state->num_active_planes[crtc->pipe] = new_active_planes;
+		new_bw_state->data_rate[crtc->pipe] = new_data_rate;
+		new_bw_state->num_active_planes[crtc->pipe] = new_active_planes;
 
 		drm_dbg_kms(&dev_priv->drm,
 			    "pipe %c data rate %u num active planes %u\n",
 			    pipe_name(crtc->pipe),
-			    bw_state->data_rate[crtc->pipe],
-			    bw_state->num_active_planes[crtc->pipe]);
+			    new_bw_state->data_rate[crtc->pipe],
+			    new_bw_state->num_active_planes[crtc->pipe]);
 	}
 
-	if (!bw_state)
+	if (!new_bw_state)
 		return 0;
 
-	ret = intel_atomic_lock_global_state(&bw_state->base);
+	ret = intel_atomic_lock_global_state(&new_bw_state->base);
 	if (ret)
 		return ret;
 
-	data_rate = intel_bw_data_rate(dev_priv, bw_state);
-	num_active_planes = intel_bw_num_active_planes(dev_priv, bw_state);
+	data_rate = intel_bw_data_rate(dev_priv, new_bw_state);
+	num_active_planes = intel_bw_num_active_planes(dev_priv, new_bw_state);
 
 	max_data_rate = intel_max_data_rate(dev_priv, num_active_planes);
 
-- 
2.24.1.485.gad05a3d8e5

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
