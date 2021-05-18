Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5939F3872A9
	for <lists+intel-gfx@lfdr.de>; Tue, 18 May 2021 08:53:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9974989ACD;
	Tue, 18 May 2021 06:53:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D3AA58909F;
 Tue, 18 May 2021 06:53:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CCF94A363D;
 Tue, 18 May 2021 06:53:14 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Claire Chang" <tientzu@chromium.org>
Date: Tue, 18 May 2021 06:53:14 -0000
Message-ID: <162132079481.23337.1297012818063799137@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210518064215.2856977-1-tientzu@chromium.org>
In-Reply-To: <20210518064215.2856977-1-tientzu@chromium.org>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Restricted_DMA_=28rev3=29?=
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

Series: Restricted DMA (rev3)
URL   : https://patchwork.freedesktop.org/series/89341/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
4970ae013adb swiotlb: Refactor swiotlb init functions
e6b601b9629d swiotlb: Refactor swiotlb_create_debugfs
e86662fadedf swiotlb: Add DMA_RESTRICTED_POOL
fde662bbf776 swiotlb: Add restricted DMA pool initialization
4d855565f52f swiotlb: Add a new get_io_tlb_mem getter
0e604cae8fe2 swiotlb: Update is_swiotlb_buffer to add a struct device argument
3bf813727fea swiotlb: Update is_swiotlb_active to add a struct device argument
-:98: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "get_io_tlb_mem"
#98: FILE: kernel/dma/swiotlb.c:667:
+	return get_io_tlb_mem(dev) != NULL;

total: 0 errors, 0 warnings, 1 checks, 59 lines checked
bc49eee520f6 swiotlb: Bounce data from/to restricted DMA pool if available
-:45: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#45: FILE: include/linux/swiotlb.h:143:
 }
+static inline bool is_dev_swiotlb_force(struct device *dev)

total: 0 errors, 0 warnings, 1 checks, 75 lines checked
68eb3a4c3085 swiotlb: Move alloc_size to find_slots
aec185368af0 swiotlb: Refactor swiotlb_tbl_unmap_single
5c880be08fa6 dma-direct: Add a new wrapper __dma_direct_free_pages()
454814aa7406 swiotlb: Add restricted DMA alloc/free support.
162bfd59d8cd dma-direct: Allocate memory from restricted DMA pool if available
38df8d208cac dt-bindings: of: Add restricted DMA pool
e79ad0f25fff of: Add plumbing for restricted DMA pool
-:44: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#44: FILE: drivers/of/address.c:1133:
+			return of_reserved_mem_device_init_by_idx(

-:83: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#83: FILE: drivers/of/of_private.h:173:
 }
+static inline int of_dma_set_restricted_buffer(struct device *dev)

total: 0 errors, 0 warnings, 2 checks, 63 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
