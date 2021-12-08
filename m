Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B0D546D656
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Dec 2021 16:01:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FCCC6FF2B;
	Wed,  8 Dec 2021 15:01:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D9BD6FF2B
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Dec 2021 15:01:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10191"; a="238071716"
X-IronPort-AV: E=Sophos;i="5.88,189,1635231600"; d="scan'208";a="238071716"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2021 07:00:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,189,1635231600"; d="scan'208";a="462789285"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga006.jf.intel.com with SMTP; 08 Dec 2021 07:00:51 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 08 Dec 2021 17:00:50 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 Dec 2021 17:00:50 +0200
Message-Id: <20211208150050.17230-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Remove zombie async flip vt-d w/a
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

This async flip vt-d w/a was moved to a different place in
commit 7d396cacaea6 ("drm/i195: Make the async flip VT-d workaround
dynamic") but the drm-intel-fixes cherry-pick commit b2d73debfdc1
("drm/i915: Extend the async flip VT-d w/a to skl/bxt") resurrected
the original code as well. So now we have this w/a in two places.
Remove the resurrected zombie code.

Not done as a revert to hopefully prevent any kind of
automagic stable backport.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/intel_pm.c | 12 ------------
 1 file changed, 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index fe3787425780..31767c583cd0 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -78,8 +78,6 @@ struct intel_wm_config {
 
 static void gen9_init_clock_gating(struct drm_i915_private *dev_priv)
 {
-	enum pipe pipe;
-
 	if (HAS_LLC(dev_priv)) {
 		/*
 		 * WaCompressedResourceDisplayNewHashMode:skl,kbl
@@ -93,16 +91,6 @@ static void gen9_init_clock_gating(struct drm_i915_private *dev_priv)
 			   SKL_DE_COMPRESSED_HASH_MODE);
 	}
 
-	for_each_pipe(dev_priv, pipe) {
-		/*
-		 * "Plane N strech max must be programmed to 11b (x1)
-		 *  when Async flips are enabled on that plane."
-		 */
-		if (!IS_GEMINILAKE(dev_priv) && intel_vtd_active(dev_priv))
-			intel_uncore_rmw(&dev_priv->uncore, CHICKEN_PIPESL_1(pipe),
-					 SKL_PLANE1_STRETCH_MAX_MASK, SKL_PLANE1_STRETCH_MAX_X1);
-	}
-
 	/* See Bspec note for PSR2_CTL bit 31, Wa#828:skl,bxt,kbl,cfl */
 	intel_uncore_write(&dev_priv->uncore, CHICKEN_PAR1_1,
 		   intel_uncore_read(&dev_priv->uncore, CHICKEN_PAR1_1) | SKL_EDP_PSR_FIX_RDWRAP);
-- 
2.32.0

