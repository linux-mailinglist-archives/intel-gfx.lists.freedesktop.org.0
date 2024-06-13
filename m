Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CD719069F5
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jun 2024 12:28:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54B4210EA17;
	Thu, 13 Jun 2024 10:28:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; secure) header.d=linutronix.de header.i=@linutronix.de header.b="r3k1+xJY";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="e0uQweyT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5862A10EA11;
 Thu, 13 Jun 2024 10:28:26 +0000 (UTC)
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1718274505;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=r0ec/2247Gx7VIiLEY3/25TsR/Rd3HiyDAk6kFtNqn0=;
 b=r3k1+xJYcFSzvC0HM5DcNgErM9HjAIjEMyddW/PKcCFq6YArpFkruCbpEpamuFtuXaP2p0
 RdKMXwMDWCNwKLskm6X6kI/Ie8hcs+U1NWirFZtn8KoHFmQ5QdQyx+fQIZNrYNfQgfjqDp
 kYr3EJQGCJ+9ocgu9/ayCOQGPgUHvErLxIy3B6PMHsD3zB6jYf/3g/vImsMt5hSzgFddxy
 DPQGYrahfLBmbndc7bSp0/0YpTc5HXQXwHwR+3ngJcd7Y/LQ41wNjVyekpZTIBAhlrVZ/+
 hkT5UcaTxMatj9gXqTxIdsd6uQKPIRoMCvEpdSLVgazUc8K4H+i/bHA/Sn6gZw==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1718274505;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=r0ec/2247Gx7VIiLEY3/25TsR/Rd3HiyDAk6kFtNqn0=;
 b=e0uQweyTDztP3v9FbxDkJ0NFZbugMgN3wL7qRxBezvCzUCIRSjM6gXz3nDJM0RYe4DQaa5
 0KpRjqNddOs4uyAg==
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Subject: [PATCH v2 3/8] drm/i915: Don't check for atomic context on PREEMPT_RT
Date: Thu, 13 Jun 2024 12:20:20 +0200
Message-ID: <20240613102818.4056866-4-bigeasy@linutronix.de>
In-Reply-To: <20240613102818.4056866-1-bigeasy@linutronix.de>
References: <20240613102818.4056866-1-bigeasy@linutronix.de>
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
index 06ec6ceb61d57..2ca54bc235925 100644
--- a/drivers/gpu/drm/i915/i915_utils.h
+++ b/drivers/gpu/drm/i915/i915_utils.h
@@ -274,7 +274,7 @@ wait_remaining_ms_from_jiffies(unsigned long timestamp_=
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
2.45.1

