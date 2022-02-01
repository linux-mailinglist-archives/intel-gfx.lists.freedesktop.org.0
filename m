Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CB584A5AFD
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Feb 2022 12:15:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C08010E5A9;
	Tue,  1 Feb 2022 11:15:53 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0865210E538
 for <Intel-gfx@lists.freedesktop.org>; Tue,  1 Feb 2022 11:15:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643714152; x=1675250152;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pCKYrv1GdtjGpocoYRh0OA1qRJTEPrf6z0LTse5UGpU=;
 b=VTCUGVc7Ndxc6ahGArWEPCYWWoMhLDPgl9f8iA/dwPJgeRF7h3SYIAU3
 TdW/SxGwyVPRF6CLm4njEJrLifoqN47rtBm0VY+iSwNleWrImRlGEA9k/
 ZJPWkPUnFRaSh/28SvpZSmg7WOowFKQK9ScCk8X4sfbWuIyAX0RYAWTkW
 MJmasVfzJdZKNXTK2J2OIKzMv/yEYx3Ae3S20oLJJEnrN0VKHpZTusrQa
 GeTOTosUi7Rr0QeTpsl/AWt6/Y8K5OctRS3gTWrg6WTCW6kryTTfAcMEh
 lMQurk3DNiGs72UzSYf5yADx29Twyw5/mBt30O2+m4j8kfTjw2h5xe5bM A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10244"; a="235062454"
X-IronPort-AV: E=Sophos;i="5.88,333,1635231600"; d="scan'208";a="235062454"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2022 03:15:51 -0800
X-IronPort-AV: E=Sophos;i="5.88,333,1635231600"; d="scan'208";a="698370304"
Received: from bconlan-mobl1.ger.corp.intel.com (HELO tursulin-mobl2.home)
 ([10.213.212.46])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2022 03:15:50 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Tue,  1 Feb 2022 11:15:33 +0000
Message-Id: <20220201111533.250242-3-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220201111533.250242-1-tvrtko.ursulin@linux.intel.com>
References: <20220201111533.250242-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC 2/2] jsl/ehl
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
Cc: Jani Nikula <jani.nikula@intel.com>,
 Michael Cheng <michael.cheng@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c | 4 ++--
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c      | 2 +-
 drivers/gpu/drm/i915/i915_drv.h                    | 2 ++
 3 files changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
index 0c32210bf503..37b48f7ab4fd 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
@@ -1621,9 +1621,9 @@ void intel_ddi_buf_trans_init(struct intel_encoder *encoder)
 		else
 			encoder->get_buf_trans = tgl_get_dkl_buf_trans;
 	} else if (DISPLAY_VER(i915) == 11) {
-		if (IS_PLATFORM(i915, INTEL_JASPERLAKE))
+		if (IS_JASPERLAKE(i915))
 			encoder->get_buf_trans = jsl_get_combo_buf_trans;
-		else if (IS_PLATFORM(i915, INTEL_ELKHARTLAKE))
+		else if (IS_ELKHARTLAKE(i915))
 			encoder->get_buf_trans = ehl_get_combo_buf_trans;
 		else if (intel_phy_is_combo(i915, phy))
 			encoder->get_buf_trans = icl_get_combo_buf_trans;
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 6723c3de5a80..0d9b970c453f 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -2443,7 +2443,7 @@ static void icl_wrpll_params_populate(struct skl_wrpll_params *params,
 static bool
 ehl_combo_pll_div_frac_wa_needed(struct drm_i915_private *i915)
 {
-	return ((IS_PLATFORM(i915, INTEL_ELKHARTLAKE) &&
+	return ((IS_ELKHARTLAKE(i915) &&
 		 IS_JSL_EHL_DISPLAY_STEP(i915, STEP_B0, STEP_FOREVER)) ||
 		 IS_TIGERLAKE(i915) || IS_ALDERLAKE_P(i915)) &&
 		 i915->dpll.ref_clks.nssc == 38400;
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 1d22d72163c1..241acd884135 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1271,6 +1271,8 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define IS_COFFEELAKE(dev_priv)	IS_IGP_PLATFORM(dev_priv, INTEL_COFFEELAKE)
 #define IS_COMETLAKE(dev_priv)	IS_IGP_PLATFORM(dev_priv, INTEL_COMETLAKE)
 #define IS_ICELAKE(dev_priv)	IS_IGP_PLATFORM(dev_priv, INTEL_ICELAKE)
+#define IS_JASPERLAKE(dev_priv)	IS_IGP_PLATFORM(dev_priv, INTEL_JASPERLAKE)
+#define IS_ELKHARTLAKE(dev_priv)	IS_IGP_PLATFORM(dev_priv, INTEL_ELKHARTLAKE)
 #define IS_JSL_EHL(dev_priv)	(IS_IGP_PLATFORM(dev_priv, INTEL_JASPERLAKE) || \
 				IS_IGP_PLATFORM(dev_priv, INTEL_ELKHARTLAKE))
 #define IS_TIGERLAKE(dev_priv)	IS_IGP_PLATFORM(dev_priv, INTEL_TIGERLAKE)
-- 
2.32.0

