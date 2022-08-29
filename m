Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AB1865A53A1
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Aug 2022 19:56:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2DA210EBBE;
	Mon, 29 Aug 2022 17:55:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id ACE4210EBA3;
 Mon, 29 Aug 2022 17:54:58 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A1B89AADD6;
 Mon, 29 Aug 2022 17:54:58 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Dmitry Osipenko" <dmitry.osipenko@collabora.com>
Date: Mon, 29 Aug 2022 17:54:58 -0000
Message-ID: <166179569865.11951.3432778593955368706@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220824102248.91964-1-dmitry.osipenko@collabora.com>
In-Reply-To: <20220824102248.91964-1-dmitry.osipenko@collabora.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Move_all_drivers_to_a_common_dma-buf_locking_convention?=
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

Series: Move all drivers to a common dma-buf locking convention
URL   : https://patchwork.freedesktop.org/series/107884/
State : warning

== Summary ==

Error: dim checkpatch failed
95c5249c37bb dma-buf: Add _unlocked postfix to function names
-:770: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#770: FILE: drivers/infiniband/core/umem_dmabuf.c:153:
+	umem_dmabuf->attach = dma_buf_dynamic_attach_unlocked(

-:1101: WARNING:FUNCTION_ARGUMENTS: function definition argument 'struct dma_buf_attachment *' should also have an identifier name
#1101: FILE: include/linux/dma-buf.h:623:
+struct sg_table *dma_buf_map_attachment_unlocked(struct dma_buf_attachment *,

-:1103: WARNING:FUNCTION_ARGUMENTS: function definition argument 'struct dma_buf_attachment *' should also have an identifier name
#1103: FILE: include/linux/dma-buf.h:625:
+void dma_buf_unmap_attachment_unlocked(struct dma_buf_attachment *,

-:1103: WARNING:FUNCTION_ARGUMENTS: function definition argument 'struct sg_table *' should also have an identifier name
#1103: FILE: include/linux/dma-buf.h:625:
+void dma_buf_unmap_attachment_unlocked(struct dma_buf_attachment *,

-:1117: WARNING:FUNCTION_ARGUMENTS: function definition argument 'struct dma_buf *' should also have an identifier name
#1117: FILE: include/linux/dma-buf.h:635:
+int dma_buf_mmap_unlocked(struct dma_buf *, struct vm_area_struct *,

-:1117: WARNING:FUNCTION_ARGUMENTS: function definition argument 'struct vm_area_struct *' should also have an identifier name
#1117: FILE: include/linux/dma-buf.h:635:
+int dma_buf_mmap_unlocked(struct dma_buf *, struct vm_area_struct *,

-:1117: WARNING:FUNCTION_ARGUMENTS: function definition argument 'unsigned long' should also have an identifier name
#1117: FILE: include/linux/dma-buf.h:635:
+int dma_buf_mmap_unlocked(struct dma_buf *, struct vm_area_struct *,

total: 0 errors, 6 warnings, 1 checks, 930 lines checked
ef7c7ae61fc1 dma-buf: Add locked variant of dma_buf_vmap/vunmap()
45c3f7da798e drm/gem: Take reservation lock for vmap/vunmap operations
d3cf2e46efe0 dma-buf: Move dma_buf_vmap/vunmap_unlocked() to dynamic locking specification
10a7c6c7933c dma-buf: Move dma_buf_mmap_unlocked() to dynamic locking specification
bcf19d059221 dma-buf: Move dma-buf attachment to dynamic locking specification
-:387: WARNING:FUNCTION_ARGUMENTS: function definition argument 'struct dma_buf_attachment *' should also have an identifier name
#387: FILE: include/linux/dma-buf.h:629:
+struct sg_table *dma_buf_map_attachment(struct dma_buf_attachment *,

total: 0 errors, 1 warnings, 0 checks, 331 lines checked
d260753b3e2c dma-buf: Document dynamic locking convention
ed8551958b67 media: videobuf2: Stop using internal dma-buf lock
1738dcaeddcf dma-buf: Remove internal lock


