Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D19249D7CA
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jan 2022 03:01:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C888310E16E;
	Thu, 27 Jan 2022 02:01:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1718010E16E
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jan 2022 02:01:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643248895; x=1674784895;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Cl58kGY1jR3viTT/MbTOMkYhSA1+qx7EA+vPrYJ14PI=;
 b=cmPgQ51NK3fAx0szRuwLkllCopRKOiA1hKS1L+gMdri2VUaG7F2L/lmX
 Sk0rPQK6oRcqIM6BdDz0A2xO+PgRmwHyHb6tbiIf0Iwmsk5gq//9vm4P3
 2b1V5YlC2lbCRjfxRf2XDQpxf5wQWKPYlp4CYTMudBeIgguhxTYz3D8RM
 YtQ/1z2UuQHDBrlz3E8DvpNtH3TOsJAaiDEHs3OQFj247K3RehOynyGHS
 TIF2sq/GRYv0Jgyn86H4XWgTG0SZzdB3lMI+faaigj5SwN/nH594VV0/c
 xrRJpEKATiZzDkTaLoG0qiG12p+ApFNypjdcwB4Dh8SNf886+z0DXgbMJ w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10239"; a="226695302"
X-IronPort-AV: E=Sophos;i="5.88,319,1635231600"; d="scan'208";a="226695302"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2022 18:00:39 -0800
X-IronPort-AV: E=Sophos;i="5.88,319,1635231600"; d="scan'208";a="535434586"
Received: from unerlige-desk.jf.intel.com ([10.165.21.210])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2022 18:00:39 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Jan 2022 18:00:35 -0800
Message-Id: <20220127020035.985786-2-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20220127020035.985786-1-umesh.nerlige.ramappa@intel.com>
References: <20220127020035.985786-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/pmu: Use existing uncore helper to
 read gpm_timestamp
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

Use intel_uncore_read64_2x32 to read upper and lower fields of the GPM
timestamp.

v2: Fix compile error

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c   | 17 ++---------------
 1 file changed, 2 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 4e9154cacc58..6052148068d7 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -1205,20 +1205,6 @@ static u32 gpm_timestamp_shift(struct intel_gt *gt)
 	return 3 - shift;
 }
 
-static u64 gpm_timestamp(struct intel_gt *gt)
-{
-	u32 lo, hi, old_hi, loop = 0;
-
-	hi = intel_uncore_read(gt->uncore, MISC_STATUS1);
-	do {
-		lo = intel_uncore_read(gt->uncore, MISC_STATUS0);
-		old_hi = hi;
-		hi = intel_uncore_read(gt->uncore, MISC_STATUS1);
-	} while (old_hi != hi && loop++ < 2);
-
-	return ((u64)hi << 32) | lo;
-}
-
 static void guc_update_pm_timestamp(struct intel_guc *guc, ktime_t *now)
 {
 	struct intel_gt *gt = guc_to_gt(guc);
@@ -1228,7 +1214,8 @@ static void guc_update_pm_timestamp(struct intel_guc *guc, ktime_t *now)
 	lockdep_assert_held(&guc->timestamp.lock);
 
 	gt_stamp_hi = upper_32_bits(guc->timestamp.gt_stamp);
-	gpm_ts = gpm_timestamp(gt) >> guc->timestamp.shift;
+	gpm_ts = intel_uncore_read64_2x32(gt->uncore, MISC_STATUS0,
+					  MISC_STATUS1) >> guc->timestamp.shift;
 	gt_stamp_lo = lower_32_bits(gpm_ts);
 	*now = ktime_get();
 
-- 
2.33.1

