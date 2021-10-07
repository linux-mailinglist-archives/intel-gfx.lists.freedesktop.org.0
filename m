Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DCAB842537A
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Oct 2021 14:53:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B08AA6F45D;
	Thu,  7 Oct 2021 12:53:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A248C6F45B;
 Thu,  7 Oct 2021 12:53:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9A659A73C9;
 Thu,  7 Oct 2021 12:53:00 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 07 Oct 2021 12:53:00 -0000
Message-ID: <163361118060.5189.8329599232138743033@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211006123609.2026-1-christian.koenig@amd.com>
In-Reply-To: <20211006123609.2026-1-christian.koenig@amd.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/2=5D_dma-buf=3A_add_dma=5Fresv=5F?=
 =?utf-8?q?for=5Feach=5Ffence_v3?=
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
Reply-To: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: series starting with [1/2] dma-buf: add dma_resv_for_each_fence v3
URL   : https://patchwork.freedesktop.org/series/95560/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
34a8413e8f2b dma-buf: add dma_resv_for_each_fence v3
-:109: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'cursor' - possible side-effects?
#109: FILE: include/linux/dma-resv.h:262:
+#define dma_resv_for_each_fence(cursor, obj, all_fences, fence)	\
+	for (dma_resv_iter_begin(cursor, obj, all_fences),	\
+	     fence = dma_resv_iter_first(cursor); fence;	\
+	     fence = dma_resv_iter_next(cursor))

-:109: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'fence' - possible side-effects?
#109: FILE: include/linux/dma-resv.h:262:
+#define dma_resv_for_each_fence(cursor, obj, all_fences, fence)	\
+	for (dma_resv_iter_begin(cursor, obj, all_fences),	\
+	     fence = dma_resv_iter_first(cursor); fence;	\
+	     fence = dma_resv_iter_next(cursor))

-:116: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: "Christian König" <ckoenig.leichtzumerken@gmail.com>' != 'Signed-off-by: Christian König <christian.koenig@amd.com>'

total: 0 errors, 1 warnings, 2 checks, 89 lines checked
92d8e5c71ccd dma-buf: add dma_resv selftest v3
-:40: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#40: 
new file mode 100644

-:45: WARNING:SPDX_LICENSE_TAG: Improper SPDX comment style for 'drivers/dma-buf/st-dma-resv.c', please use '//' instead
#45: FILE: drivers/dma-buf/st-dma-resv.c:1:
+/* SPDX-License-Identifier: MIT */

-:45: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#45: FILE: drivers/dma-buf/st-dma-resv.c:1:
+/* SPDX-License-Identifier: MIT */

-:48: WARNING:BLOCK_COMMENT_STYLE: Block comments should align the * on each line
#48: FILE: drivers/dma-buf/st-dma-resv.c:4:
+/*
+* Copyright © 2019 Intel Corporation

-:235: ERROR:OPEN_BRACE: that open brace { should be on the previous line
#235: FILE: drivers/dma-buf/st-dma-resv.c:191:
+static int test_for_each_unlocked(void *arg, bool shared)
+{

-:302: ERROR:OPEN_BRACE: that open brace { should be on the previous line
#302: FILE: drivers/dma-buf/st-dma-resv.c:258:
+static int test_excl_for_each_unlocked(void *arg)
+{

-:307: ERROR:OPEN_BRACE: that open brace { should be on the previous line
#307: FILE: drivers/dma-buf/st-dma-resv.c:263:
+static int test_shared_for_each_unlocked(void *arg)
+{

-:326: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: "Christian König" <ckoenig.leichtzumerken@gmail.com>' != 'Signed-off-by: Christian König <christian.koenig@amd.com>'

total: 3 errors, 5 warnings, 0 checks, 294 lines checked


