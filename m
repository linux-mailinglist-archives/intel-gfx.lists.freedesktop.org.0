Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 66BAA9EE8DF
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2024 15:32:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3436510EE02;
	Thu, 12 Dec 2024 14:32:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nIPC4i+E";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0500310EE01;
 Thu, 12 Dec 2024 14:31:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734013920; x=1765549920;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZXAasgRivInqEu7SdQxBylx3nLhQe2j4PZfVmnDgrAU=;
 b=nIPC4i+EP96Wf9bCt9Llxk0X4y9lMtsujz0jg02/SFvhvpEsyQjDl2hA
 Fwunjqdwogi7A1WQXmephWaEqvvQLUVfhS1d5Lo4nv/AhiY3lZjIJdre7
 q16W6ilXHVSxY8ItsaGKKzZJtA0wVojs70F1qVjKDcFTJifAWMd5wL06J
 KF7IWpatQJmjRkjhHzSL7S9AIYGXTjA/Wss/yfEOrfwQyPlJ6RunrBGEx
 k66WsOzx8ngInmN8J7af/8999iMo6fSpVhVAAXNxMPo26+avg67AzwzMV
 xK5YJy5HcIyxUwvHZqs15w0Toqrzwlgpnf0JvWgiy8PyYAQ8ZZK6ILtAQ w==;
X-CSE-ConnectionGUID: hBFfacyaS9ac4TGahdrzgQ==
X-CSE-MsgGUID: k1gy1AnkRN6nVKKRrw1dTQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11282"; a="38362119"
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="38362119"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2024 06:32:00 -0800
X-CSE-ConnectionGUID: h3jMXE7JSFut1uH2cObqEA==
X-CSE-MsgGUID: 04K4POxVQE6+jANm40Yo0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,228,1728975600"; d="scan'208";a="101262096"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by orviesa004.jf.intel.com with ESMTP; 12 Dec 2024 06:31:58 -0800
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Nemesa Garg <nemesa.garg@intel.com>
Subject: [PATCH 1/2] drm/i915/display: After joiner compute pfit_dst
Date: Thu, 12 Dec 2024 20:03:28 +0530
Message-Id: <20241212143329.938202-2-nemesa.garg@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241212143329.938202-1-nemesa.garg@intel.com>
References: <20241212143329.938202-1-nemesa.garg@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=y
Content-Transfer-Encoding: 8bit
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

In panel fitter/pipe scaler scenario the pch_pfit configuration
currently takes place before accounting for pipe_src width for
joiner. This causes issue when pch_pfit and joiner get enabled
together.So once pipe src is computed adjust the pfit_dst.
It can be done by computing per pipe output area first and then
and then find the intersection of above area with pfit_dst and
then adjust the coordinates.

Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 41 ++++++++++++++++++++
 1 file changed, 41 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 21319f753a34..7be2ea11b8b0 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2563,6 +2563,36 @@ static int intel_crtc_compute_pipe_src(struct intel_crtc_state *crtc_state)
 	return 0;
 }
 
+/*
+ * The x-coordinate for Primary should be calculated in such a way
+ * that it remains consistent whether the pipes are joined or not.
+ * This means we need to consider the full width of the display even
+ * when the pipes are joined. The x-coordinate for secondaries is 0
+ * because it starts at the leftmost point of its own display area,
+ * ensuring that the framebuffer is centered within Pipe B’s portion
+ * of the overall display.
+ */
+static int intel_crtc_compute_pfit(struct intel_atomic_state *state,
+				   struct intel_crtc_state *crtc_state)
+{
+	struct drm_display_mode *mode = &crtc_state->hw.pipe_mode;
+	struct drm_rect area;
+
+	if (!crtc_state->pch_pfit.enabled)
+		return 0;
+
+	drm_rect_init(&area, 0, 0,
+		      mode->crtc_hdisplay,
+		      mode->crtc_vdisplay);
+
+	if (!drm_rect_intersect(&crtc_state->pch_pfit.dst, &area))
+		return -EINVAL;
+
+	drm_rect_translate(&crtc_state->pch_pfit.dst, -area.x1, -area.y1);
+
+	return 0;
+}
+
 static int intel_crtc_compute_pipe_mode(struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
@@ -2645,6 +2675,10 @@ static int intel_crtc_compute_config(struct intel_atomic_state *state,
 	if (ret)
 		return ret;
 
+	ret = intel_crtc_compute_pfit(state, crtc_state);
+	if (ret)
+		return ret;
+
 	intel_crtc_compute_pixel_rate(crtc_state);
 
 	if (crtc_state->has_pch_encoder)
@@ -4865,6 +4899,13 @@ copy_joiner_crtc_state_modeset(struct intel_atomic_state *state,
 		drm_dp_tunnel_ref_get(primary_crtc_state->dp_tunnel_ref.tunnel,
 				      &secondary_crtc_state->dp_tunnel_ref);
 
+	if (secondary_crtc_state->pch_pfit.enabled) {
+		struct drm_rect *dst = &secondary_crtc_state->pch_pfit.dst;
+		int y = dst->y1;
+
+		drm_rect_translate_to(dst, 0, y);
+	}
+
 	copy_joiner_crtc_state_nomodeset(state, secondary_crtc);
 
 	secondary_crtc_state->uapi.mode_changed = primary_crtc_state->uapi.mode_changed;
-- 
2.25.1

