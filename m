Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ED8927589B
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Sep 2020 15:25:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1F836E150;
	Wed, 23 Sep 2020 13:25:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id AEDD56E0D0;
 Wed, 23 Sep 2020 13:25:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A6F70A47E6;
 Wed, 23 Sep 2020 13:25:38 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Thomas Zimmermann" <tzimmermann@suse.de>
Date: Wed, 23 Sep 2020 13:25:38 -0000
Message-ID: <160086753865.4494.7661567529708955822@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200923123205.30671-1-tzimmermann@suse.de>
In-Reply-To: <20200923123205.30671-1-tzimmermann@suse.de>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_dma-buf=3A_Flag_vmap=27ed_memory_as_system_or_I/O_memory_?=
 =?utf-8?b?KHJldjIp?=
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

Series: dma-buf: Flag vmap'ed memory as system or I/O memory (rev2)
URL   : https://patchwork.freedesktop.org/series/81647/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
757ce74a1b9b dma-buf: Add struct dma-buf-map for storing struct dma_buf.vaddr_ptr
-:52: WARNING:AVOID_BUG: Avoid crashing the kernel - try using WARN_ON & recovery code rather than BUG() or BUG_ON()
#52: FILE: drivers/dma-buf/dma-buf.c:1212:
+		BUG_ON(dma_buf_map_is_null(&dmabuf->vmap_ptr));

-:58: WARNING:AVOID_BUG: Avoid crashing the kernel - try using WARN_ON & recovery code rather than BUG() or BUG_ON()
#58: FILE: drivers/dma-buf/dma-buf.c:1217:
+	BUG_ON(dma_buf_map_is_set(&dmabuf->vmap_ptr));

-:76: WARNING:AVOID_BUG: Avoid crashing the kernel - try using WARN_ON & recovery code rather than BUG() or BUG_ON()
#76: FILE: drivers/dma-buf/dma-buf.c:1244:
+	BUG_ON(dma_buf_map_is_null(&dmabuf->vmap_ptr));

-:79: WARNING:AVOID_BUG: Avoid crashing the kernel - try using WARN_ON & recovery code rather than BUG() or BUG_ON()
#79: FILE: drivers/dma-buf/dma-buf.c:1246:
+	BUG_ON(!dma_buf_map_is_vaddr(&dmabuf->vmap_ptr, vaddr));

-:91: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#91: 
new file mode 100644

-:145: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!map->vaddr_iomem"
#145: FILE: include/linux/dma-buf-map.h:50:
+		return map->vaddr_iomem == NULL;

-:146: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!map->vaddr"
#146: FILE: include/linux/dma-buf-map.h:51:
+	return map->vaddr == NULL;

total: 0 errors, 5 warnings, 2 checks, 152 lines checked
3ed40eba3c1e dma-buf: Use struct dma_buf_map in dma_buf_vmap() interfaces
a23bd28000a3 dma-buf: Use struct dma_buf_map in dma_buf_vunmap() interfaces
-:43: WARNING:AVOID_BUG: Avoid crashing the kernel - try using WARN_ON & recovery code rather than BUG() or BUG_ON()
#43: FILE: drivers/dma-buf/dma-buf.c:1250:
+	BUG_ON(!dma_buf_map_is_equal(&dmabuf->vmap_ptr, map));

total: 0 errors, 1 warnings, 0 checks, 287 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
