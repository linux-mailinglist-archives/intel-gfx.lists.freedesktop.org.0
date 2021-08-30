Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 935CE3FB5A7
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Aug 2021 14:09:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 389C089CC4;
	Mon, 30 Aug 2021 12:09:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl
 [IPv6:2a02:2308:0:7ec:e79c:4e97:b6c4:f0ae])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B8E089CC4
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Aug 2021 12:09:53 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Date: Mon, 30 Aug 2021 14:09:51 +0200
Message-Id: <20210830121006.2978297-5-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210830121006.2978297-1-maarten.lankhorst@linux.intel.com>
References: <20210830121006.2978297-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 04/19] drm/i915: Remove gen6_ppgtt_unpin_all
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

gen6_ppgtt_unpin_all is unused, kill it.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/gen6_ppgtt.c | 11 -----------
 drivers/gpu/drm/i915/gt/gen6_ppgtt.h |  1 -
 2 files changed, 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/gen6_ppgtt.c b/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
index 1aee5e6b1b23..efc243f40d0f 100644
--- a/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
@@ -405,17 +405,6 @@ void gen6_ppgtt_unpin(struct i915_ppgtt *base)
 		i915_vma_unpin(ppgtt->vma);
 }
 
-void gen6_ppgtt_unpin_all(struct i915_ppgtt *base)
-{
-	struct gen6_ppgtt *ppgtt = to_gen6_ppgtt(base);
-
-	if (!atomic_read(&ppgtt->pin_count))
-		return;
-
-	i915_vma_unpin(ppgtt->vma);
-	atomic_set(&ppgtt->pin_count, 0);
-}
-
 struct i915_ppgtt *gen6_ppgtt_create(struct intel_gt *gt)
 {
 	struct i915_ggtt * const ggtt = gt->ggtt;
diff --git a/drivers/gpu/drm/i915/gt/gen6_ppgtt.h b/drivers/gpu/drm/i915/gt/gen6_ppgtt.h
index 6a61a5c3a85a..ab0eecb086dd 100644
--- a/drivers/gpu/drm/i915/gt/gen6_ppgtt.h
+++ b/drivers/gpu/drm/i915/gt/gen6_ppgtt.h
@@ -71,7 +71,6 @@ static inline struct gen6_ppgtt *to_gen6_ppgtt(struct i915_ppgtt *base)
 
 int gen6_ppgtt_pin(struct i915_ppgtt *base, struct i915_gem_ww_ctx *ww);
 void gen6_ppgtt_unpin(struct i915_ppgtt *base);
-void gen6_ppgtt_unpin_all(struct i915_ppgtt *base);
 void gen6_ppgtt_enable(struct intel_gt *gt);
 void gen7_ppgtt_enable(struct intel_gt *gt);
 struct i915_ppgtt *gen6_ppgtt_create(struct intel_gt *gt);
-- 
2.32.0

