Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EFB21938ACA
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jul 2024 10:10:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61BCE10E3EA;
	Mon, 22 Jul 2024 08:10:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fm8/hZNQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7DD8F10E3D6;
 Mon, 22 Jul 2024 08:09:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721635792; x=1753171792;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ODZXMYLmiFFHmtAzIZpP3BQe3sXwxAmu56gFHFKGPbM=;
 b=fm8/hZNQmzaAvfSczEauXkS/b6O3iiUznoY+b9hqdSdMSLp18+lYuaF1
 ELYd4fMFYZd72FM1moDLATwR4QsB8dWQNeXtVcJXA4iS/cTUvU+wJztId
 rpCNUCu/o80AJEx3mY+zrVoVcGcHqsJ5fHoHEqmcXEgxvbsEOwGHVd310
 QS5SIN+ALmTHg6dAWBu8X3pee0u1hnTxOmakGOaNSxOVfQWB5r+VQNz/9
 EqCtDTEE3xW/UivRYxLs5mRzfz/P0s2I+7M6Yhp6TaHr8/KN1GqsPLcqh
 pbOQP6XpDcwmBwzAcKPLQSzTVpwYby5+VTUE9Sw7gT5dVYpDQb/cZtCxY w==;
X-CSE-ConnectionGUID: RFLqqMFrTReJ+4bieuKMBw==
X-CSE-MsgGUID: LuWZoQqgTueYCNrn2X1qig==
X-IronPort-AV: E=McAfee;i="6700,10204,11140"; a="19037719"
X-IronPort-AV: E=Sophos;i="6.09,227,1716274800"; d="scan'208";a="19037719"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2024 01:09:49 -0700
X-CSE-ConnectionGUID: iyOiezTRTx2cJaQjmGHc3g==
X-CSE-MsgGUID: PotItiAzTR6cS35eJ+DL3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,227,1716274800"; d="scan'208";a="51463640"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.245.246.233])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2024 01:09:46 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 =?UTF-8?q?Zbigniew=20Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Subject: [PATCH i-g-t 1/3] lib/kunit: Fix selective execution of test cases
Date: Mon, 22 Jul 2024 10:01:02 +0200
Message-ID: <20240722080913.74333-6-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240722080913.74333-5-janusz.krzysztofik@linux.intel.com>
References: <20240722080913.74333-5-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

An issue has been discovered when running an IGT kunit test with a dynamic
sub-subtest specified: only the first kunit test case of a test suite can
be actually executed.  Selecting a test case other than the first one
results in "Unloading test module failed, not executing more selftests."
message being displayed and no single test case (dynamic sub-subtest)
executed.

To avoid the failure from a consecutive module unload attempt after it has
been already unloaded, unload the test module neither after geting a list
of test cases, nor after each leaving of igt_dynamic() section, only as a
first step of each dynamic sub-subtest body.

Reported-by: Zbigniew Kempczyński <zbigniew.kempczynski@intel.com>
Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 lib/igt_kmod.c | 10 ++--------
 1 file changed, 2 insertions(+), 8 deletions(-)

diff --git a/lib/igt_kmod.c b/lib/igt_kmod.c
index 33f059199f..5864be29d2 100644
--- a/lib/igt_kmod.c
+++ b/lib/igt_kmod.c
@@ -1328,8 +1328,6 @@ static bool kunit_get_tests(struct igt_list_head *tests,
 		igt_require_f(r->code == IGT_EXIT_SKIP,
 			      "Unexpected non-SKIP result while listing test cases\n");
 
-	igt_skip_on(kmod_module_remove_module(tst->kmod, 0));
-
 	return true;
 }
 
@@ -1356,6 +1354,8 @@ static void __igt_kunit(struct igt_ktest *tst,
 			char glob[1024];
 			int i;
 
+			igt_skip_on(kmod_module_remove_module(tst->kmod,
+							      KMOD_REMOVE_FORCE));
 			igt_skip_on(igt_kernel_tainted(&taints));
 
 			igt_assert_lt(snprintf(glob, sizeof(glob), "%s.%s",
@@ -1412,12 +1412,6 @@ static void __igt_kunit(struct igt_ktest *tst,
 			igt_info("Kernel tainted, not executing more selftests.\n");
 			break;
 		}
-
-		if (igt_debug_on(kmod_module_remove_module(tst->kmod,
-							   KMOD_REMOVE_FORCE))) {
-			igt_info("Unloading test module failed, not executing more selftests.\n");
-			break;
-		}
 	}
 }
 
-- 
2.45.2

