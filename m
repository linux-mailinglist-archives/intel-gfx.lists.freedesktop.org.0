Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 14C08518D00
	for <lists+intel-gfx@lfdr.de>; Tue,  3 May 2022 21:13:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CC2F10E7D9;
	Tue,  3 May 2022 19:13:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC33610E754;
 Tue,  3 May 2022 19:13:43 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: bbeckett) with ESMTPSA id 5E60C1F44697
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1651605222;
 bh=MwugLBh23dXXE1qsLkpJ+qfy/t4gW1mABUdWdV5evKs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=dc0PkMkZWCj0KBoGj/DAsdV/CPLSna0T5TiMp0x8GzaoSEYMBmmEPKJJ2tMf65CUw
 zr7lybq5exzd6qXWVQcf4dInaC9bNRB0ScdDOm7ylNTJOZijvxVKmTgIWP8Em6Rh8J
 lBpR8+I9hQMfe7H+O242dh7I3WsnR5UoHd2d4frt1BF+oFC3eCDZgOYQF7fMRFoO3T
 WLGhogv8KXDGO2xj7cVyGP49glbzbRWVSsNGiqwkGywsga9Kb9T3XRUes9WW3CXq77
 jxrvJ7v6hsUq9/i84fV++YhLzBqkmGideSIp/bGB3LQXDW6DXyTvo6DOxBcobcZ/Gx
 q4YAIUJEvrzyg==
From: Robert Beckett <bob.beckett@collabora.com>
To: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>
Date: Tue,  3 May 2022 19:13:15 +0000
Message-Id: <20220503191316.1145124-4-bob.beckett@collabora.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220503191316.1145124-1-bob.beckett@collabora.com>
References: <20220503191316.1145124-1-bob.beckett@collabora.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/4] drm/i915: allow volatile buffers to use ttm
 pool allocator
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
 Matthew Auld <matthew.auld@intel.com>, linux-kernel@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

internal buffers should be shmem backed.
if a volatile buffer is requested, allow ttm to use the pool allocator
to provide volatile pages as backing

Signed-off-by: Robert Beckett <bob.beckett@collabora.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_ttm.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
index 4c25d9b2f138..fdb3a1c18cb6 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
@@ -309,7 +309,8 @@ static struct ttm_tt *i915_ttm_tt_create(struct ttm_buffer_object *bo,
 		page_flags |= TTM_TT_FLAG_ZERO_ALLOC;
 
 	caching = i915_ttm_select_tt_caching(obj);
-	if (i915_gem_object_is_shrinkable(obj) && caching == ttm_cached) {
+	if (i915_gem_object_is_shrinkable(obj) && caching == ttm_cached &&
+	    !i915_gem_object_is_volatile(obj)) {
 		page_flags |= TTM_TT_FLAG_EXTERNAL |
 			      TTM_TT_FLAG_EXTERNAL_MAPPABLE;
 		i915_tt->is_shmem = true;
-- 
2.25.1

