Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EC01415D7F2
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2020 14:08:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CFFA6F91E;
	Fri, 14 Feb 2020 13:08:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 897746EB84;
 Fri, 14 Feb 2020 13:08:30 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Feb 2020 05:08:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,440,1574150400"; d="scan'208";a="223013011"
Received: from mwehrman-mobl.amr.corp.intel.com (HELO
 mwahaha-bdw.amr.corp.intel.com) ([10.252.134.218])
 by orsmga007.jf.intel.com with ESMTP; 14 Feb 2020 05:08:27 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri, 14 Feb 2020 13:08:26 +0000
Message-Id: <20200214130826.31004-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] tests/i915/gem_exec_store: remove hard coded
 engine limit
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Prep for having an arbitrary context engine[], since that can be
whatever we like.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Antonio Argenziano <antonio.argenziano@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
---
 tests/i915/gem_exec_store.c | 33 +++++++++++++++++++++++++--------
 1 file changed, 25 insertions(+), 8 deletions(-)

diff --git a/tests/i915/gem_exec_store.c b/tests/i915/gem_exec_store.c
index b74c3d84..eb511696 100644
--- a/tests/i915/gem_exec_store.c
+++ b/tests/i915/gem_exec_store.c
@@ -180,25 +180,40 @@ static void store_all(int fd)
 	const int gen = intel_gen(intel_get_drm_devid(fd));
 	struct drm_i915_gem_exec_object2 obj[2];
 	struct intel_execution_engine2 *engine;
-	struct drm_i915_gem_relocation_entry reloc[32];
+	struct drm_i915_gem_relocation_entry *reloc;
 	struct drm_i915_gem_execbuffer2 execbuf;
-	unsigned engines[16], permuted[16];
+	unsigned *engines, *permuted;
 	uint32_t batch[16];
 	uint64_t offset;
 	unsigned nengine;
 	int value;
 	int i, j;
 
+	nengine = 0;
+	__for_each_physical_engine(fd, engine) {
+		if (!gem_class_can_store_dword(fd, engine->class))
+			continue;
+		nengine++;
+	}
+
+	reloc = calloc(2*nengine, sizeof(*reloc));
+	igt_assert(reloc);
+
+	engines = calloc(nengine, sizeof(*engines));
+	igt_assert(engines);
+
+	permuted = calloc(nengine, sizeof(*permuted));
+	igt_assert(permuted);
+
 	memset(&execbuf, 0, sizeof(execbuf));
 	execbuf.buffers_ptr = to_user_pointer(obj);
 	execbuf.buffer_count = 2;
 	if (gen < 6)
 		execbuf.flags |= I915_EXEC_SECURE;
 
-	memset(reloc, 0, sizeof(reloc));
 	memset(obj, 0, sizeof(obj));
-	obj[0].handle = gem_create(fd, 4096);
-	obj[1].handle = gem_create(fd, 4096);
+	obj[0].handle = gem_create(fd, nengine*sizeof(uint32_t));
+	obj[1].handle = gem_create(fd, 2*nengine*sizeof(batch));
 	obj[1].relocation_count = 1;
 
 	offset = sizeof(uint32_t);
@@ -224,8 +239,6 @@ static void store_all(int fd)
 		if (!gem_class_can_store_dword(fd, engine->class))
 			continue;
 
-		igt_assert(2*(nengine+1)*sizeof(batch) <= 4096);
-
 		execbuf.flags &= ~ENGINE_MASK;
 		execbuf.flags |= engine->flags;
 
@@ -281,12 +294,16 @@ static void store_all(int fd)
 	}
 	gem_close(fd, obj[1].handle);
 
-	gem_read(fd, obj[0].handle, 0, engines, sizeof(engines));
+	gem_read(fd, obj[0].handle, 0, engines, nengine*sizeof(engines[0]));
 	gem_close(fd, obj[0].handle);
 
 	for (i = 0; i < nengine; i++)
 		igt_assert_eq_u32(engines[i], i);
 	igt_assert_eq(intel_detect_and_clear_missed_interrupts(fd), 0);
+
+	free(permuted);
+	free(engines);
+	free(reloc);
 }
 
 static int print_welcome(int fd)
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
