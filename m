Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 107B276C130
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Aug 2023 01:45:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 671CF10E463;
	Tue,  1 Aug 2023 23:44:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5EB5310E44E;
 Tue,  1 Aug 2023 23:44:58 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5669AA00CC;
 Tue,  1 Aug 2023 23:44:58 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Sean Christopherson" <seanjc@google.com>
Date: Tue, 01 Aug 2023 23:44:58 -0000
Message-ID: <169093349831.10129.16054222238184906964@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230729013535.1070024-1-seanjc@google.com>
In-Reply-To: <20230729013535.1070024-1-seanjc@google.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/gvt=3A_KVM=3A_KVMGT_fixes_and_page-track_cleanups_?=
 =?utf-8?q?=28rev10=29?=
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

Series: drm/i915/gvt: KVM: KVMGT fixes and page-track cleanups (rev10)
URL   : https://patchwork.freedesktop.org/series/112196/
State : warning

== Summary ==

Error: dim checkpatch failed
3f274ee4efc5 drm/i915/gvt: Verify pfn is "valid" before dereferencing "struct page"
204961391f80 drm/i915/gvt: remove interface intel_gvt_is_valid_gfn
9b79cc6b16e4 drm/i915/gvt: Verify hugepages are contiguous in physical address space
efb7e6218651 drm/i915/gvt: Don't try to unpin an empty page range
70f9f6763a23 drm/i915/gvt: Put the page reference obtained by KVM's gfn_to_pfn()
cdbd03288072 drm/i915/gvt: Explicitly check that vGPU is attached before shadowing
-:46: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#46: 
                     |            |-> ppgtt_populate_spt_by_guest_entry() [see 2]

total: 0 errors, 1 warnings, 0 checks, 17 lines checked
c0a12a92c3a7 drm/i915/gvt: Error out on an attempt to shadowing an unknown GTT entry type
b8830e78ba36 drm/i915/gvt: Don't rely on KVM's gfn_to_pfn() to query possible 2M GTT
f82965a42d0a drm/i915/gvt: Use an "unsigned long" to iterate over memslot gfns
b66a5ae47176 drm/i915/gvt: Drop unused helper intel_vgpu_reset_gtt()
fd8665625adb drm/i915/gvt: Protect gfn hash table with vgpu_lock
cc87c67f04f4 KVM: x86/mmu: Move kvm_arch_flush_shadow_{all, memslot}() to mmu.c
1d93bfa666a9 KVM: x86/mmu: Don't rely on page-track mechanism to flush on memslot change
e89606abfd49 KVM: x86/mmu: Don't bounce through page-track mechanism for guest PTEs
aba0260f7ad5 KVM: drm/i915/gvt: Drop @vcpu from KVM's ->track_write() hook
7ee514b3d18c KVM: x86: Reject memslot MOVE operations if KVMGT is attached
55ccf8210bf2 drm/i915/gvt: Don't bother removing write-protection on to-be-deleted slot
210cadc8582a KVM: x86: Add a new page-track hook to handle memslot deletion
d9dd5a08a6e2 drm/i915/gvt: switch from ->track_flush_slot() to ->track_remove_region()
258947b76b42 KVM: x86: Remove the unused page-track hook track_flush_slot()
bc85ee37acf2 KVM: x86/mmu: Move KVM-only page-track declarations to internal header
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:115: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#115: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 113 lines checked
9853d9695d66 KVM: x86/mmu: Use page-track notifiers iff there are external users
840e99d4bb9e KVM: x86/mmu: Drop infrastructure for multiple page-track modes
df4e44e1409e KVM: x86/mmu: Rename page-track APIs to reflect the new reality
65865f30c7dc KVM: x86/mmu: Assert that correct locks are held for page write-tracking
ff3fdd7021f9 KVM: x86/mmu: Bug the VM if write-tracking is used but not enabled
0a6ef6a47fb2 KVM: x86/mmu: Drop @slot param from exported/external page-track APIs
80aaa7502ed8 KVM: x86/mmu: Handle KVM bookkeeping in page-track APIs, not callers
73abe211ea4a drm/i915/gvt: Drop final dependencies on KVM internal details


