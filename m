Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 25E61461AEE
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Nov 2021 16:32:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CE826F518;
	Mon, 29 Nov 2021 15:32:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C2C426F513;
 Mon, 29 Nov 2021 15:32:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BB7A3AA917;
 Mon, 29 Nov 2021 15:32:00 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Mon, 29 Nov 2021 15:32:00 -0000
Message-ID: <163819992073.16118.7945353336983623620@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211129134735.628712-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20211129134735.628712-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Remove_short_term_pins_from_execbuf=2E?=
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

Series: drm/i915: Remove short term pins from execbuf.
URL   : https://patchwork.freedesktop.org/series/97371/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
21c47bda3457 drm/i915: Remove unused bits of i915_vma/active api
27e1019e84ca drm/i915: Change shrink ordering to use locking around unbinding.
-:28: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#28: FILE: drivers/gpu/drm/i915/gem/i915_gem_shrinker.c:40:
+static int drop_pages(struct drm_i915_gem_object *obj,
+		       unsigned long shrink, bool trylock_vm)

total: 0 errors, 0 warnings, 1 checks, 52 lines checked
49b241bdc60e drm/i915: Remove pages_mutex and intel_gtt->vma_ops.set/clear_pages members, v2.
49c514431121 drm/i915: Take object lock in i915_ggtt_pin if ww is not set
aed8ae5a8f09 drm/i915: Force ww lock for i915_gem_object_ggtt_pin_ww
9187bec11688 drm/i915: Ensure gem_contexts selftests work with unbind changes.
568c85687baf drm/i915: Take trylock during eviction, v2.
-:92: CHECK:LINE_SPACING: Please don't use multiple blank lines
#92: FILE: drivers/gpu/drm/i915/i915_gem_evict.c:250:
 
+

total: 0 errors, 0 warnings, 1 checks, 109 lines checked
6ceb6112dcde drm/i915: Pass trylock context to callers
-:399: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#399: FILE: drivers/gpu/drm/i915/i915_vma.c:1463:
 		if (mutex_lock_interruptible(&vm->mutex) == 0) {
+

total: 0 errors, 0 warnings, 1 checks, 446 lines checked
166f1a537863 drm/i915: Ensure i915_vma tests do not get -ENOSPC with the locking changes.
d46f7b03f645 drm/i915: Make i915_gem_evict_vm work correctly for already locked objects
cace6794e201 drm/i915: Call i915_gem_evict_vm in vm_fault_gtt to prevent new ENOSPC errors
11f3797a384a drm/i915: Add i915_vma_unbind_unlocked, and take obj lock for i915_vma_unbind
-:7: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#7: 
We want to remove more members of i915_vma, which requires the locking to be

total: 0 errors, 1 warnings, 0 checks, 314 lines checked
ba94479fef46 drm/i915: Require object lock when freeing pages during destruction
9e25276fb506 drm/i915: Remove assert_object_held_shared
b44c0dcf9f1b drm/i915: Remove support for unlocked i915_vma unbind
f7d4a25d39c5 drm/i915: Remove short-term pins from execbuf, v5.


