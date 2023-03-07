Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A0C76ADC56
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Mar 2023 11:49:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 40CDA10E498;
	Tue,  7 Mar 2023 10:48:49 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E0A910E488;
 Tue,  7 Mar 2023 10:48:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678186127; x=1709722127;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rnzRe13qhrrA5ljmMARPkyyrz5Rg225kZeF/vZZHOAI=;
 b=FpCj8au9euSKWul8i3Hy8qlYzNaQgsS7VGZAm7Kp5WrmLTW0+aa9QWOG
 wLPNV5RqFj7JGIYdJaP8rLnRWsdUPd5bz0IoT7ctE8ejO6yx0K0ug7RJU
 VXaCUTuRnLKrj+F9kd6KHtzysSRRmns4uFl/PslOioTirw5IEGF889nb4
 9rmyoMx2rAHmoBhnEqMjUDf3ReCUKn+BjVA62YF82k2+qaUTNrehopD7R
 CeYktGxsbZXCeY4mH9lYNwk2zgZxQonjDF3MH/1xxtulXFZwBqL+nP6Ig
 AAREcRUk9r8cjtBcSDnPT7jpC0jP3ssI0Wbg0kLqHAcGqViGMkRjvfPQ/ w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="400643449"
X-IronPort-AV: E=Sophos;i="5.98,240,1673942400"; d="scan'208";a="400643449"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2023 02:48:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="819712903"
X-IronPort-AV: E=Sophos;i="5.98,240,1673942400"; d="scan'208";a="819712903"
Received: from tanzeelu-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.205.53])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2023 02:48:45 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Tue,  7 Mar 2023 10:48:20 +0000
Message-Id: <20230307104824.231094-9-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230307104824.231094-1-tvrtko.ursulin@linux.intel.com>
References: <20230307104824.231094-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC 08/12] dma-fence-chain: Propagate wait status to
 contained fences
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
Cc: Matt Turner <mattst88@gmail.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

As signaling is enabled on the container fence we need to propagate any
external waiting status to individual fences in order to enable owning
drivers see it.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/dma-buf/dma-fence-chain.c | 22 ++++++++++++++++------
 include/linux/dma-fence-chain.h   |  1 +
 2 files changed, 17 insertions(+), 6 deletions(-)

diff --git a/drivers/dma-buf/dma-fence-chain.c b/drivers/dma-buf/dma-fence-chain.c
index a0d920576ba6..ef6a5988c8aa 100644
--- a/drivers/dma-buf/dma-fence-chain.c
+++ b/drivers/dma-buf/dma-fence-chain.c
@@ -145,20 +145,30 @@ static void dma_fence_chain_cb(struct dma_fence *f, struct dma_fence_cb *cb)
 static bool dma_fence_chain_enable_signaling(struct dma_fence *fence)
 {
 	struct dma_fence_chain *head = to_dma_fence_chain(fence);
+	struct dma_fence *callback = NULL;
 
 	dma_fence_get(&head->base);
 	dma_fence_chain_for_each(fence, &head->base) {
 		struct dma_fence *f = dma_fence_chain_contained(fence);
 
-		dma_fence_get(f);
-		if (!dma_fence_add_callback(f, &head->cb, dma_fence_chain_cb)) {
+		if (!callback) {
+			dma_fence_get(f);
+			if (!dma_fence_add_callback(f, &head->cb,
+						    dma_fence_chain_cb))
+				callback = f;
+			else
+				dma_fence_put(f);
+		} else if (head->base.waitcount && !head->waitcount) {
+			dma_fence_enable_sw_signaling(f);
+		} else {
 			dma_fence_put(fence);
-			return true;
+			break;
 		}
-		dma_fence_put(f);
 	}
-	dma_fence_put(&head->base);
-	return false;
+	head->waitcount = head->base.waitcount;
+	if (!callback)
+		dma_fence_put(&head->base);
+	return callback;
 }
 
 static bool dma_fence_chain_signaled(struct dma_fence *fence)
diff --git a/include/linux/dma-fence-chain.h b/include/linux/dma-fence-chain.h
index 4bdf0b96da28..349b882d31ea 100644
--- a/include/linux/dma-fence-chain.h
+++ b/include/linux/dma-fence-chain.h
@@ -25,6 +25,7 @@
 struct dma_fence_chain {
 	struct dma_fence base;
 	struct dma_fence __rcu *prev;
+	bool waitcount;
 	u64 prev_seqno;
 	struct dma_fence *fence;
 	union {
-- 
2.37.2

