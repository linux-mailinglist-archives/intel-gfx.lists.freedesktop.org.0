Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B1AB79F178F
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2024 21:46:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E493F10E43D;
	Fri, 13 Dec 2024 20:46:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZJHdNpt0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9462710E43D
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Dec 2024 20:46:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734122809; x=1765658809;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=0QYfUcl2PmR5Da+2rCQF+uNBHknSkkrpuPhwDx7CGpk=;
 b=ZJHdNpt0Jb30qQ3sTr4sUs8WLTtBsGejeIbiNZwmheffUtsELO0RMKnf
 u/pCaIpNpYbB/3if85oQ72IYFT0tbPvF2PiCIS+6CSa1WnH96AzvttCxE
 QpiyI2+DQWL8dvIP+yIgOr3xtMmsF96c9VibUK97n8aS4NJkifhbZzS5W
 kMg9mVnce2ClRNvHGCyWsUKKomZDuQBzx5oe/WjvfE9ymXv4/4WZBV0OY
 d7V5qIx4CUG88CH8UC/l1dqK2rwUYWZBJ4p7sqt4N5ZcPec8leMrDVbde
 He6MTSu1xB+TsFP32jR7QHwLT2j8IVFZupEYMIhsHRnHKVJ3geoXpP/m4 Q==;
X-CSE-ConnectionGUID: 4ivtArt0T5uzvujNcYPyTQ==
X-CSE-MsgGUID: NNyjlYpWQQWJ16Uc4nEUXA==
X-IronPort-AV: E=McAfee;i="6700,10204,11282"; a="45996194"
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="45996194"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2024 12:46:48 -0800
X-CSE-ConnectionGUID: ZI8E/tg0T6ChemCbQO29ug==
X-CSE-MsgGUID: DiKwOhzOTO27Utvd01CgFw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="101210393"
Received: from jesusnar-desk.jf.intel.com ([10.165.21.207])
 by fmviesa005.fm.intel.com with ESMTP; 13 Dec 2024 12:46:47 -0800
From: Jesus Narvaez <jesus.narvaez@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Jesus Narvaez <jesus.narvaez@intel.com>,
 Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 John Harrison <John.C.Harrison@Intel.com>
Subject: [PATCH] drm/i915/guc: Update guc_err message to show outstanding g2h
 responses
Date: Fri, 13 Dec 2024 12:47:20 -0800
Message-Id: <20241213204720.3918056-1-jesus.narvaez@intel.com>
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

Updating the guc_error message to show how many g2h responses
are still outstanding, in order to help with future debugging.

Signed-off-by: Jesus Narvaez <jesus.narvaez@intel.com>
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: John Harrison <John.C.Harrison@Intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 353a9167c9a4..d49d645aa86d 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -2009,6 +2009,8 @@ void intel_guc_submission_cancel_requests(struct intel_guc *guc)
 
 void intel_guc_submission_reset_finish(struct intel_guc *guc)
 {
+	int outstanding;
+
 	/* Reset called during driver load or during wedge? */
 	if (unlikely(!guc_submission_initialized(guc) ||
 		     !intel_guc_is_fw_running(guc) ||
@@ -2022,8 +2024,10 @@ void intel_guc_submission_reset_finish(struct intel_guc *guc)
 	 * see in CI if this happens frequently / a precursor to taking down the
 	 * machine.
 	 */
-	if (atomic_read(&guc->outstanding_submission_g2h))
-		guc_err(guc, "Unexpected outstanding GuC to Host in reset finish\n");
+	outstanding = atomic_read(&guc->outstanding_submission_g2h);
+	if (outstanding)
+		guc_err(guc, "Unexpected outstanding GuC to Host response(s) in reset finish: %d\n",
+			outstanding);
 	atomic_set(&guc->outstanding_submission_g2h, 0);
 
 	intel_guc_global_policies_update(guc);
-- 
2.34.1

