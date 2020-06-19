Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EADDB20110D
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jun 2020 17:41:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C87546E1AA;
	Fri, 19 Jun 2020 15:41:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0CA036E197;
 Fri, 19 Jun 2020 15:41:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 05E00A47E8;
 Fri, 19 Jun 2020 15:41:45 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 19 Jun 2020 15:41:44 -0000
Message-ID: <159258130499.12534.3688368204961091069@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200619143106.10356-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200619143106.10356-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/3=5D_drm/i915/gem=3A_Avoid_kmallo?=
 =?utf-8?q?c_under_i915-=3Emm=5Flock?=
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

Series: series starting with [1/3] drm/i915/gem: Avoid kmalloc under i915->mm_lock
URL   : https://patchwork.freedesktop.org/series/78643/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
e219e0a60e23 drm/i915/gem: Avoid kmalloc under i915->mm_lock
-:143: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!new"
#143: FILE: drivers/gpu/drm/i915/gem/i915_gem_userptr.c:332:
+	if (new == NULL)

-:230: CHECK:UNCOMMENTED_DEFINITION: spinlock_t definition without comment
#230: FILE: drivers/gpu/drm/i915/i915_drv.h:991:
+	spinlock_t mm_lock;

total: 0 errors, 0 warnings, 2 checks, 203 lines checked
f2a7b9c76cd4 drm/i915/gvt: Drop redundant prepare_write/pin_pages
a5bd05750493 drm/i915/gt: Replace manual kmap_atomic() with pin_map for renderstate

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
