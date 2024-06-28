Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 159C591BF28
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jun 2024 15:06:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF1B510EC3E;
	Fri, 28 Jun 2024 13:06:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; secure) header.d=linutronix.de header.i=@linutronix.de header.b="oHVctR6c";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="8rJrZHGZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A12310EC42;
 Fri, 28 Jun 2024 13:06:09 +0000 (UTC)
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1719579968;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=QUcBODj2VIRg16LXBIJ8ojuGJ2urgHUrPlIjEZ4VwqM=;
 b=oHVctR6crCWokMLNVI9bgLImu74S5x8bddjOSVcVwQ8+BkrsK2EgBCrWeX0CME2wePYpI2
 feS6uRWD+19Sclq4rKlzeXK+yy5h0gI1F2d4tySckkcIbCdFzrVD/J+BKezYcTM9EFJV1X
 Jf0QsNQL977f+q18SKreuD1+PJiZsrv9R4bNNh8m1CjD07QdqKOnA820xRPOB4aGNRWg13
 j93L4AQOYIj5AXwRpfpccFI/KlNuldi9xW5/U7ZViPU+t29EOK/YnZSNH1jdze+w84X/UL
 dJSxWcujoamFHhrDdLps81RAd88xDezKP738WzZImi0jW2aSqALG4ZXRUYYdiQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1719579968;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=QUcBODj2VIRg16LXBIJ8ojuGJ2urgHUrPlIjEZ4VwqM=;
 b=8rJrZHGZdGCcZIF9Y5ht+Cu3gSiRTeaOrOcc+xTvgbVn/FnuGJz3UQbx/6j/EHRayn2dJ+
 RItX8IET1Xn9owAQ==
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 "John B. Wyatt IV" <jwyatt@redhat.com>
Subject: [PATCH v3 7/8] drm/i915/guc: Consider also RCU depth in busy loop.
Date: Fri, 28 Jun 2024 14:58:06 +0200
Message-ID: <20240628130601.1772849-8-bigeasy@linutronix.de>
In-Reply-To: <20240628130601.1772849-1-bigeasy@linutronix.de>
References: <20240628130601.1772849-1-bigeasy@linutronix.de>
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

intel_guc_send_busy_loop() looks at in_atomic() and irqs_disabled() to
decide if it should busy-spin while waiting or if it may sleep.
Both checks will report false on PREEMPT_RT if sleeping spinlocks are
acquired leading to RCU splats while the function sleeps.

Check also if RCU has been disabled.

Reported-by: "John B. Wyatt IV" <jwyatt@redhat.com>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/=
gt/uc/intel_guc.h
index 57b9031327767..ff213b79ba83d 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
@@ -362,7 +362,7 @@ static inline int intel_guc_send_busy_loop(struct intel=
_guc *guc,
 {
 	int err;
 	unsigned int sleep_period_ms =3D 1;
-	bool not_atomic =3D !in_atomic() && !irqs_disabled();
+	bool not_atomic =3D !in_atomic() && !irqs_disabled() && !rcu_preempt_dept=
h();
=20
 	/*
 	 * FIXME: Have caller pass in if we are in an atomic context to avoid
--=20
2.45.2

