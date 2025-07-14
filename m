Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 68F3DB04430
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Jul 2025 17:40:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA7A210E4BA;
	Mon, 14 Jul 2025 15:40:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; secure) header.d=linutronix.de header.i=@linutronix.de header.b="dQ/eYo2Z";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="fJnEGeia";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF5BA10E4C4;
 Mon, 14 Jul 2025 15:40:02 +0000 (UTC)
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1752507601;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=qocmuib59L+/Q3PxxJmPJOulfvAdlZE6dwU5H5OHfIc=;
 b=dQ/eYo2ZFQhJAaOer5q3K+V6ID6Q/Kpn7XJtc5Sd7BE+M7rnXJ8h5eAa+dNM0UnGDeJXJc
 FQLwDGYfRHii42zWuxIaSnPYmLxpC3CTwsQuq2I5OItl9bywn0Pan3cnboVnTy4FLIQilH
 bQvAyMEVnaqOGLa3V+wGurH2j+umEZ5HTYR7otSLHLiZIqysslK5yq24x1282QZ92Y6V+L
 yZYe4ZbFsrW2NschZ1++Q0TGd6yFZoXWZFxNnpeuVKnJawm/zlSHY5uJL5OpVc8G3HDfuj
 TNVWaOC8PhHtSd73nqmVyvlytlhoL5YqqNayp8KZxmpKTBZ50cKSylkapp6Etw==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1752507601;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=qocmuib59L+/Q3PxxJmPJOulfvAdlZE6dwU5H5OHfIc=;
 b=fJnEGeiaM8ZUGKlQg4KUR16ghOWiEj9QeRAMipfey6Bd9jGCzRD0hkCvmMGBTk7w0Pow4W
 tpe1tDyxfToQoHDg==
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 Scott Oehrlein <scott.oehrlein@intel.com>,
 Ben Hutchings <ben@decadent.org.uk>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Tvrtko Ursulin <tvrtko.ursulin@igalia.com>,
 Luca Abeni <lucabe72@gmail.com>, Steven Rostedt <rostedt@goodmis.org>
Subject: [PATCH v4 4/9] drm/i915: Disable tracing points on PREEMPT_RT
Date: Mon, 14 Jul 2025 17:39:49 +0200
Message-ID: <20250714153954.629393-5-bigeasy@linutronix.de>
In-Reply-To: <20250714153954.629393-1-bigeasy@linutronix.de>
References: <20250714153954.629393-1-bigeasy@linutronix.de>
MIME-Version: 1.0
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

Luca Abeni reported this:
| BUG: scheduling while atomic: kworker/u8:2/15203/0x00000003
| CPU: 1 PID: 15203 Comm: kworker/u8:2 Not tainted 4.19.1-rt3 #10
| Call Trace:
|  rt_spin_lock+0x3f/0x50
|  gen6_read32+0x45/0x1d0 [i915]
|  g4x_get_vblank_counter+0x36/0x40 [i915]
|  trace_event_raw_event_i915_pipe_update_start+0x7d/0xf0 [i915]

The tracing events use trace_intel_pipe_update_start() among other events
use functions acquire spinlock_t locks which are transformed into
sleeping locks on PREEMPT_RT. A few trace points use
intel_get_crtc_scanline(), others use ->get_vblank_counter() wich also
might acquire a sleeping locks on PREEMPT_RT.
At the time the arguments are evaluated within trace point, preemption
is disabled and so the locks must not be acquired on PREEMPT_RT.

Based on this I don't see any other way than disable trace points on
PREMPT_RT.

Acked-by: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>
Reported-by: Luca Abeni <lucabe72@gmail.com>
Cc: Steven Rostedt <rostedt@goodmis.org>
Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
---
 drivers/gpu/drm/i915/display/intel_display_trace.h | 4 ++++
 drivers/gpu/drm/i915/i915_trace.h                  | 4 ++++
 drivers/gpu/drm/i915/intel_uncore_trace.h          | 4 ++++
 3 files changed, 12 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_trace.h b/drivers/g=
pu/drm/i915/display/intel_display_trace.h
index 27ebc32cb61a5..a519d94700c36 100644
--- a/drivers/gpu/drm/i915/display/intel_display_trace.h
+++ b/drivers/gpu/drm/i915/display/intel_display_trace.h
@@ -13,6 +13,10 @@
 #if !defined(__INTEL_DISPLAY_TRACE_H__) || defined(TRACE_HEADER_MULTI_READ)
 #define __INTEL_DISPLAY_TRACE_H__
=20
+#if defined(CONFIG_PREEMPT_RT) && !defined(NOTRACE)
+#define NOTRACE
+#endif
+
 #include <linux/string.h>
 #include <linux/string_helpers.h>
 #include <linux/types.h>
diff --git a/drivers/gpu/drm/i915/i915_trace.h b/drivers/gpu/drm/i915/i915_=
trace.h
index 7ed41ce9b7085..6b87ef6005c69 100644
--- a/drivers/gpu/drm/i915/i915_trace.h
+++ b/drivers/gpu/drm/i915/i915_trace.h
@@ -6,6 +6,10 @@
 #if !defined(_I915_TRACE_H_) || defined(TRACE_HEADER_MULTI_READ)
 #define _I915_TRACE_H_
=20
+#if defined(CONFIG_PREEMPT_RT) && !defined(NOTRACE)
+#define NOTRACE
+#endif
+
 #include <linux/stringify.h>
 #include <linux/types.h>
 #include <linux/tracepoint.h>
diff --git a/drivers/gpu/drm/i915/intel_uncore_trace.h b/drivers/gpu/drm/i9=
15/intel_uncore_trace.h
index f13ff71edf2db..3c67e267fb602 100644
--- a/drivers/gpu/drm/i915/intel_uncore_trace.h
+++ b/drivers/gpu/drm/i915/intel_uncore_trace.h
@@ -7,6 +7,10 @@
 #if !defined(__INTEL_UNCORE_TRACE_H__) || defined(TRACE_HEADER_MULTI_READ)
 #define __INTEL_UNCORE_TRACE_H__
=20
+#if defined(CONFIG_PREEMPT_RT) && !defined(NOTRACE)
+#define NOTRACE
+#endif
+
 #include "i915_reg_defs.h"
=20
 #include <linux/types.h>
--=20
2.50.0

