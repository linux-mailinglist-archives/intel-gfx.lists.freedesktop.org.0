Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E29439F8211
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2024 18:38:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DC9510ED71;
	Thu, 19 Dec 2024 17:38:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MsKxI+NR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0424F10ED71
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Dec 2024 17:38:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734629925; x=1766165925;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=EWTO5trjaSXVe+uB753xkYoTq5905kaXtn0VWvcUjtI=;
 b=MsKxI+NRA8KP5qTP0tcBaUBWNqMym6ePlWzTtv4nuDrIxhey1eiL2O2e
 7uR21/I8oM/kN98QZ46fPCkvfn6NLegm6qHoGTS0Pih3jHWgpRd8snlOj
 N1D/G8tvzEqxDDUDpZ553peknvfz/vjtF+lZxYin2+drRV9uTQ3xF5+XJ
 HZUVe94MnPNy/ot+f9t4rDuAD7VAYC/vvK+MJdsNqqdfEcgCVDFPetRHL
 27zQAf42DAjv6sSTEqQ2faPkySEgtGwFCwQE2mcmxsnUBJoqwgJS3Ookr
 mxK0GgMJZLMxK+e9QMv/GXVQ8qnutX44z27RZoQjE2BeY5ocRPnO84aVt w==;
X-CSE-ConnectionGUID: mz+n/IHMTG6zIrdA2Z1osQ==
X-CSE-MsgGUID: EbAOLdeQRpWEstcXpdnffA==
X-IronPort-AV: E=McAfee;i="6700,10204,11291"; a="34877503"
X-IronPort-AV: E=Sophos;i="6.12,248,1728975600"; d="scan'208";a="34877503"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2024 09:38:44 -0800
X-CSE-ConnectionGUID: wtawq5wgRJKb11BW1Pz7uw==
X-CSE-MsgGUID: iWfPR6ucRnaSoyDVxnSXsQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,248,1728975600"; d="scan'208";a="98464765"
Received: from rvodapal-desk.iind.intel.com ([10.145.162.163])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2024 09:38:41 -0800
From: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: balasubramani.vivekanandan@intel.com, matthew.d.roper@intel.com,
 lucas.demarchi@intel.com, gustavo.sousa@intel.com,
 clinton.a.taylor@intel.com, matthew.s.atwood@intel.com,
 dnyaneshwar.bhadane@intel.com, haridhar.kalvala@intel.com,
 shekhar.chauhan@intel.com
Subject: [PATCH] drm/i915/display: Don't program DBUF_CTL tracker state service
Date: Thu, 19 Dec 2024 23:06:36 +0530
Message-Id: <20241219173636.3377955-1-ravi.kumar.vodapalli@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
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

While display initialization along with MBUS credits programming
DBUF_CTL register is also programmed, as a part of it the tracker
state service field is also set to 0x8 value when default value is
other than 0x8 which are for platforms past display version 13.
For remaining platforms the default value is already 0x8 so don't
program them.

Bspec: 49213
Signed-off-by: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 34465d56def0..98db721cba33 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -1126,9 +1126,6 @@ static void gen12_dbuf_slices_config(struct intel_display *display)
 {
 	enum dbuf_slice slice;
 
-	if (display->platform.alderlake_p)
-		return;
-
 	for_each_dbuf_slice(display, slice)
 		intel_de_rmw(display, DBUF_CTL_S(slice),
 			     DBUF_TRACKER_STATE_SERVICE_MASK,
@@ -1681,7 +1678,7 @@ static void icl_display_core_init(struct intel_display *display,
 	/* 4. Enable CDCLK. */
 	intel_cdclk_init_hw(display);
 
-	if (DISPLAY_VER(display) >= 12)
+	if (DISPLAY_VER(display) == 12)
 		gen12_dbuf_slices_config(display);
 
 	/* 5. Enable DBUF. */
-- 
2.25.1

