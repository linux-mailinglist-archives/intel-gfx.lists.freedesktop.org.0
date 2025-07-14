Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 89D65B0442F
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Jul 2025 17:40:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64BF210E4C1;
	Mon, 14 Jul 2025 15:40:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; secure) header.d=linutronix.de header.i=@linutronix.de header.b="lyF2B0MJ";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="R5osGZNe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EDD4B10E4C1;
 Mon, 14 Jul 2025 15:40:02 +0000 (UTC)
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1752507599;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=ACde3DC9RtOmVpUItsECGEFOlkwvGci94MLUwoYm2PQ=;
 b=lyF2B0MJaAMwKnXpb9+M9vSaNzDWXARX9E1lED3NnyhPsfF5rINwG6D/GQ4+VEvtypKFjN
 8td869tEt9lX01K/+P3ot75c6E/qyHT9HYrRjEGwq/pzOfHAJMRnNJp6oCjpF/fmvw4wR8
 vfcosocTTHIbQ5R7If0Z6zIluSsorNcM5AKF9+QpQViCBZwOZucv4CBiwf+31lMxmSUPjs
 QRZW2wJXW6EBToPKh1+WFcNjYtj+8xDtrOiV63Nkosk4rSjvzoL29Ewnp5iI7Ez31a9BWy
 R7Ir5o9sXh/TkWrGmvXGO1EkoxLzyuelbphFhZujf4A7mnTM3QkSIx19Zgp8OQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1752507599;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=ACde3DC9RtOmVpUItsECGEFOlkwvGci94MLUwoYm2PQ=;
 b=R5osGZNeE9E5z/BGPpuYc20UEQ5BJlWkwzc/ANkKEQFd+w1AHPPCdfMRueQHKWaUUXfkK9
 0mdwt1MenV6dh/Cw==
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 Scott Oehrlein <scott.oehrlein@intel.com>,
 Ben Hutchings <ben@decadent.org.uk>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Subject: [PATCH v4 0/9] drm/i915: PREEMPT_RT related fixups.
Date: Mon, 14 Jul 2025 17:39:45 +0200
Message-ID: <20250714153954.629393-1-bigeasy@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The following patches are from the PREEMPT_RT queue. They are used by
people using the real-time preemption model and a i915 compatible GPU
card.
Patches 1+2 keep preemption and interrupts enabled within vblank
handling. I don't see another way of handling it given the constrains.
Patch #4 disables i915's tracepoints because they acquire sleeping locks
within the assign callback with is invoked with disabled preemption.=20

The remaining patches mostly deal with the API & syntax such as not
test for disabled interrupts but rather use lockdep (#6) or how to
identify atomic context which also causes no errors on PREEMPT_RT (#3,
#6, #7). Patch #5 uses proper spinlock API to disable interrupt instead
of using local_irq_disable() for it.

Some of the patches already received already Acked-by/ Reviewed-by.
Could we please apply some of the series and then discuss the
controversial ones which are not doable?

History:
v3=E2=80=A6v4 https://lore.kernel.org/all/20240628130601.1772849-1-bigeasy@=
linutronix.de/
  - Added patch 8.

v2=E2=80=A6v3 https://lore.kernel.org/all/20240613102818.4056866-1-bigeasy@=
linutronix.de/
  - Collected tags.
  - Added comment to 3/8 explaining why RT is excluded from the test.
=20=20
v1=E2=80=A6v2:
  - The tracing disable bits (4/8) have been reworked after Steven pointed =
out
    that something isn't right.
  - The irq_work() bits have been dropped because they are no longer
    needed.


Mike Galbraith (2):
  drm/i915: Use preempt_disable/enable_rt() where recommended
  drm/i915: Don't disable interrupts on PREEMPT_RT during atomic updates

Sebastian Andrzej Siewior (7):
  drm/i915: Don't check for atomic context on PREEMPT_RT
  drm/i915: Disable tracing points on PREEMPT_RT
  drm/i915/gt: Use spin_lock_irq() instead of local_irq_disable() +
    spin_lock()
  drm/i915: Drop the irqs_disabled() check
  drm/i915/guc: Consider also RCU depth in busy loop.
  drm/i915: Consider RCU read section as atomic.
  Revert "drm/i915: Depend on !PREEMPT_RT."

 drivers/gpu/drm/i915/Kconfig                  |  1 -
 drivers/gpu/drm/i915/display/intel_crtc.c     |  9 ++--
 drivers/gpu/drm/i915/display/intel_cursor.c   |  9 ++--
 .../drm/i915/display/intel_display_trace.h    |  4 ++
 drivers/gpu/drm/i915/display/intel_vblank.c   | 49 ++++++++++++++-----
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  2 +-
 .../drm/i915/gt/intel_execlists_submission.c  | 17 ++-----
 drivers/gpu/drm/i915/gt/uc/intel_guc.h        |  2 +-
 drivers/gpu/drm/i915/i915_request.c           |  2 -
 drivers/gpu/drm/i915/i915_trace.h             |  4 ++
 drivers/gpu/drm/i915/i915_utils.h             |  9 +++-
 drivers/gpu/drm/i915/intel_uncore_trace.h     |  4 ++
 12 files changed, 75 insertions(+), 37 deletions(-)

Sebastian
