Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 64D7917BC0D
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Mar 2020 12:46:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B42326ECE6;
	Fri,  6 Mar 2020 11:46:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C30F96ECE4
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Mar 2020 11:46:28 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Mar 2020 03:46:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,521,1574150400"; d="scan'208";a="241148794"
Received: from unknown (HELO karthik-2012-Client-Platform.iind.intel.com)
 ([10.223.74.208])
 by orsmga003.jf.intel.com with ESMTP; 06 Mar 2020 03:46:26 -0800
From: Karthik B S <karthik.b.s@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  6 Mar 2020 17:09:26 +0530
Message-Id: <20200306113927.16904-7-karthik.b.s@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200306113927.16904-1-karthik.b.s@intel.com>
References: <20200306113927.16904-1-karthik.b.s@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 6/7] drm/i915: Enable and handle flip done
 interrupt
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

Enable flip done function is called before writing the
surface address register as the write to this register triggers
the flip done interrupt.

If the flip done event is requested then send it in the flip done handler,
and then disable the interrupt.

Signed-off-by: Karthik B S <karthik.b.s@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 7 +++++++
 drivers/gpu/drm/i915/i915_irq.c              | 3 +++
 2 files changed, 10 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index a8de08c3773e..757380af1f93 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -15604,6 +15604,13 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 	if (state->modeset)
 		icl_dbuf_slice_pre_update(state);
 
+	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
+		if (new_crtc_state->uapi.async_flip) {
+			icl_enable_flip_done(&crtc->base);
+			break;
+		}
+	}
+
 	/* Now enable the clocks, plane, pipe, and connectors that we set up. */
 	dev_priv->display.commit_modeset_enables(state);
 
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 1feda9aecf4a..c9b1bb0e2c30 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -2363,6 +2363,9 @@ gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
 		if (iir & GEN8_PIPE_VBLANK)
 			intel_handle_vblank(dev_priv, pipe);
 
+		if (iir & GEN9_PIPE_PLANE1_FLIP_DONE)
+			flip_done_handler(dev_priv, pipe);
+
 		if (iir & GEN8_PIPE_CDCLK_CRC_DONE)
 			hsw_pipe_crc_irq_handler(dev_priv, pipe);
 
-- 
2.22.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
