Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 191CC26987A
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Sep 2020 00:01:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2451C6E7D0;
	Mon, 14 Sep 2020 22:01:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8DAA26E5D5;
 Mon, 14 Sep 2020 22:01:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 864E8A66C9;
 Mon, 14 Sep 2020 22:01:19 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Thomas Gleixner" <tglx@linutronix.de>
Date: Mon, 14 Sep 2020 22:01:19 -0000
Message-ID: <160012087951.5912.8419266271155927746@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200914204209.256266093@linutronix.de>
In-Reply-To: <20200914204209.256266093@linutronix.de>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBw?=
 =?utf-8?q?reempt=3A_Make_preempt_count_unconditional?=
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

Series: preempt: Make preempt count unconditional
URL   : https://patchwork.freedesktop.org/series/81661/
State : failure

== Summary ==

Applying: lib/debug: Remove pointless ARCH_NO_PREEMPT dependencies
Applying: preempt: Make preempt count unconditional
Applying: preempt: Clenaup PREEMPT_COUNT leftovers
Applying: lockdep: Clenaup PREEMPT_COUNT leftovers
Applying: mm/pagemap: Clenaup PREEMPT_COUNT leftovers
Applying: locking/bitspinlock: Clenaup PREEMPT_COUNT leftovers
Applying: uaccess: Clenaup PREEMPT_COUNT leftovers
Applying: sched: Clenaup PREEMPT_COUNT leftovers
Applying: ARM: Clenaup PREEMPT_COUNT leftovers
Applying: xtensa: Clenaup PREEMPT_COUNT leftovers
Applying: drm/i915: Clenaup PREEMPT_COUNT leftovers
error: sha1 information is lacking or useless (drivers/gpu/drm/i915/Kconfig.debug).
error: could not build fake ancestor
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0011 drm/i915: Clenaup PREEMPT_COUNT leftovers
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
