Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 25D75B04439
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Jul 2025 17:40:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7600610E4D1;
	Mon, 14 Jul 2025 15:40:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; secure) header.d=linutronix.de header.i=@linutronix.de header.b="FnwDTU49";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="greq6pfs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 743DC10E4C7;
 Mon, 14 Jul 2025 15:40:04 +0000 (UTC)
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1752507602;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=5l6Isbrnmhhh+kw9qRD/Cec+PM1Spow9Jeqzw49wrJw=;
 b=FnwDTU49fEpZ12IBRUyN7+KKLR2mTngS7DO1FQDoHNNpN/fF3yuaXS3kth5vUYlQ+tCHo3
 1lSrmALgDxJUWpYNPsy/8xDip043sB0Y4s0fyBhe0UBjZVXDk6vRnEPE5CfPBj0Y73WxpJ
 39eHhGvrEZybF39/Z+XyusS5Fav9Qh2UBcZj3VmCoKSaoNvNFDSoHbOiNedxrlD5P8e+Tp
 ttETxWzBXreucxniUMxFQGV6vv/hydf1Hz0WdxkipdL0qjBp2Y3SgDwLlyq2AeQ0Ck13Ht
 TJaryF4h8Ntt5RpHjipIbB1sdnVQWfo4NrYXE2ajO/9k8qmPO/SaZPdOhy8AHA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1752507602;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=5l6Isbrnmhhh+kw9qRD/Cec+PM1Spow9Jeqzw49wrJw=;
 b=greq6pfsCChDiqG4rTw3ydTN465qPiOqjVNf6HCBwH37vVDwAyVF6rhJTpMVL+JwmNJiTW
 MII00jsy8RvNg7AA==
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 Scott Oehrlein <scott.oehrlein@intel.com>,
 Ben Hutchings <ben@decadent.org.uk>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Subject: [PATCH v4 8/9] drm/i915: Consider RCU read section as atomic.
Date: Mon, 14 Jul 2025 17:39:53 +0200
Message-ID: <20250714153954.629393-9-bigeasy@linutronix.de>
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

Locking and/ or running inside interrupt handler will not lead to an
atomic section on PREEMPT_RT. The RCU read section needs to be
considered because all locks, which become sleeping locks on
PREEMPT_RT, start a RCU read section. Scheduling/ sleeping while within
a RCU read section is invalid.

Check for also for RCU read section in stop_timeout() to determine if it
is safe to sleep.

Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i9=
15/gt/intel_engine_cs.c
index b721bbd233567..f5a6143ea8a24 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -1609,7 +1609,7 @@ u64 intel_engine_get_last_batch_head(const struct int=
el_engine_cs *engine)
=20
 static unsigned long stop_timeout(const struct intel_engine_cs *engine)
 {
-	if (in_atomic() || irqs_disabled()) /* inside atomic preempt-reset? */
+	if (in_atomic() || irqs_disabled() || rcu_preempt_depth()) /* inside atom=
ic preempt-reset? */
 		return 0;
=20
 	/*
--=20
2.50.0

