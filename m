Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FA78899F9F
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Apr 2024 16:28:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47670113C3E;
	Fri,  5 Apr 2024 14:28:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; secure) header.d=linutronix.de header.i=@linutronix.de header.b="w/0izk0i";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="08O/PDZA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97B441138A4;
 Fri,  5 Apr 2024 14:27:56 +0000 (UTC)
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1712327263;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=gcQW0Opk3PnCDS0PJerd3AtjKp9uGXp2wG1z67PPjUA=;
 b=w/0izk0itClzPi7AVGuB97lLEJc6NkNPGQ9p8Yru8Q6mi98PI58I2HosG4xXln9F/5SI9a
 WshAhKFx5x4QTq7b27VbXqBtQW0MusRnZLw71JnUZiF+z6ipRvmIWN1Amg8Q7/kq5gxhmA
 B4x/heNcEv4yl0pB3RJzhqEjKt8c+cZcIvymuxoZqxZg/a+Z+xZWTuOJ6szbyarOtc4BzY
 doUQtWBYqd2DVLSzIdGkkxoiWpiLCpGgotoQgjIffUofx/25thc+Rnc340793PsJJ18gFb
 kBfr0Ab9B8f/pgiFYQ8wBQmtC4xRCQHR339KsY1F7Fd0kcwhMtUjkXB5FXwKpg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1712327263;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=gcQW0Opk3PnCDS0PJerd3AtjKp9uGXp2wG1z67PPjUA=;
 b=08O/PDZAAt3BMJdWcV29TIQYaD14bWaF8lym8oYoF+k6Xt3hCLPd+6+KAiTNMDzJAULatz
 xKSsHHPLe8kxChBQ==
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Clark Williams <williams@redhat.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Subject: [PATCH 06/10] drm/i915/gt: Queue and wait for the irq_work item.
Date: Fri,  5 Apr 2024 16:18:24 +0200
Message-ID: <20240405142737.920626-7-bigeasy@linutronix.de>
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

Disabling interrupts and invoking the irq_work function directly breaks
on PREEMPT_RT.
PREEMPT_RT does not invoke all irq_work from hardirq context because
some of the user have spinlock_t locking in the callback function.
These locks are then turned into a sleeping locks which can not be
acquired with disabled interrupts.

Using irq_work_queue() has the benefit that the irqwork will be invoked
in the regular context. In general there is "no" delay between enqueuing
the callback and its invocation because the interrupt is raised right
away on architectures which support it (which includes x86).

Use irq_work_queue() + irq_work_sync() instead invoking the callback
directly.

Reported-by: Clark Williams <williams@redhat.com>
Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Reviewed-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_breadcrumbs.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c b/drivers/gpu/drm/=
i915/gt/intel_breadcrumbs.c
index d650beb8ed22f..3dd3e516b80c1 100644
--- a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
+++ b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
@@ -317,10 +317,9 @@ void __intel_breadcrumbs_park(struct intel_breadcrumbs=
 *b)
 	/* Kick the work once more to drain the signalers, and disarm the irq */
 	irq_work_sync(&b->irq_work);
 	while (READ_ONCE(b->irq_armed) && !atomic_read(&b->active)) {
-		local_irq_disable();
-		signal_irq_work(&b->irq_work);
-		local_irq_enable();
+		irq_work_queue(&b->irq_work);
 		cond_resched();
+		irq_work_sync(&b->irq_work);
 	}
 }
=20
--=20
2.43.0

