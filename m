Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DDE5B04431
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Jul 2025 17:40:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FD6910E4C7;
	Mon, 14 Jul 2025 15:40:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; secure) header.d=linutronix.de header.i=@linutronix.de header.b="n9w9x027";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="MTpEbDmL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F54110E4BA;
 Mon, 14 Jul 2025 15:40:04 +0000 (UTC)
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1752507602;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=FCtuFPrUVu7LTecrsVLWIuIrmY14KjeBF/NH0xsr09A=;
 b=n9w9x027LJ6iOdePDSKZLXJ4r3YZO6P/+nNEHoRdqBxntqM/NsnQgRM6dhQU6L1i9cN9Am
 RGOgYamoo7TSDXQfARBnGmtUjIH9l+gXW9HYvhMOmCzKsFD+RU/mGiYN2HQtgAaFHRroAm
 it75hzJPUpXf5i9QiioP5XtQA2fS0ETeTb1RR2WO/5s5GMI6NBMs0978uNXtv+icbfMlqL
 9VkzPueVKB2MYYlZyNX1CrMz0uKD6ELm/s3nO5Y0snsxkB4z/KLdL/E8E3w838ldH1R1Nx
 nEfFF5WWRYIXdgwbR38Lpsi2eWoVFnaOSNksLdAtoRVSWJHWCQgxVNid6NvJDg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1752507602;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=FCtuFPrUVu7LTecrsVLWIuIrmY14KjeBF/NH0xsr09A=;
 b=MTpEbDmLEF1XfaJavUf84QI28IrJazHjiYBdV5CPc0Q3nT7XFKzMdZnP+UZiewOvKxaN85
 bZFSpXHzqxzvcfCg==
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
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@igalia.com>
Subject: [PATCH v4 6/9] drm/i915: Drop the irqs_disabled() check
Date: Mon, 14 Jul 2025 17:39:51 +0200
Message-ID: <20250714153954.629393-7-bigeasy@linutronix.de>
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

The !irqs_disabled() check triggers on PREEMPT_RT even with
i915_sched_engine::lock acquired. The reason is the lock is transformed
into a sleeping lock on PREEMPT_RT and does not disable interrupts.

There is no need to check for disabled interrupts. The lockdep
annotation below already check if the lock has been acquired by the
caller and will yell if the interrupts are not disabled.

Remove the !irqs_disabled() check.

Reported-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Acked-by: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>
Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
---
 drivers/gpu/drm/i915/i915_request.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i91=
5_request.c
index c3d27eadc0a7e..4705d6d6db141 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -608,7 +608,6 @@ bool __i915_request_submit(struct i915_request *request)
=20
 	RQ_TRACE(request, "\n");
=20
-	GEM_BUG_ON(!irqs_disabled());
 	lockdep_assert_held(&engine->sched_engine->lock);
=20
 	/*
@@ -717,7 +716,6 @@ void __i915_request_unsubmit(struct i915_request *reque=
st)
 	 */
 	RQ_TRACE(request, "\n");
=20
-	GEM_BUG_ON(!irqs_disabled());
 	lockdep_assert_held(&engine->sched_engine->lock);
=20
 	/*
--=20
2.50.0

