Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5605B4A946E
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Feb 2022 08:20:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6AD6410F059;
	Fri,  4 Feb 2022 07:20:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93F0F10F059
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Feb 2022 07:20:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643959212; x=1675495212;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=6dmTxHiyHNbrIi/HNKIdKL5afGwg089JbNCeBRYHQPY=;
 b=hNT5xG0PuXhUmqm0YadMNVHm6GQ43dZ+DkvDdvtoPHA9X4lxAdQlSikb
 x/XRGleo7Ri2MoGdNy51pMf09XpzkHakJFdTv9uGIk5vOk8ZFrBsbv+EI
 LDJRSOd5ylnaB1ATgA1OcXrC6Dkw86/S8a7EI4ZpbbuN8ptvUwcr+CPJZ
 QpTUOFom1YF/z0+IDEQIA/wsfHVHhR0yAE3auV146UYPLi0SB29NUOQls
 5K3c9QwpfL6Ra1qrky0Bvefc4i2QF4wcn7k8mQ5yp0lu/DBKG3p6ikgFF
 2GYYTckjDH3NP961y69r1Z1LK3J9YWjItKLM4PhPVL9DEmzK3wC+dBI7R A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10247"; a="248536351"
X-IronPort-AV: E=Sophos;i="5.88,342,1635231600"; d="scan'208";a="248536351"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2022 23:20:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,342,1635231600"; d="scan'208";a="627700479"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga002.fm.intel.com with SMTP; 03 Feb 2022 23:20:10 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 04 Feb 2022 09:20:09 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  4 Feb 2022 09:20:09 +0200
Message-Id: <20220204072009.1546-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220203183823.22890-3-ville.syrjala@linux.intel.com>
References: <20220203183823.22890-3-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 02/10] drm/i915: Fix bigjoiner state copy
 fails
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

v2: Fix uapi.ctm vs. hw.ctm copy-paste fail

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 85dce8a093d4..4f5f023417a6 100644
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
+	drm_property_replace_blob(&crtc_state->hw.ctm,
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

