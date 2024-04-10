Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A39ED89F0FA
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Apr 2024 13:35:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8F3E1132E1;
	Wed, 10 Apr 2024 11:35:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE0871132DE;
 Wed, 10 Apr 2024 11:35:45 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_PREEMPT?=
 =?utf-8?q?=5FRT_related_fixups=2E_=28rev6=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Sebastian Andrzej Siewior" <bigeasy@linutronix.de>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 10 Apr 2024 11:35:45 -0000
Message-ID: <171274894577.1320523.7361213747949344079@8e613ede5ea5>
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

Series: drm/i915: PREEMPT_RT related fixups. (rev6)
URL   : https://patchwork.freedesktop.org/series/95463/
State : warning

== Summary ==

Error: dim checkpatch failed
dc8b0da9b41f drm/i915: Use preempt_disable/enable_rt() where recommended
-:7: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#7: 
  ad3543ede630f ("drm/intel: Push get_scanout_position() timestamping into kms driver.")

total: 0 errors, 1 warnings, 0 checks, 67 lines checked
f7987c78a782 drm/i915: Don't disable interrupts on PREEMPT_RT during atomic updates
-:10: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#10: 
started disabling interrupts across atomic updates. This breaks on PREEMPT_RT

total: 0 errors, 1 warnings, 0 checks, 42 lines checked
e3de3bbb87c3 drm/i915: Don't check for atomic context on PREEMPT_RT
a35be9b73b2d drm/i915: Disable tracing points on PREEMPT_RT
-:26: WARNING:BAD_REPORTED_BY_LINK: Reported-by: should be immediately followed by Closes: with a URL to the report
#26: 
Reported-by: Luca Abeni <lucabe72@gmail.com>
Cc: Steven Rostedt <rostedt@goodmis.org>

total: 0 errors, 1 warnings, 0 checks, 10 lines checked
a85ea229acc5 drm/i915: skip DRM_I915_LOW_LEVEL_TRACEPOINTS with NOTRACE
-:50: WARNING:BAD_REPORTED_BY_LINK: Reported-by: should be immediately followed by Closes: with a URL to the report
#50: 
Reported-by: Luca Abeni <lucabe72@gmail.com>
Cc: Steven Rostedt <rostedt@goodmis.org>

total: 0 errors, 1 warnings, 0 checks, 10 lines checked
914123128c24 drm/i915/gt: Queue and wait for the irq_work item.
-:21: WARNING:BAD_REPORTED_BY_LINK: Reported-by: should be immediately followed by Closes: with a URL to the report
#21: 
Reported-by: Clark Williams <williams@redhat.com>
Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>

total: 0 errors, 1 warnings, 0 checks, 12 lines checked
6598e734e1e2 drm/i915/gt: Use spin_lock_irq() instead of local_irq_disable() + spin_lock()
-:22: WARNING:BAD_REPORTED_BY_LINK: Reported-by: should be immediately followed by Closes: with a URL to the report
#22: 
Reported-by: Clark Williams <williams@redhat.com>
Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>

total: 0 errors, 1 warnings, 0 checks, 53 lines checked
f42e9733b3e2 drm/i915: Drop the irqs_disabled() check
-:16: WARNING:BAD_REPORTED_BY_LINK: Reported-by: should be immediately followed by Closes: with a URL to the report
#16: 
Reported-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>

total: 0 errors, 1 warnings, 0 checks, 14 lines checked
6b5ccade3214 drm/i915/guc: Consider also RCU depth in busy loop.
-:13: WARNING:BAD_REPORTED_BY_LINK: Reported-by: should be immediately followed by Closes: with a URL to the report
#13: 
Reported-by: "John B. Wyatt IV" <jwyatt@redhat.com>
Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>

-:25: ERROR:IN_ATOMIC: do not use in_atomic in drivers
#25: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc.h:365:
+	bool not_atomic = !in_atomic() && !irqs_disabled() && !rcu_preempt_depth();

total: 1 errors, 1 warnings, 0 checks, 8 lines checked
c487f9c8374c Revert "drm/i915: Depend on !PREEMPT_RT."


