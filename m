Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CFDAF931A4B
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jul 2024 20:30:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA7EF10E4BE;
	Mon, 15 Jul 2024 18:30:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DrZMTEPE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE44710E4BC;
 Mon, 15 Jul 2024 18:30:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721068219; x=1752604219;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JT+pUdooQGOMVuSx1Q1e230UIIceJT2kuPZfnE1bDaM=;
 b=DrZMTEPEpiHHf6tVV+7cg1/d3vGC8bnE079A/0UmGY/UUPVHDovl3CaJ
 CXq7RPDcALeeStxeUrAQ9vVopxTnBwBTNWVIs4RVleIf6q4njwGAF0nrI
 Pi2o7bVayducoGYJZpVqIqfbxewNuWuHhiiSPIP3FWjR4iwBMeNxpyhrr
 OoQFWOimcQG8r0g24ujX11YD8OGcra4YjDaQSwpbhdfLxAjaSzH/hU6rW
 N8TRS3TeZsBkSs4GzlkfR41YGPkvyxS/lJe0Kro4yKAmNuaLgushm6ERh
 vt2hDDxXeFJHzzpmEPxJ1uPzjX21Y3vkB8Q7VSfIhGbpsi74BmBxOhN+D A==;
X-CSE-ConnectionGUID: tAUybwxESa+0jiNbUGFp8g==
X-CSE-MsgGUID: 1BUSvuaiSUC2TXT2zq5JUA==
X-IronPort-AV: E=McAfee;i="6700,10204,11134"; a="18618849"
X-IronPort-AV: E=Sophos;i="6.09,210,1716274800"; d="scan'208";a="18618849"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2024 11:30:18 -0700
X-CSE-ConnectionGUID: +W2vAGdAQQ6fA4AxAmEHGg==
X-CSE-MsgGUID: DZQJE+QFRiKKwYNfgPXOfg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,210,1716274800"; d="scan'208";a="54886879"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO
 jkrzyszt-mobl2.intranet) ([10.213.26.74])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2024 11:30:17 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Subject: [PATCH i-g-t v2 1/5] tests/gem_ctx_exec: Fail on unsuccessful preempt
 timeout update
Date: Mon, 15 Jul 2024 20:27:29 +0200
Message-ID: <20240715183000.2828719-8-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240715183000.2828719-7-janusz.krzysztofik@linux.intel.com>
References: <20240715183000.2828719-7-janusz.krzysztofik@linux.intel.com>
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
on any engine then report that as the actual failure instead continuing
the exercise and reporting a driver issue with context preemption.

Link: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6268
Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 tests/intel/gem_ctx_exec.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/tests/intel/gem_ctx_exec.c b/tests/intel/gem_ctx_exec.c
index d6aa8ba0aa..9c2f749a4f 100644
--- a/tests/intel/gem_ctx_exec.c
+++ b/tests/intel/gem_ctx_exec.c
@@ -333,8 +333,9 @@ static void nohangcheck_hostile(int i915)
 		int new;
 
 		/* Set a fast hang detection for a dead context */
-		gem_engine_property_printf(i915, e->name,
-					   "preempt_timeout_ms", "%d", 50);
+		igt_assert_lt(0, gem_engine_property_printf(i915, e->name,
+							    "preempt_timeout_ms",
+							    "%d", 50));
 
 		spin = __igt_spin_new(i915,
 				      .ahnd = ahnd,
-- 
2.45.2

