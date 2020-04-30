Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C7661C0746
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2020 22:03:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72C4A6E43A;
	Thu, 30 Apr 2020 20:03:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F065C6E43A
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Apr 2020 20:03:29 +0000 (UTC)
IronPort-SDR: 3PoPVNDLoyWUX0KgDwf2Oxxgm8+eBjdHyMCtmZvMF0HvNP/Z3OiDdrqamKOmEEiZpDQA7rD42G
 /hgXmdPCge+A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2020 13:03:29 -0700
IronPort-SDR: 14QFND3vy1ko3zIAsH9mQrA1IbcDSz8IzmFj2YAClf17z9vER/GENShEvs3f454YyfGVwxDNJB
 cwflrnRCv1bQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,337,1583222400"; d="scan'208";a="249844728"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.89])
 by fmsmga008.fm.intel.com with ESMTP; 30 Apr 2020 13:03:27 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 30 Apr 2020 22:59:11 +0300
Message-Id: <20200430195911.7781-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
In-Reply-To: <20200423075902.21892-5-stanislav.lisovskiy@intel.com>
References: <20200423075902.21892-5-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v26 4/9] drm/i915: Separate icl and skl SAGV
 checking
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

Introduce platform dependent SAGV checking in
combination with bandwidth state pipe SAGV mask.

v2, v3, v4, v5, v6: Fix rebase conflict

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/intel_pm.c | 30 ++++++++++++++++++++++++++++--
 1 file changed, 28 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 005549d0b778..700ec80c40fb 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -3853,6 +3853,24 @@ static bool intel_crtc_can_enable_sagv(const struct intel_crtc_state *crtc_state
 	return true;
 }
 
+static bool skl_crtc_can_enable_sagv(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_atomic_state *state = to_intel_atomic_state(crtc_state->uapi.state);
+	/*
+	 * SKL+ workaround: bspec recommends we disable SAGV when we have
+	 * more then one pipe enabled
+	 */
+	if (hweight8(state->active_pipes) > 1)
+		return false;
+
+	return intel_crtc_can_enable_sagv(crtc_state);
+}
+
+static bool icl_crtc_can_enable_sagv(const struct intel_crtc_state *crtc_state)
+{
+	return intel_crtc_can_enable_sagv(crtc_state);
+}
+
 bool intel_can_enable_sagv(const struct intel_bw_state *bw_state)
 {
 	if (bw_state->active_pipes && !is_power_of_2(bw_state->active_pipes))
@@ -3863,22 +3881,30 @@ bool intel_can_enable_sagv(const struct intel_bw_state *bw_state)
 
 static int intel_compute_sagv_mask(struct intel_atomic_state *state)
 {
+	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
 	int ret;
 	struct intel_crtc *crtc;
-	struct intel_crtc_state *new_crtc_state;
+	const struct intel_crtc_state *new_crtc_state;
 	struct intel_bw_state *new_bw_state = NULL;
 	const struct intel_bw_state *old_bw_state = NULL;
 	int i;
 
 	for_each_new_intel_crtc_in_state(state, crtc,
 					 new_crtc_state, i) {
+		bool can_sagv;
+
 		new_bw_state = intel_atomic_get_bw_state(state);
 		if (IS_ERR(new_bw_state))
 			return PTR_ERR(new_bw_state);
 
 		old_bw_state = intel_atomic_get_old_bw_state(state);
 
-		if (intel_crtc_can_enable_sagv(new_crtc_state))
+		if (INTEL_GEN(dev_priv) >= 11)
+			can_sagv = icl_crtc_can_enable_sagv(new_crtc_state);
+		else
+			can_sagv = skl_crtc_can_enable_sagv(new_crtc_state);
+
+		if (can_sagv)
 			new_bw_state->pipe_sagv_reject &= ~BIT(crtc->pipe);
 		else
 			new_bw_state->pipe_sagv_reject |= BIT(crtc->pipe);
-- 
2.24.1.485.gad05a3d8e5

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
