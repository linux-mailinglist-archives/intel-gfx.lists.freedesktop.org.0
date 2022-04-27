Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B4505123AF
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Apr 2022 22:11:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CA8410E5FA;
	Wed, 27 Apr 2022 20:11:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6269310E5EA;
 Wed, 27 Apr 2022 20:11:09 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5F38BA00FD;
 Wed, 27 Apr 2022 20:11:09 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maxim Levitsky" <mlevitsk@redhat.com>
Date: Wed, 27 Apr 2022 20:11:09 -0000
Message-ID: <165109026936.24233.6156654958521999871@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220427200314.276673-1-mlevitsk@redhat.com>
In-Reply-To: <20220427200314.276673-1-mlevitsk@redhat.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBS?=
 =?utf-8?q?FC=3A_nested_AVIC_=28rev2=29?=
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

Series: RFC: nested AVIC (rev2)
URL   : https://patchwork.freedesktop.org/series/100904/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/100904/revisions/2/mbox/ not applied
Applying: KVM: x86: document AVIC/APICv inhibit reasons
Applying: KVM: x86: inhibit APICv/AVIC when the guest and/or host changes apic id/base from the defaults.
Applying: KVM: x86: SVM: remove avic's broken code that updated APIC ID
Applying: KVM: x86: mmu: allow to enable write tracking externally
Applying: x86: KVMGT: use kvm_page_track_write_tracking_enable
Applying: KVM: x86: mmu: add gfn_in_memslot helper
Applying: KVM: x86: mmu: tweak fast path for emulation of access to nested NPT pages
error: sha1 information is lacking or useless (arch/x86/kvm/mmu/mmu.c).
error: could not build fake ancestor
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0007 KVM: x86: mmu: tweak fast path for emulation of access to nested NPT pages
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


