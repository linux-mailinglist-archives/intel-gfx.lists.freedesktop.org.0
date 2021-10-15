Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C213142F005
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Oct 2021 13:57:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3174C6ECE5;
	Fri, 15 Oct 2021 11:57:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl
 [IPv6:2a02:2308:0:7ec:e79c:4e97:b6c4:f0ae])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CD6C6E450;
 Fri, 15 Oct 2021 11:57:26 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: dri-devel@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org, linux-media@vger.kernel.org,
 linaro-mm-sig@lists.linaro.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Fri, 15 Oct 2021 13:57:19 +0200
Message-Id: <20211015115720.79958-2-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211015115720.79958-1-maarten.lankhorst@linux.intel.com>
References: <20211015115720.79958-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] dma-buf: Fix dma_resv_wait_timeout handling
 of timeout = 0.
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Commit ada5c48b11a3 ("dma-buf: use new iterator in dma_resv_wait_timeout")
accidentally started mishandling timeout = 0, by forcing a blocking wait
with timeout = 1 passed to fences. This is not intended, as timeout = 0
may be used for peeking, similar to test_signaled.

Fixes: ada5c48b11a3 ("dma-buf: use new iterator in dma_resv_wait_timeout")
Cc: Christian König <christian.koenig@amd.com>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/dma-buf/dma-resv.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/dma-buf/dma-resv.c b/drivers/dma-buf/dma-resv.c
index 9eb2baa387d4..70a8082660c5 100644
--- a/drivers/dma-buf/dma-resv.c
+++ b/drivers/dma-buf/dma-resv.c
@@ -617,18 +617,18 @@ EXPORT_SYMBOL_GPL(dma_resv_get_fences);
 long dma_resv_wait_timeout(struct dma_resv *obj, bool wait_all, bool intr,
 			   unsigned long timeout)
 {
-	long ret = timeout ? timeout : 1;
+	long ret = timeout ?: 1;
 	struct dma_resv_iter cursor;
 	struct dma_fence *fence;
 
 	dma_resv_iter_begin(&cursor, obj, wait_all);
 	dma_resv_for_each_fence_unlocked(&cursor, fence) {
+		ret = dma_fence_wait_timeout(fence, intr, timeout);
+		if (ret <= 0)
+			break;
 
-		ret = dma_fence_wait_timeout(fence, intr, ret);
-		if (ret <= 0) {
-			dma_resv_iter_end(&cursor);
-			return ret;
-		}
+		if (timeout)
+			timeout = ret;
 	}
 	dma_resv_iter_end(&cursor);
 
-- 
2.33.0

