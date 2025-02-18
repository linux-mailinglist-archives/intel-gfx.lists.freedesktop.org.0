Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 407D0A3AAAA
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Feb 2025 22:19:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91B7610E765;
	Tue, 18 Feb 2025 21:19:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TFWqC+Gv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FA6810E776
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Feb 2025 21:19:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739913582; x=1771449582;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=4ZjOzhSNMjqY7d6yJFBPQ9KWK1/eWzV0aPXsnp89onI=;
 b=TFWqC+GvKzm94MIFv+/VYPKi4Z9iIo8FiZdQFY3/84oQOwPok2QKLA9z
 a4NlrRQPrdkNhDiqfZ2EUqyfvjk1Sfu0bMzyNRQ467OBCqWse8R6wL6YB
 VZpwBm9Y4gBpa8n8HcF7vuAmK0ZoTH7tykZCBSgk3myF6mCgHdv6cojWD
 TjotfcBXoko41vcKLAVNqhOwlwzbEbWWk5x1jN9LGMQvFgndU4trQ+A11
 fe846/AhXoaSCWWVsAxYx+0me4G6Xm0O0sSp2Yp2KSIua9EiPaNdSiFx2
 R6YUTiGhnGLeu7LvcFcQk5dmZMKPVgNjJqgTXDAqTETXHPqNxLENM9FHs A==;
X-CSE-ConnectionGUID: TfzIN7UQTbywCSAYUMVYNw==
X-CSE-MsgGUID: 8PQwTh0tTFiilznlkLW0lA==
X-IronPort-AV: E=McAfee;i="6700,10204,11348"; a="39862286"
X-IronPort-AV: E=Sophos;i="6.13,296,1732608000"; d="scan'208";a="39862286"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2025 13:19:40 -0800
X-CSE-ConnectionGUID: anFbbg4OTIuH/VA3blrs/w==
X-CSE-MsgGUID: QncQtUGlQYW2a6J5eJk/lA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,296,1732608000"; d="scan'208";a="114693419"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 18 Feb 2025 13:19:38 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 18 Feb 2025 23:19:37 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 06/19] drm/i915: Extract skl_wm_crtc_disable_noatomic()
Date: Tue, 18 Feb 2025 23:19:00 +0200
Message-ID: <20250218211913.27867-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250218211913.27867-1-ville.syrjala@linux.intel.com>
References: <20250218211913.27867-1-ville.syrjala@linux.intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Hoist the dbuf stuff into a separate function from
intel_crtc_disable_noatomic_complete() so that the details
are better hidden inside skl_watermark.c.

We can also skip the whole thing on pre-skl since the dbuf state
isn't actually used on those platforms. The readout path does
still fill dbuf_state->active_pipes but we'll remedy that later.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_modeset_setup.c |  5 +----
 drivers/gpu/drm/i915/display/skl_watermark.c       | 13 +++++++++++++
 drivers/gpu/drm/i915/display/skl_watermark.h       |  2 ++
 3 files changed, 16 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
index 826998909045..10a2421f7c50 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -158,8 +158,6 @@ static void intel_crtc_disable_noatomic_complete(struct intel_crtc *crtc)
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	struct intel_bw_state *bw_state =
 		to_intel_bw_state(i915->display.bw.obj.state);
-	struct intel_dbuf_state *dbuf_state =
-		to_intel_dbuf_state(i915->display.dbuf.obj.state);
 	struct intel_pmdemand_state *pmdemand_state =
 		to_intel_pmdemand_state(i915->display.pmdemand.obj.state);
 	struct intel_crtc_state *crtc_state =
@@ -178,8 +176,7 @@ static void intel_crtc_disable_noatomic_complete(struct intel_crtc *crtc)
 	intel_display_power_put_all_in_set(display, &crtc->enabled_power_domains);
 
 	intel_cdclk_crtc_disable_noatomic(crtc);
-
-	dbuf_state->active_pipes &= ~BIT(pipe);
+	skl_wm_crtc_disable_noatomic(crtc);
 
 	bw_state->data_rate[pipe] = 0;
 	bw_state->num_active_planes[pipe] = 0;
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 10a1daad28eb..4930e52322d3 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -3845,6 +3845,19 @@ static void skl_wm_get_hw_state_and_sanitize(struct drm_i915_private *i915)
 	skl_dbuf_sanitize(i915);
 }
 
+void skl_wm_crtc_disable_noatomic(struct intel_crtc *crtc)
+{
+	struct intel_display *display = to_intel_display(crtc);
+	struct intel_dbuf_state *dbuf_state =
+		to_intel_dbuf_state(display->dbuf.obj.state);
+	enum pipe pipe = crtc->pipe;
+
+	if (DISPLAY_VER(display) < 9)
+		return;
+
+	dbuf_state->active_pipes &= ~BIT(pipe);
+}
+
 void intel_wm_state_verify(struct intel_atomic_state *state,
 			   struct intel_crtc *crtc)
 {
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.h b/drivers/gpu/drm/i915/display/skl_watermark.h
index c5547485225a..8c07c11135c7 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.h
+++ b/drivers/gpu/drm/i915/display/skl_watermark.h
@@ -41,6 +41,8 @@ bool skl_ddb_allocation_overlaps(const struct skl_ddb_entry *ddb,
 void intel_wm_state_verify(struct intel_atomic_state *state,
 			   struct intel_crtc *crtc);
 
+void skl_wm_crtc_disable_noatomic(struct intel_crtc *crtc);
+
 void skl_watermark_ipc_init(struct drm_i915_private *i915);
 void skl_watermark_ipc_update(struct drm_i915_private *i915);
 bool skl_watermark_ipc_enabled(struct drm_i915_private *i915);
-- 
2.45.3

