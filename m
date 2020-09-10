Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C27326455E
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Sep 2020 13:36:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 187C589F47;
	Thu, 10 Sep 2020 11:36:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0848189F47
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Sep 2020 11:36:09 +0000 (UTC)
IronPort-SDR: l2cfGjHHOXkmEZpA3qc5I9MtwazE81HNtFkn9II/DP0tYmQ5TnMIi1pgvAr+ucdrLM5TsPQvb1
 O34QYYiZaW9Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9739"; a="146233142"
X-IronPort-AV: E=Sophos;i="5.76,412,1592895600"; d="scan'208";a="146233142"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2020 04:36:09 -0700
IronPort-SDR: i7OsczCWidUZFt61u4YYfKZwVzwlTz84rVbquuSpH1arOjhHnnQb1kWHPfeRbPz1OmBfg1w2GC
 deJjGrV2LwZA==
X-IronPort-AV: E=Sophos;i="5.76,412,1592895600"; d="scan'208";a="480854662"
Received: from unknown (HELO linux-desktop.iind.intel.com) ([10.223.34.173])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2020 04:36:07 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Sep 2020 17:41:53 +0530
Message-Id: <20200910121153.6749-1-uma.shankar@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/display: Add a vblank wait for FBC
 activation within same frame
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

Add a vblank wait when fbc activation request comes for the
same frame on TGL. This helps fix underrun related to fbc.

Signed-off-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 135f5e8a4d70..3e1d715e4a4e 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -1055,6 +1055,7 @@ static void __intel_fbc_post_update(struct intel_crtc *crtc)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	struct intel_fbc *fbc = &dev_priv->fbc;
+	static u32 old_frame_cnt, new_frame_cnt;
 
 	drm_WARN_ON(&dev_priv->drm, !mutex_is_locked(&fbc->lock));
 
@@ -1075,10 +1076,18 @@ static void __intel_fbc_post_update(struct intel_crtc *crtc)
 	if (!intel_fbc_can_activate(crtc))
 		return;
 
-	if (!fbc->busy_bits)
+	old_frame_cnt = new_frame_cnt;
+	new_frame_cnt = intel_crtc_get_vblank_counter(crtc);
+	if (!fbc->busy_bits) {
+		if (IS_TIGERLAKE(dev_priv) &&
+		    old_frame_cnt == new_frame_cnt) {
+			drm_dbg_kms(&dev_priv->drm, "Wait for vblank before Activating FBC");
+			intel_wait_for_vblank_if_active(dev_priv, crtc->pipe);
+		}
 		intel_fbc_hw_activate(dev_priv);
-	else
+	} else {
 		intel_fbc_deactivate(dev_priv, "frontbuffer write");
+	}
 }
 
 void intel_fbc_post_update(struct intel_atomic_state *state,
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
