Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ABA9917AD9D
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Mar 2020 18:53:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3D4D6EBEC;
	Thu,  5 Mar 2020 17:53:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDBAB6EBDF;
 Thu,  5 Mar 2020 17:53:32 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Mar 2020 09:53:32 -0800
X-IronPort-AV: E=Sophos;i="5.70,518,1574150400"; d="scan'208";a="229775997"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.18])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Mar 2020 09:53:30 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Thu,  5 Mar 2020 18:53:21 +0100
Message-Id: <20200305175321.31384-1-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] tests/gem_exec_gttfill: MMAP_OFFSET
 related refresh
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

The test already tried to use a working mapping by first trying legacy
WC, then GTT.  Use gem_mmap__device_coherent() helper instead of
approaching its implementation locally.

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 tests/i915/gem_exec_gttfill.c | 13 ++++---------
 1 file changed, 4 insertions(+), 9 deletions(-)

diff --git a/tests/i915/gem_exec_gttfill.c b/tests/i915/gem_exec_gttfill.c
index f810dafd1..27277df48 100644
--- a/tests/i915/gem_exec_gttfill.c
+++ b/tests/i915/gem_exec_gttfill.c
@@ -155,15 +155,10 @@ static void fillgtt(int fd, unsigned ring, int timeout)
 	igt_assert(batches);
 	for (unsigned i = 0; i < count; i++) {
 		batches[i].handle = gem_create(fd, BATCH_SIZE);
-		batches[i].ptr =
-			__gem_mmap__wc(fd, batches[i].handle,
-				       0, BATCH_SIZE, PROT_WRITE);
-		if (!batches[i].ptr) {
-			batches[i].ptr =
-				__gem_mmap__gtt(fd, batches[i].handle,
-						BATCH_SIZE, PROT_WRITE);
-		}
-		igt_require(batches[i].ptr);
+		batches[i].ptr = gem_mmap__device_coherent(fd,
+							   batches[i].handle, 0,
+							   BATCH_SIZE,
+							   PROT_WRITE);
 	}
 
 	/* Flush all memory before we start the timer */
-- 
2.21.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
