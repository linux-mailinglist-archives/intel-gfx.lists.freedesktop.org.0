Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 96AAD7CFFC0
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Oct 2023 18:39:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 83B5210E527;
	Thu, 19 Oct 2023 16:39:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1815A10E527
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Oct 2023 16:39:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697733564; x=1729269564;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=x3m6L81Cnyt2ubM7o3fClo0vwFjyjI/fspVUzvtumbk=;
 b=TxeQceH53ndPeHMAtgcCEFPkpLbT3hY2Ls50Sg/eoPHEHORFZ2ywtGfR
 SA+jRd4farnmZJPEMIRWyaFyZMUE9zM23KhYZgpFLTRpHH0joGRIGtWgq
 ggAuquSsewDB49/THVi0GMHi1qQ0drjFerdcD8MnoHqkf2lwqB3riXEWv
 sOi0dRFw44eNvPBUMs6Dae45YXoNTolFhNW8G2o3WToq3ks3ftK7VUvoT
 uMyI63m4mOaK/HapYLwLZxPFGP6GIui64egAl7JJQoNiOSbQR5xxV7fd0
 5WgTs9q7Rkxpil5jYPBM1L1Cw5QfnG9D1+k7cDqMHyyEWvkMgMESYtSGk A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10868"; a="417419268"
X-IronPort-AV: E=Sophos;i="6.03,237,1694761200"; d="scan'208";a="417419268"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2023 09:39:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10868"; a="750591811"
X-IronPort-AV: E=Sophos;i="6.03,237,1694761200"; d="scan'208";a="750591811"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.131])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2023 09:39:22 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 19 Oct 2023 09:39:14 -0700
Message-ID: <20231019163913.2097183-2-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/mcr: Hold GT forcewake during steering
 operations
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

Fixes: 4186e2185b4f ("drm/i915/gt: Add dedicated MCR lock")
Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Cc: Jonathan Cavitt <jonathan.cavitt@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_mcr.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
index 326c2ed1d99b..83bb0575b426 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
@@ -371,6 +371,21 @@ void intel_gt_mcr_lock(struct intel_gt *gt, unsigned long *flags)
 
 	lockdep_assert_not_held(&gt->uncore->lock);
 
+	/*
+	 * The steering control and semaphore registers are inside an
+	 * "always on" power domain with respect to RC6.  However there are
+	 * some issues if higher-level platform sleep states are
+	 * entering/exiting at the same time these registers are accessed.
+	 * Grabbing GT forcewake and holding it over the entire
+	 * lock/steer/unlock cycle ensures that those sleep states have been
+	 * fully exited before we access these registers.  This
+	 * wakeref will be released in the unlock routine.
+	 *
+	 * This is expected to become a formally documented/numbered workaround
+	 * soon.
+	 */
+	intel_uncore_forcewake_get(gt->uncore, FORCEWAKE_GT);
+
 	/*
 	 * Starting with MTL, we need to coordinate not only with other
 	 * driver threads, but also with hardware/firmware agents.  A dedicated
@@ -417,6 +432,8 @@ void intel_gt_mcr_unlock(struct intel_gt *gt, unsigned long flags)
 
 	if (GRAPHICS_VER_FULL(gt->i915) >= IP_VER(12, 70))
 		intel_uncore_write_fw(gt->uncore, MTL_STEER_SEMAPHORE, 0x1);
+
+	intel_uncore_forcewake_put(gt->uncore, FORCEWAKE_GT);
 }
 
 /**
-- 
2.41.0

