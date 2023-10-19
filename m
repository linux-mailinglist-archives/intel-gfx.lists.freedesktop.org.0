Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A7FC7D0022
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Oct 2023 19:03:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFEC710E52C;
	Thu, 19 Oct 2023 17:03:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B593110E52C
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Oct 2023 17:03:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697734993; x=1729270993;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pEIJt1nKpu+5he4QlbgiGGsmnQOS9haGZl5SwTcFSF8=;
 b=kEppIDr4Pz3uMY4NOgCYgRq9+zFxyJvj5zzPLKJj45WTj9MGYSbLY2UI
 ghdr31SDWlqBJ1fWmPCSM5UGuvQ1WpLHsOGAUgRqtEH8+mtMzgE9e/5xF
 G8BbEGsfd2+CLPV8wmi8IaD9L4P66NZMlzFK6sLwDPLLD5R5WAsLNd2FX
 RL9lYbSDczTQ5kTi6Y3J6yVU5xu2wQAHPaY3odhljmu5NfCcjeOEp2TAL
 qrTTN33hLeGDMrNznd+qnJ/MTlAWsq7skzedp9kXB5XHoGEGd2B1KbnKo
 b/wcDbO/x8F70TYyul/mslb71kdLvsluxvyqZc2anvqnIYe6Eq9M4BRMa Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10868"; a="371379423"
X-IronPort-AV: E=Sophos;i="6.03,237,1694761200"; d="scan'208";a="371379423"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2023 10:02:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10868"; a="757121495"
X-IronPort-AV: E=Sophos;i="6.03,237,1694761200"; d="scan'208";a="757121495"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.131])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2023 10:02:46 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 19 Oct 2023 10:02:42 -0700
Message-ID: <20231019170241.2102037-2-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231019163913.2097183-2-matthew.d.roper@intel.com>
References: <20231019163913.2097183-2-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915/mcr: Hold GT forcewake during
 steering operations
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
Cc: Jonathan Cavitt <jonathan.cavitt@intel.com>, matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The steering control and semaphore registers are inside an "always on"
power domain with respect to RC6.  However there are some issues if
higher-level platform sleep states are entering/exiting at the same time
these registers are accessed.  Grabbing GT forcewake and holding it over
the entire lock/steer/unlock cycle ensures that those sleep states have
been fully exited before we access these registers.

This is expected to become a formally documented/numbered workaround
soon.

Note that this patch alone isn't expected to have an immediately
noticeable impact on MCR (mis)behavior; an upcoming pcode firmware
update will also be necessary to provide the other half of this
workaround.

v2:
 - Move the forcewake inside the Xe_LPG-specific IP version check.  This
   should only be necessary on platforms that have a steering semaphore.

Fixes: 4186e2185b4f ("drm/i915/gt: Add dedicated MCR lock")
Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Cc: Jonathan Cavitt <jonathan.cavitt@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_mcr.c | 24 ++++++++++++++++++++++--
 1 file changed, 22 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
index 326c2ed1d99b..34913912d8ae 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
@@ -376,9 +376,26 @@ void intel_gt_mcr_lock(struct intel_gt *gt, unsigned long *flags)
 	 * driver threads, but also with hardware/firmware agents.  A dedicated
 	 * locking register is used.
 	 */
-	if (GRAPHICS_VER_FULL(gt->i915) >= IP_VER(12, 70))
+	if (GRAPHICS_VER_FULL(gt->i915) >= IP_VER(12, 70)) {
+		/*
+		 * The steering control and semaphore registers are inside an
+		 * "always on" power domain with respect to RC6.  However there
+		 * are some issues if higher-level platform sleep states are
+		 * entering/exiting at the same time these registers are
+		 * accessed.  Grabbing GT forcewake and holding it over the
+		 * entire lock/steer/unlock cycle ensures that those sleep
+		 * states have been fully exited before we access these
+		 * registers.  This wakeref will be released in the unlock
+		 * routine.
+		 *
+		 * This is expected to become a formally documented/numbered
+		 * workaround soon.
+		 */
+		intel_uncore_forcewake_get(gt->uncore, FORCEWAKE_GT);
+
 		err = wait_for(intel_uncore_read_fw(gt->uncore,
 						    MTL_STEER_SEMAPHORE) == 0x1, 100);
+	}
 
 	/*
 	 * Even on platforms with a hardware lock, we'll continue to grab
@@ -415,8 +432,11 @@ void intel_gt_mcr_unlock(struct intel_gt *gt, unsigned long flags)
 {
 	spin_unlock_irqrestore(&gt->mcr_lock, flags);
 
-	if (GRAPHICS_VER_FULL(gt->i915) >= IP_VER(12, 70))
+	if (GRAPHICS_VER_FULL(gt->i915) >= IP_VER(12, 70)) {
 		intel_uncore_write_fw(gt->uncore, MTL_STEER_SEMAPHORE, 0x1);
+
+		intel_uncore_forcewake_put(gt->uncore, FORCEWAKE_GT);
+	}
 }
 
 /**
-- 
2.41.0

