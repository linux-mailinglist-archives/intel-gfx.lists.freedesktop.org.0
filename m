Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A29E19F92F5
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Dec 2024 14:17:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4077410E388;
	Fri, 20 Dec 2024 13:17:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bhZ2NUXf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F00310E388
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Dec 2024 13:17:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734700654; x=1766236654;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=R07zFWLlp22mNKqvW6Qut0tjO1EjjKajTw1/UwOao98=;
 b=bhZ2NUXfblLtzBTplPyGk6dQpuK3oF57MVAk70IEk5o5E6oOcDx6pZ2q
 DbJJarLmJh537gOPhAW3VoLs0+xX0jkiuuU9BxGnlfRK9ZywfI4qbfCb6
 3CpTsSW78kLt1AdQcTq2nYTPYZ9r5X7iI+P4IatdhyuswmHiks0w09xO/
 Rmc5bOuOjFOo8vdZ6PuqkPrG5oUHn0XfGqhICsJrUrILsJro2MShBaScP
 s/BFeAm/WgoyeoAMijW5wZSEK8bDXn1M0DaVklgvNGromowmlzwOsKC1E
 06YO4qCuLtzFTqmv3GmcHLR+/AJ7kzcHsLnfhNM7Jf4J8WKo78jmlG0QP Q==;
X-CSE-ConnectionGUID: ppHqT8GySLCwWu2Smyd2Hw==
X-CSE-MsgGUID: glGm5P3PTu+ehioinSdS1Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11292"; a="35137164"
X-IronPort-AV: E=Sophos;i="6.12,250,1728975600"; d="scan'208";a="35137164"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2024 05:17:33 -0800
X-CSE-ConnectionGUID: lTEu0D7mT4Ce3+mCqof6kA==
X-CSE-MsgGUID: ITV6v6Q3SlSYMKRf7vflJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="135850289"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.245.246.245])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2024 05:17:31 -0800
From: Andi Shyti <andi.shyti@linux.intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>
Cc: Sebastian Brzezinka <sebastian.brzezinka@intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>, Andi Shyti <andi.shyti@kernel.org>
Subject: [PATCH RESEND v2] drm/i915/gt: Log reason for setting TAINT_WARN at
 reset
Date: Fri, 20 Dec 2024 14:17:14 +0100
Message-ID: <20241220131714.1309483-1-andi.shyti@linux.intel.com>
X-Mailer: git-send-email 2.45.2
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

From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>

TAINT_WARN is used to notify CI about non-recoverable failures, which
require device to be restarted. In some cases, there is no sufficient
information about the reason for the restart. The test runner is just
killed, and DUT is rebooted, logging only 'probe with driver i915 failed
with error -4' to dmesg.

Printing error to dmesg before TAINT_WARN, would explain why the device
has been restarted, and what caused the malfunction in the first place.

Signed-off-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
---
Cc: Andi Shyti <andi.shyti@kernel.org>

Hi,

this patch for some reason did not reach the mailing list and it
missed all the CI premerge tests. I am resending it, this time
with the Changelog and the versioning.

I am leaving it for a few days in order to be reviewed by others,
as well.

Andi

Changelog:
==========
v1 -> v2:
 - Reword the commit log

 drivers/gpu/drm/i915/gt/intel_reset.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
index c2fe3fc78e76..aae5a081cb53 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.c
+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
@@ -1113,6 +1113,7 @@ static bool __intel_gt_unset_wedged(struct intel_gt *gt)
 		 * Warn CI about the unrecoverable wedged condition.
 		 * Time for a reboot.
 		 */
+		gt_err(gt, "Unrecoverable wedged condition\n");
 		add_taint_for_CI(gt->i915, TAINT_WARN);
 		return false;
 	}
@@ -1264,8 +1265,10 @@ void intel_gt_reset(struct intel_gt *gt,
 	}
 
 	ret = resume(gt);
-	if (ret)
+	if (ret) {
+		gt_err(gt, "Failed to resume (%d)\n", ret);
 		goto taint;
+	}
 
 finish:
 	reset_finish(gt, awake);
@@ -1608,6 +1611,7 @@ void intel_gt_set_wedged_on_init(struct intel_gt *gt)
 	set_bit(I915_WEDGED_ON_INIT, &gt->reset.flags);
 
 	/* Wedged on init is non-recoverable */
+	gt_err(gt, "Non-recoverable wedged on init\n");
 	add_taint_for_CI(gt->i915, TAINT_WARN);
 }
 
-- 
2.45.2

