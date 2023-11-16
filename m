Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A5A67EE8C1
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Nov 2023 22:27:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B372510E101;
	Thu, 16 Nov 2023 21:27:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 822B310E101
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Nov 2023 21:27:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700170022; x=1731706022;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=6vUPzrVDPPGeYEoQDJlPuFzmnpbeYXthecHST1kMPE4=;
 b=mnGsbidoBjQAXcyqMrk+rJHmudyO+4q+lDlY0PpWkUwlRFERBzIPaxVk
 o6/ir55ogS46ciPuEeK5cE9DsLw2gy/Tv5bmLrOseT6LK1viRS3UT0J8F
 LUFTjp6DwQAeWh5H9U1lzLhppFcmzfeSFxR7801Ew56ps642YqhDU91W5
 WVIkMhrneqIjIW+3qf2KNn8Dh+f/xtv91+B9ycBWSJ+lGgLFFydEAF1xS
 ZZSlpatHYVur/sqeZWrQLFYb3b0oieM2uPOryk+77QjK5MAX55x58zVFG
 o2J/TSRoFvc2nXY14zHRguBKOP1oUFiuSNKfZi5Wzc/QYGhY+Xie/RDSx A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10896"; a="370541166"
X-IronPort-AV: E=Sophos;i="6.04,205,1695711600"; d="scan'208";a="370541166"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2023 13:27:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10896"; a="758971675"
X-IronPort-AV: E=Sophos;i="6.04,205,1695711600"; d="scan'208";a="758971675"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2023 13:27:01 -0800
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Nov 2023 13:25:11 -0800
Message-Id: <20231116212511.1760446-1-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/mtl: Update Wa_22018931422
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
Cc: Matt Roper <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Commit 78cc55e0b64c ("drm/i915/mcr: Hold GT forcewake during steering operations")
introduced the workaround which was in early stages. With a valid
lineage number update Workaround for future tracking.

Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_mcr.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
index 34913912d8ae..e253750a51c5 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
@@ -388,8 +388,7 @@ void intel_gt_mcr_lock(struct intel_gt *gt, unsigned long *flags)
 		 * registers.  This wakeref will be released in the unlock
 		 * routine.
 		 *
-		 * This is expected to become a formally documented/numbered
-		 * workaround soon.
+		 * Wa_22018931422
 		 */
 		intel_uncore_forcewake_get(gt->uncore, FORCEWAKE_GT);
 
-- 
2.34.1

