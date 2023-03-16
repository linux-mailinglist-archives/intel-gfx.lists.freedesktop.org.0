Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EE97A6BCF62
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Mar 2023 13:27:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FBAB10E0B0;
	Thu, 16 Mar 2023 12:27:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8898210ECE0;
 Thu, 16 Mar 2023 12:27:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7C259A0169;
 Thu, 16 Mar 2023 12:27:43 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Yan Zhao" <yan.y.zhao@intel.com>
Date: Thu, 16 Mar 2023 12:27:43 -0000
Message-ID: <167896966346.19095.4966929792564221143@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230311002258.852397-1-seanjc@google.com>
In-Reply-To: <20230311002258.852397-1-seanjc@google.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/gvt=3A_KVM=3A_KVMGT_fixes_and_page-track_cleanups_?=
 =?utf-8?b?KHJldjUp?=
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

Series: drm/i915/gvt: KVM: KVMGT fixes and page-track cleanups (rev5)
URL   : https://patchwork.freedesktop.org/series/112196/
State : warning

== Summary ==

Error: dim checkpatch failed
25a3d4a31296 drm/i915/gvt: Verify pfn is "valid" before dereferencing "struct page"
7616ee93a101 KVM: x86/mmu: Factor out helper to get max mapping size of a memslot
fcb516cf24af drm/i915/gvt: remove interface intel_gvt_is_valid_gfn
4e9589b9266b drm/i915/gvt: Incorporate KVM memslot info into check for 2MiB GTT entry
7e1387732ec3 drm/i915/gvt: Verify VFIO-pinned page is THP when shadowing 2M gtt entry
8b245ebb321a drm/i915/gvt: Put the page reference obtained by KVM's gfn_to_pfn()
fd92a12e9d0c drm/i915/gvt: Don't rely on KVM's gfn_to_pfn() to query possible 2M GTT
-:37: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#37: FILE: drivers/gpu/drm/i915/gvt/gtt.c:1157:
+static int try_map_2MB_gtt_entry(struct intel_vgpu *vgpu,
+	struct intel_gvt_gtt_entry *entry, dma_addr_t *dma_addr)

total: 0 errors, 0 warnings, 1 checks, 78 lines checked
d33f165a76b9 drm/i915/gvt: Use an "unsigned long" to iterate over memslot gfns
2f00c4873260 drm/i915/gvt: Drop unused helper intel_vgpu_reset_gtt()
524b8ca6b867 drm/i915/gvt: Protect gfn hash table with vgpu_lock
da08c5987ad9 KVM: x86/mmu: Don't rely on page-track mechanism to flush on memslot change
7395b953521e KVM: x86/mmu: Don't bounce through page-track mechanism for guest PTEs
e0945379e27a KVM: drm/i915/gvt: Drop @vcpu from KVM's ->track_write() hook
ac3d05c84e2f KVM: x86: Reject memslot MOVE operations if KVMGT is attached
b7d633d0df47 drm/i915/gvt: Don't bother removing write-protection on to-be-deleted slot
641942aa6bc1 KVM: x86: Add a new page-track hook to handle memslot deletion
-:84: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#84: FILE: arch/x86/kvm/mmu/page_track.c:324:
+	hlist_for_each_entry_srcu(n, &head->track_notifier_list, node,
+				srcu_read_lock_held(&head->track_srcu))

total: 0 errors, 0 warnings, 1 checks, 62 lines checked
813496703fa8 drm/i915/gvt: switch from ->track_flush_slot() to ->track_remove_region()
9747b5c46647 KVM: x86: Remove the unused page-track hook track_flush_slot()
22cac1f2fb48 KVM: x86/mmu: Move KVM-only page-track declarations to internal header
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:119: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#119: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 118 lines checked
900cdc374edb KVM: x86/mmu: Use page-track notifiers iff there are external users
edc7b922b08c KVM: x86/mmu: Drop infrastructure for multiple page-track modes
8e372f22d215 KVM: x86/mmu: Rename page-track APIs to reflect the new reality
722952f3cee5 KVM: x86/mmu: Assert that correct locks are held for page write-tracking
0ccb4868c921 KVM: x86/mmu: Bug the VM if write-tracking is used but not enabled
e4fbe25725a8 KVM: x86/mmu: Drop @slot param from exported/external page-track APIs
a000d410d307 KVM: x86/mmu: Handle KVM bookkeeping in page-track APIs, not callers
d5ce069cc421 drm/i915/gvt: Drop final dependencies on KVM internal details


