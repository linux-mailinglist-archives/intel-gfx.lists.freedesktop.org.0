Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DCDE7A13B6D
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2025 14:57:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A43E10E07E;
	Thu, 16 Jan 2025 13:57:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=google.com header.i=@google.com header.b="SiiEz26W";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-f201.google.com (mail-qk1-f201.google.com
 [209.85.222.201])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 54D3610E07E
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jan 2025 13:57:48 +0000 (UTC)
Received: by mail-qk1-f201.google.com with SMTP id
 af79cd13be357-7bcf01691b7so178340485a.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jan 2025 05:57:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1737035807; x=1737640607;
 darn=lists.freedesktop.org; 
 h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
 :date:message-id:reply-to;
 bh=Afmzcj7YvLn6GXyrbKyUaoeIfkKGSsahsDNZPlhAdRk=;
 b=SiiEz26Wo12prJk1eZRDTMMpJkQgrHRm9YcxuyThUsIXBkHmMeU2JZHyKwyFW9kT82
 5QPtYEsqi6QwUYdtd7vOLPw2+yGVG39XwpP9WKWCbMumb6vnd0Eho7SzpFuFEpulfwnS
 qbKV+yiVP3xO3z/4oeENs/6zh8BaqfOumdhugSoJgPStzTDhi3q/1YWIqM+SBBJJoZ/t
 2SpdHda29dTynXvpBuEm6xXVIQCzzMYWapa6ZnOrjAy0moOVKOmzQXc0DAy2ZYbg9mpS
 yEPMa0yrLsQSMoSksYYaZDA2RgAzuMPpXXaqZ873NNoVq8T/sZkppzA9yFzKjvx4wAqg
 8x6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1737035807; x=1737640607;
 h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=Afmzcj7YvLn6GXyrbKyUaoeIfkKGSsahsDNZPlhAdRk=;
 b=ah4vRu03S52A6Mmd47PvosAk+l967ZzG73SzTwgSpS+E5EW4aOqjsG9L9sjERNPOGM
 her3BukJ7eQTu5NcbiP6eDx3YxACepSHdki9houuR7CDYmcVvKqhRsRGhUgxUGh0YS3I
 QcB6q/aGW43l7sMvpdcRioFp4dnk83PMkm/dA5a4djIao29NPhcTjT2iPK01GxIIlBik
 WWuByOXGOTzM4HGPgLB3PCOSh+Fc5Ux5prgSe9Qlt8yuz5DFkqRADHVAcTF26cGoJ7eh
 h0x+T4um55sP2bc0At6zKmvWZcYqGPU7huYgZZ4XcFEDFkoe253NV+5dre3q4HTDRZBl
 YTVg==
X-Gm-Message-State: AOJu0Yz5YSXFOFwMlsNUpdISNR45YUv+OpadZ9NeNtVj2rw+wmBaOIuA
 sYAoiQ0V4qQSw/6IF+8USTolnjhKQhXBdxcRLERgfFxwn4Z6WDgYofm1W2iGV7cNFSRp7jaGA68
 LJqryqW179N7AfkI+I88kVqvGQcRJ6iI3SqLM03czHRUenjktK038vOojmfz0otdNmoZcIqLnBU
 2CntzpQ91FcEN72/h5OAq/eM7lqZ+ztSTIxRynB9X+UPo/pBhhvA==
X-Google-Smtp-Source: AGHT+IF3gKnK89tbVwHbUDUwD1lEN0/kaHGYmsaSOGreDcBut40sY3iWcjgUhYRrT2wdvYDMwQDTtKijor7j
X-Received: from qkbbn9.prod.google.com ([2002:a05:620a:2ac9:b0:7b6:e6cf:180e])
 (user=bgeffon job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:620a:40c1:b0:7b6:db05:143c
 with SMTP id af79cd13be357-7bcd9759e7fmr5322280485a.45.1737035807417; Thu, 16
 Jan 2025 05:56:47 -0800 (PST)
Date: Thu, 16 Jan 2025 08:56:36 -0500
Mime-Version: 1.0
X-Mailer: git-send-email 2.48.0.rc2.279.g1de40edade-goog
Message-ID: <20250116135636.410164-1-bgeffon@google.com>
Subject: [PATCH] drm/i915: Fix page cleanup on DMA remap failure
From: Brian Geffon <bgeffon@google.com>
To: intel-gfx@lists.freedesktop.org
Cc: chris.p.wilson@intel.com, jani.saarinen@intel.com, tomasz.mistat@intel.com,
 vidya.srinivas@intel.com, ville.syrjala@linux.intel.com, 
 jani.nikula@linux.intel.com, linux-kernel@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Brian Geffon <bgeffon@google.com>, Tomasz Figa <tfiga@google.com>
Content-Type: text/plain; charset="UTF-8"
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

When converting to folios the cleanup path of shmem_get_pages() was
missed. When a DMA remap fails and the max segment size is greater than
PAGE_SIZE it will attempt to retry the remap with a PAGE_SIZEd segment
size. The cleanup code isn't properly using the folio apis and as a
result isn't handling compound pages correctly.

Link: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13487
Fixes: 0b62af28f249 ("i915: convert shmem_sg_free_table() to use a folio_batch")
Signed-off-by: Brian Geffon <bgeffon@google.com>
Suggested-by: Tomasz Figa <tfiga@google.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_shmem.c | 13 +++++--------
 1 file changed, 5 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
index fe69f2c8527d..02ddab5bf5c0 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
@@ -37,8 +37,6 @@ void shmem_sg_free_table(struct sg_table *st, struct address_space *mapping,
 	struct folio *last = NULL;
 	struct page *page;
 
-	mapping_clear_unevictable(mapping);
-
 	folio_batch_init(&fbatch);
 	for_each_sgt_page(page, sgt_iter, st) {
 		struct folio *folio = page_folio(page);
@@ -180,10 +178,10 @@ int shmem_sg_alloc_table(struct drm_i915_private *i915, struct sg_table *st,
 	return 0;
 err_sg:
 	sg_mark_end(sg);
+	mapping_clear_unevictable(mapping);
 	if (sg != st->sgl) {
 		shmem_sg_free_table(st, mapping, false, false);
 	} else {
-		mapping_clear_unevictable(mapping);
 		sg_free_table(st);
 	}
 
@@ -209,8 +207,6 @@ static int shmem_get_pages(struct drm_i915_gem_object *obj)
 	struct address_space *mapping = obj->base.filp->f_mapping;
 	unsigned int max_segment = i915_sg_segment_size(i915->drm.dev);
 	struct sg_table *st;
-	struct sgt_iter sgt_iter;
-	struct page *page;
 	int ret;
 
 	/*
@@ -239,9 +235,8 @@ static int shmem_get_pages(struct drm_i915_gem_object *obj)
 		 * for PAGE_SIZE chunks instead may be helpful.
 		 */
 		if (max_segment > PAGE_SIZE) {
-			for_each_sgt_page(page, sgt_iter, st)
-				put_page(page);
-			sg_free_table(st);
+			/* Leave the mapping unevictable while we retry */
+			shmem_sg_free_table(st, mapping, false, false);
 			kfree(st);
 
 			max_segment = PAGE_SIZE;
@@ -265,6 +260,7 @@ static int shmem_get_pages(struct drm_i915_gem_object *obj)
 	return 0;
 
 err_pages:
+	mapping_clear_unevictable(mapping);
 	shmem_sg_free_table(st, mapping, false, false);
 	/*
 	 * shmemfs first checks if there is enough memory to allocate the page
@@ -402,6 +398,7 @@ void i915_gem_object_put_pages_shmem(struct drm_i915_gem_object *obj, struct sg_
 	if (i915_gem_object_needs_bit17_swizzle(obj))
 		i915_gem_object_save_bit_17_swizzle(obj, pages);
 
+	mapping_clear_unevictable(file_inode(obj->base.filp)->i_mapping);
 	shmem_sg_free_table(pages, file_inode(obj->base.filp)->i_mapping,
 			    obj->mm.dirty, obj->mm.madv == I915_MADV_WILLNEED);
 	kfree(pages);
-- 
2.48.0.rc2.279.g1de40edade-goog

