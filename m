Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A3F3148993D
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jan 2022 14:07:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B2C712BE0A;
	Mon, 10 Jan 2022 13:07:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 524EA12BE0B;
 Mon, 10 Jan 2022 13:07:40 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4EFDFA7DFB;
 Mon, 10 Jan 2022 13:07:40 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Mon, 10 Jan 2022 13:07:40 -0000
Message-ID: <164182006028.28742.5884542469101166175@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220110115133.1500718-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20220110115133.1500718-1-maarten.lankhorst@linux.intel.com>
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
URL   : https://patchwork.freedesktop.org/series/98137/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
0a564d5e4bd9 drm/i915: Call i915_gem_evict_vm in vm_fault_gtt to prevent new ENOSPC errors, v2.
2ffa12202a76 drm/i915: Add locking to i915_gem_evict_vm()
775c2d0a1bd1 drm/i915: Add object locking to i915_gem_evict_for_node and i915_gem_evict_something
-:148: CHECK:LINE_SPACING: Please don't use multiple blank lines
#148: FILE: drivers/gpu/drm/i915/i915_gem_evict.c:252:
 
+

total: 0 errors, 0 warnings, 1 checks, 364 lines checked
ec557f8e7070 drm/i915: Add i915_vma_unbind_unlocked, and take obj lock for i915_vma_unbind, v2.
-:7: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#7: 
We want to remove more members of i915_vma, which requires the locking to be

total: 0 errors, 1 warnings, 0 checks, 317 lines checked
24fe65e145e6 drm/i915: Remove assert_object_held_shared
f5cb09503ae0 drm/i915: Remove support for unlocked i915_vma unbind
953cc81f3a16 drm/i915: Remove short-term pins from execbuf, v6.


