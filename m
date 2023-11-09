Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BDF0A7E7557
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Nov 2023 00:54:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E951910E103;
	Thu,  9 Nov 2023 23:54:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 83AE410E103
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Nov 2023 23:54:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699574085; x=1731110085;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=pkrTsknellBzt9rdncDqgGUq+DWRi+vuR4YQJ4snPTQ=;
 b=YyUmuzkDlWyjsKA90JPN2ttqxPvPCuX1I7mD2JljOllBMC0fc/7/2HfE
 5dLuVNcwysKqmYEnbo5ekGDBpQW7AH/c2f286Pt+PRvnSNAZjZH9EghHV
 0I8J9plBwUz6EE2wKMNvp0A44nH8+iYWRAeETSMwBmYoY8ytgxzPlh5jl
 HgeU7oET8qEShjPKsddA2Sk3GWTpZTQVfcnP3NE6Syhoak3OeVYiGnt0Q
 On4CNk/QgZu5a/qrkXiCc+HSiVPxR6lAwNPqVxh/8yGhqZUAkNJyxiFR4
 eAKj3XVcrq7+LYU7NhMvDFo9fz5Ijm+l+lpcxZzAcKPhH3+02ZBj/04BH w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10889"; a="11646444"
X-IronPort-AV: E=Sophos;i="6.03,290,1694761200"; d="scan'208";a="11646444"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2023 15:54:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10889"; a="833994670"
X-IronPort-AV: E=Sophos;i="6.03,290,1694761200"; d="scan'208";a="833994670"
Received: from valcore-skull-1.fm.intel.com ([10.1.27.19])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2023 15:54:44 -0800
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  9 Nov 2023 15:54:36 -0800
Message-ID: <20231109235436.2349963-1-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/huc: Stop printing about unsupported
 HuC on MTL
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

On MTL, the HuC is only supported on the media GT, so our validation
check on the module parameter detects an inconsistency on the root GT
(the modparams asks to enable HuC, but the support is not there) and
prints the following info message:

[drm] GT0: Incompatible option enable_guc=3 - HuC is not supported!

This can be confusing to the user and make them think that something is
wrong when it isn't, so we need to silence it.
Given that any platform that supports HuC also supports GuC, if a user
tries to enable HuC on a platform that really doesn't support it they'll
already see a message about GuC not being supported, so instead of just
silencing the HuC message on newer platforms we can just get rid of it
entirely.

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: John Harrison <john.c.harrison@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_uc.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
index 27f6561dd731..3872d309ed31 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
@@ -106,11 +106,6 @@ static void __confirm_options(struct intel_uc *uc)
 		gt_info(gt,  "Incompatible option enable_guc=%d - %s\n",
 			i915->params.enable_guc, "GuC is not supported!");
 
-	if (i915->params.enable_guc & ENABLE_GUC_LOAD_HUC &&
-	    !intel_uc_supports_huc(uc))
-		gt_info(gt, "Incompatible option enable_guc=%d - %s\n",
-			i915->params.enable_guc, "HuC is not supported!");
-
 	if (i915->params.enable_guc & ENABLE_GUC_SUBMISSION &&
 	    !intel_uc_supports_guc_submission(uc))
 		gt_info(gt, "Incompatible option enable_guc=%d - %s\n",
-- 
2.41.0

