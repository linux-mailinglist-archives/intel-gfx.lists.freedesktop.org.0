Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1280D6D0ADE
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Mar 2023 18:17:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58E1D10EF00;
	Thu, 30 Mar 2023 16:17:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1B8B10EF00
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Mar 2023 16:17:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680193038; x=1711729038;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Th4ejyuW7TVBiKEOd82n+Jw5MPEChPqtO7z6bdZ1vKE=;
 b=muVGgEJmctl48JcTAxJCwkYpjbS8hq6e/CeGospCA/qhkMEeacm6UkDN
 haY022TrE/Vu0m6+zZLwVO0qODemh4dJMoGm4jcT7x6twFWTCIs6I7/Li
 gpxY1jVFZDXmmx3L1pUjJb8LmTV29sPZgTHdDp2zOI9IiPCluCA8tIzLQ
 mBRi9HjbND/qNxmMZCD4bkVUdqM8Y90saQA1Xitj3xtTqZTsgncoxesRP
 AHJj5lZ0Vci+Tol4bpSgwYBgSyL3nND3xgbvFqfJTPIovriO7xg3fxypJ
 u5bQidG1CjKk1uDRLY5EcUhPG/mM7t5NF3c3EDtOHbjOmC7i4QvHMev35 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10665"; a="325167284"
X-IronPort-AV: E=Sophos;i="5.98,305,1673942400"; d="scan'208";a="325167284"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2023 09:17:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10665"; a="774059085"
X-IronPort-AV: E=Sophos;i="5.98,305,1673942400"; d="scan'208";a="774059085"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2023 09:16:32 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 30 Mar 2023 19:16:29 +0300
Message-Id: <20230330161629.2284525-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230323142035.1432621-27-imre.deak@intel.com>
References: <20230323142035.1432621-27-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 26/29] drm/i915: Move shared DPLL disabling
 into CRTC disable hook
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

The spec requires disabling the PLL on TC ports before disconnecting the
port's PHY. Prepare for that by moving the PLL disabling to the CRTC
disable hook, while disconnecting the PHY will be moved to the
post_pll_disable() encoder hook in the next patch.

v2: Move the call from intel_crtc_disable_noatomic() as well.

Reviewed-by: Mika Kahola <mika.kahola@intel.com> # v1
Signed-off-by: Imre Deak <imre.deak@intel.com>
Link: https://patchwork.freedesktop.org/patch/msgid/20230323142035.1432621-27-imre.deak@intel.com
---
 drivers/gpu/drm/i915/display/intel_display.c       | 5 ++++-
 drivers/gpu/drm/i915/display/intel_modeset_setup.c | 1 -
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index b53a1d9693448..1ed584d04c10d 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1905,6 +1905,8 @@ static void ilk_crtc_disable(struct intel_atomic_state *state,
 
 	intel_set_cpu_fifo_underrun_reporting(dev_priv, pipe, true);
 	intel_set_pch_fifo_underrun_reporting(dev_priv, pipe, true);
+
+	intel_disable_shared_dpll(old_crtc_state);
 }
 
 static void hsw_crtc_disable(struct intel_atomic_state *state,
@@ -1923,6 +1925,8 @@ static void hsw_crtc_disable(struct intel_atomic_state *state,
 		intel_encoders_post_disable(state, crtc);
 	}
 
+	intel_disable_shared_dpll(old_crtc_state);
+
 	intel_dmc_disable_pipe(i915, crtc->pipe);
 }
 
@@ -7041,7 +7045,6 @@ static void intel_old_crtc_state_disables(struct intel_atomic_state *state,
 	dev_priv->display.funcs.display->crtc_disable(state, crtc);
 	crtc->active = false;
 	intel_fbc_disable(crtc);
-	intel_disable_shared_dpll(old_crtc_state);
 
 	if (!new_crtc_state->hw.active)
 		intel_initial_watermarks(state, crtc);
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
index 4558d02641fe1..134b943f19533 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -100,7 +100,6 @@ static void intel_crtc_disable_noatomic(struct intel_crtc *crtc,
 
 	intel_fbc_disable(crtc);
 	intel_update_watermarks(i915);
-	intel_disable_shared_dpll(crtc_state);
 
 	intel_display_power_put_all_in_set(i915, &crtc->enabled_power_domains);
 
-- 
2.37.2

