Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 59918899F94
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Apr 2024 16:28:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1A2410EA47;
	Fri,  5 Apr 2024 14:27:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; secure) header.d=linutronix.de header.i=@linutronix.de header.b="IwQru6yd";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="Bq/S1JjW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDBE41138A4;
 Fri,  5 Apr 2024 14:27:44 +0000 (UTC)
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1712327262;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=LF0lR9gKoUcj3viuJ13IKUQLlb/u8XMnHEXpAb1TJwE=;
 b=IwQru6ydNVWp2rV5r7jZRPjLeviR03ErYkK5TfzrbjTwX7fufmVTskP8rjxbZHDESiEidr
 jrGTdfGLxi984Wa8B8sy8MjdcM83VXudlBjnf1rCcW853D0xV6A4oowOKYMsZYSQmYh+a2
 7Il2dDYhMMtXMbmMvy+Z7FENOJQoFC9UjYoGZAlKKiWNxdSFg+JWNApV+hZcm1gOcUyl3H
 agtVxGpVekap9dvlJ4uV3HWEnuiNKcQqLbXwnXHbdV/CQk8zuWY5bVlg4rGCqusck3ptlf
 WU9BkyGmrivBGXEYiWi4/H9WdGWoWnYoE5SWcxpS7fFLxr2HrMvF+eXaSsvAxQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1712327262;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=LF0lR9gKoUcj3viuJ13IKUQLlb/u8XMnHEXpAb1TJwE=;
 b=Bq/S1JjW9vSRWPkDOQYOYfYTMreWgoNAoGO6dpoA3MqW/I+zhn6dBY+ohq60JahibRfwe9
 AXnwzNGOSjUoz+Cg==
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Subject: [PATCH 03/10] drm/i915: Don't check for atomic context on PREEMPT_RT
Date: Fri,  5 Apr 2024 16:18:21 +0200
Message-ID: <20240405142737.920626-4-bigeasy@linutronix.de>
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

The !in_atomic() check in _wait_for_atomic() triggers on PREEMPT_RT
because the uncore::lock is a spinlock_t and does not disable
preemption or interrupts.

Changing the uncore:lock to a raw_spinlock_t doubles the worst case
latency on an otherwise idle testbox during testing. Therefore I'm
currently unsure about changing this.

Link: https://lore.kernel.org/all/20211006164628.s2mtsdd2jdbfyf7g@linutroni=
x.de/
Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
---
 drivers/gpu/drm/i915/i915_utils.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_utils.h b/drivers/gpu/drm/i915/i915_=
utils.h
index b45ef0560611a..7c6077d2d3dc0 100644
--- a/drivers/gpu/drm/i915/i915_utils.h
+++ b/drivers/gpu/drm/i915/i915_utils.h
@@ -288,7 +288,7 @@ wait_remaining_ms_from_jiffies(unsigned long timestamp_=
jiffies, int to_wait_ms)
 #define wait_for(COND, MS)		_wait_for((COND), (MS) * 1000, 10, 1000)
=20
 /* If CONFIG_PREEMPT_COUNT is disabled, in_atomic() always reports false. =
*/
-#if defined(CONFIG_DRM_I915_DEBUG) && defined(CONFIG_PREEMPT_COUNT)
+#if defined(CONFIG_DRM_I915_DEBUG) && defined(CONFIG_PREEMPT_COUNT) && !de=
fined(CONFIG_PREEMPT_RT)
 # define _WAIT_FOR_ATOMIC_CHECK(ATOMIC) WARN_ON_ONCE((ATOMIC) && !in_atomi=
c())
 #else
 # define _WAIT_FOR_ATOMIC_CHECK(ATOMIC) do { } while (0)
--=20
2.43.0

