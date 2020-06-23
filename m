Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C634205629
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2020 17:39:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8D3F6E3FE;
	Tue, 23 Jun 2020 15:39:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 54F306E3FE;
 Tue, 23 Jun 2020 15:39:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2D1B4A0BC6;
 Tue, 23 Jun 2020 15:39:36 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Tue, 23 Jun 2020 15:39:36 -0000
Message-ID: <159292677615.4210.5829198074082791060@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200623142843.423594-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20200623142843.423594-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBz?=
 =?utf-8?q?eries_starting_with_=5B01/26=5D_Revert_=22drm/i915/gem=3A_Async?=
 =?utf-8?q?_GPU_relocations_only=22?=
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

Series: series starting with [01/26] Revert "drm/i915/gem: Async GPU relocations only"
URL   : https://patchwork.freedesktop.org/series/78744/
State : failure

== Summary ==

Applying: Revert "drm/i915/gem: Async GPU relocations only"
Applying: drm/i915: Revert relocation chaining commits.
Applying: Revert "drm/i915/gem: Drop relocation slowpath".
Applying: drm/i915: Add an implementation for i915_gem_ww_ctx locking, v2.
Applying: drm/i915: Remove locking from i915_gem_object_prepare_read/write
Applying: drm/i915: Parse command buffer earlier in eb_relocate(slow)
Applying: Revert "drm/i915/gem: Split eb_vma into its own allocation"
Applying: drm/i915/gem: Make eb_add_lut interruptible wait on object lock.
Applying: drm/i915: Use per object locking in execbuf, v12.
Applying: drm/i915: Use ww locking in intel_renderstate.
Applying: drm/i915: Add ww context handling to context_barrier_task
Applying: drm/i915: Nuke arguments to eb_pin_engine
Applying: drm/i915: Pin engine before pinning all objects, v4.
Applying: drm/i915: Rework intel_context pinning to do everything outside of pin_mutex
Applying: drm/i915: Make sure execbuffer always passes ww state to i915_vma_pin.
Applying: drm/i915: Convert i915_gem_object/client_blt.c to use ww locking as well, v2.
Applying: drm/i915: Kill last user of intel_context_create_request outside of selftests
Applying: drm/i915: Convert i915_perf to ww locking as well
Applying: drm/i915: Dirty hack to fix selftests locking inversion
Applying: drm/i915/selftests: Fix locking inversion in lrc selftest.
Applying: drm/i915: Use ww pinning for intel_context_create_request()
Applying: drm/i915: Move i915_vma_lock in the selftests to avoid lock inversion, v2.
Applying: drm/i915: Add ww locking to vm_fault_gtt
Applying: drm/i915: Add ww locking to pin_to_display_plane
Applying: drm/i915: Ensure we hold the pin mutex
Applying: drm/i915: Kill context before taking ctx->mutex
error: sha1 information is lacking or useless (drivers/gpu/drm/i915/gem/i915_gem_context.c).
error: could not build fake ancestor
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0026 drm/i915: Kill context before taking ctx->mutex
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
