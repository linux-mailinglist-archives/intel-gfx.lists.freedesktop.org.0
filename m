Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F64630FD4F
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Feb 2021 20:53:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F47C6EE59;
	Thu,  4 Feb 2021 19:53:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5120A6EE58;
 Thu,  4 Feb 2021 19:53:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 46DFAA0091;
 Thu,  4 Feb 2021 19:53:14 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Dongli Zhang" <dongli.zhang@oracle.com>
Date: Thu, 04 Feb 2021 19:53:14 -0000
Message-ID: <161246839426.4503.8137368870762443886@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210203233709.19819-1-dongli.zhang@oracle.com>
In-Reply-To: <20210203233709.19819-1-dongli.zhang@oracle.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_swiotlb=3A_64-bit_DMA_buffer?=
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

Series: swiotlb: 64-bit DMA buffer
URL   : https://patchwork.freedesktop.org/series/86700/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
e188296818db swiotlb: define new enumerated type
50f74bc8af02 swiotlb: convert variables to arrays
-:130: WARNING:CONSIDER_KSTRTO: simple_strtoul is obsolete, use kstrtoul instead
#130: FILE: kernel/dma/swiotlb.c:116:
+		io_tlb_nslabs[SWIOTLB_LO] = simple_strtoul(str, &str, 0);

-:591: CHECK:SPACING: spaces preferred around that '+' (ctx:VxV)
#591: FILE: kernel/dma/swiotlb.c:589:
+		io_tlb_orig_addr[SWIOTLB_LO][index+i] = orig_addr + (i << IO_TLB_SHIFT);
 		                                  ^

total: 0 errors, 1 warnings, 1 checks, 602 lines checked
7fe9ad150961 swiotlb: introduce swiotlb_get_type() to calculate swiotlb buffer type
eb9848ac2c6c swiotlb: enable 64-bit swiotlb
-:227: CHECK:AVOID_EXTERNS: extern prototypes should be avoided in .h files
#227: FILE: include/linux/swiotlb.h:48:
+extern unsigned long swiotlb_nr_tbl(enum swiotlb_t type);

-:231: CHECK:AVOID_EXTERNS: extern prototypes should be avoided in .h files
#231: FILE: include/linux/swiotlb.h:50:
+extern int swiotlb_late_init_with_tbl(char *tlb, unsigned long nslabs,

-:233: CHECK:AVOID_EXTERNS: extern prototypes should be avoided in .h files
#233: FILE: include/linux/swiotlb.h:52:
+extern int swiotlb_late_init_with_default_size(size_t default_size,

-:268: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#268: FILE: include/linux/swiotlb.h:123:
 }
+static inline unsigned int swiotlb_max_segment(enum swiotlb_t type)

-:278: CHECK:AVOID_EXTERNS: extern prototypes should be avoided in .h files
#278: FILE: include/linux/swiotlb.h:142:
+extern void swiotlb_print_info(enum swiotlb_t type);

-:279: CHECK:AVOID_EXTERNS: extern prototypes should be avoided in .h files
#279: FILE: include/linux/swiotlb.h:143:
+extern void swiotlb_set_max_segment(unsigned int val, enum swiotlb_t type);

-:304: WARNING:CONSIDER_KSTRTO: simple_strtoul is obsolete, use kstrtoul instead
#304: FILE: kernel/dma/swiotlb.c:131:
+		io_tlb_nslabs[SWIOTLB_HI] = simple_strtoul(str, &str, 0);

-:840: CHECK:SPACING: spaces preferred around that '+' (ctx:VxV)
#840: FILE: kernel/dma/swiotlb.c:641:
+		io_tlb_orig_addr[type][index+i] = orig_addr + (i << IO_TLB_SHIFT);
 		                            ^

total: 0 errors, 1 warnings, 7 checks, 790 lines checked
30d8a3cce117 xen-swiotlb: convert variables to arrays
-:110: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#110: FILE: drivers/xen/swiotlb-xen.c:208:
+		xen_io_tlb_start[SWIOTLB_LO] = memblock_alloc(PAGE_ALIGN(bytes),
 						  PAGE_SIZE);

total: 0 errors, 0 warnings, 1 checks, 181 lines checked
3a347e83afb9 xen-swiotlb: enable 64-bit xen-swiotlb
-:83: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#83: FILE: drivers/xen/swiotlb-xen.c:165:
+		xen_io_tlb_nslabs[type] = ALIGN(xen_io_tlb_nslabs[type],
 						      IO_TLB_SEGSIZE);

-:130: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#130: FILE: drivers/xen/swiotlb-xen.c:219:
+		xen_io_tlb_start[type] = memblock_alloc(PAGE_ALIGN(bytes),
 						  PAGE_SIZE);

total: 0 errors, 0 warnings, 2 checks, 235 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
