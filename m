Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DC762290593
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Oct 2020 14:52:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CE6F6EDD7;
	Fri, 16 Oct 2020 12:52:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 90E936EDD7;
 Fri, 16 Oct 2020 12:52:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 89F7FA47E6;
 Fri, 16 Oct 2020 12:52:25 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Fri, 16 Oct 2020 12:52:25 -0000
Message-ID: <160285274556.8602.16177703359284147960@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201016104444.1492028-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20201016104444.1492028-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915=3A_Remove_obj-=3Emm=2Elock!_=28rev6=29?=
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

Series: drm/i915: Remove obj->mm.lock! (rev6)
URL   : https://patchwork.freedesktop.org/series/82337/
State : failure

== Summary ==

Applying: drm/i915: Move cmd parser pinning to execbuffer
Applying: drm/i915: Add missing -EDEADLK handling to execbuf pinning
Applying: drm/i915: Do not share hwsp across contexts any more, v4.
Applying: drm/i915: Pin timeline map after first timeline pin, v3.
Applying: drm/i915: Ensure we hold the object mutex in pin correctly.
Applying: drm/i915: Add gem object locking to madvise.
Applying: drm/i915: Move HAS_STRUCT_PAGE to obj->flags
Applying: drm/i915: Rework struct phys attachment handling
Applying: drm/i915: Convert i915_gem_object_attach_phys() to ww locking
Applying: drm/i915: make lockdep slightly happier about execbuf.
Applying: drm/i915: Disable userptr pread/pwrite support.
Applying: drm/i915: No longer allow exporting userptr through dma-buf
Applying: drm/i915: Reject more ioctls for userptr
Applying: drm/i915: Reject UNSYNCHRONIZED for userptr
Applying: drm/i915: Fix userptr so we do not have to worry about obj->mm.lock, v4.
Applying: drm/i915: Flatten obj->mm.lock
Applying: drm/i915: Populate logical context during first pin.
Applying: drm/i915: Make ring submission compatible with obj->mm.lock removal, v2.
Applying: drm/i915: Handle ww locking in init_status_page
Applying: drm/i915: Rework clflush to work correctly without obj->mm.lock.
Applying: drm/i915: Pass ww ctx to intel_pin_to_display_plane
Applying: drm/i915: Add object locking to vm_fault_cpu
Applying: drm/i915: Move pinning to inside engine_wa_list_verify()
Applying: drm/i915: Take reservation lock around i915_vma_pin.
Applying: drm/i915: Make intel_init_workaround_bb more compatible with ww locking.
Applying: drm/i915: Make __engine_unpark() compatible with ww locking.
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/gt/intel_engine_pm.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/gt/intel_engine_pm.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/gt/intel_engine_pm.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0026 drm/i915: Make __engine_unpark() compatible with ww locking.
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
