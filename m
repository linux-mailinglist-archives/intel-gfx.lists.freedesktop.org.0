Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 53B5E933CF4
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jul 2024 14:30:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CED210EABE;
	Wed, 17 Jul 2024 12:30:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YkM/KLgz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1611A10EAAC;
 Wed, 17 Jul 2024 12:30:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721219439; x=1752755439;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OdcC5j5gEsZi6xR3dsc+gT7jIr0rKH50GZpmZ0IzhlA=;
 b=YkM/KLgzGVj/N1tOhrx8OUe/u8a7uHMIw7+f18Pk42kx4YYhkR3pXo51
 dueXk1kRNcy2Mf1f9EESt0+LqT7sC/fYAKyWFlc5DX2BG+EInnp57E4uA
 4+APtZxFunSsPYnTQmnLY2EbdBVSxz8hOwBviPjOLC43nCt6lFjRwsuA/
 EUOVsqzWKoTIRry7d1ZY15qfUhZtNUgmkMBwNSmPtdJ0y2FDLje7K60G1
 qDG07bN3Izb3Ygo0HAjv+J9EPId1yZxFzK4Z9HX6vLwqVvqoev9EIUwVN
 klq3BkXxh1FehgB9um5S5vbxafMtb3dTtUOMK0kjn9vG/6COiSiiDVakk w==;
X-CSE-ConnectionGUID: ZxBxogJISEWlXvP3XL7G5g==
X-CSE-MsgGUID: QoxVnYLcQUK+5VlybXFu4w==
X-IronPort-AV: E=McAfee;i="6700,10204,11135"; a="18856393"
X-IronPort-AV: E=Sophos;i="6.09,214,1716274800"; d="scan'208";a="18856393"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2024 05:30:39 -0700
X-CSE-ConnectionGUID: ycA2hmpUS0qPLcab/kLCrQ==
X-CSE-MsgGUID: y7tHvV3CTwKBIA0H3CfXSA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,214,1716274800"; d="scan'208";a="50165232"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO
 jkrzyszt-mobl2.intranet) ([10.213.26.163])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2024 05:28:59 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Subject: [PATCH i-g-t v3 1/5] tests/gem_ctx_exec: Fail on unsuccessful preempt
 timeout update
Date: Wed, 17 Jul 2024 14:26:12 +0200
Message-ID: <20240717122836.3481656-8-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240717122836.3481656-7-janusz.krzysztofik@linux.intel.com>
References: <20240717122836.3481656-7-janusz.krzysztofik@linux.intel.com>
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

CI reports the following failures from basic-nohangcheck subtest:

(gem_ctx_exec:1115) CRITICAL: Test assertion failure function nohangcheck_hostile, file ../../../usr/src/igt-gpu-tools/tests/intel/gem_ctx_exec.c:374:
(gem_ctx_exec:1115) CRITICAL: Failed assertion: err == 0
(gem_ctx_exec:1115) CRITICAL: Last errno: 2, No such file or directory
(gem_ctx_exec:1115) CRITICAL: Hostile unpreemptable context was not cancelled immediately upon closure

The subtest sets 50 ms preempt timeout on each engine before proceding
with submission of spins, then it waits up to 1 second for those spins to
be terminated.  However, dump of engines' debugfs data performed by the
subtest after the failure shows preempt timeouts still at their default
values: 7500 ms on rcs0 and 640 ms on other class engines.  Dmesg records
confirm preemption timeouts triggered on other engines after 640 ms and
not on rcs0 within the 1 second limit.

As a first step, let the subtest verify return values of function calls
supposed to update the preempt timeouts with the new values.  If failed
on any engine then report that at debug level as a useful hint displayed
when the test times out on waiting for spin termination.

v2: No changes.
v3: Don't fail on unsuccessful update of preempt_timeout_ms, older
    platforms don't support it but can still succeed.

Link: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6268
Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 tests/intel/gem_ctx_exec.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/tests/intel/gem_ctx_exec.c b/tests/intel/gem_ctx_exec.c
index d6aa8ba0aa..f3e252d10e 100644
--- a/tests/intel/gem_ctx_exec.c
+++ b/tests/intel/gem_ctx_exec.c
@@ -308,8 +308,7 @@ static void nohangcheck_hostile(int i915)
 	igt_hang_t hang;
 	int fence = -1;
 	const intel_ctx_t *ctx;
-	int err = 0;
-	int dir;
+	int dir, err;
 	uint64_t ahnd;
 
 	/*
@@ -333,8 +332,11 @@ static void nohangcheck_hostile(int i915)
 		int new;
 
 		/* Set a fast hang detection for a dead context */
-		gem_engine_property_printf(i915, e->name,
-					   "preempt_timeout_ms", "%d", 50);
+		err = gem_engine_property_printf(i915, e->name,
+						 "preempt_timeout_ms", "%d", 50);
+		igt_debug_on_f(err < 0,
+			       "%s preempt_timeout_ms update failed: %d\n",
+			       e->name, err);
 
 		spin = __igt_spin_new(i915,
 				      .ahnd = ahnd,
@@ -362,6 +364,7 @@ static void nohangcheck_hostile(int i915)
 	intel_ctx_destroy(i915, ctx);
 	igt_assert(fence != -1);
 
+	err = 0;
 	if (sync_fence_wait(fence, MSEC_PER_SEC)) { /* 640ms preempt-timeout */
 		igt_debugfs_dump(i915, "i915_engine_info");
 		err = -ETIME;
-- 
2.45.2

