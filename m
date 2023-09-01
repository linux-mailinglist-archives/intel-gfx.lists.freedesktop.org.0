Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EDF8A78F6AA
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Sep 2023 03:26:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34B9D10E11E;
	Fri,  1 Sep 2023 01:26:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3C95D10E70C;
 Fri,  1 Sep 2023 01:26:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 25B64AADDA;
 Fri,  1 Sep 2023 01:26:34 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Like Xu" <like.xu.linux@gmail.com>
Date: Fri, 01 Sep 2023 01:26:34 -0000
Message-ID: <169353159415.9816.935508637201343357@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230729013535.1070024-1-seanjc@google.com>
In-Reply-To: <20230729013535.1070024-1-seanjc@google.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915/gvt=3A_KVM=3A_KVMGT_fixes_and_page-track_cleanups_=28re?=
 =?utf-8?q?v11=29?=
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

Series: drm/i915/gvt: KVM: KVMGT fixes and page-track cleanups (rev11)
URL   : https://patchwork.freedesktop.org/series/112196/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/112196/revisions/11/mbox/ not applied
Applying: drm/i915/gvt: Verify pfn is "valid" before dereferencing "struct page"
Applying: drm/i915/gvt: remove interface intel_gvt_is_valid_gfn
Applying: drm/i915/gvt: Verify hugepages are contiguous in physical address space
Applying: drm/i915/gvt: Don't try to unpin an empty page range
Applying: drm/i915/gvt: Put the page reference obtained by KVM's gfn_to_pfn()
Applying: drm/i915/gvt: Explicitly check that vGPU is attached before shadowing
Applying: drm/i915/gvt: Error out on an attempt to shadowing an unknown GTT entry type
Applying: drm/i915/gvt: Don't rely on KVM's gfn_to_pfn() to query possible 2M GTT
Applying: drm/i915/gvt: Use an "unsigned long" to iterate over memslot gfns
Applying: drm/i915/gvt: Drop unused helper intel_vgpu_reset_gtt()
Applying: drm/i915/gvt: Protect gfn hash table with vgpu_lock
Applying: KVM: x86/mmu: Move kvm_arch_flush_shadow_{all, memslot}() to mmu.c
Applying: KVM: x86/mmu: Don't rely on page-track mechanism to flush on memslot change
Applying: KVM: x86/mmu: Don't bounce through page-track mechanism for guest PTEs
Applying: KVM: drm/i915/gvt: Drop @vcpu from KVM's ->track_write() hook
Applying: KVM: x86: Reject memslot MOVE operations if KVMGT is attached
error: corrupt patch at line 6
error: could not build fake ancestor
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0016 KVM: x86: Reject memslot MOVE operations if KVMGT is attached
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
Build failed, no error log produced


