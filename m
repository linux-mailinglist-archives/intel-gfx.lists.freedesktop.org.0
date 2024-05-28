Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 652DE8D1EA3
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2024 16:25:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07CA810E718;
	Tue, 28 May 2024 14:25:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="J/qs7Xzj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0082F10E374;
 Tue, 28 May 2024 14:25:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716906313; x=1748442313;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=sDfj3JS/aRI1fDbWBsAX6eFoLd0FK8HBzGoDDAD/V8M=;
 b=J/qs7XzjP+90X5IebRcjahQlrdvjbmUWUeg8TphPuhk6AdH9r7PKMMii
 hfsv2TAuQGC27xMAH9yEfs5qZqxgZWFomqYC89y9bqJ2Q/zIieq46LEv0
 FXz5Rvp+WbJhNCqGpxpKP24HWY2Ry5NA9yrGw6oPq0Ph/KYjyEy8FXuGr
 CJdC59K2NEUHNesju52ffKqe8XPjlNynK0S6IUz1Eaga1JojY1736Xn9T
 64GNQvI86/m9xIGidIvD8p1VZjrx/SMRW3mKq80F/ac8q3kAGXp7m6X3A
 p/XPkWL177gmHaNmlmxCeZTH+rugfguQvU68HyLjLckKpMW0kwAQp2RWg g==;
X-CSE-ConnectionGUID: H+58K8SrTrC+NEzUWj5TEg==
X-CSE-MsgGUID: vzTiH1KkRdy80GeJ4VLZ+Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="24380996"
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="24380996"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 07:25:12 -0700
X-CSE-ConnectionGUID: zqFZoBmPQdixD1ArpPTbDQ==
X-CSE-MsgGUID: sGgXsGjUQ2Kd984y+0gYEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="39531014"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.13])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 07:25:10 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 01/12] drm/i915/wm: rename intel_get_cxsr_latency ->
 pnv_get_cxsr_latency
Date: Tue, 28 May 2024 17:24:50 +0300
Message-Id: <1748b88aaabf29339bf47c1080b19de8d6b91e01.1716906179.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1716906179.git.jani.nikula@intel.com>
References: <cover.1716906179.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Clarify that the function is specific to PNV, making subsequent changes
slightly easier to grasp.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_wm.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i915/display/i9xx_wm.c
index 628e7192ebc9..8657ec0abd2d 100644
--- a/drivers/gpu/drm/i915/display/i9xx_wm.c
+++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
@@ -70,7 +70,7 @@ static const struct cxsr_latency cxsr_latency_table[] = {
 	{0, 1, 400, 800, 6042, 36042, 6584, 36584},    /* DDR3-800 SC */
 };
 
-static const struct cxsr_latency *intel_get_cxsr_latency(struct drm_i915_private *i915)
+static const struct cxsr_latency *pnv_get_cxsr_latency(struct drm_i915_private *i915)
 {
 	int i;
 
@@ -635,7 +635,7 @@ static void pnv_update_wm(struct drm_i915_private *dev_priv)
 	u32 reg;
 	unsigned int wm;
 
-	latency = intel_get_cxsr_latency(dev_priv);
+	latency = pnv_get_cxsr_latency(dev_priv);
 	if (!latency) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "Unknown FSB/MEM found, disable CxSR\n");
@@ -4022,7 +4022,7 @@ void i9xx_wm_init(struct drm_i915_private *dev_priv)
 		g4x_setup_wm_latency(dev_priv);
 		dev_priv->display.funcs.wm = &g4x_wm_funcs;
 	} else if (IS_PINEVIEW(dev_priv)) {
-		if (!intel_get_cxsr_latency(dev_priv)) {
+		if (!pnv_get_cxsr_latency(dev_priv)) {
 			drm_info(&dev_priv->drm,
 				 "failed to find known CxSR latency "
 				 "(found ddr%s fsb freq %d, mem freq %d), "
-- 
2.39.2

