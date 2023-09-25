Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EF4737AD8B8
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Sep 2023 15:16:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0253110E24D;
	Mon, 25 Sep 2023 13:16:07 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 737C610E24D;
 Mon, 25 Sep 2023 13:16:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695647763; x=1727183763;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=QJDspZdFgilvUCDypj9L73HCr3hsrDu7GEVZMDgdFzg=;
 b=m4PHkp0Zhb0NeMOUFr1HjXdVBa9X/wHbEgesYOcaaYySh+KuMEFI8Ty0
 W381almbv+0iAiH1PW4Qrsv8k1+3b+hJbjAjaf3HFqTue4t/miP94STvs
 y3dT8baaxh+YP1+Wa2yMdyVwEe5Cqa29GhHBiCeSmIN27C1XeH0erUVAD
 hCvxVvlCtLwKJ9I/L8zPeJcyQw/pXzRjzYuz34d0hkKtOzsEqfltcFVJz
 sxK1pAm0h8uDHutu7lIFDoIfC+MdF9P5ipMOUA8kt8ln/AURjVvwEY8/l
 3K19QK9ftSR/3/C1c2E+G3fh/Cv79bfCdcbBg8ckOSfITQ90qToyF4w2u A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10843"; a="371567050"
X-IronPort-AV: E=Sophos;i="6.03,175,1694761200"; d="scan'208";a="371567050"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2023 06:16:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10843"; a="872046303"
X-IronPort-AV: E=Sophos;i="6.03,175,1694761200"; d="scan'208";a="872046303"
Received: from shaunbis-mobl4.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.220.248])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2023 06:16:01 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
	Intel-gfx@lists.freedesktop.org
Date: Mon, 25 Sep 2023 14:15:39 +0100
Message-Id: <20230925131539.32743-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC/CI] prime_vgem: Add mmap forwarding tests
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

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

...

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 tests/prime_vgem.c | 45 +++++++++++++++++++++++++++++++++++++++++----
 1 file changed, 41 insertions(+), 4 deletions(-)

diff --git a/tests/prime_vgem.c b/tests/prime_vgem.c
index 876e04ed02a1..29eb7eccad61 100644
--- a/tests/prime_vgem.c
+++ b/tests/prime_vgem.c
@@ -72,6 +72,21 @@
  * Feature: gtt, prime
  * Run type: BAT
  *
+ * SUBTEST: forwarded-wc
+ * Description: Examine access path through imported buffer mmap forwarding
+ * Feature: mmap, prime
+ * Run type: FULL
+ *
+ * SUBTEST: forwarded-uc
+ * Description: Examine access path through imported buffer mmap forwarding
+ * Feature: mmap, prime
+ * Run type: FULL
+ *
+ * SUBTEST: forwarded-wb
+ * Description: Examine access path through imported buffer mmap forwarding
+ * Feature: mmap, prime
+ * Run type: FULL
+ *
  * SUBTEST: basic-read
  * Description: Examine read access path.
  * Feature: gtt, prime
@@ -420,7 +435,7 @@ static void test_write(int vgem, int i915)
 	munmap(ptr, scratch.size);
 }
 
-static void test_gtt(int vgem, int i915)
+static void test_mmap_offset(int vgem, int i915, unsigned int flags)
 {
 	struct vgem_bo scratch;
 	uint32_t handle;
@@ -436,7 +451,16 @@ static void test_gtt(int vgem, int i915)
 	handle = prime_fd_to_handle(i915, dmabuf);
 	close(dmabuf);
 
-	ptr = gem_mmap__gtt(i915, handle, scratch.size, PROT_WRITE);
+	ptr = __gem_mmap_offset(i915, handle, 0, scratch.size, PROT_WRITE,
+				flags);
+	if (flags == I915_MMAP_OFFSET_GTT) {
+		/* Only allowed to fail if no aperture. */
+		igt_require(ptr || !gem_mappable_aperture_size(i915));
+
+	} else {
+		/* Skip on old kernels. */
+		igt_require(ptr);
+	}
 	for (i = 0; i < 1024; i++)
 		ptr[1024*i] = i;
 	munmap(ptr, scratch.size);
@@ -448,7 +472,8 @@ static void test_gtt(int vgem, int i915)
 	}
 	munmap(ptr, scratch.size);
 
-	ptr = gem_mmap__gtt(i915, handle, scratch.size, PROT_READ);
+	ptr = __gem_mmap_offset(i915, handle, 0, scratch.size, PROT_READ,
+				flags);
 	for (i = 0; i < 1024; i++)
 		igt_assert_eq(ptr[1024*i], ~i);
 	munmap(ptr, scratch.size);
@@ -1225,9 +1250,21 @@ igt_main
 	igt_describe("Examine access path through GTT.");
 	igt_subtest("basic-gtt") {
 		gem_require_mappable_ggtt(i915);
-		test_gtt(vgem, i915);
+		test_mmap_offset(vgem, i915, I915_MMAP_OFFSET_GTT);
 	}
 
+	igt_describe("Examine access path through mmap forwarding.");
+	igt_subtest("forwarded-wc")
+		test_mmap_offset(vgem, i915, I915_MMAP_OFFSET_WC);
+
+	igt_describe("Examine access path through mmap forwarding.");
+	igt_subtest("forwarded-uc")
+		test_mmap_offset(vgem, i915, I915_MMAP_OFFSET_UC);
+
+	igt_describe("Examine access path through mmap forwarding.");
+	igt_subtest("forwarded-wb")
+		test_mmap_offset(vgem, i915, I915_MMAP_OFFSET_WB);
+
 	igt_describe("Examine blitter access path.");
 	igt_subtest("basic-blt")
 		test_blt(vgem, i915);
-- 
2.39.2

