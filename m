Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF12A474C6C
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Dec 2021 21:04:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 598A410E1DF;
	Tue, 14 Dec 2021 20:04:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F21EC10E1DF;
 Tue, 14 Dec 2021 20:04:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639512279; x=1671048279;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=swoirMKs5MDhbDpE2Au6ynmmzDg7ZNZd3fDh4TF/Hxw=;
 b=DlKOE0k1HQ2HgA6JYaDSKy39aBA7CvAa/WdsrYX7BD3uUPhQajXgzvpJ
 0nAt4CfGfdmp1Fk8SSOw/HYzrlHi1nynidmSfNZL5AslQHy5fYjAcXHCG
 1dznSChmjQauA2jeQi6wcOJKmy37y0Wy1D3qERvvZ3jtBifqOL54+kzdL
 wJc7x6b9hRXJOklM53jGCecSXaRT/jYOdIfrMqZC2voSTmdmRW0PuoG/y
 aLMJjPkb+7V6gSWXZtZhzKyx2azKFyL4EFABxrSzuQgCrWDyNhD8adHi3
 jpa6MUsaQsftGuZUDrxpfMWFc7EDnoZNni29NGAnXuQs+W56MLGtY27sy w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10197"; a="219091531"
X-IronPort-AV: E=Sophos;i="5.88,206,1635231600"; d="scan'208";a="219091531"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2021 12:04:38 -0800
X-IronPort-AV: E=Sophos;i="5.88,206,1635231600"; d="scan'208";a="614429295"
Received: from jons-linux-dev-box.fm.intel.com ([10.1.27.20])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2021 12:04:37 -0800
From: Matthew Brost <matthew.brost@intel.com>
To: <intel-gfx@lists.freedesktop.org>,
	<dri-devel@lists.freedesktop.org>
Date: Tue, 14 Dec 2021 11:59:13 -0800
Message-Id: <20211214195913.35735-1-matthew.brost@intel.com>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Increment composite fence seqno
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

Increment composite fence seqno on each fence creation.

Fixes: 544460c33821 ("drm/i915: Multi-BB execbuf")
Signed-off-by: Matthew Brost <matthew.brost@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 2213f7b613da..96cf8361b017 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -3113,7 +3113,7 @@ eb_composite_fence_create(struct i915_execbuffer *eb, int out_fence_fd)
 	fence_array = dma_fence_array_create(eb->num_batches,
 					     fences,
 					     eb->context->parallel.fence_context,
-					     eb->context->parallel.seqno,
+					     eb->context->parallel.seqno++,
 					     false);
 	if (!fence_array) {
 		kfree(fences);
-- 
2.33.1

