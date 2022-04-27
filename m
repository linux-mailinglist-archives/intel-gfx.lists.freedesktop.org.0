Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ACAF3510D3C
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Apr 2022 02:35:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2BBF10EC45;
	Wed, 27 Apr 2022 00:35:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0711810EC15
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Apr 2022 00:35:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651019731; x=1682555731;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=PqzGOcKtjv1DplY86Pvxhknb+8z03R4lDFgwCQcwzgg=;
 b=BmCQVV5x/3j1pngGq2fzXQioouCenR+PlJ9wGtqwn/wZp460MpSgFFHz
 5kHL2NkeJJfCCWARV4x4x09HMqrNMP5TwE84GOV1KAoA7X8Eo2ClN2ywd
 usZEAK3Bdj5yVDHmEADZgNyVMFf0poWB7U+0y9IM4RgLz/gYEzGDBThRr
 cx/pMcBp3SVmAGs2UNxiB5VdX3v1moh1asLzbB9fWCdjPaI6WvCYBBdHb
 vZ/iS9mvfJ+s+yVQdTWHyPCRXMkgcU6QvuW/Diu0KLjB+SXv2FMtpU5HP
 EMdNWL58QoZgRT8rwWS/SBiJ2QTwUWUVv53i75iMpCSfuS7+VxvyDSJKN g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10329"; a="253146542"
X-IronPort-AV: E=Sophos;i="5.90,292,1643702400"; d="scan'208";a="253146542"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2022 17:35:30 -0700
X-IronPort-AV: E=Sophos;i="5.90,292,1643702400"; d="scan'208";a="580256012"
Received: from unerlige-desk.jf.intel.com ([10.165.21.210])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2022 17:35:30 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Date: Tue, 26 Apr 2022 17:35:15 -0700
Message-Id: <20220427003515.3944267-1-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/pmu: Use existing uncore helper to
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
index 61a6f2424e24..33e695adfd6a 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -1200,20 +1200,6 @@ static u32 gpm_timestamp_shift(struct intel_gt *gt)
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
@@ -1223,7 +1209,8 @@ static void guc_update_pm_timestamp(struct intel_guc *guc, ktime_t *now)
 	lockdep_assert_held(&guc->timestamp.lock);
 
 	gt_stamp_hi = upper_32_bits(guc->timestamp.gt_stamp);
-	gpm_ts = gpm_timestamp(gt) >> guc->timestamp.shift;
+	gpm_ts = intel_uncore_read64_2x32(gt->uncore, MISC_STATUS0,
+					  MISC_STATUS1) >> guc->timestamp.shift;
 	gt_stamp_lo = lower_32_bits(gpm_ts);
 	*now = ktime_get();
 
-- 
2.35.1

