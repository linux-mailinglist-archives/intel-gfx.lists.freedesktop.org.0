Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 88B356871E8
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Feb 2023 00:28:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04FE910E1B3;
	Wed,  1 Feb 2023 23:28:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C1F910E1B3
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Feb 2023 23:28:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675294088; x=1706830088;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ZIfyMXFIEvUcN7W5Be8sxA8lZ4YkvvhENF7N8iAbDWM=;
 b=IWlIvbaS5fQ2Ylke0KVjMwYoxBgDZPDIdaSKU1ZxAcXZiW8wS1TuaVff
 qg2w11L0PLTSn8OAbHI/81DUQRb+39eW4U40NczqX2Nh5mn/Cc2vFJqku
 7erxWNCEG28q+sgo5e5RgpxX2LpPklCZHt4FmDWiN54vvD1Kic1k3/KM1
 GrkO0F5MDicvDQfT49sbBwYfJBXRagKc8BBayG0POTNaZJRfKs6qlR1It
 ToyGyS3H7f3s6LPg/JrIxG6S6O+pnko5AfKdDCsyAuLHOEmOoW8AY5KKF
 +mUouvIUIn669F0rboEhzudyaREpQVu4JEJYZCQyjwVinkEXE3uqOg/Z5 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10608"; a="330434597"
X-IronPort-AV: E=Sophos;i="5.97,265,1669104000"; d="scan'208";a="330434597"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2023 15:28:06 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10608"; a="728608786"
X-IronPort-AV: E=Sophos;i="5.97,265,1669104000"; d="scan'208";a="728608786"
Received: from johneric-mobl.amr.corp.intel.com (HELO msatwood-mobl.intel.com)
 ([10.212.120.126])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2023 15:28:06 -0800
From: Matt Atwood <matthew.s.atwood@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Feb 2023 15:28:01 -0800
Message-Id: <20230201232801.123684-1-matthew.s.atwood@intel.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Fix memory leaks in scatterlist
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

This patch fixes memory leaks on error escapes in i915_scatterlist.c

Fixes: c3bfba9a2225 ("drm/i915: Check for integer truncation on scatterlist creation")
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
---
 drivers/gpu/drm/i915/i915_scatterlist.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_scatterlist.c b/drivers/gpu/drm/i915/i915_scatterlist.c
index 756289e43dff6..7c7a86921b1c7 100644
--- a/drivers/gpu/drm/i915/i915_scatterlist.c
+++ b/drivers/gpu/drm/i915/i915_scatterlist.c
@@ -98,8 +98,10 @@ struct i915_refct_sgt *i915_rsgt_from_mm_node(const struct drm_mm_node *node,
 	st = &rsgt->table;
 	/* restricted by sg_alloc_table */
 	if (WARN_ON(overflows_type(DIV_ROUND_UP_ULL(node->size, segment_pages),
-				   unsigned int)))
+				   unsigned int))) {
+		i915_refct_sgt_put(rsgt);
 		return ERR_PTR(-E2BIG);
+	}
 
 	if (sg_alloc_table(st, DIV_ROUND_UP_ULL(node->size, segment_pages),
 			   GFP_KERNEL)) {
@@ -183,8 +185,10 @@ struct i915_refct_sgt *i915_rsgt_from_buddy_resource(struct ttm_resource *res,
 	i915_refct_sgt_init(rsgt, size);
 	st = &rsgt->table;
 	/* restricted by sg_alloc_table */
-	if (WARN_ON(overflows_type(PFN_UP(res->size), unsigned int)))
+	if (WARN_ON(overflows_type(PFN_UP(res->size), unsigned int))) {
+		i915_refct_sgt_put(rsgt);
 		return ERR_PTR(-E2BIG);
+	}
 
 	if (sg_alloc_table(st, PFN_UP(res->size), GFP_KERNEL)) {
 		i915_refct_sgt_put(rsgt);
-- 
2.39.1

