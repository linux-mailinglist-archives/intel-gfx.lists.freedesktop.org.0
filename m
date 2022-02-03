Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 394A44A8BBE
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Feb 2022 19:38:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E29AB10E9A9;
	Thu,  3 Feb 2022 18:38:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 09C4010E9A9
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Feb 2022 18:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643913512; x=1675449512;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=ixUQu1Qug1aWfDrkxRyf1MaFa65/3HJG163tJ9vX2lI=;
 b=F88Ci8RUdU9AWyIfvQLZF9i6gL9fF3Bsp81zCzkqJJbRql8M34moJgFs
 OQVm+uVEQ1ZzlU6PqDo3DZjBhaBlLko27lXGqQtTkBwlmmUSwbPRaNsqT
 Vf3LObad7h2ztgHJJU9tdNjj5UQ2BtrNo2dxU+SxD9i03X4VPG4LRVlob
 2lw2uhVVTHeTaCz3788f9tUCZ875aSfwE7pxG54uGLGtdjGItdeDogHiP
 yaSPvIOVhELtYPicFydwScb/tZAAQ/d3mQiCBAuD+LjCm8lsJjFp+77oV
 CrWLa0L2WN5soEp5zEZq/iaqoJetWt6vValbkuE+NEiT73dh+5RnRauKw g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10247"; a="228188619"
X-IronPort-AV: E=Sophos;i="5.88,340,1635231600"; d="scan'208";a="228188619"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2022 10:38:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,340,1635231600"; d="scan'208";a="483344210"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga006.jf.intel.com with SMTP; 03 Feb 2022 10:38:30 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 03 Feb 2022 20:38:29 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  3 Feb 2022 20:38:15 +0200
Message-Id: <20220203183823.22890-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220203183823.22890-1-ville.syrjala@linux.intel.com>
References: <20220203183823.22890-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 02/10] drm/i915: Fix bigjoiner state copy fails
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

We seem to be missing a few things from the bigjoiner state copy.
Namely hw.mode isn't getting copied (which probably causes PIPESRC
to be misconfigured), CTM/LUTs aren't getting copied (which could
cause the pipe to produced incorrect output), and we also forgot
to copy over the color_mgmt_changed flag so potentially we fail
to do the actual CTM/LUT programming (assuming we aren't doing
a full modeset or fastset). Fix it all.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 85dce8a093d4..2006eec6e166 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5827,8 +5827,10 @@ intel_crtc_copy_uapi_to_hw_state_nomodeset(struct intel_atomic_state *state,
 	master_crtc_state = intel_atomic_get_new_crtc_state(state, master_crtc);
 
 	/* No need to copy state if the master state is unchanged */
-	if (master_crtc_state)
+	if (master_crtc_state) {
+		crtc_state->uapi.color_mgmt_changed = master_crtc_state->uapi.color_mgmt_changed;
 		intel_crtc_copy_color_blobs(crtc_state, master_crtc_state);
+	}
 }
 
 static void
@@ -5890,13 +5892,23 @@ copy_bigjoiner_crtc_state(struct intel_crtc_state *crtc_state,
 	memset(&crtc_state->hw, 0, sizeof(saved_state->hw));
 	crtc_state->hw.enable = from_crtc_state->hw.enable;
 	crtc_state->hw.active = from_crtc_state->hw.active;
+	crtc_state->hw.mode = from_crtc_state->hw.mode;
 	crtc_state->hw.pipe_mode = from_crtc_state->hw.pipe_mode;
 	crtc_state->hw.adjusted_mode = from_crtc_state->hw.adjusted_mode;
+	crtc_state->hw.scaling_filter = from_crtc_state->hw.scaling_filter;
+
+	drm_property_replace_blob(&crtc_state->hw.degamma_lut,
+				  from_crtc_state->hw.degamma_lut);
+	drm_property_replace_blob(&crtc_state->hw.gamma_lut,
+				  from_crtc_state->hw.gamma_lut);
+	drm_property_replace_blob(&crtc_state->uapi.ctm,
+				  from_crtc_state->hw.ctm);
 
 	/* Some fixups */
 	crtc_state->uapi.mode_changed = from_crtc_state->uapi.mode_changed;
 	crtc_state->uapi.connectors_changed = from_crtc_state->uapi.connectors_changed;
 	crtc_state->uapi.active_changed = from_crtc_state->uapi.active_changed;
+	crtc_state->uapi.color_mgmt_changed = from_crtc_state->uapi.color_mgmt_changed;
 	crtc_state->nv12_planes = crtc_state->c8_planes = crtc_state->update_planes = 0;
 	crtc_state->bigjoiner_linked_crtc = to_intel_crtc(from_crtc_state->uapi.crtc);
 	crtc_state->bigjoiner_slave = true;
-- 
2.34.1

