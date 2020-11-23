Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A7B982C127A
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Nov 2020 18:59:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 08F25899FF;
	Mon, 23 Nov 2020 17:59:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B6744899FF
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Nov 2020 17:59:46 +0000 (UTC)
IronPort-SDR: 7Yf84Ck06KfcwIYQlYrPudkfVMNbSEOSGGwqA9M9p1UjzNxa7CpxgusFnUB8c8SqimSD6nVAw7
 I05s+049Bazw==
X-IronPort-AV: E=McAfee;i="6000,8403,9814"; a="233424263"
X-IronPort-AV: E=Sophos;i="5.78,364,1599548400"; d="scan'208";a="233424263"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2020 09:59:46 -0800
IronPort-SDR: cVJlUx226TutJ1urM3hh1FKTuGqwYeaVHyxUZToqaCQy7KJzWFdBCOtESBwyZFVLu3ZPyTZneR
 rfiDBksfXBLQ==
X-IronPort-AV: E=Sophos;i="5.78,364,1599548400"; d="scan'208";a="546504794"
Received: from suygunge-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.40.108])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2020 09:59:43 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: linux-kernel@vger.kernel.org
Date: Mon, 23 Nov 2020 19:59:21 +0200
Message-Id: <c69fff6e0cd485563604240bbfcc028434983bec.1606153547.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1606153547.git.jani.nikula@intel.com>
References: <cover.1606153547.git.jani.nikula@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/9] relay: remove unused buf_mapped and
 buf_unmapped callbacks
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
Cc: Christoph Hellwig <hch@infradead.org>, jani.nikula@intel.com,
 Andrew Morton <akpm@linux-foundation.org>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

No relay client uses the buf_mapped or buf_unmapped callbacks. Remove
them. This makes relay's vm_operations_struct close callback a dummy,
remove it as well.

Suggested-by: Christoph Hellwig <hch@infradead.org>
Cc: Christoph Hellwig <hch@infradead.org>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 include/linux/relay.h | 19 -------------------
 kernel/relay.c        | 34 ----------------------------------
 2 files changed, 53 deletions(-)

diff --git a/include/linux/relay.h b/include/linux/relay.h
index e13a333e7c37..b3c4f49f6951 100644
--- a/include/linux/relay.h
+++ b/include/linux/relay.h
@@ -101,25 +101,6 @@ struct rchan_callbacks
 			     void *prev_subbuf,
 			     size_t prev_padding);
 
-	/*
-	 * buf_mapped - relay buffer mmap notification
-	 * @buf: the channel buffer
-	 * @filp: relay file pointer
-	 *
-	 * Called when a relay file is successfully mmapped
-	 */
-        void (*buf_mapped)(struct rchan_buf *buf,
-			   struct file *filp);
-
-	/*
-	 * buf_unmapped - relay buffer unmap notification
-	 * @buf: the channel buffer
-	 * @filp: relay file pointer
-	 *
-	 * Called when a relay file is successfully unmapped
-	 */
-        void (*buf_unmapped)(struct rchan_buf *buf,
-			     struct file *filp);
 	/*
 	 * create_buf_file - create file to represent a relay channel buffer
 	 * @filename: the name of the file to create
diff --git a/kernel/relay.c b/kernel/relay.c
index b08d936d5fa7..b51343642bf4 100644
--- a/kernel/relay.c
+++ b/kernel/relay.c
@@ -27,15 +27,6 @@
 static DEFINE_MUTEX(relay_channels_mutex);
 static LIST_HEAD(relay_channels);
 
-/*
- * close() vm_op implementation for relay file mapping.
- */
-static void relay_file_mmap_close(struct vm_area_struct *vma)
-{
-	struct rchan_buf *buf = vma->vm_private_data;
-	buf->chan->cb->buf_unmapped(buf, vma->vm_file);
-}
-
 /*
  * fault() vm_op implementation for relay file mapping.
  */
@@ -62,7 +53,6 @@ static vm_fault_t relay_buf_fault(struct vm_fault *vmf)
  */
 static const struct vm_operations_struct relay_file_mmap_ops = {
 	.fault = relay_buf_fault,
-	.close = relay_file_mmap_close,
 };
 
 /*
@@ -96,7 +86,6 @@ static void relay_free_page_array(struct page **array)
 static int relay_mmap_buf(struct rchan_buf *buf, struct vm_area_struct *vma)
 {
 	unsigned long length = vma->vm_end - vma->vm_start;
-	struct file *filp = vma->vm_file;
 
 	if (!buf)
 		return -EBADF;
@@ -107,7 +96,6 @@ static int relay_mmap_buf(struct rchan_buf *buf, struct vm_area_struct *vma)
 	vma->vm_ops = &relay_file_mmap_ops;
 	vma->vm_flags |= VM_DONTEXPAND;
 	vma->vm_private_data = buf;
-	buf->chan->cb->buf_mapped(buf, filp);
 
 	return 0;
 }
@@ -283,22 +271,6 @@ static int subbuf_start_default_callback (struct rchan_buf *buf,
 	return 1;
 }
 
-/*
- * buf_mapped() default callback.  Does nothing.
- */
-static void buf_mapped_default_callback(struct rchan_buf *buf,
-					struct file *filp)
-{
-}
-
-/*
- * buf_unmapped() default callback.  Does nothing.
- */
-static void buf_unmapped_default_callback(struct rchan_buf *buf,
-					  struct file *filp)
-{
-}
-
 /*
  * create_buf_file_create() default callback.  Does nothing.
  */
@@ -322,8 +294,6 @@ static int remove_buf_file_default_callback(struct dentry *dentry)
 /* relay channel default callbacks */
 static struct rchan_callbacks default_channel_callbacks = {
 	.subbuf_start = subbuf_start_default_callback,
-	.buf_mapped = buf_mapped_default_callback,
-	.buf_unmapped = buf_unmapped_default_callback,
 	.create_buf_file = create_buf_file_default_callback,
 	.remove_buf_file = remove_buf_file_default_callback,
 };
@@ -509,10 +479,6 @@ static void setup_callbacks(struct rchan *chan,
 
 	if (!cb->subbuf_start)
 		cb->subbuf_start = subbuf_start_default_callback;
-	if (!cb->buf_mapped)
-		cb->buf_mapped = buf_mapped_default_callback;
-	if (!cb->buf_unmapped)
-		cb->buf_unmapped = buf_unmapped_default_callback;
 	if (!cb->create_buf_file)
 		cb->create_buf_file = create_buf_file_default_callback;
 	if (!cb->remove_buf_file)
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
