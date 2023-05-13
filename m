Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8772A7013C9
	for <lists+intel-gfx@lfdr.de>; Sat, 13 May 2023 03:46:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4B8210E6F6;
	Sat, 13 May 2023 01:46:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D521710E053;
 Sat, 13 May 2023 01:46:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7D303AADD7;
 Sat, 13 May 2023 01:46:13 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Yan Zhao" <yan.y.zhao@intel.com>
Date: Sat, 13 May 2023 01:46:13 -0000
Message-ID: <168394237348.18763.15533112594525067471@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230513003600.818142-1-seanjc@google.com>
In-Reply-To: <20230513003600.818142-1-seanjc@google.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/gvt=3A_KVM=3A_KVMGT_fixes_and_page-track_cleanups_?=
 =?utf-8?b?KHJldjgp?=
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

Series: drm/i915/gvt: KVM: KVMGT fixes and page-track cleanups (rev8)
URL   : https://patchwork.freedesktop.org/series/112196/
State : warning

== Summary ==

Error: dim checkpatch failed
7ddfeb73c37a drm/i915/gvt: Verify pfn is "valid" before dereferencing "struct page"
6e46a75c5c15 drm/i915/gvt: remove interface intel_gvt_is_valid_gfn
60cd1c1b954f drm/i915/gvt: Verify hugepages are contiguous in physical address space
82759b84f7fc drm/i915/gvt: Put the page reference obtained by KVM's gfn_to_pfn()
a85e87c63800 drm/i915/gvt: Explicitly check that vGPU is attached before shadowing
2678442df896 drm/i915/gvt: Error out on an attempt to shadowing an unknown GTT entry type
425220f2cc46 drm/i915/gvt: Don't rely on KVM's gfn_to_pfn() to query possible 2M GTT
66caadcfb561 drm/i915/gvt: Use an "unsigned long" to iterate over memslot gfns
cc12e36d8b5e drm/i915/gvt: Drop unused helper intel_vgpu_reset_gtt()
dfc1236b7e6e drm/i915/gvt: Protect gfn hash table with vgpu_lock
722d8f7ef123 KVM: x86/mmu: Move kvm_arch_flush_shadow_{all, memslot}() to mmu.c
b2fdeb2bb4b6 KVM: x86/mmu: Don't rely on page-track mechanism to flush on memslot change
58d52301be4c KVM: x86/mmu: Don't bounce through page-track mechanism for guest PTEs
84403a9c8920 KVM: drm/i915/gvt: Drop @vcpu from KVM's ->track_write() hook
c5834b025c35 KVM: x86: Reject memslot MOVE operations if KVMGT is attached
0e65c8e6f583 drm/i915/gvt: Don't bother removing write-protection on to-be-deleted slot
ad683a55df9c KVM: x86: Add a new page-track hook to handle memslot deletion
287f9c98484d drm/i915/gvt: switch from ->track_flush_slot() to ->track_remove_region()
7630b3b1d29e KVM: x86: Remove the unused page-track hook track_flush_slot()
556343eb5969 KVM: x86/mmu: Move KVM-only page-track declarations to internal header
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:114: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#114: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 113 lines checked
5eeebf29aa14 KVM: x86/mmu: Use page-track notifiers iff there are external users
ec3a18744340 KVM: x86/mmu: Drop infrastructure for multiple page-track modes
1464bd80f0c0 KVM: x86/mmu: Rename page-track APIs to reflect the new reality
ccd34fefb1d2 KVM: x86/mmu: Assert that correct locks are held for page write-tracking
3601016aae9f KVM: x86/mmu: Bug the VM if write-tracking is used but not enabled
730b76683f02 KVM: x86/mmu: Drop @slot param from exported/external page-track APIs
7fcd298749ba KVM: x86/mmu: Handle KVM bookkeeping in page-track APIs, not callers
c1cebe248055 drm/i915/gvt: Drop final dependencies on KVM internal details


