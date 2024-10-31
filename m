Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 52B5A9B8EB5
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Nov 2024 11:08:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B2AF10E987;
	Fri,  1 Nov 2024 10:08:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; secure) header.d=linutronix.de header.i=@linutronix.de header.b="D/xG8kr+";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="D2pvWG87";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4785A10E065
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Oct 2024 15:15:14 +0000 (UTC)
From: Nam Cao <namcao@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1730387713;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=FyamRs/0EaIVuqQPB5WehumUy+LlGp/xnGmtDyoDFVM=;
 b=D/xG8kr+UzsvOcpBfyWcjyng7sjzcG0K9EcKPyWNMvYeG261TZrnXlHKGVEei6kOb1mF9g
 hrf9gXxIuOMPQRKyOSOVUxjL11yKt4rbweVKNokjzjIFnwVrW+5V2Cc/vuOAZ2fL4CTsCZ
 iccJSgXg8Wtx8tp/N4FoCAyHAXDn9cSBwesyyv6Qh0is6BA1IN5r8JG47+fdncBCpv5tHD
 GZtOfPE9YAEKqjwvnlpEVYJp8uihxzJnF3hTylqAqj47IkbIXhyap9W9XpR7hXpPj9b7ak
 gR3um/D30x2wY5n+dA4mfvE6H1WXu7ybo7KKtsESP+2NzirZT49CCRQmUMs5Pg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1730387713;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=FyamRs/0EaIVuqQPB5WehumUy+LlGp/xnGmtDyoDFVM=;
 b=D2pvWG87LT2hKQ4zyhtS4dnMNig7h3FvWA2cslB8Pl369L5ZejnCak3vfTJBRhReZzEGAU
 wlIlMFS825QVE4Aw==
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
Subject: [RESEND PATCH v2 19/19] hrtimers: Delete hrtimer_init_on_stack()
Date: Thu, 31 Oct 2024 16:14:33 +0100
Message-Id: <510ce0d2944c4a382ea51e51d03dcfb73ba0f4f7.1730386209.git.namcao@linutronix.de>
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

hrtimer_init_on_stack() is now unused. Delete it.

Signed-off-by: Nam Cao <namcao@linutronix.de>
---
 include/linux/hrtimer.h |  2 --
 kernel/time/hrtimer.c   | 17 -----------------
 2 files changed, 19 deletions(-)

diff --git a/include/linux/hrtimer.h b/include/linux/hrtimer.h
index 4e4f04b3c0c2..7ef5f7ef31a9 100644
--- a/include/linux/hrtimer.h
+++ b/include/linux/hrtimer.h
@@ -230,8 +230,6 @@ extern void hrtimer_init(struct hrtimer *timer, clockid=
_t which_clock,
 			 enum hrtimer_mode mode);
 extern void hrtimer_setup(struct hrtimer *timer, enum hrtimer_restart (*fu=
nction)(struct hrtimer *),
 			  clockid_t clock_id, enum hrtimer_mode mode);
-extern void hrtimer_init_on_stack(struct hrtimer *timer, clockid_t which_c=
lock,
-				  enum hrtimer_mode mode);
 extern void hrtimer_setup_on_stack(struct hrtimer *timer,
 				   enum hrtimer_restart (*function)(struct hrtimer *),
 				   clockid_t clock_id, enum hrtimer_mode mode);
diff --git a/kernel/time/hrtimer.c b/kernel/time/hrtimer.c
index 376b8182b72e..55e9ffbcd49a 100644
--- a/kernel/time/hrtimer.c
+++ b/kernel/time/hrtimer.c
@@ -1629,23 +1629,6 @@ void hrtimer_setup(struct hrtimer *timer, enum hrtim=
er_restart (*function)(struc
 }
 EXPORT_SYMBOL_GPL(hrtimer_setup);
=20
-/**
- * hrtimer_init_on_stack - initialize a timer in stack memory
- * @timer:	The timer to be initialized
- * @clock_id:	The clock to be used
- * @mode:       The timer mode
- *
- * Similar to hrtimer_init(), except that this one must be used if struct =
hrtimer is in stack
- * memory.
- */
-void hrtimer_init_on_stack(struct hrtimer *timer, clockid_t clock_id,
-			   enum hrtimer_mode mode)
-{
-	debug_init_on_stack(timer, clock_id, mode);
-	__hrtimer_init(timer, clock_id, mode);
-}
-EXPORT_SYMBOL_GPL(hrtimer_init_on_stack);
-
 /**
  * hrtimer_setup_on_stack - initialize a timer on stack memory
  * @timer:	The timer to be initialized
--=20
2.39.5

