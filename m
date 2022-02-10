Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 137074B0D5F
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Feb 2022 13:17:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71AC610E85D;
	Thu, 10 Feb 2022 12:16:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5910910E847;
 Thu, 10 Feb 2022 12:16:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644495403; x=1676031403;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Qp7Nvg5KCgX5HZYtQasQguvLwvBIfTEokuUYLvxqkVo=;
 b=OVZLA/kZMgaPhcz/Qn0jd7K4ajgQzC1qfiiMWFl5saUqFH/uQdhhHRoX
 GlhmWEo/Co8IfiuTTzraC3DYO28dnH6L5Ez5/gkwffczGScQUCej8xlx7
 mXfAHMRPGYNLCfymthCQ0zKeBw+Kt4q+cn9ShgBLV/Qdr1KYqlEz9m3Zy
 MSL1RLzR2DlWzeXFv+ffbdSM+l9Z3hCEkD+HbXxhjapfLbs5QKo2k6gXO
 f0XmQWI+F+MKvMF3sYz4U1uRpgBXxclB8yvXWKjZaOWWNMWXGmlmwE5wJ
 BnSFmt8fdwZZ0RkfX13vhZE0kxybN83jotzRjEKFeDlWY4KRatWDIrqoq g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10253"; a="247060960"
X-IronPort-AV: E=Sophos;i="5.88,358,1635231600"; d="scan'208";a="247060960"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 04:16:43 -0800
X-IronPort-AV: E=Sophos;i="5.88,358,1635231600"; d="scan'208";a="485664957"
Received: from paulbarr-mobl2.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.11.226])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 04:16:41 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Feb 2022 12:13:03 +0000
Message-Id: <20220210121313.701004-6-matthew.auld@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220210121313.701004-1-matthew.auld@intel.com>
References: <20220210121313.701004-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 05/15] drm/i915/buddy: adjust res->start
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
 dri-devel@lists.freedesktop.org
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

