Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 629A89B8EB7
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Nov 2024 11:08:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DAE310E988;
	Fri,  1 Nov 2024 10:08:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; secure) header.d=linutronix.de header.i=@linutronix.de header.b="yxGAz47h";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="T17HRGfN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E17010E079
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Oct 2024 15:15:05 +0000 (UTC)
From: Nam Cao <namcao@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1730387703;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=sns3owJJ1g5SJOVsE11NYeiKC9zvBohYSIHK9XSQxGI=;
 b=yxGAz47hg+xN1wnLqYFDctZ2sn9Ujw5ytQE1byQCTKcCfxbvp2DGHiP9362f2lr543az3p
 gHEgizXYWPK3s0NSUu5SS+zz1h/kVrDKUNgY4XT8k9OsO22/yFCS0LH+hWxXTRfF2CqCF3
 nCyFFqq0r8zU1rhVvbozVLJaMIT70alPfW/0OL2K6LSlbDSwON6WNujUAIfq6Hz9VZQCXj
 TlKyyaLvGs4fAFalzUFkUKB5jgHjlixFJEguZnMJOpSTLZ5Hs4rAYwmMp+rsQN1WynADDv
 o5vd5I7AY0nWrWZiR3Y0w1xS6VbzlQFIQDUx5jSw9GMzVIwi5zxp/Ay9x+KCtg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1730387703;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=sns3owJJ1g5SJOVsE11NYeiKC9zvBohYSIHK9XSQxGI=;
 b=T17HRGfN3sJBYQ1qOGf/HGL9R/XXGtOx7PITdK9zzn2j1JlHM0XCd+cbpxUPDYYb/qCyEg
 l6w7Q5w9hhyMbsBQ==
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
Subject: [RESEND PATCH v2 05/19] io_uring: Remove redundant hrtimer's callback
 function setup
Date: Thu, 31 Oct 2024 16:14:19 +0100
Message-Id: <07b28dfd5691478a2d250f379c8b90dd37f9bb9a.1730386209.git.namcao@linutronix.de>
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

The IORING_OP_TIMEOUT command uses hrtimer underneath. The timer's callback
function is setup in io_timeout(), and then the callback function is setup
again when the timer is rearmed.

Since the callback function is the same for both cases, the latter setup is
redundant, therefore remove it.

Signed-off-by: Nam Cao <namcao@linutronix.de>
Cc: Jens Axboe <axboe@kernel.dk>
---
 io_uring/timeout.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/io_uring/timeout.c b/io_uring/timeout.c
index 9973876d91b0..2ffe5e1dc68a 100644
--- a/io_uring/timeout.c
+++ b/io_uring/timeout.c
@@ -76,7 +76,6 @@ static void io_timeout_complete(struct io_kiocb *req, str=
uct io_tw_state *ts)
 			/* re-arm timer */
 			spin_lock_irq(&ctx->timeout_lock);
 			list_add(&timeout->list, ctx->timeout_list.prev);
-			data->timer.function =3D io_timeout_fn;
 			hrtimer_start(&data->timer, timespec64_to_ktime(data->ts), data->mode);
 			spin_unlock_irq(&ctx->timeout_lock);
 			return;
--=20
2.39.5

