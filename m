Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AD23734A283
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Mar 2021 08:28:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C10DB6EEBD;
	Fri, 26 Mar 2021 07:28:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8AA686EEBB;
 Fri, 26 Mar 2021 07:28:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 818D7AA912;
 Fri, 26 Mar 2021 07:28:08 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Christoph Hellwig" <hch@lst.de>
Date: Fri, 26 Mar 2021 07:28:08 -0000
Message-ID: <161674368850.10682.6271727188816723209@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210326055505.1424432-1-hch@lst.de>
In-Reply-To: <20210326055505.1424432-1-hch@lst.de>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/4=5D_mm=3A_add_remap=5Fpfn=5Frang?=
 =?utf-8?q?e=5Fnotrack?=
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

Series: series starting with [1/4] mm: add remap_pfn_range_notrack
URL   : https://patchwork.freedesktop.org/series/88472/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
e3d889b6653b mm: add remap_pfn_range_notrack
-:21: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#21: FILE: include/linux/mm.h:2713:
+int remap_pfn_range_notrack(struct vm_area_struct *vma, unsigned long addr,
+		unsigned long pfn, unsigned long size, pgprot_t prot);

-:51: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#51: FILE: mm/memory.c:2268:
+int remap_pfn_range_notrack(struct vm_area_struct *vma, unsigned long addr,
+		unsigned long pfn, unsigned long size, pgprot_t prot)

total: 0 errors, 0 warnings, 2 checks, 87 lines checked
9afcebc072dd mm: add a io_mapping_map_user helper
-:22: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#22: FILE: include/linux/io-mapping.h:225:
+int io_mapping_map_user(struct io_mapping *iomap, struct vm_area_struct *vma,
+		unsigned long addr, unsigned long pfn, unsigned long size);

-:45: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#45: 
new file mode 100644

-:66: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#66: FILE: mm/io-mapping.c:17:
+int io_mapping_map_user(struct io_mapping *iomap, struct vm_area_struct *vma,
+		unsigned long addr, unsigned long pfn, unsigned long size)

total: 0 errors, 1 warnings, 2 checks, 46 lines checked
22d2aa9b1a1e i915: use io_mapping_map_user
7452c4f8f8ac i915: fix remap_io_sg to verify the pgprot
-:6: WARNING:REPEATED_WORD: Possible repeated word: 'that'
#6: 
remap_io_sg claims that that the pgprot is pre-verified using an

total: 0 errors, 1 warnings, 0 checks, 92 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
