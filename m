Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 442AF4E928E
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Mar 2022 12:34:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74B7310E4A9;
	Mon, 28 Mar 2022 10:34:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42E0E10E4A9
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Mar 2022 10:34:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648463679; x=1679999679;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=huIy7ac/5++0ljp5ScN7qTo2c6mvGc3lpBpACZ7AUzc=;
 b=SzBe39YttK19zfqhapSszgOhRuSQVafKKOMGdfsZQFD0algU4jRyRcMf
 gU3kXvvgeNTyBlZ70yHHqpXsSmlXklCZaS7xrDiNQnAnU0kQZ9lzaSDOB
 L8KsnfoHm3n4gHugpdQ/Dm0Wgkdt4y+bYIcmfGhjdAO2mrhuCBOYbruGM
 YoQbbnlTRuKWvdfZ/4kRQgkByDWrYwWJlQ7cpthHIPTyApNuN0a8PLcFO
 b9MLPsT8Q2EtsDmoGOiAbisNhkIGlaS112+uNRSm52PCyY4D+ZqVL8n/e
 AbuLQsp/KIGgoZHMIZnV2kmFh9jJa6oPR0YdTOwi6+45I9GZxFlijgZ7R Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10299"; a="258681488"
X-IronPort-AV: E=Sophos;i="5.90,217,1643702400"; d="scan'208";a="258681488"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2022 03:34:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,217,1643702400"; d="scan'208";a="563530434"
Received: from tejas-system-product-name.iind.intel.com ([10.145.162.130])
 by orsmga008.jf.intel.com with ESMTP; 28 Mar 2022 03:34:36 -0700
From: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 28 Mar 2022 15:51:44 +0530
Message-Id: <20220328102144.1374607-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [topic/core-for-CI] dma-buf: Check for empty
 dma_fence_array
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
Cc: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Signed-off-by: Christian König <christian.koenig@amd.com>
Signed-off-by: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
---
 drivers/dma-buf/dma-fence-array.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/dma-buf/dma-fence-array.c b/drivers/dma-buf/dma-fence-array.c
index 52b85d292383..5c8a7084577b 100644
--- a/drivers/dma-buf/dma-fence-array.c
+++ b/drivers/dma-buf/dma-fence-array.c
@@ -159,6 +159,8 @@ struct dma_fence_array *dma_fence_array_create(int num_fences,
 	struct dma_fence_array *array;
 	size_t size = sizeof(*array);
 
+	WARN_ON(!num_fences || !fences);
+
 	/* Allocate the callback structures behind the array. */
 	size += num_fences * sizeof(struct dma_fence_array_cb);
 	array = kzalloc(size, GFP_KERNEL);
@@ -231,6 +233,9 @@ struct dma_fence *dma_fence_array_first(struct dma_fence *head)
 	if (!array)
 		return head;
 
+	if (!array->num_fences)
+		return NULL;
+
 	return array->fences[0];
 }
 EXPORT_SYMBOL(dma_fence_array_first);
-- 
2.34.1

