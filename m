Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9449D4B245F
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Feb 2022 12:35:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 822CE10EA9E;
	Fri, 11 Feb 2022 11:34:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B47E10EA97;
 Fri, 11 Feb 2022 11:34:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644579295; x=1676115295;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hioo3YnYUtDwOYo/Nu9K5yTBpF0/WollsjmzajFhbm4=;
 b=nEWFD98j7mm1MrR+AxOBio+6Ozu0np7VaysIshD4mM/o6B3xUCSyT6BL
 PY7Ad/7bcPP4BhtnuKwJf23SREysEtX+S1280CUIhIoFQVbzNRCjvKS4L
 wXkrtj4jbqSuD9RBvDCOsC7dfwgMaJRzw/5nS7OAW0aBheH72CJRvMfDb
 pSitRd71hAq89YNforEO2SGbPIf0nZexVhWuldcfRX8XFcFwIAzDygtBL
 eTpS9acqfvZRn1lMUbV+VU9TSX4++KHhDQ1leWWwN3+fB5/XjbWezgZPA
 a7mfPS56YKxaTtddeztXdlwu2rV2Rrj3ZxksaFeJYrTy7YTgAm7W9ee8Z Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10254"; a="248548236"
X-IronPort-AV: E=Sophos;i="5.88,360,1635231600"; d="scan'208";a="248548236"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2022 03:34:55 -0800
X-IronPort-AV: E=Sophos;i="5.88,360,1635231600"; d="scan'208";a="602354965"
Received: from pogara-mobl1.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.19.40])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2022 03:34:54 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 11 Feb 2022 11:34:27 +0000
Message-Id: <20220211113437.874691-6-matthew.auld@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220211113437.874691-1-matthew.auld@intel.com>
References: <20220211113437.874691-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 05/15] drm/i915/buddy: adjust res->start
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 dri-devel@lists.freedesktop.org, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Differentiate between mappable vs non-mappable resources, also if this
is an actual range allocation ensure we set res->start as the starting
pfn. Later when we need to do non-mappable -> mappable moves then we
want TTM to see that the current placement is not compatible, which
should result in an actual move, instead of being turned into a noop.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Reviewed-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Acked-by: Nirmoy Das <nirmoy.das@intel.com>
---
 drivers/gpu/drm/i915/i915_ttm_buddy_manager.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_ttm_buddy_manager.c b/drivers/gpu/drm/i915/i915_ttm_buddy_manager.c
index e47a3d46c6ff..0ac6b2463fd5 100644
--- a/drivers/gpu/drm/i915/i915_ttm_buddy_manager.c
+++ b/drivers/gpu/drm/i915/i915_ttm_buddy_manager.c
@@ -141,6 +141,13 @@ static int i915_ttm_buddy_man_alloc(struct ttm_resource_manager *man,
 		mutex_unlock(&bman->lock);
 	}
 
+	if (place->lpfn - place->fpfn == n_pages)
+		bman_res->base.start = place->fpfn;
+	else if (lpfn <= bman->visible_size)
+		bman_res->base.start = 0;
+	else
+		bman_res->base.start = bman->visible_size;
+
 	*res = &bman_res->base;
 	return 0;
 
-- 
2.34.1

