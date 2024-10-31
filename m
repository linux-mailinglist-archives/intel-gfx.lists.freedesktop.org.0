Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA7459B8EB1
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Nov 2024 11:08:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 741E910E97D;
	Fri,  1 Nov 2024 10:08:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; secure) header.d=linutronix.de header.i=@linutronix.de header.b="d9rQyJXk";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="iJYPn13q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 588CF10E079
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Oct 2024 15:15:09 +0000 (UTC)
From: Nam Cao <namcao@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1730387708;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=eQ4OaVFfuzEdwAbuzRaqadqXL1D9oVVD1jPEwjjtzBI=;
 b=d9rQyJXk7rC9Ud2vUivz4oheHxCrS0wy8Y4I9K4/MwEyTgoXth2bQ2ofGtKZqPrFrVAIFE
 eBreuX1JVSmQrZD9ZDuooRfa1967UO0NZX1rARt6M96UtckeFmNYJOJm+z722maWukY9tW
 UPi2/iZ6ZLJoyBZ6n38jyfuc1ZfqAxYBWy6j4+X58VvSo8p2cQn9WQuvkg1qwLSg3so5Gv
 j/M3l8Hu5yr+9m2V8UTKPUNuID1rHZGM+AMAlpH4XdrHiXlrrAw6ksktCYwShH6mafxPFX
 ni31Gieao14CLn8aRp24XyT14z+KasjZBV6+OLJclicfvZX2lHjXvYqkHVTdHA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1730387708;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=eQ4OaVFfuzEdwAbuzRaqadqXL1D9oVVD1jPEwjjtzBI=;
 b=iJYPn13qrmJTzgAjFo+ik3kN94gVU4BPHiCVoai61h8kObYhmoA/rxwepH/pG8fD5GF6Pb
 nfIKXy/X2Yvou0DQ==
To: Anna-Maria Behnsen <anna-maria@linutronix.de>,
 Frederic Weisbecker <frederic@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Andreas Hindborg <a.hindborg@kernel.org>,
 Alice Ryhl <aliceryhl@google.com>, Miguel Ojeda <ojeda@kernel.org>,
 Kees Cook <kees@kernel.org>, linux-kernel@vger.kernel.org
Cc: Jani Nikula <jani.nikula@linux.intel.com>, intel-gfx@lists.freedesktop.org,
 Sean Christopherson <seanjc@google.com>,
 Paolo Bonzini <pbonzini@redhat.com>, x86@kernel.org,
 Jakub Kicinski <kuba@kernel.org>, Kalle Valo <kvalo@kernel.org>,
 Jens Axboe <axboe@kernel.dk>, Christian Brauner <brauner@kernel.org>,
 Peter Zijlstra <peterz@infradead.org>, John Stultz <jstultz@google.com>,
 Nam Cao <namcao@linutronix.de>, Oliver Hartkopp <socketcan@hartkopp.net>
Subject: [RESEND PATCH v2 11/19] futex: Switch to use
 hrtimer_setup_sleeper_on_stack()
Date: Thu, 31 Oct 2024 16:14:25 +0100
Message-Id: <d92116a17313dee283ebc959869bea80fbf94cdb.1730386209.git.namcao@linutronix.de>
In-Reply-To: <cover.1730386209.git.namcao@linutronix.de>
References: <cover.1730386209.git.namcao@linutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Fri, 01 Nov 2024 10:08:01 +0000
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

hrtimer_setup_sleeper_on_stack() replaces hrtimer_init_sleeper_on_stack()
to keep the naming convention consistent.

Convert the usage site over to it. The conversion was done with Coccinelle.

Signed-off-by: Nam Cao <namcao@linutronix.de>
Cc: Peter Zijlstra <peterz@infradead.org>
---
 kernel/futex/core.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/kernel/futex/core.c b/kernel/futex/core.c
index 136768ae2637..fb7214c7a36f 100644
--- a/kernel/futex/core.c
+++ b/kernel/futex/core.c
@@ -140,9 +140,9 @@ futex_setup_timer(ktime_t *time, struct hrtimer_sleeper=
 *timeout,
 	if (!time)
 		return NULL;
=20
-	hrtimer_init_sleeper_on_stack(timeout, (flags & FLAGS_CLOCKRT) ?
-				      CLOCK_REALTIME : CLOCK_MONOTONIC,
-				      HRTIMER_MODE_ABS);
+	hrtimer_setup_sleeper_on_stack(timeout,
+				       (flags & FLAGS_CLOCKRT) ? CLOCK_REALTIME : CLOCK_MONOTONIC,
+				       HRTIMER_MODE_ABS);
 	/*
 	 * If range_ns is 0, calling hrtimer_set_expires_range_ns() is
 	 * effectively the same as calling hrtimer_set_expires().
--=20
2.39.5

