Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 299E23D41B0
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jul 2021 22:47:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D3DD6E885;
	Fri, 23 Jul 2021 20:47:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2BF576E885;
 Fri, 23 Jul 2021 20:47:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F23A2A008A;
 Fri, 23 Jul 2021 20:47:11 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jason Ekstrand" <jason@jlekstrand.net>
Date: Fri, 23 Jul 2021 20:47:11 -0000
Message-ID: <162707323196.3042.5045124461691724613@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210723172142.3273510-1-jason@jlekstrand.net>
In-Reply-To: <20210723172142.3273510-1-jason@jlekstrand.net>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Migrate_memory_to_SMEM_when_imported_cross-devi?=
 =?utf-8?b?Y2UgKHJldjQp?=
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
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915: Migrate memory to SMEM when imported cross-device (rev4)
URL   : https://patchwork.freedesktop.org/series/92617/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
d3522f0b05a8 drm/i915/gem: Check object_can_migrate from object_migrate
27a4484e3ab1 drm/i915/gem: Refactor placement setup for i915_gem_object_create* (v2)
4bfc49a9a1a1 drm/i915/gem: Call i915_gem_flush_free_objects() in i915_gem_dumb_create()
c5797011ed85 drm/i915/gem: Unify user object creation (v3)
a97ea186410f drm/i915/gem/ttm: Only call __i915_gem_object_set_pages if needed
-:10: WARNING:TYPO_SPELLING: 'occured' may be misspelled - perhaps 'occurred'?
#10: 
no migration occured, however, we might still have pages on the GEM
             ^^^^^^^

total: 0 errors, 1 warnings, 0 checks, 20 lines checked
1edff73b9811 drm/i915/gem: Always call obj->ops->migrate unless can_migrate fails
73e3c44c8b98 drm/i915/gem: Correct the locking and pin pattern for dma-buf (v8)
375f4f22a468 drm/i915/gem: Migrate to system at dma-buf attach time (v7)


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
