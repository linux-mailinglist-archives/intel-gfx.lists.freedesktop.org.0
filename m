Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 581FB9069FC
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jun 2024 12:28:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 720B310EA21;
	Thu, 13 Jun 2024 10:28:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; secure) header.d=linutronix.de header.i=@linutronix.de header.b="g6bo0wpT";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="O/i5dtYk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 64A9A10EA11;
 Thu, 13 Jun 2024 10:28:28 +0000 (UTC)
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1718274506;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=AA2zfxjtkVY5UVBSS4SHCEYagP/l342CiKwYNj0Le48=;
 b=g6bo0wpTAx3SpwWMk0Ai6ouTNno1Eez5G0zFr/nt34tPxJBAmFgH8hQ/9QkU9T4f9lHIUu
 kQt8i5OU5TaioDKCrjOtmFrzn+5q0WJ3lio3v2aAjBhdwH58VgIkg9AuolILykteuC7gnY
 sRwtEYFGMDLJhDLTC8EYyzvqTe130NhvFzywU1/jyae+ZCCnj46xUH6uk0f+GOgc9Xu/AQ
 EBc9zbvsfXxsFLYPsYly2togpXYt7KxRjWC2qy3jhGp+WWPGuxRMiI/rVSo7kwSJx2gPfi
 EccQi08TiAFoyQ5Oj65hJjTGeouKfiZZKa1tqmmf/9W27f+5mqkebZgBMSCsug==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1718274506;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=AA2zfxjtkVY5UVBSS4SHCEYagP/l342CiKwYNj0Le48=;
 b=O/i5dtYk9bA9+0YfJNJWCwqvQ/iYEdhuLFyH39wNC8G/Wakdf2i2lIp5agIyhf6T7McBPL
 xo60bxqbyyHNPkBg==
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 "John B. Wyatt IV" <jwyatt@redhat.com>
Subject: [PATCH v2 7/8] drm/i915/guc: Consider also RCU depth in busy loop.
Date: Thu, 13 Jun 2024 12:20:24 +0200
Message-ID: <20240613102818.4056866-8-bigeasy@linutronix.de>
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
2.45.1

