Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B45D92D692E
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Dec 2020 21:54:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24ADD6EB53;
	Thu, 10 Dec 2020 20:54:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id AE6256EB52;
 Thu, 10 Dec 2020 20:53:58 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 637C6A0009;
 Thu, 10 Dec 2020 20:53:58 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Thomas Gleixner" <tglx@linutronix.de>
Date: Thu, 10 Dec 2020 20:53:58 -0000
Message-ID: <160763363840.19120.9495714021812737768@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201210192536.118432146@linutronix.de>
In-Reply-To: <20201210192536.118432146@linutronix.de>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBn?=
 =?utf-8?q?enirq=3A_Treewide_hunt_for_irq_descriptor_abuse_and_assorted_fi?=
 =?utf-8?q?xes?=
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

Series: genirq: Treewide hunt for irq descriptor abuse and assorted fixes
URL   : https://patchwork.freedesktop.org/series/84805/
State : failure

== Summary ==

Applying: genirq: Move irq_has_action() into core code
Applying: genirq: Move status flag checks to core
Applying: genirq: Move irq_set_lockdep_class() to core
Applying: genirq: Provide irq_get_effective_affinity()
Applying: genirq: Annotate irq stats data races
Applying: parisc/irq: Simplify irq count output for /proc/interrupts
Applying: genirq: Make kstat_irqs() static
Applying: genirq: Provide kstat_irqdesc_cpu()
Applying: ARM: smp: Use irq_desc_kstat_cpu() in show_ipi_list()
Applying: arm64/smp: Use irq_desc_kstat_cpu() in arch_show_interrupts()
Applying: parisc/irq: Use irq_desc_kstat_cpu() in show_interrupts()
Applying: s390/irq: Use irq_desc_kstat_cpu() in show_msi_interrupt()
Applying: drm/i915/lpe_audio: Remove pointless irq_to_desc() usage
Applying: drm/i915/pmu: Replace open coded kstat_irqs() copy
error: sha1 information is lacking or useless (drivers/gpu/drm/i915/i915_irq.c).
error: could not build fake ancestor
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0014 drm/i915/pmu: Replace open coded kstat_irqs() copy
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
