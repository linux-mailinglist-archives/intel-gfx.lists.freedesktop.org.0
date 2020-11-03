Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 675EA2A46A3
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Nov 2020 14:33:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD7C86ECA3;
	Tue,  3 Nov 2020 13:33:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B5B926ECA2;
 Tue,  3 Nov 2020 13:33:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A52FEA363D;
 Tue,  3 Nov 2020 13:33:43 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Thomas Gleixner" <tglx@linutronix.de>
Date: Tue, 03 Nov 2020 13:33:43 -0000
Message-ID: <160441042367.25740.14174383146735245074@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201103092712.714480842@linutronix.de>
In-Reply-To: <20201103092712.714480842@linutronix.de>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBt?=
 =?utf-8?q?m/highmem=3A_Preemptible_variant_of_kmap=5Fatomic_=26_friends?=
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

Series: mm/highmem: Preemptible variant of kmap_atomic & friends
URL   : https://patchwork.freedesktop.org/series/83421/
State : failure

== Summary ==

Applying: mm/highmem: Un-EXPORT __kmap_atomic_idx()
Applying: highmem: Remove unused functions
Applying: fs: Remove asm/kmap_types.h includes
Applying: sh/highmem: Remove all traces of unused cruft
Applying: asm-generic: Provide kmap_size.h
Applying: highmem: Provide generic variant of kmap_atomic*
Applying: highmem: Make DEBUG_HIGHMEM functional
Applying: x86/mm/highmem: Use generic kmap atomic implementation
Applying: arc/mm/highmem: Use generic kmap atomic implementation
Applying: ARM: highmem: Switch to generic kmap atomic
Applying: csky/mm/highmem: Switch to generic kmap atomic
Applying: microblaze/mm/highmem: Switch to generic kmap atomic
Applying: mips/mm/highmem: Switch to generic kmap atomic
Applying: nds32/mm/highmem: Switch to generic kmap atomic
Applying: powerpc/mm/highmem: Switch to generic kmap atomic
Applying: sparc/mm/highmem: Switch to generic kmap atomic
Applying: xtensa/mm/highmem: Switch to generic kmap atomic
Applying: highmem: Get rid of kmap_types.h
Applying: mm/highmem: Remove the old kmap_atomic cruft
Applying: io-mapping: Cleanup atomic iomap
Applying: Documentation/io-mapping: Remove outdated blurb
Applying: highmem: High implementation details and document API
Applying: sched: Make migrate_disable/enable() independent of RT
error: sha1 information is lacking or useless (include/linux/kernel.h).
error: could not build fake ancestor
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0023 sched: Make migrate_disable/enable() independent of RT
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
