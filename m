Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BCA28698052
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Feb 2023 17:14:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 184BA10EADF;
	Wed, 15 Feb 2023 16:14:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9BA710E272;
 Wed, 15 Feb 2023 16:14:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676477685; x=1708013685;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=McHyT4De9u46Zn7/STJhV0OybtGzOXa9c4egudSyqSQ=;
 b=kDbC1WmZESkMs0WvsLrCD/JBSHWB+XjMUP+5SEr1/j0oIv+9dhFQ504C
 luejq1XOloXNSVwSuhC6jiNc2JaPariDtKsi5RQWjs6fYOqpueiwN9xI6
 Duysx4uwrNW4eqGtfo/9QyhJp2nDlx31K9Sw9pyKQf8Mx4GUAXXk8pp48
 5OIY7kds6UD5ITPYbdjX1qKJp27u7yGvwn6et4yC/8GcyOqTYFizGpopx
 2C9ByqRFi+EgDrHyV0M/TvzKwf+HpTU8+9EtOhc5RnXzlmes/1kawnckt
 VfK4JZwhXt8N0crDm4vDYevXtxlIJqiA72xzEG9ELugxQzUpUp7KDFhi2 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10622"; a="393870738"
X-IronPort-AV: E=Sophos;i="5.97,300,1669104000"; d="scan'208";a="393870738"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2023 08:14:45 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10622"; a="758472167"
X-IronPort-AV: E=Sophos;i="5.97,300,1669104000"; d="scan'208";a="758472167"
Received: from auliel-mobl1.ger.corp.intel.com (HELO thellstr-mobl1.intel.com)
 ([10.249.254.14])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2023 08:14:40 -0800
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: dri-devel@lists.freedesktop.org
Date: Wed, 15 Feb 2023 17:13:52 +0100
Message-Id: <20230215161405.187368-4-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20230215161405.187368-1-thomas.hellstrom@linux.intel.com>
References: <20230215161405.187368-1-thomas.hellstrom@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC PATCH 03/16] drm/ttm: Use the BIT macro for the
 TTM_TT_FLAGs
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
Cc: Miaohe Lin <linmiaohe@huawei.com>,
 =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 David Hildenbrand <david@redhat.com>, NeilBrown <neilb@suse.de>,
 Daniel Vetter <daniel.vetter@ffwll.ch>, intel-gfx@lists.freedesktop.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>, linux-mm@kvack.org,
 Dave Hansen <dave.hansen@intel.com>, linux-graphics-maintainer@vmware.com,
 Peter Xu <peterx@redhat.com>, Johannes Weiner <hannes@cmpxchg.org>,
 Dave Airlie <airlied@redhat.com>, Andrew Morton <akpm@linux-foundation.org>,
 Christian Koenig <christian.koenig@amd.com>,
 Matthew Auld <matthew.auld@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

New code is recommended to use the BIT macro instead of the explicit
shifts. Change the older defines so that we can keep the style consistent
with upcoming changes.

Signed-off-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>
---
 include/drm/ttm/ttm_tt.h | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/include/drm/ttm/ttm_tt.h b/include/drm/ttm/ttm_tt.h
index b7d3f3843f1e..cc54be1912e1 100644
--- a/include/drm/ttm/ttm_tt.h
+++ b/include/drm/ttm/ttm_tt.h
@@ -83,12 +83,12 @@ struct ttm_tt {
 	 * set by TTM after ttm_tt_populate() has successfully returned, and is
 	 * then unset when TTM calls ttm_tt_unpopulate().
 	 */
-#define TTM_TT_FLAG_SWAPPED		(1 << 0)
-#define TTM_TT_FLAG_ZERO_ALLOC		(1 << 1)
-#define TTM_TT_FLAG_EXTERNAL		(1 << 2)
-#define TTM_TT_FLAG_EXTERNAL_MAPPABLE	(1 << 3)
+#define TTM_TT_FLAG_SWAPPED		BIT(0)
+#define TTM_TT_FLAG_ZERO_ALLOC		BIT(1)
+#define TTM_TT_FLAG_EXTERNAL		BIT(2)
+#define TTM_TT_FLAG_EXTERNAL_MAPPABLE	BIT(3)
 
-#define TTM_TT_FLAG_PRIV_POPULATED  (1U << 31)
+#define TTM_TT_FLAG_PRIV_POPULATED	BIT(31)
 	uint32_t page_flags;
 	/** @num_pages: Number of pages in the page array. */
 	uint32_t num_pages;
-- 
2.34.1

