Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8256519856C
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2020 22:37:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1F566E067;
	Mon, 30 Mar 2020 20:37:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E424F6E067;
 Mon, 30 Mar 2020 20:37:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DCF95A00E6;
 Mon, 30 Mar 2020 20:37:37 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Mon, 30 Mar 2020 20:37:37 -0000
Message-ID: <158560065787.13827.17857037826002401432@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200330143545.4371-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20200330143545.4371-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBz?=
 =?utf-8?q?eries_starting_with_=5B01/22=5D_Revert_=22drm/i915/gem=3A_Drop_?=
 =?utf-8?q?relocation_slowpath=22?=
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

Series: series starting with [01/22] Revert "drm/i915/gem: Drop relocation slowpath"
URL   : https://patchwork.freedesktop.org/series/75251/
State : failure

== Summary ==

Applying: Revert "drm/i915/gem: Drop relocation slowpath"
Applying: perf/core: Only copy-to-user after completely unlocking all locks. (CI test)
Applying: drm/i915: Add an implementation for i915_gem_ww_ctx locking, v2.
Applying: drm/i915: Remove locking from i915_gem_object_prepare_read/write
Applying: drm/i915: Parse command buffer earlier in eb_relocate(slow)
Applying: drm/i915: Use per object locking in execbuf, v7.
Applying: drm/i915: Use ww locking in intel_renderstate.
Applying: drm/i915: Add ww context handling to context_barrier_task
Applying: drm/i915: Nuke arguments to eb_pin_engine
Applying: drm/i915: Pin engine before pinning all objects, v3.
Applying: drm/i915: Rework intel_context pinning to do everything outside of pin_mutex
Applying: drm/i915: Make sure execbuffer always passes ww state to i915_vma_pin.
Applying: drm/i915: Convert i915_gem_object/client_blt.c to use ww locking as well, v2.
Applying: drm/i915: Kill last user of intel_context_create_request outside of selftests
Applying: drm/i915: Convert i915_perf to ww locking as well
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/i915_perf.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/i915_perf.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/i915_perf.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch' to see the failed patch
Patch failed at 0015 drm/i915: Convert i915_perf to ww locking as well
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
