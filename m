Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF9231B0602
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2020 11:53:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8578B6E4C1;
	Mon, 20 Apr 2020 09:52:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7DBB56E4B1
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Apr 2020 09:52:51 +0000 (UTC)
IronPort-SDR: 1qq11lDsSg2tzC6oeY0EspSMT5mCJGIscY6hrNFlakkIwEtwtkqvqdGGPKKgv7FOLaeC9C7uZN
 8cJ/LL5MnmgA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2020 02:52:51 -0700
IronPort-SDR: yRHUcyOJRAhgiGngW9WvcYBDRnZx00pfxtzmFyy3z34t08sj719GeB9SaAL57XDNEPzlGhdMMX
 T3p4t66P3MTA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,406,1580803200"; d="scan'208";a="429065143"
Received: from unknown (HELO karthik-2012-Client-Platform.iind.intel.com)
 ([10.223.74.208])
 by orsmga005.jf.intel.com with ESMTP; 20 Apr 2020 02:52:49 -0700
From: Karthik B S <karthik.b.s@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Apr 2020 15:17:44 +0530
Message-Id: <20200420094746.20409-5-karthik.b.s@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200420094746.20409-1-karthik.b.s@intel.com>
References: <20200420094746.20409-1-karthik.b.s@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 4/6] drm/i915: Make commit call blocking in
 case of async flips
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
Cc: paulo.r.zanoni@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Make the commit call blocking in case of async flips
so that there is no delay in completing the flip.

v2: -Rebased

Signed-off-by: Karthik B S <karthik.b.s@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 8601b159f425..a5203de24045 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -15563,7 +15563,9 @@ static int intel_atomic_commit(struct drm_device *dev,
 {
 	struct intel_atomic_state *state = to_intel_atomic_state(_state);
 	struct drm_i915_private *dev_priv = to_i915(dev);
-	int ret = 0;
+	struct intel_crtc_state *new_crtc_state;
+	struct intel_crtc *crtc;
+	int ret = 0, i;
 
 	state->wakeref = intel_runtime_pm_get(&dev_priv->runtime_pm);
 
@@ -15589,10 +15591,6 @@ static int intel_atomic_commit(struct drm_device *dev,
 	 * (assuming we had any) would solve these problems.
 	 */
 	if (INTEL_GEN(dev_priv) < 9 && state->base.legacy_cursor_update) {
-		struct intel_crtc_state *new_crtc_state;
-		struct intel_crtc *crtc;
-		int i;
-
 		for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i)
 			if (new_crtc_state->wm.need_postvbl_update ||
 			    new_crtc_state->update_wm_post)
@@ -15634,6 +15632,13 @@ static int intel_atomic_commit(struct drm_device *dev,
 	drm_atomic_state_get(&state->base);
 	INIT_WORK(&state->base.commit_work, intel_atomic_commit_work);
 
+	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
+		if (new_crtc_state->uapi.async_flip) {
+			nonblock = false;
+			break;
+		}
+	}
+
 	i915_sw_fence_commit(&state->commit_ready);
 	if (nonblock && state->modeset) {
 		queue_work(dev_priv->modeset_wq, &state->base.commit_work);
-- 
2.22.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
