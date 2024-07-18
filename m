Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 205C4934A95
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jul 2024 10:59:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F59A10E60D;
	Thu, 18 Jul 2024 08:59:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DHB+iv+I";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F9E810E60D;
 Thu, 18 Jul 2024 08:59:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721293176; x=1752829176;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OdcC5j5gEsZi6xR3dsc+gT7jIr0rKH50GZpmZ0IzhlA=;
 b=DHB+iv+INBOh6X3B9bNVCiBcR0RRGzUB79sjaTgZqQSETuNfn+6X9inS
 vBj75BlW6GykCNbP8Ei1q3oWOdNO/LJSaJfgehJSzcGfrG5O4YMWeBfck
 ac7Gv0IofzzWrPQVOmBma+k0xNfr9V6I4UoUmcePKX9uaZbwMzTY7RMNk
 N5OIOHLYfCa7Ma9IpH1bmtot/KpJCkABHxkrwZCNTdkIwVMkYSptdZ8Dm
 IvYRnUEx4cwBandrGahTRkL5vU4FtgzmbwtbcJFW2oC0ctBDOvQnOc/37
 h97oR5kVK9S6RHOyJ57M2CHKxAuZbgr/F/oB6CvTfuWMTxKMpRt9w4wUp Q==;
X-CSE-ConnectionGUID: 47P+rxqSTjOOWs/VZQscwg==
X-CSE-MsgGUID: Iz6pmDniSR63Fuysqh4RDg==
X-IronPort-AV: E=McAfee;i="6700,10204,11136"; a="30001916"
X-IronPort-AV: E=Sophos;i="6.09,217,1716274800"; d="scan'208";a="30001916"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2024 01:59:36 -0700
X-CSE-ConnectionGUID: +WHv6/CKTFmVia90NU2f9A==
X-CSE-MsgGUID: RwPkPbnpT0mTugKk+OTUeg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,217,1716274800"; d="scan'208";a="73929445"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.213.26.184])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2024 01:59:34 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Subject: [PATCH i-g-t v4 1/5] tests/gem_ctx_exec: Fail on unsuccessful preempt
 timeout update
Date: Thu, 18 Jul 2024 10:55:12 +0200
Message-ID: <20240718085912.15434-8-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240718085912.15434-7-janusz.krzysztofik@linux.intel.com>
References: <20240718085912.15434-7-janusz.krzysztofik@linux.intel.com>
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

