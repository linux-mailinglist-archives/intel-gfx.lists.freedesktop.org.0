Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4040C77FBC2
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Aug 2023 18:16:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBD7D10E511;
	Thu, 17 Aug 2023 16:16:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42BFF10E511
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Aug 2023 16:16:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692288966; x=1723824966;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=rYM9c5G2Yu0TLd3F8UxZ+RQ6Yg90T5cRcHaWNQnD9Eg=;
 b=OnUhH9JzrLSOZwum632A1FpJfh4dzbehgStsPLYSWPHjuSgZsHqFJL69
 bhFTrUnewhXKFyJrLZyL+LMSVmSbDRgG56v5i6mc93TWrlhC3L16r3hOQ
 X45LAGw8b47/om6mHvhqN7dXIdde/183u4mbOY7Z0HSHGBGiyXuYEmAon
 GfHVyfgbZJrMq8QKBqVmlLeVkGvn1FtFiy0Qwr5aeux5ebOnW0ypcSwx6
 JxU+vJSuz4pJzRNfISqh52Lt2DQm2R2KWcY/n8ovM5Qgz2thmkYACkEga
 VkbKFec1hrxGTE6qHduipqiTuu0jhe7NC7fa+q1YBdUs6eSOKc+EMDCvC Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="357826605"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="357826605"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2023 09:14:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="711601353"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="711601353"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2023 09:14:48 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 17 Aug 2023 19:14:45 +0300
Message-Id: <20230817161456.3857111-7-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230817161456.3857111-1-imre.deak@intel.com>
References: <20230817161456.3857111-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 06/17] drm/i915: Add helper to modeset a set of
 pipes
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

Add intel_modeset_pipes_in_mask() to modeset a provided set of pipes,
used in a follow-up patch.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 12 +++++++++---
 drivers/gpu/drm/i915/display/intel_display.h |  2 ++
 2 files changed, 11 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 763ab569d8f32..c35e5d7e45a3b 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5420,8 +5420,8 @@ intel_verify_planes(struct intel_atomic_state *state)
 			     plane_state->uapi.visible);
 }
 
-int intel_modeset_all_pipes(struct intel_atomic_state *state,
-			    const char *reason)
+int intel_modeset_pipes_in_mask(struct intel_atomic_state *state,
+				const char *reason, u8 mask)
 {
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
 	struct intel_crtc *crtc;
@@ -5430,7 +5430,7 @@ int intel_modeset_all_pipes(struct intel_atomic_state *state,
 	 * Add all pipes to the state, and force
 	 * a modeset on all the active ones.
 	 */
-	for_each_intel_crtc(&dev_priv->drm, crtc) {
+	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, crtc, mask) {
 		struct intel_crtc_state *crtc_state;
 		int ret;
 
@@ -5469,6 +5469,12 @@ int intel_modeset_all_pipes(struct intel_atomic_state *state,
 	return 0;
 }
 
+int intel_modeset_all_pipes(struct intel_atomic_state *state,
+			    const char *reason)
+{
+	return intel_modeset_pipes_in_mask(state, reason, -1);
+}
+
 /*
  * This implements the workaround described in the "notes" section of the mode
  * set sequence documentation. When going from no pipes or single pipe to
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 49ac8473b988b..ffbabfc9e1e10 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -515,6 +515,8 @@ void intel_update_watermarks(struct drm_i915_private *i915);
 /* modesetting */
 int intel_modeset_all_pipes(struct intel_atomic_state *state,
 			    const char *reason);
+int intel_modeset_pipes_in_mask(struct intel_atomic_state *state,
+				const char *reason, u8 pipe_mask);
 void intel_modeset_get_crtc_power_domains(struct intel_crtc_state *crtc_state,
 					  struct intel_power_domain_mask *old_domains);
 void intel_modeset_put_crtc_power_domains(struct intel_crtc *crtc,
-- 
2.37.2

