Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A981CB04434
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Jul 2025 17:40:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65F2110E4CC;
	Mon, 14 Jul 2025 15:40:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; secure) header.d=linutronix.de header.i=@linutronix.de header.b="bOR9J0Hd";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="PgudzT2R";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED08010E055;
 Mon, 14 Jul 2025 15:40:02 +0000 (UTC)
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1752507600;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=CVq31C6HwCFujJeAP9TdmaF1EAZk4rSDpRahUIillmc=;
 b=bOR9J0HdzZju66NEXTUym9yDPKiYHEFCP1BEgozF/va6N2ANj7hAf/hEZ0iYxuv0zUnqjz
 Sof/sdxhOD2IlN2QtJe7A7q/niDvbKwZaHbgC6OwZTkFhUW5tC3DyNIooJjxsFRyFdNva/
 4rvxMXMBQ4E4iBFWs02C7i9ZkM+vjmA95zBYWBojHyknmVms6h25MXMrksztZLa/8vkx0J
 F9ye1BqA4o35PwqWIeXHb17HedrDXi8wsbnruV4g2eQuD9WziCI1I1LKDZ4cD3kVhUjmLZ
 ECe9Rh7np2VhxvNvy7GSSnJOucRgdSUyApRf3xD8WvdkCqGhJCz1H813k3eYzQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1752507600;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=CVq31C6HwCFujJeAP9TdmaF1EAZk4rSDpRahUIillmc=;
 b=PgudzT2RnNlHB6T8lwoKh2uUmLeXMaHqDMmllJb5bZWorq1r+tNdZSfCNm94mdUFRV+9sH
 y9JRDlctRNJq7oDw==
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
 Tvrtko Ursulin <tvrtko.ursulin@igalia.com>
Subject: [PATCH v4 3/9] drm/i915: Don't check for atomic context on PREEMPT_RT
Date: Mon, 14 Jul 2025 17:39:48 +0200
Message-ID: <20250714153954.629393-4-bigeasy@linutronix.de>
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

The !in_atomic() check in _wait_for_atomic() triggers on PREEMPT_RT
because the uncore::lock is a spinlock_t and does not disable
preemption or interrupts.

Changing the uncore:lock to a raw_spinlock_t doubles the worst case
latency on an otherwise idle testbox during testing.

Ignore _WAIT_FOR_ATOMIC_CHECK() on PREEMPT_RT.

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>
Link: https://lore.kernel.org/all/20211006164628.s2mtsdd2jdbfyf7g@linutroni=
x.de/
Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
---
 drivers/gpu/drm/i915/i915_utils.h | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_utils.h b/drivers/gpu/drm/i915/i915_=
utils.h
index f7fb40cfdb705..9cb40c2c4b124 100644
--- a/drivers/gpu/drm/i915/i915_utils.h
+++ b/drivers/gpu/drm/i915/i915_utils.h
@@ -267,8 +267,13 @@ wait_remaining_ms_from_jiffies(unsigned long timestamp=
_jiffies, int to_wait_ms)
 						   (Wmax))
 #define wait_for(COND, MS)		_wait_for((COND), (MS) * 1000, 10, 1000)
=20
-/* If CONFIG_PREEMPT_COUNT is disabled, in_atomic() always reports false. =
*/
-#if IS_ENABLED(CONFIG_DRM_I915_DEBUG) && IS_ENABLED(CONFIG_PREEMPT_COUNT)
+/*
+ * If CONFIG_PREEMPT_COUNT is disabled, in_atomic() always reports false.
+ * On PREEMPT_RT the context isn't becoming atomic because it is used in an
+ * interrupt handler or because a spinlock_t is acquired. This leads to
+ * warnings which don't occur otherwise and therefore the check is disable=
d.
+ */
+#if IS_ENABLED(CONFIG_DRM_I915_DEBUG) && IS_ENABLED(CONFIG_PREEMPT_COUNT) =
&& !defined(CONFIG_PREEMPT_RT)
 # define _WAIT_FOR_ATOMIC_CHECK(ATOMIC) WARN_ON_ONCE((ATOMIC) && !in_atomi=
c())
 #else
 # define _WAIT_FOR_ATOMIC_CHECK(ATOMIC) do { } while (0)
--=20
2.50.0

