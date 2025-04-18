Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F32BA94052
	for <lists+intel-gfx@lfdr.de>; Sat, 19 Apr 2025 01:39:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 818B310E2D0;
	Fri, 18 Apr 2025 23:39:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YsVUbzCP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DB5110E2D0
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Apr 2025 23:39:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745019569; x=1776555569;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=2hFFP8e820bHvRCIyY8nWds7i7eRNDUZ4hkwr5pb2BU=;
 b=YsVUbzCPkDj3gJXFhduxRNhZGMMH3owzXaRuOOgCExs4NXBodqKBDfOa
 GTsLZHB6Sza/uU/a6n+gMnVvG0ky46NgrdmyK/zawZootZ0zry9IVMNDX
 uEXI7wAW6gTacuXVJhGy/fL5epcJ0FtqyE4Oz4ANl3XRFa55+hxlAzAmb
 VbENIMGXblSoQPUoEse+l06MZm4o82ugAIrXM2MYcdCRf7YIGrmvSy+2V
 dtuWWbF4RgnD90rnxfO9G1d2FJbuhG1v7sumIgUhVAjpY/CUJyjacZcDs
 NNKTlbIh0WIXrblJ5GK8CdD8OoQN4syBySgXaPQguIxG98bKCal2ZZyBA A==;
X-CSE-ConnectionGUID: JIO+qldNTFiC1OxvC217/A==
X-CSE-MsgGUID: UljMcKRfTpCaBLKeyOIkfw==
X-IronPort-AV: E=McAfee;i="6700,10204,11407"; a="50484200"
X-IronPort-AV: E=Sophos;i="6.15,223,1739865600"; d="scan'208";a="50484200"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2025 16:39:27 -0700
X-CSE-ConnectionGUID: DWb4V8S9TMKZ1sDoqs1uhw==
X-CSE-MsgGUID: bF6iWAipQDK3HJyDwRd81w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,223,1739865600"; d="scan'208";a="136334735"
Received: from bfilipch-desk.jf.intel.com ([10.165.21.204])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2025 16:39:27 -0700
From: Julia Filipchuk <julia.filipchuk@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: John Harrison <John.C.Harrison@intel.com>,
 Julia Filipchuk <julia.filipchuk@intel.com>
Subject: [PATCH] drm/i915/guc: Enable DUAL_QUEUE_WA for newer platforms
Date: Fri, 18 Apr 2025 16:39:18 -0700
Message-ID: <20250418233918.2217759-1-julia.filipchuk@intel.com>
X-Mailer: git-send-email 2.49.0
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

For newer platforms (post DG2) hardware intentionally stalls on
submisstion of concurrent RCS and CCS of different address spaces. With
this workaround GuC will never schedule such conlicting contexts;
preventing detection of a stall as a hang.

GuC specs recommend to enable this for all platforms starting from MTL
supporting CCS.

Signed-off-by: Julia Filipchuk <julia.filipchuk@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt.h     | 8 ++++++++
 drivers/gpu/drm/i915/gt/uc/intel_guc.c | 9 ++++++---
 2 files changed, 14 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt.h b/drivers/gpu/drm/i915/gt/intel_gt.h
index 998ca029b73a..2f86b2291826 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt.h
@@ -24,6 +24,14 @@ struct drm_printer;
 	 GRAPHICS_VER_FULL((gt)->i915) >= (from) && \
 	 GRAPHICS_VER_FULL((gt)->i915) <= (until)))
 
+/*
+ * Check that the GT is a graphics GT and has atleast minimum IP version.
+ */
+#define IS_GFX_GT_IP_ATLEAST(gt, from) ( \
+	BUILD_BUG_ON_ZERO((from) < IP_VER(2, 0)) + \
+	((gt)->type != GT_MEDIA && \
+	 GRAPHICS_VER_FULL((gt)->i915) >= (from)))
+
 /*
  * Check that the GT is a media GT and has an IP version within the
  * specified range (inclusive).
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
index 9df80c325fc1..70c83c1588e9 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
@@ -313,8 +313,12 @@ static u32 guc_ctl_wa_flags(struct intel_guc *guc)
 	 *
 	 * The same WA bit is used for both and 22011391025 is applicable to
 	 * all DG2.
+	 *
+	 * Platforms post DG2 prevent behavior in hardware. This is implicitly
+	 * enabled to give guc management over CCS scheduling.
 	 */
-	if (IS_DG2(gt->i915))
+	if (IS_DG2(gt->i915) ||
+	    (CCS_MASK(gt) && IS_GFX_GT_IP_ATLEAST(gt, IP_VER(12, 70))))
 		flags |= GUC_WA_DUAL_QUEUE;
 
 	/* Wa_22011802037: graphics version 11/12 */
@@ -322,8 +326,7 @@ static u32 guc_ctl_wa_flags(struct intel_guc *guc)
 		flags |= GUC_WA_PRE_PARSER;
 
 	/*
-	 * Wa_22012727170
-	 * Wa_22012727685
+	 * Wa_22012727170 Wa_22012727685
 	 */
 	if (IS_DG2_G11(gt->i915))
 		flags |= GUC_WA_CONTEXT_ISOLATION;
-- 
2.49.0

