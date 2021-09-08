Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DB38403FCD
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Sep 2021 21:25:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11EBD6E2C8;
	Wed,  8 Sep 2021 19:25:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B4CBB6E29D;
 Wed,  8 Sep 2021 19:25:02 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9C377A7E03;
 Wed,  8 Sep 2021 19:25:02 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Sebastian Andrzej Siewior" <bigeasy@linutronix.de>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 08 Sep 2021 19:25:02 -0000
Message-ID: <163112910260.22225.10291371647557644147@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210908185703.2989414-1-bigeasy@linutronix.de>
In-Reply-To: <20210908185703.2989414-1-bigeasy@linutronix.de>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915/gt=3A_Locking_splats_PREEMPT=5FRT?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915/gt: Locking splats PREEMPT_RT
URL   : https://patchwork.freedesktop.org/series/94480/
State : failure

== Summary ==

Applying: drm/i915/gt: Queue and wait for the irq_work item.
Applying: drm/i915/gt: Use spin_lock_irq() instead of local_irq_disable() + spin_lock()
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/gt/intel_execlists_submission.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/gt/intel_execlists_submission.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/gt/intel_execlists_submission.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0002 drm/i915/gt: Use spin_lock_irq() instead of local_irq_disable() + spin_lock()
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


