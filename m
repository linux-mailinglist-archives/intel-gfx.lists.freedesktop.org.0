Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B5257CEB23
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Oct 2023 00:26:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2106A10E42D;
	Wed, 18 Oct 2023 22:26:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3425C10E42D
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Oct 2023 22:26:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697667984; x=1729203984;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZXihXnB1MIqr6+ygRvuWzrsn0U1Aq5fpVLPIFJUwuXs=;
 b=joyqJK7T4PW66j01MkcfdbUgdl1MgslspKVonr3oGybtJrKwmA/Mv17n
 6M9lc8f5ILYTGk2RESIXP/zwfp4FQKvgxVJj09yyR23yUDcoRBwtrGlrJ
 RowWnoanaMfwot9trdXBFGIk8g4QETEdjSAXvgqGfX5oRaoLJiQAA1Kzn
 eLt8FuthKTQP3y4VwdkXcEeMcjHgUjbJI40J4GBh6Mvq8MuvikpAa60FV
 HG5zs3gnVHzerAqkXKNdvyDn9Z2PJDR4irrd4E34OVscyzn4Rbtw93yHB
 qLxITHOwT3C/5gorZoGf3zce0oFPTISlMs6Ai8RVSginRh+NjhCS++1GM A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10867"; a="452598205"
X-IronPort-AV: E=Sophos;i="6.03,236,1694761200"; d="scan'208";a="452598205"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2023 15:24:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10867"; a="750272581"
X-IronPort-AV: E=Sophos;i="6.03,236,1694761200"; d="scan'208";a="750272581"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2023 15:24:51 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Oct 2023 15:24:40 -0700
Message-Id: <20231018222441.4131237-2-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231018222441.4131237-1-lucas.demarchi@intel.com>
References: <20231018222441.4131237-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/lnl: Extend C10/C20 phy
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

For Lunar Lake, DDI-A is connected to C10 PHY, while TC1-TC3 are connected
to C20 phy, like in Meteor Lake. Update the check in intel_is_c10phy()
accordingly.

This reverts the change in commit e388ae97e225 ("drm/i915/display:
Eliminate IS_METEORLAKE checks") that turned that into a display engine
version check. The phy <-> port connection is very SoC-specific and not
related to that version.

IS_LUNARLAKE() is defined to 0 in i915 as it's expected that the
(upcoming) xe driver is the one defining the platform, with i915 only
driving the display side.

Bspec: 70818
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 2 +-
 drivers/gpu/drm/i915/i915_drv.h              | 1 +
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index d414f6b7f993..e775f4721158 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -31,7 +31,7 @@
 
 bool intel_is_c10phy(struct drm_i915_private *i915, enum phy phy)
 {
-	if (DISPLAY_VER_FULL(i915) == IP_VER(14, 0) && phy < PHY_C)
+	if ((IS_LUNARLAKE(i915) || IS_METEORLAKE(i915)) && phy < PHY_C)
 		return true;
 
 	return false;
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 6a2a78c61f21..259884b10d9a 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -575,6 +575,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define IS_DG2(i915)	IS_PLATFORM(i915, INTEL_DG2)
 #define IS_PONTEVECCHIO(i915) IS_PLATFORM(i915, INTEL_PONTEVECCHIO)
 #define IS_METEORLAKE(i915) IS_PLATFORM(i915, INTEL_METEORLAKE)
+#define IS_LUNARLAKE(i915) 0
 
 #define IS_DG2_G10(i915) \
 	IS_SUBPLATFORM(i915, INTEL_DG2, INTEL_SUBPLATFORM_G10)
-- 
2.40.1

