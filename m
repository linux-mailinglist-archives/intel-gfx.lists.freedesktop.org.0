Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C5D87A5511D
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Mar 2025 17:34:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 266F410EA01;
	Thu,  6 Mar 2025 16:34:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lIIN7KUP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0AA5110EA03
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Mar 2025 16:34:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741278879; x=1772814879;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CORdZP3S8u33VB9BV3X9bA7q48F+aRaiB4ztmHI6FKw=;
 b=lIIN7KUPPdzJPnqnyOCgEHXWSf3X2BRfJ3GGGrGyKeXSwBBb5otW/+cV
 gHVwfySmKYGlX9gKKDCZoIkNaJfNKEYbbd0aJm9kdbwQxMbnq3RlK3LgI
 aE6Y93NKA4vkLerEDb57yr7i7il/R381lIOeVZBgXdqq39EiixkpQu6zM
 KIMe4iQBuh6/YFX/6wiY85Pjt83WC0GdVi+Duv5b3AJmb768QiNtIzWZg
 keVRcV+iQLw6Gel4B62CpGgD43bZ62CJIT4ssUFQ5yVGFtzoP33tB6NGU
 wP/jTq+FFqOFyLMg2QzTSVNOFANZE9mCsBmgfHeix5NSk61K3FGzCP2rZ g==;
X-CSE-ConnectionGUID: WjfdNRg/Riyf/eDEDA1HIA==
X-CSE-MsgGUID: BbjBCH+yQHOye+p7E8VpVQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="53704321"
X-IronPort-AV: E=Sophos;i="6.14,226,1736841600"; d="scan'208";a="53704321"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2025 08:34:39 -0800
X-CSE-ConnectionGUID: HjrEFwUiR9iSTHPsOwBlKw==
X-CSE-MsgGUID: 1Vp3jDjRTTKvGRY5TxMZrg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="124288909"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 06 Mar 2025 08:34:36 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 06 Mar 2025 18:34:35 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Vinod Govindapillai <vinod.govindapillai@intel.com>
Subject: [PATCH v2 05/18] drm/i915: Extract skl_wm_crtc_disable_noatomic()
Date: Thu,  6 Mar 2025 18:34:07 +0200
Message-ID: <20250306163420.3961-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250306163420.3961-1-ville.syrjala@linux.intel.com>
References: <20250306163420.3961-1-ville.syrjala@linux.intel.com>
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

Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
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

