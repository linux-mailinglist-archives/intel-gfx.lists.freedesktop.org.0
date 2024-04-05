Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 364BD899F99
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Apr 2024 16:28:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C50B113BD3;
	Fri,  5 Apr 2024 14:28:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; secure) header.d=linutronix.de header.i=@linutronix.de header.b="S52WLYrn";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="wgwHhRNS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB27310EA47;
 Fri,  5 Apr 2024 14:27:44 +0000 (UTC)
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1712327262;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Mj8u/gWuqXLTEhHgQ1Ljxwmy/FCMaxyTwjNmcUeYK1w=;
 b=S52WLYrnymQIxFXSS4jPXIKGg62m2D7otxsxClX7h5zya4NYCUWeyZpe6/xZp7LHvS9JMD
 d1VorzI51yQI+at0urdUjLbi4MGk9dAKaNrG6j3Vhjr5L360Hh8Lw8U/f/3wBmFkNhnJAe
 7EKKPQnpQ48DZx9hD2tpZ411BaaNp0UaYXiDUEDXpClbQPWphGTCBEOUO1YgmhlDrLBgnz
 +fXKED0FbBsGcLLZjVY875KFHD4GcOcAFGjxqc+MevDSCvhtjyVlvpDMguQtqPOkckDhrZ
 wvc8iPUTBIzftjN2NVpHuf1jG4iNsKRTZp+809dcQdvf8RVGu5zINwbX4HhZEA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1712327262;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Mj8u/gWuqXLTEhHgQ1Ljxwmy/FCMaxyTwjNmcUeYK1w=;
 b=wgwHhRNSHzyy4gIhwb8v8EwVqb/3TC7jeh2jwroDINl0VE2Mv6DlgFPDMFHU2DvO/gswp2
 jvPjBF9TbhI1SEAw==
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Luca Abeni <lucabe72@gmail.com>, Steven Rostedt <rostedt@goodmis.org>
Subject: [PATCH 04/10] drm/i915: Disable tracing points on PREEMPT_RT
Date: Fri,  5 Apr 2024 16:18:22 +0200
Message-ID: <20240405142737.920626-5-bigeasy@linutronix.de>
In-Reply-To: <20240405142737.920626-1-bigeasy@linutronix.de>
References: <20240405142737.920626-1-bigeasy@linutronix.de>
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

The tracing events use trace_i915_pipe_update_start() among other events
use functions acquire spinlock_t locks which are transformed into
sleeping locks on PREEMPT_RT. A few trace points use
intel_get_crtc_scanline(), others use ->get_vblank_counter() wich also
might acquire a sleeping locks on PREEMPT_RT.
At the time the arguments are evaluated within trace point, preemption
is disabled and so the locks must not be acquired on PREEMPT_RT.

Based on this I don't see any other way than disable trace points on
PREMPT_RT.

Reported-by: Luca Abeni <lucabe72@gmail.com>
Cc: Steven Rostedt <rostedt@goodmis.org>
Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
---
 drivers/gpu/drm/i915/i915_trace.h | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_trace.h b/drivers/gpu/drm/i915/i915_=
trace.h
index ce1cbee1b39dd..c54653cf72c95 100644
--- a/drivers/gpu/drm/i915/i915_trace.h
+++ b/drivers/gpu/drm/i915/i915_trace.h
@@ -6,6 +6,10 @@
 #if !defined(_I915_TRACE_H_) || defined(TRACE_HEADER_MULTI_READ)
 #define _I915_TRACE_H_
=20
+#ifdef CONFIG_PREEMPT_RT
+#define NOTRACE
+#endif
+
 #include <linux/stringify.h>
 #include <linux/types.h>
 #include <linux/tracepoint.h>
--=20
2.43.0

