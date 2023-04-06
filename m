Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B77466D9D0E
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Apr 2023 18:07:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1DE410EC62;
	Thu,  6 Apr 2023 16:07:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 58B7510EC4A;
 Thu,  6 Apr 2023 16:07:02 +0000 (UTC)
Received: from workpc.. (109-252-119-170.nat.spd-mgts.ru [109.252.119.170])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 (Authenticated sender: dmitry.osipenko)
 by madras.collabora.co.uk (Postfix) with ESMTPSA id 1405066031C7;
 Thu,  6 Apr 2023 17:06:59 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1680797221;
 bh=J/NjrW07xAKPsgTOVlsTpuUa/MmUjyQmfwWP2+i3cC4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Vg0pe0ix1CzHqiooWmXyE1zukDucl835eaQmnoaEQud/sV3MsqCFI05+UXtXUA5Xk
 ZSdh2zEml7TICexbRqo8X5nQ96P27SWSrPqzp9FhLGONDTDO4lZVhkOPLu95M8EoN7
 CbIr+LlyrCkm1O6ikBX6a9cv5xxccU9ePHm+BEV9AW1X6rCXeMigETvoGdaISOtR6U
 g4Bq1A4t95nIgSOMoSgcZml+xIdFjR5tCRnTtN/ulwYZY3hb2pGrhOStcN/22Z5D6e
 H+VM1rW+/6qkORdvrsujVuxIy2bszxREpKFGeT+4EQKULuA3KSotBkRMw3yc8Lav7k
 EQFVAefFCvbDw==
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
To: Sumit Semwal <sumit.semwal@linaro.org>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Liam Mark <lmark@codeaurora.org>, Brian Starkey <Brian.Starkey@arm.com>,
 John Stultz <jstultz@google.com>, Gerd Hoffmann <kraxel@redhat.com>,
 Daniel Vetter <daniel@ffwll.ch>, Jani Nikula <jani.nikula@linux.intel.com>,
 Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, Tomi Valkeinen <tomba@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Tomasz Figa <tfiga@chromium.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Amol Maheshwari <amahesh@qti.qualcomm.com>,
 Emil Velikov <emil.l.velikov@gmail.com>
Date: Thu,  6 Apr 2023 19:06:31 +0300
Message-Id: <20230406160637.541702-2-dmitry.osipenko@collabora.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230406160637.541702-1-dmitry.osipenko@collabora.com>
References: <20230406160637.541702-1-dmitry.osipenko@collabora.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/7] media: videobuf2: Don't assert held
 reservation lock for dma-buf mmapping
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
Cc: linux-arm-msm@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-tegra@vger.kernel.org, kernel@collabora.com, linux-media@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Don't assert held dma-buf reservation lock on memory mapping of exported
buffer.

We're going to change dma-buf mmap() locking policy such that exporters
will have to handle the lock. The previous locking policy caused deadlock
problem for DRM drivers in a case of self-imported dma-bufs once these
drivers are moved to use reservation lock universally. The problem is
solved by moving the lock down to exporters. This patch prepares videobuf2
for the locking policy update.

Reviewed-by: Emil Velikov <emil.l.velikov@gmail.com>
Signed-off-by: Dmitry Osipenko <dmitry.osipenko@collabora.com>
---
 drivers/media/common/videobuf2/videobuf2-dma-contig.c | 3 ---
 drivers/media/common/videobuf2/videobuf2-dma-sg.c     | 3 ---
 drivers/media/common/videobuf2/videobuf2-vmalloc.c    | 3 ---
 3 files changed, 9 deletions(-)

diff --git a/drivers/media/common/videobuf2/videobuf2-dma-contig.c b/drivers/media/common/videobuf2/videobuf2-dma-contig.c
index 205d3cac425c..2fa455d4a048 100644
--- a/drivers/media/common/videobuf2/videobuf2-dma-contig.c
+++ b/drivers/media/common/videobuf2/videobuf2-dma-contig.c
@@ -11,7 +11,6 @@
  */
 
 #include <linux/dma-buf.h>
-#include <linux/dma-resv.h>
 #include <linux/module.h>
 #include <linux/refcount.h>
 #include <linux/scatterlist.h>
@@ -456,8 +455,6 @@ static int vb2_dc_dmabuf_ops_vmap(struct dma_buf *dbuf, struct iosys_map *map)
 static int vb2_dc_dmabuf_ops_mmap(struct dma_buf *dbuf,
 	struct vm_area_struct *vma)
 {
-	dma_resv_assert_held(dbuf->resv);
-
 	return vb2_dc_mmap(dbuf->priv, vma);
 }
 
diff --git a/drivers/media/common/videobuf2/videobuf2-dma-sg.c b/drivers/media/common/videobuf2/videobuf2-dma-sg.c
index 183037fb1273..28f3fdfe23a2 100644
--- a/drivers/media/common/videobuf2/videobuf2-dma-sg.c
+++ b/drivers/media/common/videobuf2/videobuf2-dma-sg.c
@@ -10,7 +10,6 @@
  * the Free Software Foundation.
  */
 
-#include <linux/dma-resv.h>
 #include <linux/module.h>
 #include <linux/mm.h>
 #include <linux/refcount.h>
@@ -498,8 +497,6 @@ static int vb2_dma_sg_dmabuf_ops_vmap(struct dma_buf *dbuf,
 static int vb2_dma_sg_dmabuf_ops_mmap(struct dma_buf *dbuf,
 	struct vm_area_struct *vma)
 {
-	dma_resv_assert_held(dbuf->resv);
-
 	return vb2_dma_sg_mmap(dbuf->priv, vma);
 }
 
diff --git a/drivers/media/common/videobuf2/videobuf2-vmalloc.c b/drivers/media/common/videobuf2/videobuf2-vmalloc.c
index a6c6d2fcaaa4..7c635e292106 100644
--- a/drivers/media/common/videobuf2/videobuf2-vmalloc.c
+++ b/drivers/media/common/videobuf2/videobuf2-vmalloc.c
@@ -10,7 +10,6 @@
  * the Free Software Foundation.
  */
 
-#include <linux/dma-resv.h>
 #include <linux/io.h>
 #include <linux/module.h>
 #include <linux/mm.h>
@@ -319,8 +318,6 @@ static int vb2_vmalloc_dmabuf_ops_vmap(struct dma_buf *dbuf,
 static int vb2_vmalloc_dmabuf_ops_mmap(struct dma_buf *dbuf,
 	struct vm_area_struct *vma)
 {
-	dma_resv_assert_held(dbuf->resv);
-
 	return vb2_vmalloc_mmap(dbuf->priv, vma);
 }
 
-- 
2.39.2

