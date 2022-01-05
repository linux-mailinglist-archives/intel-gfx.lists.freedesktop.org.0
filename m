Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E2BAF485726
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jan 2022 18:21:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49F4C10E19A;
	Wed,  5 Jan 2022 17:21:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 353AE10E19A;
 Wed,  5 Jan 2022 17:21:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641403276; x=1672939276;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=08V/TcP0Nj95cuFNSfJbuJnD4C4W0QeswRUDGnDQ6wg=;
 b=j7L7z6beMfL/OmdWvFxYew7lGUW8fSFStQHFFDhqndayZTJFvRcgrfL9
 dw3bgp0SAMamM/fGxOrDj1RQqwgM21FejPd9muReGDdgXpr5KjHF7+WI6
 fn5WUQ8ldaF2eoMr1+VJUHwzYoPLEQaA+BvFvTx7CCZgGkAzl22Jm9xmN
 8W1BK4G+ZmezkPstzATlRRwDWAOdlMAHLBlg1Ac1i8NpRre/iaaj3J+y2
 jNghjt8ZAGkSMIjUpudS1cwECnARaxBy//TLA+ygzipqWzSnlUxsavl3n
 JHQM2x+gt+YGLPAah7662GZtH3PcEuPp9mQSm0sfWsEwGsLz6LEglN7LZ A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10217"; a="328835880"
X-IronPort-AV: E=Sophos;i="5.88,264,1635231600"; d="scan'208";a="328835880"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2022 09:21:15 -0800
X-IronPort-AV: E=Sophos;i="5.88,264,1635231600"; d="scan'208";a="470639931"
Received: from unknown (HELO mwauld-desk1.intel.com) ([10.252.26.67])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2022 09:21:13 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Wed,  5 Jan 2022 17:21:06 +0000
Message-Id: <20220105172106.154217-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t] tests/i915/userptr: fix mapping type
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org,
 Priyanka Dandamudi <priyanka.dandamudi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We need to use the FIXED mapping type on discrete platforms.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Cc: Priyanka Dandamudi <priyanka.dandamudi@intel.com>
---
 tests/i915/gem_userptr_blits.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/tests/i915/gem_userptr_blits.c b/tests/i915/gem_userptr_blits.c
index 3464db66..a4dca4c0 100644
--- a/tests/i915/gem_userptr_blits.c
+++ b/tests/i915/gem_userptr_blits.c
@@ -2185,7 +2185,10 @@ static void test_probe(int fd)
 	 */
 	memset(&mmap_offset, 0, sizeof(mmap_offset));
 	mmap_offset.handle = gem_create(fd, PAGE_SIZE);
-	mmap_offset.flags = I915_MMAP_OFFSET_WB;
+	if (gem_has_lmem(fd))
+		mmap_offset.flags = I915_MMAP_OFFSET_FIXED;
+	else
+		mmap_offset.flags = I915_MMAP_OFFSET_WB;
 	igt_assert_eq(igt_ioctl(fd, DRM_IOCTL_I915_GEM_MMAP_OFFSET, &mmap_offset), 0);
 
 	for (unsigned long pass = 0; pass < 4 * 4 * 4 * 4 * 4; pass++) {
-- 
2.31.1

