Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CEE13450B9
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Mar 2021 21:27:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38B356E5AE;
	Mon, 22 Mar 2021 20:27:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2D1789E35
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Mar 2021 20:27:41 +0000 (UTC)
IronPort-SDR: Py8NJ6BGDcpUYI0kEP4wLUw2G6vfVu71BV0ZEHWftjx1HBkixlMJMT/Ixh1bwMoacWLPm4dSoC
 8Hvwljhn+3/g==
X-IronPort-AV: E=McAfee;i="6000,8403,9931"; a="254341143"
X-IronPort-AV: E=Sophos;i="5.81,269,1610438400"; d="scan'208";a="254341143"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2021 13:27:40 -0700
IronPort-SDR: NvckN55kkn3KZDvb0zzWIvA4IMKX469MioCR3QsC5lfXWx41Y4nWkmP459iXub68CULEzqUy5f
 hYZXt0a+mC6w==
X-IronPort-AV: E=Sophos;i="5.81,269,1610438400"; d="scan'208";a="451858847"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2021 13:27:40 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 22 Mar 2021 13:27:29 -0700
Message-Id: <20210322202730.1066559-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.31.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: settle on "adl-s" vs "adl_s" in
 WA comments
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Everywhere else we use "adl-s" to Refer to a WA for Alder Lake-S. So
avoid mixing dashes with underscores.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/intel_pm.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 4c07745a6fdb..14156f55e07c 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -7131,7 +7131,7 @@ static void icl_init_clock_gating(struct drm_i915_private *dev_priv)
 
 static void gen12lp_init_clock_gating(struct drm_i915_private *dev_priv)
 {
-	/* Wa_1409120013:tgl,rkl,adl_s,dg1 */
+	/* Wa_1409120013:tgl,rkl,adl-s,dg1 */
 	intel_uncore_write(&dev_priv->uncore, ILK_DPFC_CHICKEN,
 			   ILK_DPFC_CHICKEN_COMP_DUMMY_PIXEL);
 
@@ -7140,7 +7140,7 @@ static void gen12lp_init_clock_gating(struct drm_i915_private *dev_priv)
 		intel_uncore_write(&dev_priv->uncore, GEN9_CLKGATE_DIS_3, intel_uncore_read(&dev_priv->uncore, GEN9_CLKGATE_DIS_3) |
 			   TGL_VRH_GATING_DIS);
 
-	/* Wa_14011059788:tgl,rkl,adl_s,dg1 */
+	/* Wa_14011059788:tgl,rkl,adl-s,dg1 */
 	intel_uncore_rmw(&dev_priv->uncore, GEN10_DFR_RATIO_EN_AND_CHICKEN,
 			 0, DFR_DISABLE);
 }
-- 
2.31.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
