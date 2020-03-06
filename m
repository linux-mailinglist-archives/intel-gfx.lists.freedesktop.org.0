Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F3A6717BC0A
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Mar 2020 12:46:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57AE26ECE1;
	Fri,  6 Mar 2020 11:46:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 46EEC6ECE1
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Mar 2020 11:46:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Mar 2020 03:46:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,521,1574150400"; d="scan'208";a="241148767"
Received: from unknown (HELO karthik-2012-Client-Platform.iind.intel.com)
 ([10.223.74.208])
 by orsmga003.jf.intel.com with ESMTP; 06 Mar 2020 03:46:18 -0800
From: Karthik B S <karthik.b.s@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  6 Mar 2020 17:09:23 +0530
Message-Id: <20200306113927.16904-4-karthik.b.s@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200306113927.16904-1-karthik.b.s@intel.com>
References: <20200306113927.16904-1-karthik.b.s@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 3/7] drm/i915: Make commit call blocking in case
 of async flips
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

Signed-off-by: Karthik B S <karthik.b.s@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 4ce9897f5c58..25fad5d01e67 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -15737,7 +15737,9 @@ static int intel_atomic_commit(struct drm_device *dev,
 {
 	struct intel_atomic_state *state = to_intel_atomic_state(_state);
 	struct drm_i915_private *dev_priv = to_i915(dev);
-	int ret = 0;
+	struct intel_crtc_state *new_crtc_state;
+	struct intel_crtc *crtc;
+	int ret = 0, i;
 
 	state->wakeref = intel_runtime_pm_get(&dev_priv->runtime_pm);
 
@@ -15763,10 +15765,6 @@ static int intel_atomic_commit(struct drm_device *dev,
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
@@ -15808,6 +15806,13 @@ static int intel_atomic_commit(struct drm_device *dev,
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
