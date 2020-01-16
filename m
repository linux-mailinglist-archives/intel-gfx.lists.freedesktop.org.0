Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FE6D13D799
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2020 11:14:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 953546EC8D;
	Thu, 16 Jan 2020 10:14:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E6B796EC8C;
 Thu, 16 Jan 2020 10:14:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Jan 2020 02:14:11 -0800
X-IronPort-AV: E=Sophos;i="5.70,325,1574150400"; d="scan'208";a="218483077"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.17])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Jan 2020 02:14:09 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Thu, 16 Jan 2020 11:13:26 +0100
Message-Id: <20200116101326.11710-1-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [RESEND PATCH i-g-t] tests/prime_vgem: Give meaningful
 messages on SKIP
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

Messages displayed on SKIPs introduced by commit 92caadb4e551
("tests/prime_vgem: Skip basic-read/write subtests if not supported")
don't inform clearly enough that those SKIPs are expected behavior.
Fix it.

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Reviewed-by: Ewelina Musial <ewelina.musial@intel.com>
---
Assuming the R-b: from Ewelina is sufficient, can someone push this,
please?  I can't do that myself as I have no push permissions.

Thanks,
Janusz

 tests/prime_vgem.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/tests/prime_vgem.c b/tests/prime_vgem.c
index 6595818c..3bdb2300 100644
--- a/tests/prime_vgem.c
+++ b/tests/prime_vgem.c
@@ -46,7 +46,8 @@ static void test_read(int vgem, int i915)
 	handle = prime_fd_to_handle(i915, dmabuf);
 	close(dmabuf);
 
-	igt_skip_on(__gem_read(i915, handle, 0, &i, sizeof(i)));
+	igt_skip_on_f(__gem_read(i915, handle, 0, &i, sizeof(i)),
+		      "PREAD from dma-buf not supported on this hardware\n");
 
 	ptr = vgem_mmap(vgem, &scratch, PROT_WRITE);
 	for (i = 0; i < 1024; i++)
@@ -83,7 +84,8 @@ static void test_fence_read(int i915, int vgem)
 	handle = prime_fd_to_handle(i915, dmabuf);
 	close(dmabuf);
 
-	igt_skip_on(__gem_read(i915, handle, 0, &i, sizeof(i)));
+	igt_skip_on_f(__gem_read(i915, handle, 0, &i, sizeof(i)),
+		      "PREAD from dma-buf not supported on this hardware\n");
 
 	igt_fork(child, 1) {
 		close(master[0]);
@@ -195,7 +197,8 @@ static void test_write(int vgem, int i915)
 	handle = prime_fd_to_handle(i915, dmabuf);
 	close(dmabuf);
 
-	igt_skip_on(__gem_write(i915, handle, 0, &i, sizeof(i)));
+	igt_skip_on_f(__gem_write(i915, handle, 0, &i, sizeof(i)),
+		      "PWRITE to dma-buf not supported on this hardware\n");
 
 	ptr = vgem_mmap(vgem, &scratch, PROT_READ);
 	gem_close(vgem, scratch.handle);
-- 
2.21.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
