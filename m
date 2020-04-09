Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DBCBF1A33DE
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Apr 2020 14:14:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8F036E075;
	Thu,  9 Apr 2020 12:14:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id AC9856E06E;
 Thu,  9 Apr 2020 12:14:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A580EA47EE;
 Thu,  9 Apr 2020 12:14:05 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 09 Apr 2020 12:14:05 -0000
Message-ID: <158643444564.11552.16277131313344021128@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200409110101.18400-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200409110101.18400-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/3=5D_dma-buf=3A_Prettify_typecast?=
 =?utf-8?q?s_for_dma-fence-chain?=
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: series starting with [1/3] dma-buf: Prettify typecasts for dma-fence-chain
URL   : https://patchwork.freedesktop.org/series/75743/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
5fe27cc9dd40 dma-buf: Prettify typecasts for dma-fence-chain
38f765418273 dma-buf: Report signaled links inside dma-fence-chain
9118ea143e62 dma-buf: Exercise dma-fence-chain under selftests
-:34: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#34: 
new file mode 100644

-:62: CHECK:UNCOMMENTED_DEFINITION: spinlock_t definition without comment
#62: FILE: drivers/dma-buf/st-dma-fence-chain.c:24:
+	spinlock_t lock;

-:236: WARNING:EMBEDDED_FUNCTION_NAME: Prefer using '"%s...", __func__' to using 'find_seqno', this function's name, in a string
#236: FILE: drivers/dma-buf/st-dma-fence-chain.c:198:
+		pr_err("Reported %d for find_seqno(0)!\n", err);

-:245: WARNING:EMBEDDED_FUNCTION_NAME: Prefer using '"%s...", __func__' to using 'find_seqno', this function's name, in a string
#245: FILE: drivers/dma-buf/st-dma-fence-chain.c:207:
+			pr_err("Reported %d for find_seqno(%d:%d)!\n",

-:250: WARNING:EMBEDDED_FUNCTION_NAME: Prefer using '"%s...", __func__' to using 'find_seqno', this function's name, in a string
#250: FILE: drivers/dma-buf/st-dma-fence-chain.c:212:
+			pr_err("Incorrect fence reported by find_seqno(%d:%d)\n",

-:273: WARNING:EMBEDDED_FUNCTION_NAME: Prefer using '"%s...", __func__' to using 'find_seqno', this function's name, in a string
#273: FILE: drivers/dma-buf/st-dma-fence-chain.c:235:
+			pr_err("Error not reported for future fence: find_seqno(%d:%d)!\n",

-:287: WARNING:EMBEDDED_FUNCTION_NAME: Prefer using '"%s...", __func__' to using 'find_seqno', this function's name, in a string
#287: FILE: drivers/dma-buf/st-dma-fence-chain.c:249:
+			pr_err("Incorrect fence reported by find_seqno(%d:%d)\n",

-:738: WARNING:EMBEDDED_FUNCTION_NAME: Prefer using '"%s...", __func__' to using 'dma_fence_chain', this function's name, in a string
#738: FILE: drivers/dma-buf/st-dma-fence-chain.c:700:
+	pr_info("sizeof(dma_fence_chain)=%zu\n",

total: 0 errors, 7 warnings, 1 checks, 725 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
