Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 35A646BC22E
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Mar 2023 01:09:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01C7F10EBD8;
	Thu, 16 Mar 2023 00:09:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3611710EA3C
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Mar 2023 00:09:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678925375; x=1710461375;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=L0FceqIFJhof6Hx0cfpW0CQFmz4RMcHKlDOYelRWfKg=;
 b=IQAcdl0RksyKrnQydZsn5H016AtPmf4FBGRUMwWnLdQum2Ydh6MuXAgl
 wH/i6nuMt1bTI8kMdcffd0A33uUBXjOK6K0vQCD551bwKbLqLZjo15lUb
 Ugl0HBaUYlHLpwg8RYCj2MyB6gpBNgWC59KqYLLibkWCPV/kglik/dnSs
 1C+UwPS+FUV6h9mrpEXfCbEJRdxefslKZmL9Nb8LhLuxwidixW8auy+bs
 BCjfWGWhmBVs9XvnaLR8sBMK6JsXUli+vhocQoEDVTKW9xXkiaDr7AQnn
 vjREX2cDGzooF15Rjbq1xFZC1A18ZYyvPOzAyCyuoC5xhWTgPuy/Ra57F w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="402718824"
X-IronPort-AV: E=Sophos;i="5.98,262,1673942400"; d="scan'208";a="402718824"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2023 17:09:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="709863727"
X-IronPort-AV: E=Sophos;i="5.98,262,1673942400"; d="scan'208";a="709863727"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2023 17:09:34 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 15 Mar 2023 17:09:32 -0700
Message-Id: <20230316000932.2525744-13-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20230316000932.2525744-1-umesh.nerlige.ramappa@intel.com>
References: <20230316000932.2525744-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 12/12] drm/i915/perf: Wa_14017512683: Disable
 OAM if media C6 is enabled in BIOS
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

OAM does not work with media C6 enabled on some steppings of MTL.
Disable OAM if we detect that media C6 was enabled in bios.

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/i915_perf.c | 30 ++++++++++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 77fae3d80128..4ac6535a0356 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -209,6 +209,7 @@
 #include "gt/intel_gt_regs.h"
 #include "gt/intel_lrc.h"
 #include "gt/intel_lrc_reg.h"
+#include "gt/intel_rc6.h"
 #include "gt/intel_ring.h"
 #include "gt/uc/intel_guc_slpc.h"
 
@@ -4898,6 +4899,18 @@ static u32 num_perf_groups_per_gt(struct intel_gt *gt)
 
 static u32 __oam_engine_group(struct intel_engine_cs *engine)
 {
+	/*
+	 * Wa_14017512683: mtl[a0..c0): Use of OAM must be preceded with Media
+	 * C6 disable in BIOS. Do not enable OA for media classes if MC6 is
+	 * enabled in BIOS.
+	 */
+	if (IS_MTL_MEDIA_STEP(engine->i915, STEP_A0, STEP_C0) &&
+	    intel_check_bios_c6_setup(&engine->gt->rc6)) {
+		drm_notice_once(&engine->i915->drm,
+				"OAM requires media C6 to be disabled in BIOS\n");
+		return PERF_GROUP_INVALID;
+	}
+
 	if (GRAPHICS_VER_FULL(engine->i915) >= IP_VER(12, 70)) {
 		/*
 		 * There's 1 SAMEDIA gt and 1 OAM per SAMEDIA gt. All media slices
@@ -5317,6 +5330,23 @@ int i915_perf_ioctl_version(struct drm_i915_private *i915)
 	 *
 	 * 7: Add support for video decode and enhancement classes.
 	 */
+
+	/*
+	 * Wa_14017512683: mtl[a0..c0): Use of OAM must be preceded with Media
+	 * C6 disable in BIOS. Do not enable OA for media classes if MC6 is
+	 * enabled in BIOS.
+	 */
+	if (IS_MTL_MEDIA_STEP(i915, STEP_A0, STEP_C0)) {
+		struct intel_gt *gt;
+		int i;
+
+		for_each_gt(gt, i915, i) {
+			if (gt->type == GT_MEDIA &&
+			    intel_check_bios_c6_setup(&gt->rc6))
+				return 6;
+		}
+	}
+
 	return 7;
 }
 
-- 
2.36.1

