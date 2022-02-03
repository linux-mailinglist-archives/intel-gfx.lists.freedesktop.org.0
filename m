Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 23DB64A83E6
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Feb 2022 13:34:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70E8710F54B;
	Thu,  3 Feb 2022 12:34:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 75DAA10F54B;
 Thu,  3 Feb 2022 12:34:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 72BCFAAA91;
 Thu,  3 Feb 2022 12:34:49 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Thu, 03 Feb 2022 12:34:49 -0000
Message-ID: <164389168944.15870.11291819635304975579@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220203085614.3896538-1-lucas.demarchi@intel.com>
In-Reply-To: <20220203085614.3896538-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_dma-buf-map=3A_Rename_to_iosys-map_=28rev2=29?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: dma-buf-map: Rename to iosys-map (rev2)
URL   : https://patchwork.freedesktop.org/series/99612/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
733bba522f40 dma-buf-map: Rename to iosys-map
-:63: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#63: 
Then some files had their includes adjusted and some comments were update to

-:234: WARNING:AVOID_BUG: Avoid crashing the kernel - try using WARN_ON & recovery code rather than BUG() or BUG_ON()
#234: FILE: drivers/dma-buf/dma-buf.c:1279:
+		BUG_ON(iosys_map_is_null(&dmabuf->vmap_ptr));

-:240: WARNING:AVOID_BUG: Avoid crashing the kernel - try using WARN_ON & recovery code rather than BUG() or BUG_ON()
#240: FILE: drivers/dma-buf/dma-buf.c:1284:
+	BUG_ON(iosys_map_is_set(&dmabuf->vmap_ptr));

-:255: WARNING:AVOID_BUG: Avoid crashing the kernel - try using WARN_ON & recovery code rather than BUG() or BUG_ON()
#255: FILE: drivers/dma-buf/dma-buf.c:1311:
+	BUG_ON(iosys_map_is_null(&dmabuf->vmap_ptr));

-:258: WARNING:AVOID_BUG: Avoid crashing the kernel - try using WARN_ON & recovery code rather than BUG() or BUG_ON()
#258: FILE: drivers/dma-buf/dma-buf.c:1313:
+	BUG_ON(!iosys_map_is_equal(&dmabuf->vmap_ptr, map));

-:1622: WARNING:OBSOLETE: drivers/gpu/drm/tiny/cirrus.c is marked as 'obsolete' in the MAINTAINERS hierarchy.  No unnecessary modifications please.

-:1625: WARNING:OBSOLETE: drivers/gpu/drm/tiny/cirrus.c is marked as 'obsolete' in the MAINTAINERS hierarchy.  No unnecessary modifications please.

-:1825: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1825: FILE: drivers/gpu/drm/ttm/ttm_resource.c:381:
+			iosys_map_set_vaddr_iomem(&iter_io->dmap,
 						    ioremap_wc(mem->bus.offset,

-:1830: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1830: FILE: drivers/gpu/drm/ttm/ttm_resource.c:385:
+			iosys_map_set_vaddr(&iter_io->dmap,
 					      memremap(mem->bus.offset, bus_size,

-:1840: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1840: FILE: drivers/gpu/drm/ttm/ttm_resource.c:393:
+			iosys_map_set_vaddr_iomem(&iter_io->dmap,
 						    ioremap(mem->bus.offset,

-:1874: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1874: FILE: drivers/gpu/drm/ttm/ttm_tt.c:416:
+	iosys_map_set_vaddr(dmap, kmap_local_page_prot(iter_tt->tt->pages[i],
 							 iter_tt->prot));

-:2586: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#2586: 
deleted file mode 100644

total: 0 errors, 8 warnings, 4 checks, 2294 lines checked


