Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 727EF6F8E0E
	for <lists+intel-gfx@lfdr.de>; Sat,  6 May 2023 04:32:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B273B10E68B;
	Sat,  6 May 2023 02:32:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8701A10E192;
 Sat,  6 May 2023 02:32:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7083FA0319;
 Sat,  6 May 2023 02:32:51 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Yan Zhao" <yan.y.zhao@intel.com>
Date: Sat, 06 May 2023 02:32:51 -0000
Message-ID: <168334037142.28058.5077011521065468460@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230311002258.852397-1-seanjc@google.com>
In-Reply-To: <20230311002258.852397-1-seanjc@google.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915/gvt=3A_KVM=3A_KVMGT_fixes_and_page-track_cleanups_=28re?=
 =?utf-8?b?djcp?=
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

Series: drm/i915/gvt: KVM: KVMGT fixes and page-track cleanups (rev7)
URL   : https://patchwork.freedesktop.org/series/112196/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/112196/revisions/7/mbox/ not applied
Applying: drm/i915/gvt: Verify pfn is "valid" before dereferencing "struct page"
Applying: KVM: x86/mmu: Factor out helper to get max mapping size of a memslot
Applying: drm/i915/gvt: remove interface intel_gvt_is_valid_gfn
Applying: drm/i915/gvt: Incorporate KVM memslot info into check for 2MiB GTT entry
Applying: drm/i915/gvt: Verify VFIO-pinned page is THP when shadowing 2M gtt entry
Applying: drm/i915/gvt: Put the page reference obtained by KVM's gfn_to_pfn()
Applying: drm/i915/gvt: Don't rely on KVM's gfn_to_pfn() to query possible 2M GTT
Applying: drm/i915/gvt: Use an "unsigned long" to iterate over memslot gfns
Applying: drm/i915/gvt: Drop unused helper intel_vgpu_reset_gtt()
Applying: drm/i915/gvt: Protect gfn hash table with vgpu_lock
Applying: KVM: x86/mmu: Don't rely on page-track mechanism to flush on memslot change
Applying: KVM: x86/mmu: Don't bounce through page-track mechanism for guest PTEs
Applying: KVM: drm/i915/gvt: Drop @vcpu from KVM's ->track_write() hook
Applying: KVM: x86: Reject memslot MOVE operations if KVMGT is attached
Applying: drm/i915/gvt: Don't bother removing write-protection on to-be-deleted slot
Applying: KVM: x86: Add a new page-track hook to handle memslot deletion
Applying: drm/i915/gvt: switch from ->track_flush_slot() to ->track_remove_region()
Applying: KVM: x86: Remove the unused page-track hook track_flush_slot()
Applying: KVM: x86/mmu: Move KVM-only page-track declarations to internal header
Applying: KVM: x86/mmu: Use page-track notifiers iff there are external users
error: patch failed: drivers/gpu/drm/i915/gvt/gvt.h:233
error: drivers/gpu/drm/i915/gvt/gvt.h: patch does not apply
error: Did you hand edit your patch?
It does not apply to blobs recorded in its index.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/gvt/gvt.h
Patch failed at 0020 KVM: x86/mmu: Use page-track notifiers iff there are external users
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
Build failed, no error log produced


