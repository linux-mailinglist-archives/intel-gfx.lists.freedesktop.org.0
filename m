Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EAB1040A9A4
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Sep 2021 10:51:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D57F6E43F;
	Tue, 14 Sep 2021 08:51:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C3B86E43F;
 Tue, 14 Sep 2021 08:51:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10106"; a="285619158"
X-IronPort-AV: E=Sophos;i="5.85,292,1624345200"; d="scan'208";a="285619158"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2021 01:51:16 -0700
X-IronPort-AV: E=Sophos;i="5.85,292,1624345200"; d="scan'208";a="470046239"
Received: from aodohert-mobl1.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.213.243.118])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2021 01:51:15 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org,
 =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Date: Tue, 14 Sep 2021 09:50:30 +0100
Message-Id: <20210914085033.2833993-4-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20210914085033.2833993-1-matthew.auld@intel.com>
References: <20210914085033.2833993-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 4/7] drm/i915/ttm: use cached system pages
 when evicting lmem
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

This should let us do an accelerated copy directly to the shmem pages
when temporarily moving lmem-only objects, where the i915-gem shrinker
can later kick in to swap out the pages, if needed.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_ttm.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
index e60e538afcd9..a63beee57210 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
@@ -123,11 +123,11 @@ static enum ttm_caching
 i915_ttm_select_tt_caching(const struct drm_i915_gem_object *obj)
 {
 	/*
-	 * Objects only allowed in system get cached cpu-mappings.
-	 * Other objects get WC mapping for now. Even if in system.
+	 * Objects only allowed in system get cached cpu-mappings, or when
+	 * evicting lmem-only buffers to system for swapping. Other objects get
+	 * WC mapping for now. Even if in system.
 	 */
-	if (obj->mm.region->type == INTEL_MEMORY_SYSTEM &&
-	    obj->mm.n_placements <= 1)
+	if (obj->mm.n_placements <= 1)
 		return ttm_cached;
 
 	return ttm_write_combined;
-- 
2.26.3

