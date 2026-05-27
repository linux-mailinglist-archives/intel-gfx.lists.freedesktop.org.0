Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2GFpEfTdFmo9uQcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2026 14:05:08 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4098B5E3CDF
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2026 14:05:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 235C510E7A2;
	Wed, 27 May 2026 12:05:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eSbmwKUR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 538AF10E7A2;
 Wed, 27 May 2026 12:05:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779883505; x=1811419505;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=lvFwUqv/zeUidHr2zkRxo99cg6YY8zFvf5cLWJ4/Ft4=;
 b=eSbmwKUR0dczXR2xBw8HJRFHLocZN+baJy0U9FOPsQK+AZH+GWhuRHq/
 gbsjJPuWKZkZZRZBB/TKl4qE4yzIJTaYiLhH/yqQnVRCt/vgfEsKB/yxc
 x+apdglJDJe4cL3jTivGmgusw/Vldjt6i52D3xxrg64C2l8y8embXiC+H
 I/Pgx7YJy4zeBYqQ8cCA1AzV3SxGCxcZ5jDL0DuAZLk9tmwAYoDlZrl/P
 u/LJec5m8ZbQVh85s5DiLiFZQFDXxibILRUpum3ccd4SPm7m9KZSpFooG
 TW+4le/Dg2rTFGMi77whzT9tlUU/qvpVOAyeITsbiDMAnVwXc9x1g/uRf A==;
X-CSE-ConnectionGUID: ZFg9R5nOTcagvfQrNh4Msw==
X-CSE-MsgGUID: kRHr5n/XSZG3c0EK9UOBZw==
X-IronPort-AV: E=McAfee;i="6800,10657,11798"; a="80741993"
X-IronPort-AV: E=Sophos;i="6.24,171,1774335600"; d="scan'208";a="80741993"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2026 05:05:04 -0700
X-CSE-ConnectionGUID: cvdEqRQeTeSlv4ZsWXM4JQ==
X-CSE-MsgGUID: QpTii/xuRFKXTjE/6LnB0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,171,1774335600"; d="scan'208";a="265825490"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO
 jkrzyszt-mobl2.intranet) ([10.245.246.6])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2026 05:05:01 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 =?UTF-8?q?Zbigniew=20Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>,
 Krzysztof Karas <krzysztof.karas@intel.com>,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Subject: [PATCH i-g-t] tests/intel/gem_softpin: Show debug info also on success
Date: Wed, 27 May 2026 14:04:05 +0200
Message-ID: <20260527120430.3323133-2-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.53.0
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[janusz.krzysztofik@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:dkim,gitlab.freedesktop.org:url,linux.intel.com:mid]
X-Rspamd-Queue-Id: 4098B5E3CDF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The safe-aligment subtest is occasionally failing in CI with -ENOSPC.
Debug messages shown on failure provide some information on used values
of object size, alignment and offset, but that's still not enough to
understand what's actually going on.  Since the failure is extremely
sporadic, manual reproduction occurs impossible.  We need more
information from CI runs.

As a first step, raise severity of the subtest specific debug messages
to INFO so those few lines of additional information are also provided
for comparison when the test succeeds.

Address "No space is necessary after a cast" checkpatch finding while
being at it.

Link: https://gitlab.freedesktop.org/drm/i915/kernel/-/work_items/15527
Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 tests/intel/gem_softpin.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/tests/intel/gem_softpin.c b/tests/intel/gem_softpin.c
index 7b3fc26dea..e67259b001 100644
--- a/tests/intel/gem_softpin.c
+++ b/tests/intel/gem_softpin.c
@@ -1405,11 +1405,11 @@ static void safe_alignment(int i915)
 	offset1 = gem_detect_min_start_offset_for_region(i915, region1);
 	offset2 = gem_detect_min_start_offset_for_region(i915, region2);
 	alignment = gem_detect_safe_alignment(i915);
-	igt_debug("safe alignment: %llx\n", (long long) alignment);
-	igt_debug("safe start offset: %llx\n",
-		  (long long) gem_detect_safe_start_offset(i915));
-	igt_debug("minimum object1 start offset: %llx\n", (long long) offset1);
-	igt_debug("minimum object2 start offset: %llx\n", (long long) offset2);
+	igt_info("safe alignment: %llx\n", (long long)alignment);
+	igt_info("safe start offset: %llx\n",
+		 (long long)gem_detect_safe_start_offset(i915));
+	igt_info("minimum object1 start offset: %llx\n", (long long)offset1);
+	igt_info("minimum object2 start offset: %llx\n", (long long)offset2);
 
 	execbuf.buffer_count = 2;
 	execbuf.buffers_ptr = to_user_pointer(obj);
@@ -1420,8 +1420,8 @@ static void safe_alignment(int i915)
 	obj[1].offset = max(ALIGN(offset1 + size1, alignment), offset2);
 	obj[1].flags = EXEC_OBJECT_PINNED;
 	obj[1].handle = handle2;
-	igt_debug("obj[0].offset: %llx, handle: %u\n", obj[0].offset, obj[0].handle);
-	igt_debug("obj[1].offset: %llx, handle: %u\n", obj[1].offset, obj[1].handle);
+	igt_info("obj[0].offset: %llx, handle: %u\n", obj[0].offset, obj[0].handle);
+	igt_info("obj[1].offset: %llx, handle: %u\n", obj[1].offset, obj[1].handle);
 
 	gem_execbuf(i915, &execbuf);
 	execbuf.flags = I915_EXEC_BATCH_FIRST;
@@ -1433,8 +1433,8 @@ static void safe_alignment(int i915)
 	obj[1].offset = max(ALIGN(offset2 + size2, alignment), offset1);
 	obj[1].flags = EXEC_OBJECT_PINNED;
 	obj[1].handle = handle1;
-	igt_debug("obj[0].offset: %llx, handle: %u\n", obj[0].offset, obj[0].handle);
-	igt_debug("obj[1].offset: %llx, handle: %u\n", obj[1].offset, obj[1].handle);
+	igt_info("obj[0].offset: %llx, handle: %u\n", obj[0].offset, obj[0].handle);
+	igt_info("obj[1].offset: %llx, handle: %u\n", obj[1].offset, obj[1].handle);
 
 	gem_execbuf(i915, &execbuf);
 	execbuf.flags = 0;
-- 
2.53.0

