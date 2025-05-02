Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C3202AA7C48
	for <lists+intel-gfx@lfdr.de>; Sat,  3 May 2025 00:39:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F0FD10E2A0;
	Fri,  2 May 2025 22:39:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="W0buREbO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA5E610E2A0
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 May 2025 22:39:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746225575; x=1777761575;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=9O8PiKSTOKVFzzACRej8r9dRU5dDuRe1s9ln5BBT2I8=;
 b=W0buREbOkKZGOCOEa0AwA6AeREkvqO4AdWw7004SVhZLj1cdtP597pmc
 o6XXY1rBDjp/VDgz9uH2YBen++6NVnkBym6AQ/XiAGi1/mBEPmeeTkIWN
 CKKtFT1LJLuwm9SZntOBOIOTdN/8ldesPTR4rK81P34jCiVLtH7214Eif
 qu50vm4AmBEI3AYmKieAAdcXSmw++egFfO8QP92/BUKor+6xQlEBo3/i3
 jNABhZ0okVzGSrazlpm6uvhBu8bxvS8jW2IhdAhI1H7RwTrHVsWa7BmCb
 0jC607Q52sRp4VNMZt+LTqhA0WRes+QBsVX2dr+bLYFcreM1UUxJ870qP Q==;
X-CSE-ConnectionGUID: COEsKKYNTmWBEVbto9uNyA==
X-CSE-MsgGUID: B0kbNp2PSNKb2MCVOo+exQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11421"; a="70423184"
X-IronPort-AV: E=Sophos;i="6.15,257,1739865600"; d="scan'208";a="70423184"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2025 15:39:33 -0700
X-CSE-ConnectionGUID: TzAu3WJiQr2KbzTNhTeX8A==
X-CSE-MsgGUID: M5o05qJpS4SmVa3m1TA/VQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,257,1739865600"; d="scan'208";a="139548233"
Received: from bfilipch-desk.jf.intel.com ([10.165.21.204])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2025 15:39:33 -0700
From: Julia Filipchuk <julia.filipchuk@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 Julia Filipchuk <julia.filipchuk@intel.com>
Subject: [PATCH v3] drm/i915/guc: Enable DUAL_QUEUE_WA for newer platforms
Date: Fri,  2 May 2025 15:39:24 -0700
Message-ID: <20250502223924.94628-1-julia.filipchuk@intel.com>
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
submisstion of concurrent submissions on RCS and CCS of different
address spaces.  With this workaround GuC will never schedule such
conlicting contexts; preventing detection of a stall as a hang.

GuC specs recommend to enable this for all platforms starting from MTL
supporting CCS.

v2: Use existing macros for version check. (Jani)
v3: Reword explanation for clarity. Remove unneeded parens. Remove
    accidental comment change. (Daniele)

Signed-off-by: Julia Filipchuk <julia.filipchuk@intel.com>
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
index 9df80c325fc1..f360f020d8f1 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
@@ -313,8 +313,13 @@ static u32 guc_ctl_wa_flags(struct intel_guc *guc)
 	 *
 	 * The same WA bit is used for both and 22011391025 is applicable to
 	 * all DG2.
+	 *
+	 * Platforms post DG2 prevent this issue in hardware by stalling
+	 * submissions. With this flag GuC will schedule as to avoid such
+	 * stalls.
 	 */
-	if (IS_DG2(gt->i915))
+	if (IS_DG2(gt->i915) ||
+	    (CCS_MASK(gt) && GRAPHICS_VER_FULL(gt->i915) >= IP_VER(12, 70)))
 		flags |= GUC_WA_DUAL_QUEUE;
 
 	/* Wa_22011802037: graphics version 11/12 */
-- 
2.49.0

