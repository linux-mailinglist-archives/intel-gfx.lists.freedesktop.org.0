Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 622044C8A40
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Mar 2022 12:04:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6778510EA30;
	Tue,  1 Mar 2022 11:04:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A03A10E5AA;
 Tue,  1 Mar 2022 11:04:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646132686; x=1677668686;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=54A/qlJpIGRogON/AId9Q0EbUiYQu6wKEKwX5lvQgt8=;
 b=JqTcIUbdbiXqu502e8ns7sMUDH0zmXOwiQUpObwru0Gmonw/QpIbuk28
 ty+ipLJg8cClBrZG7XFdVN1hSBnSEs+GtUaVwXjld6fSdwHYN/wB4Ht8X
 kXuoZFNT9SP1nVQSNbvTatfFKiBxnkr9VEU1c0OdHlUPUiz5IY3HLC26w
 6PWaw1Rpn+F2EM1OH2ilQtdNhvnn4Vvco/hBXsWAu4VD0jjrpI7qUz4ar
 7uYMUA0v5LO5JCG8QimrJz1Ggw7/WNHMZIeB2+FqwF9xfa4RMZmMft2nF
 tVVQY9Kfw4wc/y27CwrEKYf9ezWF4yzhwlBAurXMEj/T5GAm60tbksSx0 g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10272"; a="316323586"
X-IronPort-AV: E=Sophos;i="5.90,145,1643702400"; d="scan'208";a="316323586"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2022 03:04:45 -0800
X-IronPort-AV: E=Sophos;i="5.90,145,1643702400"; d="scan'208";a="510465663"
Received: from daithiby-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.15.82])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2022 03:04:44 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Tue,  1 Mar 2022 11:03:59 +0000
Message-Id: <20220301110359.663637-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t] tests/i915/gem_exec_params: check
 available memory earlier
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The shmem mmap and pwrite interfaces conveniently let us probe just a
few pages, without needing to populate the entire object. On discrete
and newer platforms the kernel has dropped support for both, leaving us
with MMAP_OFFSET, which will always populate the entire object, for now
at least. Luckily we can just move the batch creation to after checking
the available memory to ensure we don't hit -ENOMEM on such platforms.

Also it seems that doing a massive allocation(filling much of system
memory) and then calling intel_purge_vm_caches() seems to take 40+
seconds, like when calling intel_require_memory(). Hence switching the
ordering here should also help with that.

For reference the larger-than-life test is just a simple regression test
to ensure that some very large batch buffer(greater than ~4G) can't
overflow the batch_len, causing all kinds of issues. See 57b2d834bf23
("drm/i915/gem: Support parsing of oversize batches").

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Ashutosh Dixit <ashutosh.dixit@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
---
 tests/i915/gem_exec_params.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/tests/i915/gem_exec_params.c b/tests/i915/gem_exec_params.c
index d247b8a6..da36af74 100644
--- a/tests/i915/gem_exec_params.c
+++ b/tests/i915/gem_exec_params.c
@@ -332,9 +332,7 @@ static void test_larger_than_life_batch(int fd)
 	const struct intel_execution_engine2 *e;
 	uint64_t size = 1ULL << 32; /* batch_len is __u32 as per the ABI */
 	const intel_ctx_t *ctx = intel_ctx_create_all_physical(fd);
-	struct drm_i915_gem_exec_object2 exec = {
-		.handle = batch_create_size(fd, size),
-	};
+	struct drm_i915_gem_exec_object2 exec = {};
 	struct drm_i915_gem_execbuffer2 execbuf = {
 		.buffers_ptr = to_user_pointer(&exec),
 		.buffer_count = 1,
@@ -350,6 +348,8 @@ static void test_larger_than_life_batch(int fd)
 	igt_require(size < gem_aperture_size(fd));
 	intel_require_memory(2, size, CHECK_RAM); /* batch + shadow */
 
+	exec.handle = batch_create_size(fd, size);
+
 	for_each_ctx_engine(fd, ctx, e) {
 		/* Keep the batch_len implicit [0] */
 		execbuf.flags = e->flags;
-- 
2.34.1

