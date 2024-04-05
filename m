Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FF87899F9A
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Apr 2024 16:28:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF82D1129F1;
	Fri,  5 Apr 2024 14:28:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; secure) header.d=linutronix.de header.i=@linutronix.de header.b="aXpHo0Dl";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="nYIrAtD4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 998B91139D9;
 Fri,  5 Apr 2024 14:27:56 +0000 (UTC)
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1712327264;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=XBLFyfoGqPJo1ar/myYaKzvZLCXjGn35eyi0wX24FR8=;
 b=aXpHo0Dlugbxz9Ub5YKbVFmRDpp43FrHqBsVlXC2zMTQAttItyvbqzRC36HQQEbCv6AmJr
 HfBSdH8HXPcf/gCYjm1fPFBSYgYRVYLhWQZb9uAGhV+e7FlsvXOIO1ivJlsGA3PhtDD2Hm
 /rvcWA8VE8TsDwy7Se/ePhRUbEewaQ1RGYYx2B16LmoSqRXovOURsDDVj9lLycit1lDZlE
 bKMT0ENkm6c9o3GZ5edJN2SVgSqZ5LCfZcZoYeuylSizBFTVIqSb9YPibMPkw8m8cGikSR
 ks2BjdrpQj9bi7on3GJ/6+DQD9m5HdmgyO1PRM3LE59o+7HNiXCOyCTxDJmWGw==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1712327264;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=XBLFyfoGqPJo1ar/myYaKzvZLCXjGn35eyi0wX24FR8=;
 b=nYIrAtD4WVSPrXTxeX1PlFhw4On9z301sxiksQtxlIfLQLJs0PLhrYfJklrmYOkVqOjlnz
 N+1N67jFAtDdluCw==
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Subject: [PATCH 08/10] drm/i915: Drop the irqs_disabled() check
Date: Fri,  5 Apr 2024 16:18:26 +0200
Message-ID: <20240405142737.920626-9-bigeasy@linutronix.de>
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

The !irqs_disabled() check triggers on PREEMPT_RT even with
i915_sched_engine::lock acquired. The reason is the lock is transformed
into a sleeping lock on PREEMPT_RT and does not disable interrupts.

There is no need to check for disabled interrupts. The lockdep
annotation below already check if the lock has been acquired by the
caller and will yell if the interrupts are not disabled.

Remove the !irqs_disabled() check.

Reported-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
---
 drivers/gpu/drm/i915/i915_request.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i91=
5_request.c
index 519e096c607cd..466b5ee8ed6d2 100644
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
2.43.0

