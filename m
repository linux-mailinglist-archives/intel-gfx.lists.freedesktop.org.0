Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF6684746FB
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Dec 2021 16:58:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D1C910E57C;
	Tue, 14 Dec 2021 15:58:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 625C610E57A;
 Tue, 14 Dec 2021 15:58:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5A5FBA9A42;
 Tue, 14 Dec 2021 15:58:45 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Sebastian Andrzej Siewior" <bigeasy@linutronix.de>
Date: Tue, 14 Dec 2021 15:58:45 -0000
Message-ID: <163949752535.24608.15755860466354123203@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211214140301.520464-1-bigeasy@linutronix.de>
In-Reply-To: <20211214140301.520464-1-bigeasy@linutronix.de>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915=3A_PREEMPT=5FRT_related_fixups=2E_=28rev4=29?=
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

Series: drm/i915: PREEMPT_RT related fixups. (rev4)
URL   : https://patchwork.freedesktop.org/series/95463/
State : failure

== Summary ==

Applying: drm/i915: Drop the irqs_disabled() check
Applying: drm/i915/gt: Queue and wait for the irq_work item.
Applying: drm/i915/gt: Use spin_lock_irq() instead of local_irq_disable() + spin_lock()
Applying: drm/i915: Use preempt_disable/enable_rt() where recommended
Applying: drm/i915: Don't disable interrupts on PREEMPT_RT during atomic updates
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/display/intel_crtc.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/display/intel_crtc.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/display/intel_crtc.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0005 drm/i915: Don't disable interrupts on PREEMPT_RT during atomic updates
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


