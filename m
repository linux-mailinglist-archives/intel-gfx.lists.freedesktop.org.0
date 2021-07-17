Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 596F03CC04A
	for <lists+intel-gfx@lfdr.de>; Sat, 17 Jul 2021 02:39:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA7566E9F7;
	Sat, 17 Jul 2021 00:39:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0DB996E9F7;
 Sat, 17 Jul 2021 00:39:35 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 07A4FA0BCB;
 Sat, 17 Jul 2021 00:39:35 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jason Ekstrand" <jason@jlekstrand.net>
Date: Sat, 17 Jul 2021 00:39:35 -0000
Message-ID: <162648237500.18553.1251322758030741745@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210716141426.1904528-1-jason@jlekstrand.net>
In-Reply-To: <20210716141426.1904528-1-jason@jlekstrand.net>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Migrate_memory_to_SMEM_when_imported_cross-devi?=
 =?utf-8?b?Y2UgKHJldjIp?=
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

Series: drm/i915: Migrate memory to SMEM when imported cross-device (rev2)
URL   : https://patchwork.freedesktop.org/series/92617/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
a518ef415105 drm/i915/gem: Check object_can_migrate from object_migrate
bc470df2a6dc drm/i915/gem: Refactor placement setup for i915_gem_object_create* (v2)
7cfa880e0e74 drm/i915/gem: Call i915_gem_flush_free_objects() in i915_gem_dumb_create()
80a4a7f5c03b drm/i915/gem: Unify user object creation (v2)
0e4a617a75b8 drm/i915/gem/ttm: Respect the objection region in placement_from_obj
6dc86f72e162 drm/i915/gem: Correct the locking and pin pattern for dma-buf (v6)
22424415b1b8 drm/i915/gem: Migrate to system at dma-buf attach time (v6)
-:189: WARNING:LINE_SPACING: Missing a blank line after declarations
#189: FILE: drivers/gpu/drm/i915/gem/selftests/i915_gem_dmabuf.c:240:
+	struct intel_memory_region *smem = i915->mm.regions[INTEL_REGION_SMEM];
+	return igt_dmabuf_import_same_driver(i915, &smem, 1);

total: 0 errors, 1 warnings, 0 checks, 164 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
