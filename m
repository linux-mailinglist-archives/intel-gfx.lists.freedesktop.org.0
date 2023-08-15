Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 23B1977D137
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Aug 2023 19:37:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E56410E257;
	Tue, 15 Aug 2023 17:37:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BA8C10E266
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Aug 2023 17:37:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692121024; x=1723657024;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MhTXBHK79A4g6X9IsynbB12gsASN0dn2UTtFYiRCOjo=;
 b=e7eL8I3iWU6m7/3pDfRfJD2YdtHLFMJwXM2RdITGPhMHJwfFod5a+fg1
 4/fm89nXz3iBbyuVfp6kWZ2Gi2PLU0gjxFXByYHjFjEdp//Dwm1f2plNq
 8RXCbbrPmTjwJuEaUvzll9OXkNVPQfz0Wr7MAsiR0ly2RonwgFk0e0wRI
 JCUtW7ihElMBQb8HTu2YNE/UpeY8MQjhlyqxk5eZWeAKj41pX81Jm9x2p
 C8f6NPYnqSb1//AA7fGOzlzkYHllCkrijt0wBRtO3L9RC1rUgOgZZwHpE
 /fP84tOXfgUi/JaKfmqv1eLtUvdX8T9i1NniidXbGy6Qd2ekRmZyo66eP A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="371252389"
X-IronPort-AV: E=Sophos;i="6.01,175,1684825200"; d="scan'208";a="371252389"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2023 10:37:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="710808252"
X-IronPort-AV: E=Sophos;i="6.01,175,1684825200"; d="scan'208";a="710808252"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.147])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2023 10:37:04 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Aug 2023 10:36:14 -0700
Message-ID: <20230815173611.142687-8-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230815173611.142687-6-matthew.d.roper@intel.com>
References: <20230815173611.142687-6-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/4] drm/i915/dg2: Drop pre-production display
 workarounds
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
Cc: matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

All production DG2 cards have display stepping C0 or later.  We can drop
Wa_14013215631 (only applies to pre-C0) and make Wa_14010547955
unconditional (applies to everything B0 and beyond).  Also drop the
now-unused IS_DG2_DISPLAY_STEP macro.

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c       | 2 +-
 drivers/gpu/drm/i915/display/skl_universal_plane.c | 4 ----
 drivers/gpu/drm/i915/i915_drv.h                    | 4 ----
 3 files changed, 1 insertion(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 763ab569d8f3..8c81206ce90d 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -726,7 +726,7 @@ static void icl_set_pipe_chicken(const struct intel_crtc_state *crtc_state)
 		tmp |= UNDERRUN_RECOVERY_DISABLE_ADLP;
 
 	/* Wa_14010547955:dg2 */
-	if (IS_DG2_DISPLAY_STEP(dev_priv, STEP_B0, STEP_FOREVER))
+	if (IS_DG2(dev_priv))
 		tmp |= DG2_RENDER_CCSTAG_4_3_EN;
 
 	intel_de_write(dev_priv, PIPE_CHICKEN(pipe), tmp);
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index ffc15d278a39..a408ec2d3958 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -2203,10 +2203,6 @@ static bool gen12_plane_has_mc_ccs(struct drm_i915_private *i915,
 	if (IS_ALDERLAKE_P(i915) && IS_DISPLAY_STEP(i915, STEP_A0, STEP_B0))
 		return false;
 
-	/* Wa_14013215631 */
-	if (IS_DG2_DISPLAY_STEP(i915, STEP_A0, STEP_C0))
-		return false;
-
 	return plane_id < PLANE_SPRITE4;
 }
 
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 7a8ce7239bc9..7f8fa0eb9dc6 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -689,10 +689,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 	(IS_SUBPLATFORM(__i915, INTEL_DG2, INTEL_SUBPLATFORM_##variant) && \
 	 IS_GRAPHICS_STEP(__i915, since, until))
 
-#define IS_DG2_DISPLAY_STEP(__i915, since, until) \
-	(IS_DG2(__i915) && \
-	 IS_DISPLAY_STEP(__i915, since, until))
-
 #define IS_PVC_BD_STEP(__i915, since, until) \
 	(IS_PONTEVECCHIO(__i915) && \
 	 IS_BASEDIE_STEP(__i915, since, until))
-- 
2.41.0

