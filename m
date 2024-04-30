Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 78B198B7D6E
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2024 18:48:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07B2B1127BA;
	Tue, 30 Apr 2024 16:48:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="L0N5p/mT";
	dkim-atps=neutral
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A51110EF30
 for <Intel-GFX@lists.freedesktop.org>; Tue, 30 Apr 2024 16:48:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714495710; x=1746031710;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=7Bvlg46zXPQET1u/JRg4DooDuLEOoFpvms2fUwsI6fY=;
 b=L0N5p/mTmWmYsEyIuwP2paGdE9pHSpgzdKT9dUhm7BqDEGWigdgloS1m
 NDAA51jkaCFwA0CGLMNGlT3r3wjMTS7kz/lgogBR0cb9143UJCdBiZe8+
 +IWWY9Jw7wWa/STIW5C0Fk4A4CoM2gHzDEgJXEpexnkyxe/lPgWFsWiJX
 i7v5zNTBxthPHNy2h+rD50lkbU6WRO8dpED7QiNPok6ztQkiuvaWORqjA
 DzbdG6YVgGdfrjE7Kqx53rhR5aC3+EqxU+5TCt2moNL7mme9HTGhdk3sz
 sJV0681w/UE5PK2VY4aVc4Nr58JrwKseBwGlF52HZxciBoNjb3/YoFIfN w==;
X-CSE-ConnectionGUID: TgG75zPXQbCBJocMfo2hPA==
X-CSE-MsgGUID: UUrBBYACTgalx2Qfc9awyQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11060"; a="10339316"
X-IronPort-AV: E=Sophos;i="6.07,242,1708416000"; d="scan'208";a="10339316"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 09:48:23 -0700
X-CSE-ConnectionGUID: tAeZBNypQqiHbt6eALGXow==
X-CSE-MsgGUID: ClN3XcDuTgys6og5XfATHg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,242,1708416000"; d="scan'208";a="49731340"
Received: from bfilipch-desk.jf.intel.com ([10.165.21.204])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 09:48:22 -0700
From: Julia Filipchuk <julia.filipchuk@intel.com>
To: Intel-GFX@Lists.FreeDesktop.Org
Cc: Arnd Bergmann <arnd@arndb.de>,
 Michal Wajdeczko <michal.wajdeczko@intel.com>,
 Julia Filipchuk <julia.filipchuk@intel.com>
Subject: [PATCH] drm/i915/guc: avoid FIELD_PREP warning
Date: Tue, 30 Apr 2024 09:48:09 -0700
Message-ID: <20240430164809.482131-1-julia.filipchuk@intel.com>
X-Mailer: git-send-email 2.43.2
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

From: Arnd Bergmann <arnd@arndb.de>

With gcc-7 and earlier, there are lots of warnings like

In file included from <command-line>:0:0:
In function '__guc_context_policy_add_priority.isra.66',
    inlined from '__guc_context_set_prio.isra.67' at drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:3292:3,
    inlined from 'guc_context_set_prio' at drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:3320:2:
include/linux/compiler_types.h:399:38: error: call to '__compiletime_assert_631' declared with attribute error: FIELD_PREP: mask is not constant
  _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
                                      ^
...
drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:2422:3: note: in expansion of macro 'FIELD_PREP'
   FIELD_PREP(GUC_KLV_0_KEY, GUC_CONTEXT_POLICIES_KLV_ID_##id) | \
   ^~~~~~~~~~

Make sure that GUC_KLV_0_KEY is an unsigned value to avoid the warning.

Fixes: 77b6f79df66e ("drm/i915/guc: Update to GuC version 69.0.3")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Reviewed-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
Signed-off-by: Julia Filipchuk <julia.filipchuk@intel.com>
---

Resubmit of a previous patch that was reviewed but never merged.
Patch resolves warnings on some older GCC versions of failed
constant propagation. Issue has been reported again; hoping to
resolve.

Previous Unmerged Patch:
https://patchwork.freedesktop.org/series/114145/

Reported Issue:
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10821


 drivers/gpu/drm/i915/gt/uc/abi/guc_klvs_abi.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/abi/guc_klvs_abi.h b/drivers/gpu/drm/i915/gt/uc/abi/guc_klvs_abi.h
index bebf28e3c479..525587cfe1af 100644
--- a/drivers/gpu/drm/i915/gt/uc/abi/guc_klvs_abi.h
+++ b/drivers/gpu/drm/i915/gt/uc/abi/guc_klvs_abi.h
@@ -29,9 +29,9 @@
  */
 
 #define GUC_KLV_LEN_MIN				1u
-#define GUC_KLV_0_KEY				(0xffff << 16)
-#define GUC_KLV_0_LEN				(0xffff << 0)
-#define GUC_KLV_n_VALUE				(0xffffffff << 0)
+#define GUC_KLV_0_KEY				(0xffffu << 16)
+#define GUC_KLV_0_LEN				(0xffffu << 0)
+#define GUC_KLV_n_VALUE				(0xffffffffu << 0)
 
 /**
  * DOC: GuC Self Config KLVs
-- 
2.43.2

