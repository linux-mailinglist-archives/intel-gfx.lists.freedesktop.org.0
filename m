Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E57AD23CA78
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Aug 2020 14:22:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9C216E584;
	Wed,  5 Aug 2020 12:22:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 026186E566
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Aug 2020 12:22:48 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 22039469-1500050 
 for multiple; Wed, 05 Aug 2020 13:22:32 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  5 Aug 2020 13:22:04 +0100
Message-Id: <20200805122231.23313-11-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200805122231.23313-1-chris@chris-wilson.co.uk>
References: <20200805122231.23313-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 10/37] drm/i915/gem: Rename the list of
 relocations to reloc_list
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Continuing the theme of calling the lists a foo_list, rename the relocs
list. This means that we can now use relocs for the old reloc_cache that
is not a cache anymore.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index a5b63ae17241..e7e16c62df1c 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -252,7 +252,7 @@ struct i915_execbuffer {
 	struct list_head unbound;
 
 	/** list of vma that have execobj.relocation_count */
-	struct list_head relocs;
+	struct list_head relocs_list;
 
 	/**
 	 * Track the most recently used object for relocations, as we
@@ -577,7 +577,7 @@ eb_add_vma(struct i915_execbuffer *eb,
 	}
 
 	if (entry->relocation_count)
-		list_add_tail(&ev->reloc_link, &eb->relocs);
+		list_add_tail(&ev->reloc_link, &eb->relocs_list);
 
 	/*
 	 * SNA is doing fancy tricks with compressing batch buffers, which leads
@@ -932,7 +932,7 @@ static int eb_lookup_vmas(struct i915_execbuffer *eb)
 	unsigned int i;
 	int err = 0;
 
-	INIT_LIST_HEAD(&eb->relocs);
+	INIT_LIST_HEAD(&eb->relocs_list);
 	INIT_LIST_HEAD(&eb->unbound);
 
 	for (i = 0; i < eb->buffer_count; i++) {
@@ -1592,7 +1592,7 @@ static int eb_relocate(struct i915_execbuffer *eb)
 		struct eb_vma *ev;
 		int flush;
 
-		list_for_each_entry(ev, &eb->relocs, reloc_link) {
+		list_for_each_entry(ev, &eb->relocs_list, reloc_link) {
 			err = eb_relocate_vma(eb, ev);
 			if (err)
 				break;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
