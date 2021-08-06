Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BAFA93E2EED
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Aug 2021 19:41:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 551DA8930A;
	Fri,  6 Aug 2021 17:41:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 87C678930A
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Aug 2021 17:41:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10068"; a="194685827"
X-IronPort-AV: E=Sophos;i="5.84,301,1620716400"; d="scan'208";a="194685827"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2021 10:41:32 -0700
X-IronPort-AV: E=Sophos;i="5.84,301,1620716400"; d="scan'208";a="504089106"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2021 10:41:31 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: matthew.d.roper@intel.com,
 Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 Mika Kuoppala <mika.kuoppala@linux.intel.com>
Date: Fri,  6 Aug 2021 10:41:30 -0700
Message-Id: <20210806174130.1058960-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Only access SFC_DONE when media
 domain is not fused off
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

The SFC_DONE register lives within the corresponding VD0/VD2/VD4/VD6
forcewake domain and is not accessible if the vdbox in that domain is
fused off and the forcewake is not initialized.

This mistake went unnoticed because until recently we were using the
wrong register offset for the SFC_DONE register; once the register
offset was corrected, we started hitting errors like

  <4> [544.989065] i915 0000:cc:00.0: Uninitialized forcewake domain(s) 0x80 accessed at 0x1ce000

on parts with fused-off vdbox engines.

Fixes: e50dbdbfd9fb ("drm/i915/tgl: Add SFC instdone to error state")
Fixes: 82929a2140eb ("drm/i915: Correct SFC_DONE register offset")
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/i915_gpu_error.c | 19 ++++++++++++++++++-
 1 file changed, 18 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index 0f08bcfbe964..9cf6ac575de1 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -727,9 +727,18 @@ static void err_print_gt(struct drm_i915_error_state_buf *m,
 	if (GRAPHICS_VER(m->i915) >= 12) {
 		int i;
 
-		for (i = 0; i < GEN12_SFC_DONE_MAX; i++)
+		for (i = 0; i < GEN12_SFC_DONE_MAX; i++) {
+			/*
+			 * SFC_DONE resides in the VD forcewake domain, so it
+			 * only exists if the corresponding VCS engine is
+			 * present.
+			 */
+			if (!HAS_ENGINE(gt->_gt, _VCS(i * 2)))
+				continue;
+
 			err_printf(m, "  SFC_DONE[%d]: 0x%08x\n", i,
 				   gt->sfc_done[i]);
+		}
 
 		err_printf(m, "  GAM_DONE: 0x%08x\n", gt->gam_done);
 	}
@@ -1598,6 +1607,14 @@ static void gt_record_regs(struct intel_gt_coredump *gt)
 
 	if (GRAPHICS_VER(i915) >= 12) {
 		for (i = 0; i < GEN12_SFC_DONE_MAX; i++) {
+			/*
+			 * SFC_DONE resides in the VD forcewake domain, so it
+			 * only exists if the corresponding VCS engine is
+			 * present.
+			 */
+			if (!HAS_ENGINE(gt->_gt, _VCS(i * 2)))
+				continue;
+
 			gt->sfc_done[i] =
 				intel_uncore_read(uncore, GEN12_SFC_DONE(i));
 		}
-- 
2.25.4

