Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C4736C6ABB
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Mar 2023 15:21:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F28C10EAC3;
	Thu, 23 Mar 2023 14:21:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A16810EAC2
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Mar 2023 14:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679581266; x=1711117266;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=8NTFKlm4jffXDB03v3plp6o19nUJ5d0+q39NSK3h++Y=;
 b=mMxPsSLx5IKOahZvoALVOpalyJoysFlF9Ck/F1KN5SVUWFpLGivfmZ2C
 JeINR5QDJSDdYKgMiDWo2qqX0bGginLW2jhLgvPGhEfvj34BHbBoszgYy
 EqxSV5m4CyJWoNwaOeqIfln2Rgks9VyukSriYbS6HTiSPenv5WdeDwfv2
 JZLTuUUvjfbzHi9RO785aqqSRZq9MqpFjyS8Az1+FQ5BtNDf6nMS1MU/J
 k529aB03prXsJ8eBXfTVLkJSQT2eaRMEUL2rX3g5ug5A3iQoiuds15gh/
 4V4GO7TRHxpZdmvZDIIqT32LmCdUvqn51AHnQyHLLRMGDFbm/qxAGlA+1 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="327892348"
X-IronPort-AV: E=Sophos;i="5.98,285,1673942400"; d="scan'208";a="327892348"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2023 07:21:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="746722751"
X-IronPort-AV: E=Sophos;i="5.98,285,1673942400"; d="scan'208";a="746722751"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2023 07:21:04 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Mar 2023 16:20:32 +0200
Message-Id: <20230323142035.1432621-27-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
In-Reply-To: <20230323142035.1432621-1-imre.deak@intel.com>
References: <20230323142035.1432621-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 26/29] drm/i915: Move shared DPLL disabling into
 CRTC disable hook
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

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 5a386c7c0bc92..ca024f288ab65 100644
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
 
@@ -7035,7 +7039,6 @@ static void intel_old_crtc_state_disables(struct intel_atomic_state *state,
 	dev_priv->display.funcs.display->crtc_disable(state, crtc);
 	crtc->active = false;
 	intel_fbc_disable(crtc);
-	intel_disable_shared_dpll(old_crtc_state);
 
 	if (!new_crtc_state->hw.active)
 		intel_initial_watermarks(state, crtc);
-- 
2.37.1

