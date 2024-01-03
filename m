Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61203823081
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jan 2024 16:26:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDB0210E329;
	Wed,  3 Jan 2024 15:26:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE4AC10E329
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Jan 2024 15:26:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704295588; x=1735831588;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=rsp30gJ/SutkecwfZ8KadXfnKusiBrUZbINGz50Ptng=;
 b=T/LfQMeUenD1bDJcOCVAvWqozQjAHI9tCD13dFidoD8J06YDs7umPqaT
 Meb9lf7Dwl6O8WXx9ey7DWVH7k9UrOg5J1BxIHM4z2xOF9UJhosHxx9gE
 EWNJOS0za/2hQDkbKCcNMoI8tBhXRXGWbd49/ZwUiswLHFF8A1tNd+wdj
 f0evNSXkOZ4XY7jszb6YbLiwoIQZwmJYbUo5tecQTPyLYNW6+THqbNQpv
 LGIz7b4oQTGnbKFJDuG9OHGbW3Ev6qhczzUDPBCqFrOL1B6WLBN2YqFtS
 913E4pg24pPhegl8BxqLx2I/burj7YhH6ztypnV7Omw0TSeoWf98904Ly A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="3826070"
X-IronPort-AV: E=Sophos;i="6.04,327,1695711600"; 
   d="scan'208";a="3826070"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2024 07:26:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,327,1695711600"; d="scan'208";a="22145631"
Received: from josouza-mobl2.bz.intel.com ([10.87.243.88])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2024 07:26:26 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH] drm/i915: Disable DSB in Xe KMD
Date: Wed,  3 Jan 2024 07:26:18 -0800
Message-ID: <20240103152618.93488-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Often getting DBS overflows when starting Xorg or Wayland compositor
when running Xe KMD.
Issue was reported but nothing was done, so disabling DSB as whole
until properly fixed.

Link: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/989
Link: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/1031
Link: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/1072
Cc: Animesh Manna <animesh.manna@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index 482c28b5c2de5..bc11c447afe03 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -321,6 +321,7 @@ void intel_dsb_finish(struct intel_dsb *dsb)
 	intel_dsb_buffer_flush_map(&dsb->dsb_buf);
 }
 
+#ifdef I915
 static int intel_dsb_dewake_scanline(const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
@@ -339,6 +340,7 @@ static int intel_dsb_dewake_scanline(const struct intel_crtc_state *crtc_state)
 
 	return max(0, vblank_start - intel_usecs_to_scanlines(adjusted_mode, latency));
 }
+#endif
 
 static void _intel_dsb_commit(struct intel_dsb *dsb, u32 ctrl,
 			      int dewake_scanline)
@@ -444,6 +446,8 @@ void intel_dsb_wait(struct intel_dsb *dsb)
 struct intel_dsb *intel_dsb_prepare(const struct intel_crtc_state *crtc_state,
 				    unsigned int max_cmds)
 {
+	/* TODO: DSB is broken in Xe KMD, so disabling it until fixed */
+#ifdef I915
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	intel_wakeref_t wakeref;
@@ -484,6 +488,7 @@ struct intel_dsb *intel_dsb_prepare(const struct intel_crtc_state *crtc_state,
 		      "[CRTC:%d:%s] DSB %d queue setup failed, will fallback to MMIO for display HW programming\n",
 		      crtc->base.base.id, crtc->base.name, DSB1);
 
+#endif
 	return NULL;
 }
 
-- 
2.43.0

