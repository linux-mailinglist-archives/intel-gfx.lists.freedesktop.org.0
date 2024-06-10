Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09CCE9022BE
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jun 2024 15:36:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76B0210E46B;
	Mon, 10 Jun 2024 13:36:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a6498e030952 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31E2F10E45E;
 Mon, 10 Jun 2024 13:36:33 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_drm/i915=3A_PREEMPT=5FRT_?=
 =?utf-8?q?related_fixups=2E_=28rev7=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Sebastian Andrzej Siewior" <bigeasy@linutronix.de>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 10 Jun 2024 13:36:33 -0000
Message-ID: <171802659320.31735.1878645373640445813@a6498e030952>
X-Patchwork-Hint: ignore
References: <20240405142737.920626-1-bigeasy@linutronix.de>
In-Reply-To: <20240405142737.920626-1-bigeasy@linutronix.de>
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

Series: drm/i915: PREEMPT_RT related fixups. (rev7)
URL   : https://patchwork.freedesktop.org/series/95463/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/95463/revisions/7/mbox/ not applied
Applying: drm/i915: Use preempt_disable/enable_rt() where recommended
Applying: drm/i915: Don't disable interrupts on PREEMPT_RT during atomic updates
Applying: drm/i915: Don't check for atomic context on PREEMPT_RT
Applying: drm/i915: Disable tracing points on PREEMPT_RT
Applying: drm/i915: skip DRM_I915_LOW_LEVEL_TRACEPOINTS with NOTRACE
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/display/intel_display_trace.h
M	drivers/gpu/drm/i915/i915_trace.h
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/display/intel_display_trace.h
Applying: drm/i915/gt: Queue and wait for the irq_work item.
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0006 drm/i915/gt: Queue and wait for the irq_work item.
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
Build failed, no error log produced


