Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 282B34D5C04
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Mar 2022 08:07:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7221310E1E3;
	Fri, 11 Mar 2022 07:07:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 640BB10E1A5
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Mar 2022 07:07:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646982445; x=1678518445;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7k1Klf7SVFTy47KwUfyazyB/AlviH7EF5rxFFaFIa7E=;
 b=jDD2hAnuaR/aQFVDcIT8JTsnrL5IQWIi6XPLavq9YKoOGhOXFI5mSw3y
 JOR53TfXxQ/mcoxnUDcUifOo+mnjMazf81+S0fn3vbcrRxKNvy4KvOobH
 2dNzE4ilKTS9xqBXk2ixZ64fOD6kpV64n/CCXiVdcVA1R8KlsH+AWTtQZ
 /k7bFIVENDsvTss3eRroZJJXKzNqzNi1+z6r8LsoFEa4agoTtq3dIW2OR
 faZnwOvyY3a2pEDADYhgM+Jvm81xO0Ab94HzLyna/1Rr/vQgabjkBJaTm
 vgkJvcw74Cd/Fy/PsVpmH0qndS43p4M1m5PdWTV1R9Pi0EVGbusbj+Aqb Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10282"; a="341944529"
X-IronPort-AV: E=Sophos;i="5.90,173,1643702400"; d="scan'208";a="341944529"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2022 23:07:24 -0800
X-IronPort-AV: E=Sophos;i="5.90,173,1643702400"; d="scan'208";a="555186358"
Received: from anushasr-mobl6.jf.intel.com ([10.165.21.155])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2022 23:07:24 -0800
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Mar 2022 23:04:28 -0800
Message-Id: <20220311070429.1993708-4-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220311070429.1993708-1-anusha.srivatsa@intel.com>
References: <20220311070429.1993708-1-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/4] drm/i915/display:
 s/intel_cdclk_can_crawl/intel_cdclk_crawl
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Apart from checking if crawling can be performed,
accommodate accessing in-flight cdclk state for any changes
that are needed during commit phase.

Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 1f879af15d87..3007710984d4 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -1951,9 +1951,9 @@ void intel_cdclk_uninit_hw(struct drm_i915_private *i915)
 		skl_cdclk_uninit_hw(i915);
 }
 
-static bool intel_cdclk_can_crawl(struct drm_i915_private *dev_priv,
-				  const struct intel_cdclk_config *a,
-				  const struct intel_cdclk_config *b)
+static bool intel_cdclk_crawl(struct drm_i915_private *dev_priv,
+				  const struct intel_cdclk_state *a,
+				  struct intel_cdclk_state *b)
 {
 	int a_div, b_div;
 
@@ -1964,13 +1964,13 @@ static bool intel_cdclk_can_crawl(struct drm_i915_private *dev_priv,
 	 * The vco and cd2x divider will change independently
 	 * from each, so we disallow cd2x change when crawling.
 	 */
-	a_div = DIV_ROUND_CLOSEST(a->vco, a->cdclk);
-	b_div = DIV_ROUND_CLOSEST(b->vco, b->cdclk);
+	a_div = DIV_ROUND_CLOSEST(a->actual.vco, a->actual.cdclk);
+	b_div = DIV_ROUND_CLOSEST(b->actual.vco, b->actual.cdclk);
 
-	return a->vco != 0 && b->vco != 0 &&
-		a->vco != b->vco &&
+	return a->actual.vco != 0 && b->actual.vco != 0 &&
+		a->actual.vco != b->actual.vco &&
 		a_div == b_div &&
-		a->ref == b->ref;
+		a->actual.ref == b->actual.ref;
 }
 
 static bool intel_cdclk_squash(struct drm_i915_private *dev_priv,
@@ -2782,9 +2782,9 @@ int intel_modeset_calc_cdclk(struct intel_atomic_state *state)
 			       new_cdclk_state)) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "Can change cdclk via squasher\n");
-	} else if (intel_cdclk_can_crawl(dev_priv,
-					 &old_cdclk_state->actual,
-					 &new_cdclk_state->actual)) {
+	} else if (intel_cdclk_crawl(dev_priv,
+				     old_cdclk_state,
+				     new_cdclk_state)) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "Can change cdclk via crawl\n");
 	} else if (pipe != INVALID_PIPE) {
-- 
2.25.1

