Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D317A148C65
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2020 17:41:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DCBE72B1F;
	Fri, 24 Jan 2020 16:41:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6CCAF72B1E;
 Fri, 24 Jan 2020 16:41:34 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 08:41:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,358,1574150400"; d="scan'208";a="245749753"
Received: from kyunghyu-mobl1.amr.corp.intel.com (HELO
 mwahaha-bdw.amr.corp.intel.com) ([10.251.144.148])
 by orsmga002.jf.intel.com with ESMTP; 24 Jan 2020 08:41:32 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri, 24 Jan 2020 16:41:31 +0000
Message-Id: <20200124164131.39591-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] i915/tests/gem_exec_big: prefer PROT_WRITE
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

Technically mmap__cpu and mmap__wc just ignore the prot value, so it
doesn't really matter, but the intention is to have write access to the
ptr, so make that clear. Also if the underlying mmap__wc were to at some
point use mmap_offset where the prot is not ignored then we won't have
any surprises.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
---
 tests/i915/gem_exec_big.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/tests/i915/gem_exec_big.c b/tests/i915/gem_exec_big.c
index c06ee995..a5869330 100644
--- a/tests/i915/gem_exec_big.c
+++ b/tests/i915/gem_exec_big.c
@@ -217,9 +217,9 @@ static void exhaustive(int fd)
 		gem_write(fd, handle, 0, batch, sizeof(batch));
 
 		if (!FORCE_PREAD_PWRITE && gem_has_llc(fd))
-			ptr = __gem_mmap__cpu(fd, handle, 0, batch_size, PROT_READ);
+			ptr = __gem_mmap__cpu(fd, handle, 0, batch_size, PROT_WRITE);
 		else if (!FORCE_PREAD_PWRITE && gem_mmap__has_wc(fd))
-			ptr = __gem_mmap__wc(fd, handle, 0, batch_size, PROT_READ);
+			ptr = __gem_mmap__wc(fd, handle, 0, batch_size, PROT_WRITE);
 		else
 			ptr = NULL;
 
@@ -281,9 +281,9 @@ static void single(int i915)
 	gem_write(i915, handle, 0, &bbe, sizeof(bbe));
 
 	if (!FORCE_PREAD_PWRITE && gem_has_llc(i915))
-		ptr = __gem_mmap__cpu(i915, handle, 0, batch_size, PROT_READ);
+		ptr = __gem_mmap__cpu(i915, handle, 0, batch_size, PROT_WRITE);
 	else if (!FORCE_PREAD_PWRITE && gem_mmap__has_wc(i915))
-		ptr = __gem_mmap__wc(i915, handle, 0, batch_size, PROT_READ);
+		ptr = __gem_mmap__wc(i915, handle, 0, batch_size, PROT_WRITE);
 	else
 		ptr = NULL;
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
