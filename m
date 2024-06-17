Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3019090AAC2
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Jun 2024 12:08:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69CB510E330;
	Mon, 17 Jun 2024 10:07:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; secure) header.d=linutronix.de header.i=@linutronix.de header.b="gjQPPusg";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="pxxNurUR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 43C0610E330;
 Mon, 17 Jun 2024 10:07:57 +0000 (UTC)
Date: Mon, 17 Jun 2024 12:07:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1718618874;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=MMep09BdhvDqVlUNraj2OoQSIAbdm2okslJojZW/qL0=;
 b=gjQPPusggwz03UKYVTZo5UzOGpQWuGp/rLkQmQvlyN1lS0f53EBhC4hovCZR2zeJcRdQQq
 elKF03XNG5CL7hA7b2wwTBm1HGPfY7JHdx4ql68rC9H+Oth+2w2Y02ZP8YCXJsq0CBmr76
 +BtyyeFNovIlU5kBSO7UVePN2CIM5YYME8lWKoKfXs4dk3NYc04rhjJi3rMR04cVNpJQa7
 7Xl/BtjWqJ+8v8lefSnabS29ViOJ+fNwdvzJvrzfNiD5nKobBHyFwOg9mo7t3fOpDYZHbu
 3PyvfxhDpnZd5tjCDPXbpsaJ/CkfQGT7+JDUf1wWQiD2WgOZjyWX/O1VdSpd0w==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1718618874;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=MMep09BdhvDqVlUNraj2OoQSIAbdm2okslJojZW/qL0=;
 b=pxxNurURvrlMLFZXMc2CUP56NpMYFQhRWhCXuv/fG6AQtXKg+qePITdo5JtPbgA/aaF2Z/
 VLf0foeWX9/+8HDA==
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: Tvrtko Ursulin <tursulin@ursulin.net>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Thomas Gleixner <tglx@linutronix.de>
Subject: Re: [PATCH v2 3/8] drm/i915: Don't check for atomic context on
 PREEMPT_RT
Message-ID: <20240617100752.9XDTS0R5@linutronix.de>
References: <20240613102818.4056866-1-bigeasy@linutronix.de>
 <20240613102818.4056866-4-bigeasy@linutronix.de>
 <94423591-adba-46d4-a9ba-f377dfab369f@ursulin.net>
 <20240614110548.m3lloBjv@linutronix.de>
 <fa38f377-a00a-4e0c-b416-54a1c3f15d4d@ursulin.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <fa38f377-a00a-4e0c-b416-54a1c3f15d4d@ursulin.net>
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

On 2024-06-14 13:19:25 [+0100], Tvrtko Ursulin wrote:
> > So the question is why do you need to know if the context is atomic?
> > The only impact is avoiding disabling preemption. Is it that important
> > to avoid it?
> > If so would cant_migrate() work? It requires CONFIG_DEBUG_ATOMIC_SLEEP=y
> > to do the trick.
> 
> ... catching misuse of atomic wait helpers step 2 - are you calling it from
> a non-atomic context without the real need. So should use the non-atomic
> helper instead.
> 
> When i915 development was very active and with a lot of contributors it was
> beneficial to catch these things which code review would easily miss.
> 
> Now that the pace is much, much slower, it is probably not very important.
> So this patch is acceptable for what I am concerned and:
> 
> Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>
> 
> Actually please also add the PREEMPT_RT angle to the comment above
> _WAIT_FOR_ATOMIC_CHECK. Sometimes lines change and git blame makes it hard
> to find the commit text.

Do you want me the repost the series? Are the bots happy enough?
I have the following as far this patch:

------->8--------------

The !in_atomic() check in _wait_for_atomic() triggers on PREEMPT_RT
because the uncore::lock is a spinlock_t and does not disable
preemption or interrupts.

Changing the uncore:lock to a raw_spinlock_t doubles the worst case
latency on an otherwise idle testbox during testing.

Ignore _WAIT_FOR_ATOMIC_CHECK() on PREEMPT_RT.

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>
Link: https://lore.kernel.org/all/20211006164628.s2mtsdd2jdbfyf7g@linutronix.de/
Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
---
 drivers/gpu/drm/i915/i915_utils.h | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_utils.h b/drivers/gpu/drm/i915/i915_utils.h
index 06ec6ceb61d57..f0d3c5cdc1b1b 100644
--- a/drivers/gpu/drm/i915/i915_utils.h
+++ b/drivers/gpu/drm/i915/i915_utils.h
@@ -273,8 +273,13 @@ wait_remaining_ms_from_jiffies(unsigned long timestamp_jiffies, int to_wait_ms)
 						   (Wmax))
 #define wait_for(COND, MS)		_wait_for((COND), (MS) * 1000, 10, 1000)
 
-/* If CONFIG_PREEMPT_COUNT is disabled, in_atomic() always reports false. */
-#if defined(CONFIG_DRM_I915_DEBUG) && defined(CONFIG_PREEMPT_COUNT)
+/*
+ * If CONFIG_PREEMPT_COUNT is disabled, in_atomic() always reports false.
+ * On PREEMPT_RT the context isn't becoming atomic because it is used in an
+ * interrupt handler or because a spinlock_t is acquired. This leads warnings
+ * which don't occur otherwise and is therefore disabled.
+ */
+#if defined(CONFIG_DRM_I915_DEBUG) && defined(CONFIG_PREEMPT_COUNT) && !defined(CONFIG_PREEMPT_RT)
 # define _WAIT_FOR_ATOMIC_CHECK(ATOMIC) WARN_ON_ONCE((ATOMIC) && !in_atomic())
 #else
 # define _WAIT_FOR_ATOMIC_CHECK(ATOMIC) do { } while (0)

> Regards,
> 
> Tvrtko

Sebastian
