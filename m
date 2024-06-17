Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C1CA890B17B
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Jun 2024 16:19:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E98010E3EA;
	Mon, 17 Jun 2024 14:19:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a6498e030952 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CFF7010E3E3;
 Mon, 17 Jun 2024 14:19:54 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_PREEMPT?=
 =?utf-8?q?=5FRT_related_fixups=2E_=28rev10=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Sebastian Andrzej Siewior" <bigeasy@linutronix.de>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 17 Jun 2024 14:19:54 -0000
Message-ID: <171863399485.96445.8051172347229819711@a6498e030952>
X-Patchwork-Hint: ignore
References: <20240613102818.4056866-1-bigeasy@linutronix.de>
In-Reply-To: <20240613102818.4056866-1-bigeasy@linutronix.de>
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

Series: drm/i915: PREEMPT_RT related fixups. (rev10)
URL   : https://patchwork.freedesktop.org/series/95463/
State : warning

== Summary ==

Error: dim checkpatch failed
1d7b86cf3890 drm/i915: Use preempt_disable/enable_rt() where recommended
-:7: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#7: 
  ad3543ede630f ("drm/intel: Push get_scanout_position() timestamping into kms driver.")

total: 0 errors, 1 warnings, 0 checks, 67 lines checked
8a19314f8a31 drm/i915: Don't disable interrupts on PREEMPT_RT during atomic updates
-:10: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#10: 
started disabling interrupts across atomic updates. This breaks on PREEMPT_RT

total: 0 errors, 1 warnings, 0 checks, 42 lines checked
0967a9663ccf drm/i915: Don't check for atomic context on PREEMPT_RT
-:10: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#10: 
> > If so would cant_migrate() work? It requires CONFIG_DEBUG_ATOMIC_SLEEP=y

total: 0 errors, 1 warnings, 0 checks, 15 lines checked
3c9b4da4e61e drm/i915: Disable tracing points on PREEMPT_RT
-:26: WARNING:BAD_REPORTED_BY_LINK: Reported-by: should be immediately followed by Closes: with a URL to the report
#26: 
Reported-by: Luca Abeni <lucabe72@gmail.com>
Cc: Steven Rostedt <rostedt@goodmis.org>

total: 0 errors, 1 warnings, 0 checks, 20 lines checked
8d7d90f93301 drm/i915/gt: Use spin_lock_irq() instead of local_irq_disable() + spin_lock()
-:22: WARNING:BAD_REPORTED_BY_LINK: Reported-by: should be immediately followed by Closes: with a URL to the report
#22: 
Reported-by: Clark Williams <williams@redhat.com>
Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>

total: 0 errors, 1 warnings, 0 checks, 53 lines checked
c2e7416e25e2 drm/i915: Drop the irqs_disabled() check
-:16: WARNING:BAD_REPORTED_BY_LINK: Reported-by: should be immediately followed by Closes: with a URL to the report
#16: 
Reported-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>

total: 0 errors, 1 warnings, 0 checks, 14 lines checked
f9feb0fe7fc9 drm/i915/guc: Consider also RCU depth in busy loop.
-:13: WARNING:BAD_REPORTED_BY_LINK: Reported-by: should be immediately followed by Closes: with a URL to the report
#13: 
Reported-by: "John B. Wyatt IV" <jwyatt@redhat.com>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

-:26: ERROR:IN_ATOMIC: do not use in_atomic in drivers
#26: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc.h:365:
+	bool not_atomic = !in_atomic() && !irqs_disabled() && !rcu_preempt_depth();

total: 1 errors, 1 warnings, 0 checks, 8 lines checked
1e0163c23b20 Revert "drm/i915: Depend on !PREEMPT_RT."


