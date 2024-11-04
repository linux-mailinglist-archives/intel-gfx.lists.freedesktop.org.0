Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 768F09BB1CF
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Nov 2024 11:56:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2208A10E3CE;
	Mon,  4 Nov 2024 10:56:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C36E310E3CC;
 Mon,  4 Nov 2024 10:56:20 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_hrtimers=3A_Consolidate_h?=
 =?utf-8?q?rtimer_initialization_-_Part_1_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nam Cao" <namcao@linutronix.de>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 04 Nov 2024 10:56:20 -0000
Message-ID: <173071778079.1390606.11393976488443533051@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <cover.1730386209.git.namcao@linutronix.de>
In-Reply-To: <cover.1730386209.git.namcao@linutronix.de>
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

Series: hrtimers: Consolidate hrtimer initialization - Part 1 (rev2)
URL   : https://patchwork.freedesktop.org/series/140806/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/140806/revisions/2/mbox/ not applied
Applying: hrtimers: Add missing hrtimer_init() trace points
Applying: drm/i915/request: Remove unnecessary modification of hrtimer::function
Applying: KVM: x86/xen: Initialize hrtimer in kvm_xen_init_vcpu()
Applying: wifi: rt2x00: Remove redundant hrtimer_init()
Applying: io_uring: Remove redundant hrtimer's callback function setup
Applying: hrtimers: Introduce hrtimer_setup() to replace hrtimer_init()
Applying: hrtimers: Introduce hrtimer_setup_on_stack()
Applying: hrtimers: Introduce hrtimer_setup_sleeper_on_stack()
Applying: hrtimers: Introduce hrtimer_update_function()
Applying: fs/aio: Switch to use hrtimer_setup_sleeper_on_stack()
Applying: futex: Switch to use hrtimer_setup_sleeper_on_stack()
Applying: net: pktgen: Switch to use hrtimer_setup_sleeper_on_stack()
Applying: timers: Switch to use hrtimer_setup_sleeper_on_stack()
error: sha1 information is lacking or useless (kernel/time/hrtimer.c).
error: could not build fake ancestor
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0013 timers: Switch to use hrtimer_setup_sleeper_on_stack()
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
Build failed, no error log produced


