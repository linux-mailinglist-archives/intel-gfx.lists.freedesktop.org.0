Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B1E567D8877
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Oct 2023 20:40:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D385910E851;
	Thu, 26 Oct 2023 18:40:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D454110E855
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Oct 2023 18:40:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698345614; x=1729881614;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=flCe5lD+MWXJVo+sL0qrQWMR/jRv8KpVvgTdl/md+tQ=;
 b=bvC9hfW76p2E/06QzS6gLj6BszKFEfZ1EcEZvObi7La/zAieHjM0Ixaa
 lZhHFnuMPNqpXpynwJUQap4rR2Lbkz6PV6y0BQxBhLLaUY2m0jD5UgD46
 /o6csYSCyKicYCH5ADCjoxcf5CgmypRxkBhv3AxTuK0xg6JKfWYRx1cIq
 iqASu8zmi6g3cfDc6786ON6TLzS0CvTugByHnU52eVK3gqzJ4hxdpD0yb
 vn9seSj6kowyF+U9Zg1DTBAaIcXyT78SoTSBURjIvaLAfuOp8kMvImVKA
 S46tLcmdcBk99FkPEeRopvwwvg/PLrhK8wc9v6pkD6clrPa4Ni5ObawoR g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10875"; a="431867"
X-IronPort-AV: E=Sophos;i="6.03,254,1694761200"; 
   d="scan'208";a="431867"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2023 11:40:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10875"; a="788597401"
X-IronPort-AV: E=Sophos;i="6.03,254,1694761200"; d="scan'208";a="788597401"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2023 11:40:12 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 26 Oct 2023 11:40:44 -0700
Message-Id: <20231026184045.1015655-2-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231026184045.1015655-1-lucas.demarchi@intel.com>
References: <20231026184045.1015655-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/2] drm/i915/lnl: Extend C10/C20 phy
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
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
Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>
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

