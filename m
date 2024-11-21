Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EAE89D4AFB
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Nov 2024 11:41:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0759F10E8DF;
	Thu, 21 Nov 2024 10:41:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CPXIA7jc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C653E10E8E0;
 Thu, 21 Nov 2024 10:41:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732185705; x=1763721705;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Z6Ar+/x2+ubkfntXhieRnaRBMOLWlRceSxfJKEFKE8g=;
 b=CPXIA7jcdwHYbde3B34IfCn1nH5dcETY7BCZ7tUCDIgw6tIqUFKHANo+
 DMcNmmyQuBV9UIUVp6MCwy/7rDi9jMUlzFsH3NZNgqWWI5rJ9i7lWOgqN
 9viCv4+A5pjT5KLuGptjcCMt+XcD5LG7ajZ0Bhp4SghRYM6WAS68vj6rq
 o1RFf7s07Ct5C0QbJRAFRrjK5U7N+FEtXeiugRXYZaAKZUOAJHXdcLDke
 lHAt8INo4QUu9PVk5y4oo3E5xqumXWfHt4ZDvuoQt3VpQIpgzuXw8wVvQ
 ETTHiv84/kPMzbIRX2UmwW6kWXO4cv3norp9PBcFGvMb/xm1RD9fr/401 w==;
X-CSE-ConnectionGUID: l7JpyObwSkuHqMMz0neulQ==
X-CSE-MsgGUID: bXKqs9ekQwCK5HbbHAFpYQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11262"; a="32406868"
X-IronPort-AV: E=Sophos;i="6.12,172,1728975600"; d="scan'208";a="32406868"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2024 02:41:44 -0800
X-CSE-ConnectionGUID: nvKE0PyUTPGYSWS/qRLFfQ==
X-CSE-MsgGUID: rdAvhzgGSwWTClTn5mDppQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,172,1728975600"; d="scan'208";a="91022948"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.245.246.105])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2024 02:41:41 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 =?UTF-8?q?Zbigniew=20Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Subject: [PATCH i-g-t 2/2] tests/gem_mmap_offset: Fix OOM hits
Date: Thu, 21 Nov 2024 11:39:28 +0100
Message-ID: <20241121104039.314188-6-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241121104039.314188-4-janusz.krzysztofik@linux.intel.com>
References: <20241121104039.314188-4-janusz.krzysztofik@linux.intel.com>
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

Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11738
Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 tests/intel/gem_mmap_offset.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/tests/intel/gem_mmap_offset.c b/tests/intel/gem_mmap_offset.c
index 20dca17378..4b8c25c56b 100644
--- a/tests/intel/gem_mmap_offset.c
+++ b/tests/intel/gem_mmap_offset.c
@@ -745,6 +745,9 @@ static void *thread_clear(void *data)
 		npages = get_npages(&arg->max, npages);
 		size = npages << 12;
 
+		/* Execbuf requires sufficient amount of free physical memory */
+		if (arg->flags & CLEAR_IN_EXECBUF)
+			igt_require_memory(1, size, CHECK_RAM);
 		igt_assert_eq(__gem_create_in_memory_region_list(i915, &handle, &size, 0, &arg->region, 1), 0);
 		/* Zero-init bo in execbuf or pagefault handler path as requested */
 		if (arg->flags & CLEAR_IN_EXECBUF)
-- 
2.47.0

