Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB3BAA94F21
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Apr 2025 12:05:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A2B910E242;
	Mon, 21 Apr 2025 10:05:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="d4rHQuuG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CFC8110E242
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Apr 2025 10:04:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745229899; x=1776765899;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=A1sxiJzquWZ9BYgGCTQ/yG3JDIU/EcudHkMY8J7o42I=;
 b=d4rHQuuGqjxY4Nb62VifeA9CAmOd2f8Bs9pCbvGRi21fgBh02TrxhbWG
 yj8JbH5fqLcQz0By6Y8N16aoTdRxp5qkVdeO6pJnlAe48IouF+Cc6YSVN
 tfzEq0ieF7G0Mk5T4Ndqht+/vPPz9Dj1Jd+ppTGCSczf2ksBwX0eARG9w
 LFJjsagQGyqEuKDHz+zQ8SuHzi84oVKd522z5jrHnkkFyBKTpSPV/4IaH
 SrixUVqgFigCDtJ3v8+G2krQBGy1VMD6shomqlCgmnTkYnIinm7qvDziH
 YseKaHguxDB9FwLjKPxrGanszlZASlj13BFiAqQHEeBrW0Q7jdFvtl48A w==;
X-CSE-ConnectionGUID: ARBxmrFjQEKR1jrsbQp5rg==
X-CSE-MsgGUID: BvdcJ0ajTW2Dd0o1sEaM0g==
X-IronPort-AV: E=McAfee;i="6700,10204,11409"; a="64170434"
X-IronPort-AV: E=Sophos;i="6.15,227,1739865600"; d="scan'208";a="64170434"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2025 03:04:56 -0700
X-CSE-ConnectionGUID: h7Pkp9FPTAqlQggI/ieh/w==
X-CSE-MsgGUID: 0UV8LnuTSR+wBdt+jhq0Qg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,227,1739865600"; d="scan'208";a="136643875"
Received: from unknown (HELO anirban-Z690I-A-ULTRA-PLUS.iind.intel.com)
 ([10.190.216.83])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2025 03:04:53 -0700
From: sk.anirban@intel.com
To: intel-gfx@lists.freedesktop.org
Cc: anshuman.gupta@intel.com, badal.nilawar@intel.com, riana.tauro@intel.com,
 karthik.poosa@intel.com, raag.jadav@intel.com, vinay.belgaumkar@intel.com,
 Sk Anirban <sk.anirban@intel.com>
Subject: [PATCH] drm/i915/slpc: Avoid negative num_waiters to ensure correct
 waitboost behavior
Date: Mon, 21 Apr 2025 15:29:58 +0530
Message-Id: <20250421095958.2487275-1-sk.anirban@intel.com>
X-Mailer: git-send-email 2.34.1
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

From: Sk Anirban <sk.anirban@intel.com>

In SLPC, the num_waiters atomic variable can become negative if a request
retires without a proper frequency boost. This issue prevents the
frequency boost from being triggered in subsequent boost iterations.
This check stops the counter from going negative to ensures the
correct behavior of the waitboost mechanism.

Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13598
Signed-off-by: Sk Anirban <sk.anirban@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
index d5ee6e5e1443..80d7de8c1a25 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
@@ -840,8 +840,10 @@ void intel_guc_slpc_dec_waiters(struct intel_guc_slpc *slpc)
 	 * set_param fails.
 	 */
 	mutex_lock(&slpc->lock);
-	if (atomic_dec_and_test(&slpc->num_waiters))
-		slpc_force_min_freq(slpc, slpc->min_freq_softlimit);
+	if (atomic_read(&slpc->num_waiters) > 0)
+		if (atomic_dec_and_test(&slpc->num_waiters))
+			slpc_force_min_freq(slpc, slpc->min_freq_softlimit);
+
 	mutex_unlock(&slpc->lock);
 }
 
-- 
2.34.1

