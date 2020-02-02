Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A56414FFF0
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Feb 2020 00:03:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 602FF6E137;
	Sun,  2 Feb 2020 23:03:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 484E66E137
 for <intel-gfx@lists.freedesktop.org>; Sun,  2 Feb 2020 23:03:12 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Feb 2020 15:03:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,395,1574150400"; d="scan'208";a="263228833"
Received: from slisovsk-lenovo-ideapad-720s-13ikb.fi.intel.com ([10.237.72.89])
 by fmsmga002.fm.intel.com with ESMTP; 02 Feb 2020 15:03:10 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  3 Feb 2020 00:59:37 +0200
Message-Id: <20200202225940.7845-4-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
In-Reply-To: <20200202225940.7845-1-stanislav.lisovskiy@intel.com>
References: <20200202225940.7845-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v17 3/6] drm/i915: Update dbuf slices only with
 full modeset
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

During full modeset, global state(i.e dev_priv) is protected
by locking the crtcs in state, otherwise global state is not
serialized. Also if it is not a full modeset, we anyway
don't need to change DBuf slice configuration as Pipe configuration
doesn't change.

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index d553de2c3f5e..27622ef069cf 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -15695,7 +15695,8 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 		intel_encoders_update_prepare(state);
 
 	/* Enable all new slices, we might need */
-	icl_dbuf_slice_pre_update(state);
+	if (state->modeset)
+		icl_dbuf_slice_pre_update(state);
 
 	/* Now enable the clocks, plane, pipe, and connectors that we set up. */
 	dev_priv->display.commit_modeset_enables(state);
@@ -15751,7 +15752,8 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 	}
 
 	/* Disable all slices, we don't need */
-	icl_dbuf_slice_post_update(state);
+	if (state->modeset)
+		icl_dbuf_slice_post_update(state);
 
 	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state, new_crtc_state, i) {
 		intel_post_plane_update(state, crtc);
-- 
2.24.1.485.gad05a3d8e5

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
