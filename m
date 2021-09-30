Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 006D741D07D
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Sep 2021 02:09:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B1026EB12;
	Thu, 30 Sep 2021 00:09:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 695A36E2B4
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Sep 2021 00:08:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10122"; a="212148104"
X-IronPort-AV: E=Sophos;i="5.85,334,1624345200"; d="scan'208";a="212148104"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2021 17:08:30 -0700
X-IronPort-AV: E=Sophos;i="5.85,334,1624345200"; d="scan'208";a="438658513"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-mobl2.intel.com)
 ([10.24.14.60])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2021 17:08:30 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
Date: Wed, 29 Sep 2021 17:14:09 -0700
Message-Id: <20210930001409.254817-9-jose.souza@intel.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210930001409.254817-1-jose.souza@intel.com>
References: <20210930001409.254817-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 9/9] drm/i915/display: Always wait vblank
 counter to increment when commit needs a modeset
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Not waiting for vblank counter to increment could potentialy cause
issues as commits after the one that needs a modeset could change
state of entities that are not committed into hardware yet.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 17 +++++++++++++----
 1 file changed, 13 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 9e9db1b0a907b..9c49b6031cb5e 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -10494,15 +10494,24 @@ static int intel_atomic_commit(struct drm_device *dev,
 	 * FIXME doing watermarks and fb cleanup from a vblank worker
 	 * (assuming we had any) would solve these problems.
 	 */
-	if (DISPLAY_VER(dev_priv) < 9 && state->base.legacy_cursor_update) {
+	if (state->base.legacy_cursor_update) {
 		struct intel_crtc_state *new_crtc_state;
 		struct intel_crtc *crtc;
 		int i;
 
-		for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i)
-			if (new_crtc_state->wm.need_postvbl_update ||
-			    new_crtc_state->update_wm_post)
+		for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
+			if (intel_crtc_needs_modeset(new_crtc_state)) {
+				state->base.legacy_cursor_update = false;
+				break;
+			}
+
+			if (DISPLAY_VER(dev_priv) < 9 &&
+			    (new_crtc_state->wm.need_postvbl_update ||
+			     new_crtc_state->update_wm_post)) {
 				state->base.legacy_cursor_update = false;
+				break;
+			}
+		}
 	}
 
 	ret = intel_atomic_prepare_commit(state);
-- 
2.33.0

