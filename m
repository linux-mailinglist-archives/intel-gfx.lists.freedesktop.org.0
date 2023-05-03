Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A09BE6F61C8
	for <lists+intel-gfx@lfdr.de>; Thu,  4 May 2023 01:10:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A81D10E35B;
	Wed,  3 May 2023 23:10:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E125810E35A
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 May 2023 23:10:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683155417; x=1714691417;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=uXaGKH5GsEWpXf3erohJZfv+kNJX+gryAiybV/ssbaE=;
 b=fDEq82dfvWnP+Ulpc5Vuf7WYNcF1RIMQDC8F8o8Cojag+jcWUqzLv/e/
 gXpAcf0atQYRevtwTH4zN4O0aI6LtiGaJSLHZ/8oV9TNZGZNPzDuUcWiZ
 1oEK3SrhSewwuCzgVAJ84CnCxLLOxFL7IccqH0PowPhrhqMezrygbQy+l
 jOBLTIUkvlAA6MxpwxSjX3S/KTwjpqjZRipsSRahBxPkkscJi58FZmmRp
 LM07h2U2Z75ohnCaQBjvN1lU6ji6HP8rTSvHj8tyeQqTz7/WK0DMMnMjX
 Yf0kfkCPEdt6RMRznkMDu0Mc2YQVY0jc2UFznNjm9tp/qdV6KTDdinjUZ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10699"; a="347607570"
X-IronPort-AV: E=Sophos;i="5.99,248,1677571200"; d="scan'208";a="347607570"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2023 16:10:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10699"; a="690872112"
X-IronPort-AV: E=Sophos;i="5.99,248,1677571200"; d="scan'208";a="690872112"
Received: from unknown (HELO ideak-desk.fi.intel.com) ([10.237.72.78])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2023 16:10:16 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  4 May 2023 02:10:40 +0300
Message-Id: <20230503231048.432368-5-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230503231048.432368-1-imre.deak@intel.com>
References: <20230503231048.432368-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 04/12] drm/i915: Separate
 intel_crtc_disable_noatomic_begin/complete()
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

Split calling the CRTC/encoder disabling hooks and updating the CRTC and
DPLL object states from updating the CRTC and atomic state and other
global state (BW, CDCLK, DBUF) into separate functions. When disabling a
bigjoiner configuration the latter step can be done only after all the
linked pipes are disabled, so this change prepares for that.

No functional changes.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_modeset_setup.c    | 33 ++++++++++++++-----
 1 file changed, 24 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
index c1a4a7bcc56ae..922ea5ddd0c5b 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -30,17 +30,10 @@
 #include "intel_wm.h"
 #include "skl_watermark.h"
 
-static void intel_crtc_disable_noatomic(struct intel_crtc *crtc,
-					struct drm_modeset_acquire_ctx *ctx)
+static void intel_crtc_disable_noatomic_begin(struct intel_crtc *crtc,
+					      struct drm_modeset_acquire_ctx *ctx)
 {
-	struct intel_encoder *encoder;
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
-	struct intel_bw_state *bw_state =
-		to_intel_bw_state(i915->display.bw.obj.state);
-	struct intel_cdclk_state *cdclk_state =
-		to_intel_cdclk_state(i915->display.cdclk.obj.state);
-	struct intel_dbuf_state *dbuf_state =
-		to_intel_dbuf_state(i915->display.dbuf.obj.state);
 	struct intel_crtc_state *crtc_state =
 		to_intel_crtc_state(crtc->base.state);
 	struct intel_plane *plane;
@@ -92,6 +85,21 @@ static void intel_crtc_disable_noatomic(struct intel_crtc *crtc,
 		crtc_state->shared_dpll->state.pipe_mask &= ~BIT(pipe);
 		crtc_state->shared_dpll->active_mask &= ~BIT(pipe);
 	}
+}
+
+static void intel_crtc_disable_noatomic_complete(struct intel_crtc *crtc)
+{
+	struct intel_encoder *encoder;
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct intel_bw_state *bw_state =
+		to_intel_bw_state(i915->display.bw.obj.state);
+	struct intel_cdclk_state *cdclk_state =
+		to_intel_cdclk_state(i915->display.cdclk.obj.state);
+	struct intel_dbuf_state *dbuf_state =
+		to_intel_dbuf_state(i915->display.dbuf.obj.state);
+	struct intel_crtc_state *crtc_state =
+		to_intel_crtc_state(crtc->base.state);
+	enum pipe pipe = crtc->pipe;
 
 	__drm_atomic_helper_crtc_destroy_state(&crtc_state->uapi);
 	intel_crtc_free_hw_state(crtc_state);
@@ -115,6 +123,13 @@ static void intel_crtc_disable_noatomic(struct intel_crtc *crtc,
 	bw_state->num_active_planes[pipe] = 0;
 }
 
+static void intel_crtc_disable_noatomic(struct intel_crtc *crtc,
+					struct drm_modeset_acquire_ctx *ctx)
+{
+	intel_crtc_disable_noatomic_begin(crtc, ctx);
+	intel_crtc_disable_noatomic_complete(crtc);
+}
+
 static void intel_modeset_update_connector_atomic_state(struct drm_i915_private *i915)
 {
 	struct intel_connector *connector;
-- 
2.37.2

