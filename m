Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4043440FD9F
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Sep 2021 18:12:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EFB706E02A;
	Fri, 17 Sep 2021 16:12:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 255526E02A
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Sep 2021 16:12:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10110"; a="202324747"
X-IronPort-AV: E=Sophos;i="5.85,301,1624345200"; d="scan'208";a="202324747"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2021 09:12:13 -0700
X-IronPort-AV: E=Sophos;i="5.85,301,1624345200"; d="scan'208";a="473168269"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2021 09:12:13 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: matthew.d.roper@intel.com,
 =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
Date: Fri, 17 Sep 2021 09:12:03 -0700
Message-Id: <20210917161203.812251-3-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210917161203.812251-1-matthew.d.roper@intel.com>
References: <20210917161203.812251-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Check SFC fusing before
 recording/dumping SFC_DONE
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

On Xe_HP and beyond the SFC unit may be fused off, even if the
corresponding media engines are present.  Check the SFC-specific fusing
before trying to dump the SFC_DONE instances.

Cc: José Roberto de Souza <jose.souza@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/i915_gpu_error.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index b9f66dbd46bb..2a2d7643b551 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -753,7 +753,8 @@ static void err_print_gt(struct drm_i915_error_state_buf *m,
 			 * only exists if the corresponding VCS engine is
 			 * present.
 			 */
-			if (!HAS_ENGINE(gt->_gt, _VCS(i * 2)))
+			if ((gt->_gt->info.sfc_mask & BIT(i)) == 0 ||
+			    !HAS_ENGINE(gt->_gt, _VCS(i * 2)))
 				continue;
 
 			err_printf(m, "  SFC_DONE[%d]: 0x%08x\n", i,
@@ -1632,7 +1633,8 @@ static void gt_record_regs(struct intel_gt_coredump *gt)
 			 * only exists if the corresponding VCS engine is
 			 * present.
 			 */
-			if (!HAS_ENGINE(gt->_gt, _VCS(i * 2)))
+			if ((gt->_gt->info.sfc_mask & BIT(i)) == 0 ||
+			    !HAS_ENGINE(gt->_gt, _VCS(i * 2)))
 				continue;
 
 			gt->sfc_done[i] =
-- 
2.33.0

