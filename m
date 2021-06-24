Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01D093B3393
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Jun 2021 18:07:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A57B6EC49;
	Thu, 24 Jun 2021 16:07:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0CAE66EC49;
 Thu, 24 Jun 2021 16:07:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 069C0AA0ED;
 Thu, 24 Jun 2021 16:07:31 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nicholas Piggin" <npiggin@gmail.com>
Date: Thu, 24 Jun 2021 16:07:31 -0000
Message-ID: <162455085102.1853.13788626720820759746@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210624035749.4054934-1-stevensd@google.com>
In-Reply-To: <20210624035749.4054934-1-stevensd@google.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBL?=
 =?utf-8?q?VM=3A_Remove_uses_of_struct_page_from_x86_and_arm64_MMU_=28rev3?=
 =?utf-8?q?=29?=
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

Series: KVM: Remove uses of struct page from x86 and arm64 MMU (rev3)
URL   : https://patchwork.freedesktop.org/series/91836/
State : failure

== Summary ==

Applying: KVM: Remove uses of struct page from x86 and arm64 MMU
Applying: KVM: mmu: also return page from gfn_to_pfn
Using index info to reconstruct a base tree...
M	arch/powerpc/kvm/book3s_64_mmu_hv.c
M	arch/x86/kvm/mmu/mmu_audit.c
M	arch/x86/kvm/x86.c
M	drivers/gpu/drm/i915/gvt/kvmgt.c
M	virt/kvm/kvm_main.c
Falling back to patching base and 3-way merge...
Auto-merging virt/kvm/kvm_main.c
CONFLICT (content): Merge conflict in virt/kvm/kvm_main.c
Auto-merging drivers/gpu/drm/i915/gvt/kvmgt.c
Auto-merging arch/x86/kvm/x86.c
Auto-merging arch/x86/kvm/mmu/mmu_audit.c
Auto-merging arch/powerpc/kvm/book3s_64_mmu_hv.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0002 KVM: mmu: also return page from gfn_to_pfn
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
