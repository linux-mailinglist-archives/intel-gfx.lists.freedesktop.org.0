Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0134449036F
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Jan 2022 09:08:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E6C510E4E8;
	Mon, 17 Jan 2022 08:08:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3DE3110E5B8;
 Mon, 17 Jan 2022 08:08:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 38551A47EB;
 Mon, 17 Jan 2022 08:08:07 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Mon, 17 Jan 2022 08:08:07 -0000
Message-ID: <164240688719.28490.2753055925548805361@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220114132320.109030-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20220114132320.109030-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Remove_short_term_pins_from_execbuf_by_requirin?=
 =?utf-8?q?g_lock_to_unbind=2E_=28rev2=29?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915: Remove short term pins from execbuf by requiring lock to unbind. (rev2)
URL   : https://patchwork.freedesktop.org/series/98895/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
a6f5bc26c327 drm/i915: Call i915_gem_evict_vm in vm_fault_gtt to prevent new ENOSPC errors, v2.
9af9097af047 drm/i915: Add locking to i915_gem_evict_vm(), v3.
fe813cc9ca8d drm/i915: Add object locking to i915_gem_evict_for_node and i915_gem_evict_something, v2.
-:228: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#228: FILE: drivers/gpu/drm/i915/i915_gem_evict.c:457:
+			if (dying_vma(vma) || (ww &&
+			     (dma_resv_locking_ctx(vma->obj->base.resv) == &ww->ctx))) {

total: 0 errors, 0 warnings, 1 checks, 376 lines checked
7cef5f28f4ad drm/i915: Add i915_vma_unbind_unlocked, and take obj lock for i915_vma_unbind, v2.
e21d517be475 drm/i915: Remove support for unlocked i915_vma unbind
dd1b5fa154d0 drm/i915: Remove short-term pins from execbuf, v6.


