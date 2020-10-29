Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 942F129F56C
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Oct 2020 20:35:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8333E6E8F1;
	Thu, 29 Oct 2020 19:35:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E6B86E8E9
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Oct 2020 19:35:00 +0000 (UTC)
IronPort-SDR: S8Gg0QyC44vKi2KjoRFfz7C8ncLzL8zepqBKXIrckp8Ede+PplAnpHrrmZ3gukqxhW7N3pfMDB
 fkOEAhriNKVQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9789"; a="156272318"
X-IronPort-AV: E=Sophos;i="5.77,430,1596524400"; d="scan'208";a="156272318"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2020 12:34:49 -0700
IronPort-SDR: 6uAaEKL4CAT/NYAf1RiipThESVav2aTei9UQ8cddOmGUP93EfVX99UFGiSuFkNtgAhK4hX56Qg
 SBsinpnXc7ww==
X-IronPort-AV: E=Sophos;i="5.77,430,1596524400"; d="scan'208";a="323820134"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 29 Oct 2020 12:34:49 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 29 Oct 2020 12:36:39 -0700
Message-Id: <20201029193641.23199-4-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20201029193641.23199-1-manasi.d.navare@intel.com>
References: <20201029193641.23199-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 4/6] drm/i915: Pass intel_atomic_state
 instead of drm_atomic_state
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

No functional changes, to align with previous cleanups pass
intel_atomic_state instead of drm_atomic_state.
Also pass this intel_atomic_state with crtc_state to
some of the atomic_check functions.

Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 50522c8a6ff0..78708552095a 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -12671,7 +12671,7 @@ static bool encoders_cloneable(const struct intel_encoder *a,
 			  b->cloneable & (1 << a->type));
 }
 
-static bool check_single_encoder_cloning(struct drm_atomic_state *state,
+static bool check_single_encoder_cloning(struct intel_atomic_state *state,
 					 struct intel_crtc *crtc,
 					 struct intel_encoder *encoder)
 {
@@ -12680,7 +12680,7 @@ static bool check_single_encoder_cloning(struct drm_atomic_state *state,
 	struct drm_connector_state *connector_state;
 	int i;
 
-	for_each_new_connector_in_state(state, connector, connector_state, i) {
+	for_each_new_connector_in_state(&state->base, connector, connector_state, i) {
 		if (connector_state->crtc != &crtc->base)
 			continue;
 
@@ -13531,10 +13531,10 @@ intel_crtc_prepare_cleared_state(struct intel_crtc_state *crtc_state)
 }
 
 static int
-intel_modeset_pipe_config(struct intel_crtc_state *pipe_config)
+intel_modeset_pipe_config(struct intel_atomic_state *state,
+			  struct intel_crtc_state *pipe_config)
 {
 	struct drm_crtc *crtc = pipe_config->uapi.crtc;
-	struct drm_atomic_state *state = pipe_config->uapi.state;
 	struct drm_i915_private *i915 = to_i915(pipe_config->uapi.crtc->dev);
 	struct drm_connector *connector;
 	struct drm_connector_state *connector_state;
@@ -13576,7 +13576,7 @@ intel_modeset_pipe_config(struct intel_crtc_state *pipe_config)
 			       &pipe_config->pipe_src_w,
 			       &pipe_config->pipe_src_h);
 
-	for_each_new_connector_in_state(state, connector, connector_state, i) {
+	for_each_new_connector_in_state(&state->base, connector, connector_state, i) {
 		struct intel_encoder *encoder =
 			to_intel_encoder(connector_state->best_encoder);
 
@@ -13614,7 +13614,7 @@ intel_modeset_pipe_config(struct intel_crtc_state *pipe_config)
 	 * adjust it according to limitations or connector properties, and also
 	 * a chance to reject the mode entirely.
 	 */
-	for_each_new_connector_in_state(state, connector, connector_state, i) {
+	for_each_new_connector_in_state(&state->base, connector, connector_state, i) {
 		struct intel_encoder *encoder =
 			to_intel_encoder(connector_state->best_encoder);
 
@@ -15238,7 +15238,7 @@ static int intel_atomic_check(struct drm_device *dev,
 		if (!new_crtc_state->hw.enable)
 			continue;
 
-		ret = intel_modeset_pipe_config(new_crtc_state);
+		ret = intel_modeset_pipe_config(state, new_crtc_state);
 		if (ret)
 			goto fail;
 	}
-- 
2.19.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
