Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC116651FA4
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Dec 2022 12:28:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A69D10E3B0;
	Tue, 20 Dec 2022 11:27:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74F9910E3B0
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Dec 2022 11:27:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671535664; x=1703071664;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=87v4WN7TDx5KznOX7DueaBOnYZ7jWsguSULo+Kr2lXg=;
 b=ItJX7l6jgOBlVGqOvxk/EZ6Cn6aGRpcmCjwWfhpUsl4LV61cnB6xU+HQ
 mqH3jhbjtlQsFsArJoz3j7RiMo9bNjRG5700VH//Ktl1aZHmF4EcxEB0+
 /hKzrSP5is2lcki/JpoYPpHQlT14dJ+U8yPP6w8A9Nk1ZhVS06phfu75t
 zRRwPjg03BX0MdVCiNSmJ+E6gGrmH/0tzXILTD9rpgHHF+nxyl1DcvOqC
 7ijKvsRhqo6MvZfcvq+TuQ5q3VYVvzu90K+DXQNMOejecEcNxd/0WzK0G
 9R2y82N/PufkCS4SyBilvIq2ihWXO/tkktgJGlhbZb/x6F/AB2WpHaZMG A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10566"; a="321494415"
X-IronPort-AV: E=Sophos;i="5.96,259,1665471600"; d="scan'208";a="321494415"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2022 03:27:43 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10566"; a="896393261"
X-IronPort-AV: E=Sophos;i="5.96,259,1665471600"; d="scan'208";a="896393261"
Received: from jwawszcx-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.21.132])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2022 03:27:41 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 20 Dec 2022 11:27:36 +0000
Message-Id: <20221220112736.161642-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/ttm: remove the virtualized start hack
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This was mostly needed to differentiate between mappable and
non-mappable lmem, such that ttm would understand non-mappable ->
mappable moves (or vice versa), and not just turn them into noops. We
have since gained proper .intersects() and .compatible() hooks for the
resource manager, which takes care of this for us.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Nirmoy Das <nirmoy.das@intel.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>
---
 drivers/gpu/drm/i915/i915_ttm_buddy_manager.c | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_ttm_buddy_manager.c b/drivers/gpu/drm/i915/i915_ttm_buddy_manager.c
index a72698a2dbc8..a1bc804cfa15 100644
--- a/drivers/gpu/drm/i915/i915_ttm_buddy_manager.c
+++ b/drivers/gpu/drm/i915/i915_ttm_buddy_manager.c
@@ -139,13 +139,6 @@ static int i915_ttm_buddy_man_alloc(struct ttm_resource_manager *man,
 
 	mutex_unlock(&bman->lock);
 
-	if (place->lpfn - place->fpfn == n_pages)
-		bman_res->base.start = place->fpfn;
-	else if (lpfn <= bman->visible_size)
-		bman_res->base.start = 0;
-	else
-		bman_res->base.start = bman->visible_size;
-
 	*res = &bman_res->base;
 	return 0;
 
-- 
2.38.1

