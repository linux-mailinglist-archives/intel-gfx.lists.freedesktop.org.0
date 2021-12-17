Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 239FC478672
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Dec 2021 09:46:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EFD4A10EDF0;
	Fri, 17 Dec 2021 08:46:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2FFF510EB99;
 Fri, 17 Dec 2021 08:46:35 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 26F88A0BCB;
 Fri, 17 Dec 2021 08:46:35 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Fri, 17 Dec 2021 08:46:35 -0000
Message-ID: <163973079512.10410.14428843224462842870@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211216142749.1966107-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20211216142749.1966107-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Remove_short_term_pins_from_execbuf_by_requirin?=
 =?utf-8?q?g_lock_to_unbind=2E?=
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

Series: drm/i915: Remove short term pins from execbuf by requiring lock to unbind.
URL   : https://patchwork.freedesktop.org/series/98137/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
bc08f58eeb3f drm/i915: Remove unused bits of i915_vma/active api
91bcecf270f0 drm/i915: Change shrink ordering to use locking around unbinding.
-:28: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#28: FILE: drivers/gpu/drm/i915/gem/i915_gem_shrinker.c:40:
+static int drop_pages(struct drm_i915_gem_object *obj,
+		       unsigned long shrink, bool trylock_vm)

total: 0 errors, 0 warnings, 1 checks, 52 lines checked
316d336c98ea drm/i915: Remove pages_mutex and intel_gtt->vma_ops.set/clear_pages members, v3.
9d385c135ad3 drm/i915: Take object lock in i915_ggtt_pin if ww is not set
c293606bcd36 drm/i915: Force ww lock for i915_gem_object_ggtt_pin_ww, v2.
e7fbd118c9b2 drm/i915: Ensure gem_contexts selftests work with unbind changes, v2.
c9892c726d3c drm/i915: Ensure i915_vma tests do not get -ENOSPC with the locking changes.
cc5dd7eac42f drm/i915: Call i915_gem_evict_vm in vm_fault_gtt to prevent new ENOSPC errors
1631c2059017 drm/i915: Trylock the object when shrinking
d1406f612444 drm/i915: Require object lock when freeing pages during destruction
97cc19bfa2a0 drm/i915: Add ww ctx to i915_gem_object_trylock
44fc65c4b062 drm/i915: Add locking to i915_gem_evict_vm()
8b8d9bb4ffaa drm/i915: Add object locking to i915_gem_evict_for_node and i915_gem_evict_something
-:148: CHECK:LINE_SPACING: Please don't use multiple blank lines
#148: FILE: drivers/gpu/drm/i915/i915_gem_evict.c:252:
 
+

total: 0 errors, 0 warnings, 1 checks, 364 lines checked
d2242714f33e drm/i915: Add i915_vma_unbind_unlocked, and take obj lock for i915_vma_unbind, v2.
-:7: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#7: 
We want to remove more members of i915_vma, which requires the locking to be

total: 0 errors, 1 warnings, 0 checks, 317 lines checked
ece7fb471984 drm/i915: Remove assert_object_held_shared
d5c98a7587ba drm/i915: Remove support for unlocked i915_vma unbind
c54bb29dd0de drm/i915: Remove short-term pins from execbuf, v5.


