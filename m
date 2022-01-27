Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E0AB49D69C
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jan 2022 01:15:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5366B10ED06;
	Thu, 27 Jan 2022 00:15:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BA9210ED06
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jan 2022 00:15:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643242535; x=1674778535;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=G69ph7zILha4c2EdPBK+qpvnOx8ggOkPpF0XK0iYakU=;
 b=EFcyJUSsqil6wL9iqba26rhzw21Uh/wDdqCv2sUeQh7dKuOdLeCpjq5M
 1E/uIv+dI5H0rWEsEfqlum35u8UqGx7YS1G/CCqipx1ZQ57GfGnH7ze0l
 j0QGXNpJLoUk4WsxU1UQmIccJKsXasfwrdV2ia40jZz8vjgK7DtCpgoCw
 EtTEpzqv59iQwC7DJWsIv6A4AZpRAFqnyJhfN9PFAoloyL9qbSzYp+JCd
 vuEVG5l4jDa2hk/KkxDZehZbn95ULiBUXa4eFpiUeOEY1cFOh01oHDyip
 QmUKQr+1Bw5QPlZ8Rl3ZcZC9/Bg/T/1ds+15QlmcEMS9UIvCdI+EWZ1m/ w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10239"; a="234071935"
X-IronPort-AV: E=Sophos;i="5.88,319,1635231600"; d="scan'208";a="234071935"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2022 16:15:34 -0800
X-IronPort-AV: E=Sophos;i="5.88,319,1635231600"; d="scan'208";a="563588847"
Received: from unerlige-desk.jf.intel.com ([10.165.21.210])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2022 16:15:34 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Jan 2022 16:15:29 -0800
Message-Id: <20220127001529.978596-2-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20220127001529.978596-1-umesh.nerlige.ramappa@intel.com>
References: <20220127001529.978596-1-umesh.nerlige.ramappa@intel.com>
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

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c   | 17 ++---------------
 1 file changed, 2 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 4e9154cacc58..0549b3edc4a2 100644
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
+	gpm_ts = intel_uncore_read64_2x32(uncore, MISC_STATUS0, MISC_STATUS1) >>
+		 guc->timestamp.shift;
 	gt_stamp_lo = lower_32_bits(gpm_ts);
 	*now = ktime_get();
 
-- 
2.33.1

