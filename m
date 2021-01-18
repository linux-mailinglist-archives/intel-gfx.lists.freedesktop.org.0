Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF01F2FA2B0
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Jan 2021 15:17:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 484A56E21C;
	Mon, 18 Jan 2021 14:17:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFF6D6E28B
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Jan 2021 14:17:49 +0000 (UTC)
IronPort-SDR: Sf4WADeVxG5SM9snRfsif0GAS3Ra9Zn/5Fj0RZni3BqHZfoLsLePlmJvYEdfPzwSG8UApwmqEC
 So1jX2sTFo4w==
X-IronPort-AV: E=McAfee;i="6000,8403,9867"; a="197504695"
X-IronPort-AV: E=Sophos;i="5.79,356,1602572400"; d="scan'208";a="197504695"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 06:17:47 -0800
IronPort-SDR: d1Pli7Zm6sBvqSBUSFE7xQjAOgttUsJEAE/HsOouokplbElEXS1a1IouORDaatC8KB3PesdGv7
 imNtN8IX0LAQ==
X-IronPort-AV: E=Sophos;i="5.79,356,1602572400"; d="scan'208";a="466380932"
Received: from juimonen-mobl.ger.corp.intel.com (HELO
 mwauld-desk1.ger.corp.intel.com) ([10.252.9.5])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 06:17:46 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 18 Jan 2021 14:17:31 +0000
Message-Id: <20210118141732.90173-2-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210118141732.90173-1-matthew.auld@intel.com>
References: <20210118141732.90173-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/3] drm/i915: prefer FORCE_WC for the blitter
 routines
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: CQ Tang <cq.tang@intel.com>

The pool is shared and so we might find that there is a pool object with
an existing mapping, but is mapped with different underlying type, which
will result in -EBUSY.

Signed-off-by: CQ Tang <cq.tang@intel.com>
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_object_blt.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_blt.c b/drivers/gpu/drm/i915/gem/i915_gem_object_blt.c
index 10cac9fac79b..c6db745900b3 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object_blt.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object_blt.c
@@ -55,7 +55,7 @@ struct i915_vma *intel_emit_vma_fill_blt(struct intel_context *ce,
 	if (unlikely(err))
 		goto out_put;
 
-	cmd = i915_gem_object_pin_map(pool->obj, I915_MAP_WC);
+	cmd = i915_gem_object_pin_map(pool->obj, I915_MAP_FORCE_WC);
 	if (IS_ERR(cmd)) {
 		err = PTR_ERR(cmd);
 		goto out_unpin;
@@ -277,7 +277,7 @@ struct i915_vma *intel_emit_vma_copy_blt(struct intel_context *ce,
 	if (unlikely(err))
 		goto out_put;
 
-	cmd = i915_gem_object_pin_map(pool->obj, I915_MAP_WC);
+	cmd = i915_gem_object_pin_map(pool->obj, I915_MAP_FORCE_WC);
 	if (IS_ERR(cmd)) {
 		err = PTR_ERR(cmd);
 		goto out_unpin;
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
