Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F9189DB65E
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Nov 2024 12:18:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D317810E43B;
	Thu, 28 Nov 2024 11:18:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SbHCRo8h";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA95910E43A;
 Thu, 28 Nov 2024 11:18:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732792729; x=1764328729;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/gkkvVAreDIUyYHuqwnTkQntbYwEdi3NPGiDJmqCl6k=;
 b=SbHCRo8h1/bDiZIrkwrGtSMS2Y+RigXDKLTFkrHTDWBqprYwvRraICpx
 EVbe3t3Ge7UnNtt5yHnhCN3t3rby7QM/G0JJ9Ahpwmlk3dHyWh9+KdSfg
 VVPK83pCuUKBAlLSkyk39gLq+3HSnLMiDUE4kJDkh3sqQurelCAExGbmP
 gGAvVnUsC0/hMtIoc3fptUS2bHgppP0pg8+Fvnsgeivi1/8p/Q9/HtRF6
 FzLOn8xhopK3IGkO5ZNV9JBcVanrnVfXYsoG56ThpkXn1gfBCt7923xqQ
 KPBkaaxhuSFlGodBYZVO8rYqaWN5E5yBJDhOp9/8VMHDQSpKMDqaOsc5t g==;
X-CSE-ConnectionGUID: y5nXjQUxTG6JvE6Zq7sHPQ==
X-CSE-MsgGUID: 4pBTIUjERJuu6ug0lbEzFg==
X-IronPort-AV: E=McAfee;i="6700,10204,11269"; a="36806617"
X-IronPort-AV: E=Sophos;i="6.12,192,1728975600"; d="scan'208";a="36806617"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2024 03:18:49 -0800
X-CSE-ConnectionGUID: Bgzwv6P/RZGyoB7ho/g4wA==
X-CSE-MsgGUID: 3bq5VspuTMyA2SXnItWVCA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,192,1728975600"; d="scan'208";a="92143098"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.245.246.170])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2024 03:18:47 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 =?UTF-8?q?Zbigniew=20Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Subject: [PATCH i-g-t v2 2/2] tests/gem_mmap_offset: Fix OOM hits
Date: Thu, 28 Nov 2024 12:16:36 +0100
Message-ID: <20241128111822.836089-6-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241128111822.836089-4-janusz.krzysztofik@linux.intel.com>
References: <20241128111822.836089-4-janusz.krzysztofik@linux.intel.com>
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

The 'clear' subtest exercises correctness of object memory clearing on
passing a batch with the object to GPU for processing.  The exercise is
executed in several parallel threads, one per CPU.  Each thread repeats
the exercise in a time only limited loop, with no delay between
consecutive iterations.  In case of system memory objects, that happens
to exhaust all available physical memory, which is neither the goal nor
requirement of the exercise.

Make sure sufficient amount of physical memory is available before calling
another execbuf.

v2: Limit the scope of the fix to SMEM exercise.

Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11738
Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 tests/intel/gem_mmap_offset.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/tests/intel/gem_mmap_offset.c b/tests/intel/gem_mmap_offset.c
index 20dca17378..8ce10d6144 100644
--- a/tests/intel/gem_mmap_offset.c
+++ b/tests/intel/gem_mmap_offset.c
@@ -745,6 +745,9 @@ static void *thread_clear(void *data)
 		npages = get_npages(&arg->max, npages);
 		size = npages << 12;
 
+		/* Execbuf requires sufficient amount of free physical memory */
+		if (arg->flags & CLEAR_IN_EXECBUF && arg->region.memory_class == I915_MEMORY_CLASS_SYSTEM)
+			igt_require_memory(1, size, CHECK_RAM);
 		igt_assert_eq(__gem_create_in_memory_region_list(i915, &handle, &size, 0, &arg->region, 1), 0);
 		/* Zero-init bo in execbuf or pagefault handler path as requested */
 		if (arg->flags & CLEAR_IN_EXECBUF)
-- 
2.47.0

