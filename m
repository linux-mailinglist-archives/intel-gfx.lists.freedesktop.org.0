Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B871B04437
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Jul 2025 17:40:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7878D10E4D5;
	Mon, 14 Jul 2025 15:40:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; secure) header.d=linutronix.de header.i=@linutronix.de header.b="oX2+WWyq";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="MzgZ5TSr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 516DD10E4CB;
 Mon, 14 Jul 2025 15:40:06 +0000 (UTC)
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1752507603;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=zbrdPMc1OB7KTrElYwR+sctAudi8mvYeGmSwsbNxzCo=;
 b=oX2+WWyqwCqqCLLKCzRoQ/JnpAF6JDTd+qAB+9b+oWQUm7ggd0qNFt2j1ksEAGwH10j8c5
 H9RUat4XOUh4iZEfEdF4kLOnnGT4v9TTPxFzd2x5eP4ii+d9QbYpcD2VeQBJBZtrW1H+uc
 ZLJ1r//ahTNJ2+tiZCNhKmcVKPTlfjRD7gJfcu52I6z96qG4BJUsyjrKZfLigFors6XnAC
 D9rOiarZL+GjCLHr9Wlsyhu8FxDUYEcLbrGKVSkNZFVYJOcaq4g+HVfU5avpkmHepEpaxM
 MzWllXulJa64lxsCKRZ8PLj7NWVuIp/PALiLijZ80ffn4VKo38raDqhSkfbBEw==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1752507603;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=zbrdPMc1OB7KTrElYwR+sctAudi8mvYeGmSwsbNxzCo=;
 b=MzgZ5TSrfRszdbu0X+4/d2oDiecOFKn17OA+I8rN7SgvmJ2ZcCjrKB9a60obx+edcdzjDt
 kSXkAjjQHXjmVfDw==
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
Subject: [PATCH v4 9/9] Revert "drm/i915: Depend on !PREEMPT_RT."
Date: Mon, 14 Jul 2025 17:39:54 +0200
Message-ID: <20250714153954.629393-10-bigeasy@linutronix.de>
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

Once the known issues are addressed, it should be safe to enable the
driver.

Acked-by: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>
Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
---
 drivers/gpu/drm/i915/Kconfig | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/Kconfig b/drivers/gpu/drm/i915/Kconfig
index 5e939004b6463..40a9234e6e5dc 100644
--- a/drivers/gpu/drm/i915/Kconfig
+++ b/drivers/gpu/drm/i915/Kconfig
@@ -3,7 +3,6 @@ config DRM_I915
 	tristate "Intel 8xx/9xx/G3x/G4x/HD Graphics"
 	depends on DRM
 	depends on X86 && PCI
-	depends on !PREEMPT_RT
 	select INTEL_GTT if X86
 	select INTERVAL_TREE
 	# we need shmfs for the swappable backing store, and in particular
--=20
2.50.0

