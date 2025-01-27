Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54916A1DD80
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2025 21:43:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0A6210E193;
	Mon, 27 Jan 2025 20:43:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=google.com header.i=@google.com header.b="XG4Egd/H";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-f201.google.com (mail-qk1-f201.google.com
 [209.85.222.201])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1520110E5B9
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Jan 2025 20:43:35 +0000 (UTC)
Received: by mail-qk1-f201.google.com with SMTP id
 af79cd13be357-7b6f2515eb3so492310285a.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Jan 2025 12:43:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1738010614; x=1738615414;
 darn=lists.freedesktop.org; 
 h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
 :date:message-id:reply-to;
 bh=dzV8UGvkBceXUR/vOOPGtdnW22mWggChKVN4qUYB1M4=;
 b=XG4Egd/HP6si3EJHn+fS/DbdGmrIA7u5x+vAajZqg/ic4NYr6WLFAVlOGFiyK9eiMO
 6xKNHyxOxi6HOkZftcdDKmqGGtfjdnb2LAzd0AeMfMEda6Uo3c3UXXFPg2371GcVVI7s
 HIVMnncDdSCopSAbxjGJFDLyJ3xvmscOiCMGiZYpf4rpRADv5r3ilTlOXbN4sWOrjuCZ
 UnI7T1QcYfbYMkZtn7DppZQQUy1SfwAi/OEtuIHuLfQosPRJlghKq5WFAUmOnKHTQXlN
 7x8dc5jfFvshQhcyUN4ImrSS3lLjH5C+PnkgjNQt1zb5ZukCo0p+yk90s9SWizrS1yfH
 ULIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1738010614; x=1738615414;
 h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=dzV8UGvkBceXUR/vOOPGtdnW22mWggChKVN4qUYB1M4=;
 b=ragE+HYI67yvAXzAyCBhVPGEwrNsb12NcqChLzxyxtIxhsI6JRc9rV7CjGoi29mqlj
 SgdA48W9JKq/3mKIKHtmOFd0rWTnr6dakeLLeZ4dOGDw2e1zSMlP9ir8MhYbWHwBxil4
 wC6Fy8SeK1v7px1hxql9QVqSsaJUsiye760WL2jU7y1EKM48cbNRr2UZwAi+x61CNYn1
 TyFhrUbPTKyUg0JNzXCJItthAKi/xvolfUPpiB5pdLHPwVIE4saUUhuAYETCsIuHfVu7
 GqWXM7Bde+fvZb3mZBLSOhukL41Pe51FYuCCRufJvLqR2eTuRSdqlJkOKuI4hg9lhu3C
 eBZQ==
X-Gm-Message-State: AOJu0YyzyRnCccwMRCcdgjEfPS7y/OIt7H9lM7hlqu5WVl6SGYBOoByX
 HcRLRu6QaNcb5/u2cks+UL3xTXbz16YHi2SvmbyONiGyQFrj363cQyrGfO8Pm/cw9l63HSTkryM
 yzOgr9ydHjz2f8ZS30E8J1PISlRYif3GbyPnxYNzpkAAmueUJUsCrF4Rn2NE7Z73mJi8UK5ROVI
 IkmWcapZOk+j9RoWsxbtPmBmsYIet9QMijvlNfCGMsT0z3wvEmhw==
X-Google-Smtp-Source: AGHT+IFBEQv8z7rhsVep9QiuDVivUN9tp7MT3P8OMl7BIPAdO6dy1kXGcW3kGPZSV9SxDeEqemTQqq2vMIKN
X-Received: from qkbdv21.prod.google.com
 ([2002:a05:620a:1b95:b0:7b6:eecf:b804])
 (user=bgeffon job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:620a:4048:b0:7b1:4f5c:a3a3
 with SMTP id af79cd13be357-7be63252ab6mr7274491485a.56.1738010614042; Mon, 27
 Jan 2025 12:43:34 -0800 (PST)
Date: Mon, 27 Jan 2025 15:43:32 -0500
Mime-Version: 1.0
X-Mailer: git-send-email 2.48.1.262.g85cc9f2d1e-goog
Message-ID: <20250127204332.336665-1-bgeffon@google.com>
Subject: [PATCH v3] drm/i915: Fix page cleanup on DMA remap failure
From: Brian Geffon <bgeffon@google.com>
To: intel-gfx@lists.freedesktop.org
Cc: chris.p.wilson@intel.com, jani.saarinen@intel.com, tomasz.mistat@intel.com,
 vidya.srinivas@intel.com, ville.syrjala@linux.intel.com, 
 jani.nikula@linux.intel.com, linux-kernel@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Brian Geffon <bgeffon@google.com>, 
 stable@vger.kernel.org, Tomasz Figa <tfiga@google.com>
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

v2 -> v3:
(Ville) Just use shmem_sg_free_table() as-is in the failure path of
shmem_get_pages(). shmem_sg_free_table() will clear mapping unevictable
but it will be reset when it retries in shmem_sg_alloc_table().

v1 -> v2:
(Ville) Fixed locations where we were not clearing mapping unevictable.

Cc: stable@vger.kernel.org
Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: Vidya Srinivas <vidya.srinivas@intel.com>
Link: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13487
Link: https://lore.kernel.org/lkml/20250116135636.410164-1-bgeffon@google.com/
Fixes: 0b62af28f249 ("i915: convert shmem_sg_free_table() to use a folio_batch")
Signed-off-by: Brian Geffon <bgeffon@google.com>
Suggested-by: Tomasz Figa <tfiga@google.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_shmem.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
index fe69f2c8527d..ae3343c81a64 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
@@ -209,8 +209,6 @@ static int shmem_get_pages(struct drm_i915_gem_object *obj)
 	struct address_space *mapping = obj->base.filp->f_mapping;
 	unsigned int max_segment = i915_sg_segment_size(i915->drm.dev);
 	struct sg_table *st;
-	struct sgt_iter sgt_iter;
-	struct page *page;
 	int ret;
 
 	/*
@@ -239,9 +237,7 @@ static int shmem_get_pages(struct drm_i915_gem_object *obj)
 		 * for PAGE_SIZE chunks instead may be helpful.
 		 */
 		if (max_segment > PAGE_SIZE) {
-			for_each_sgt_page(page, sgt_iter, st)
-				put_page(page);
-			sg_free_table(st);
+			shmem_sg_free_table(st, mapping, false, false);
 			kfree(st);
 
 			max_segment = PAGE_SIZE;
-- 
2.48.1.262.g85cc9f2d1e-goog

