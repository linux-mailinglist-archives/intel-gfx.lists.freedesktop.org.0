Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD0AB9B8EB2
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Nov 2024 11:08:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B561F10E980;
	Fri,  1 Nov 2024 10:08:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; secure) header.d=linutronix.de header.i=@linutronix.de header.b="Js/uY/Ju";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="jltq/pcM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF69610E065
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Oct 2024 15:15:11 +0000 (UTC)
From: Nam Cao <namcao@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1730387710;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=agDa32oY8+hApUCXceuPV7IuaqEZ6faXr+Tzf7/xqbg=;
 b=Js/uY/JuQcgzX6xkvPe8TvXsgkqhxfCFt/jyNJe7m4WjLnusf+nyHTFs7q0IxJNk2Nm3Ku
 SXKyIHRjasevJzjcJPiokLofjH5OktMNDqou7AwQxrP7mwPcFlKBC2GnL+VAiZO+dEem8X
 JNFst3rH8vXsLXXU7BtWpCnbxf+8PV2LV72FODDxfW/5M/SzyRnUa222RgJw4Y1XvVJ+Js
 Ph3RYcCytUNtHpUrI5ExX+LTSwDS8NRCr4yFBKmun/jEjyMihldeePtEP5N7tQrBKnXDeP
 Whjrd96rGCeZfOeJPABFYii9XyiNTaazw/WkcMTWgLh71dhPx0cL6FbaynOIGA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1730387710;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=agDa32oY8+hApUCXceuPV7IuaqEZ6faXr+Tzf7/xqbg=;
 b=jltq/pcMCVo4jfWlAeaqVhIuyFit+CAsi2H+ug4GjnwNN2LOMOtLp5THPCa6ewEnx6AV9g
 Q35tp8HT8joVEPDA==
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
Subject: [RESEND PATCH v2 15/19] hrtimers: Delete
 hrtimer_init_sleeper_on_stack()
Date: Thu, 31 Oct 2024 16:14:29 +0100
Message-Id: <52549846635c0b3a2abf82101f539efdabcd9778.1730386209.git.namcao@linutronix.de>
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

hrtimer_init_sleeper_on_stack() is now unused. Delete it.

Signed-off-by: Nam Cao <namcao@linutronix.de>
---
 include/linux/hrtimer.h |  3 ---
 kernel/time/hrtimer.c   | 14 --------------
 2 files changed, 17 deletions(-)

diff --git a/include/linux/hrtimer.h b/include/linux/hrtimer.h
index 6e026730e803..4e4f04b3c0c2 100644
--- a/include/linux/hrtimer.h
+++ b/include/linux/hrtimer.h
@@ -235,9 +235,6 @@ extern void hrtimer_init_on_stack(struct hrtimer *timer=
, clockid_t which_clock,
 extern void hrtimer_setup_on_stack(struct hrtimer *timer,
 				   enum hrtimer_restart (*function)(struct hrtimer *),
 				   clockid_t clock_id, enum hrtimer_mode mode);
-extern void hrtimer_init_sleeper_on_stack(struct hrtimer_sleeper *sl,
-					  clockid_t clock_id,
-					  enum hrtimer_mode mode);
 extern void hrtimer_setup_sleeper_on_stack(struct hrtimer_sleeper *sl, clo=
ckid_t clock_id,
 					   enum hrtimer_mode mode);
=20
diff --git a/kernel/time/hrtimer.c b/kernel/time/hrtimer.c
index 69430467a17d..376b8182b72e 100644
--- a/kernel/time/hrtimer.c
+++ b/kernel/time/hrtimer.c
@@ -2051,20 +2051,6 @@ static void __hrtimer_init_sleeper(struct hrtimer_sl=
eeper *sl,
 	sl->task =3D current;
 }
=20
-/**
- * hrtimer_init_sleeper_on_stack - initialize a sleeper in stack memory
- * @sl:		sleeper to be initialized
- * @clock_id:	the clock to be used
- * @mode:	timer mode abs/rel
- */
-void hrtimer_init_sleeper_on_stack(struct hrtimer_sleeper *sl,
-				   clockid_t clock_id, enum hrtimer_mode mode)
-{
-	debug_init_on_stack(&sl->timer, clock_id, mode);
-	__hrtimer_init_sleeper(sl, clock_id, mode);
-}
-EXPORT_SYMBOL_GPL(hrtimer_init_sleeper_on_stack);
-
 /**
  * hrtimer_setup_sleeper_on_stack - initialize a sleeper in stack memory
  * @sl:		sleeper to be initialized
--=20
2.39.5

