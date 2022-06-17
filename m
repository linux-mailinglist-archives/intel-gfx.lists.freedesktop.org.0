Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E805D54FBC6
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jun 2022 18:58:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C939610F4E0;
	Fri, 17 Jun 2022 16:58:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D790210F4C0
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jun 2022 16:58:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655485117; x=1687021117;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=9ip06MWcLXpE1qrug7wpviECkrnVQaXFYlpSrJmIpgc=;
 b=kQdlUsxqZKzXcBbkkvzqzO9VXHdKzifyZbuhbKDdXr9zf2Sn0nDEBrJS
 xp7AspPgodtjnHFS7DiH/vyhNAUnrJYjlyAonDus0xYPTcsI08hTUmwZh
 nyRhq2AFVoftZobvqO2QmuBy0+8NewzAH251VmhsB6XcC7Vc27eqtfgSY
 W/1z6pbcZIN9AbWJVfYd0KZUlWHf33ON1CsHEJE+HYQ5sfz4Pw4VV2u1z
 Fld0QZSjBzzqn8FgptY26cpQukB1FsG7CBe3HUO7YjlTyLVyhzyKTlvHZ
 bC2uEVHJODrAjs93X5xPob5ClzrnRz6MvABq99zSNkX7/qNMoV6fsdHbs Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10380"; a="365838289"
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="365838289"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2022 09:07:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="728385583"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.163])
 by fmsmga001.fm.intel.com with SMTP; 17 Jun 2022 09:07:31 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 17 Jun 2022 19:07:30 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Jun 2022 19:07:30 +0300
Message-Id: <20220617160730.10981-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Implement a bit of bw_state readout
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

We currently fail to reconstruct the bw related cdclk limits
during readout, which triggers a  cdclk reclaculation during
fastboot, which is then likely forces a full modeset anyway.
Reconstruct some of the missing state so that we can skip
the cdclk recomputation and thus have a higher chance for
flicker free boot.

Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c      | 9 ++++++---
 drivers/gpu/drm/i915/display/intel_display.c | 7 +++++--
 2 files changed, 11 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 79269d2c476b..30ffec63f9a3 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -627,11 +627,14 @@ void intel_bw_crtc_update(struct intel_bw_state *bw_state,
 		intel_bw_crtc_data_rate(crtc_state);
 	bw_state->num_active_planes[crtc->pipe] =
 		intel_bw_crtc_num_active_planes(crtc_state);
+	bw_state->min_cdclk[crtc->pipe] =
+		intel_bw_crtc_min_cdclk(crtc_state);
 
-	drm_dbg_kms(&i915->drm, "pipe %c data rate %u num active planes %u\n",
-		    pipe_name(crtc->pipe),
+	drm_dbg_kms(&i915->drm, "[CRTC:%d:%s] data rate %u num active planes %u min cdclk %d kHz\n",
+		    crtc->base.base.id, crtc->base.name,
 		    bw_state->data_rate[crtc->pipe],
-		    bw_state->num_active_planes[crtc->pipe]);
+		    bw_state->num_active_planes[crtc->pipe],
+		    bw_state->min_cdclk[crtc->pipe]);
 }
 
 static unsigned int intel_bw_num_active_planes(struct drm_i915_private *dev_priv,
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 90bd26431e31..b17b9493c68f 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2498,6 +2498,7 @@ static void intel_crtc_disable_noatomic(struct intel_crtc *crtc,
 
 	bw_state->data_rate[pipe] = 0;
 	bw_state->num_active_planes[pipe] = 0;
+	bw_state->min_cdclk[pipe] = 0;
 }
 
 /*
@@ -9310,6 +9311,8 @@ static void intel_modeset_readout_hw_state(struct drm_device *dev)
 		to_intel_cdclk_state(dev_priv->cdclk.obj.state);
 	struct intel_dbuf_state *dbuf_state =
 		to_intel_dbuf_state(dev_priv->dbuf.obj.state);
+	struct intel_bw_state *bw_state =
+		to_intel_bw_state(dev_priv->bw_obj.state);
 	enum pipe pipe;
 	struct intel_crtc *crtc;
 	struct intel_encoder *encoder;
@@ -9425,8 +9428,6 @@ static void intel_modeset_readout_hw_state(struct drm_device *dev)
 	drm_connector_list_iter_end(&conn_iter);
 
 	for_each_intel_crtc(dev, crtc) {
-		struct intel_bw_state *bw_state =
-			to_intel_bw_state(dev_priv->bw_obj.state);
 		struct intel_crtc_state *crtc_state =
 			to_intel_crtc_state(crtc->base.state);
 		struct intel_plane *plane;
@@ -9490,6 +9491,8 @@ static void intel_modeset_readout_hw_state(struct drm_device *dev)
 
 		intel_bw_crtc_update(bw_state, crtc_state);
 	}
+
+	cdclk_state->bw_min_cdclk = intel_bw_min_cdclk(dev_priv, bw_state);
 }
 
 static void
-- 
2.35.1

