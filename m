Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 84B209B8EAA
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Nov 2024 11:08:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71D2A10E96D;
	Fri,  1 Nov 2024 10:08:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; secure) header.d=linutronix.de header.i=@linutronix.de header.b="AHyloqVr";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="ywC5R17G";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 54ECA10E079
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Oct 2024 15:15:06 +0000 (UTC)
From: Nam Cao <namcao@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1730387705;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=2mzDkHhgj8rt6gZnZO44C9ll+sOEso58V5R/ieU+5hI=;
 b=AHyloqVryNyQXmmoEY9l0xxiwzVfLvZ1JoPcAKuJyS7wklsurIJy6gHNYUqq0e8eUu3xqo
 JVfWHig+8ANFENDntF9EuZoVnfuevKsLyMyeSihfVANhkBJYu/U/kPBfVmpJXJLA9Y3UZS
 8BIbPnug0bwLAHc7G1YW54yPNOfi0uknToblDRZswRBjpXw1oxJnDHqvqup2f9TOBM8H5+
 5/MJ8AfmBKOndd9Gq9mLWCAVLuTUgEUhlYPwG4p9/M9j0JItrW7PS4InRBHg08PLH3wE7K
 hItd2P8Y0gCilYyGMSmFJ73tydfIcbDsVjJUybHhSxve1in4lZpr+gujn6E9qg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1730387705;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=2mzDkHhgj8rt6gZnZO44C9ll+sOEso58V5R/ieU+5hI=;
 b=ywC5R17GJElzyGjv6HcpGX2sAp0W/8joA0T9jLDp7flM+OIJwi0gAAtSngIrpubHijfOkF
 Cq6FkebKFwjOulDg==
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
Subject: [RESEND PATCH v2 07/19] hrtimers: Introduce hrtimer_setup_on_stack()
Date: Thu, 31 Oct 2024 16:14:21 +0100
Message-Id: <4b05e2ab3a82c517adf67fabc0f0cd8fe118b97c.1730386209.git.namcao@linutronix.de>
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

To initialize hrtimer on stack, hrtimer_init_on_stack() needs to be called
and also hrtimer::function must be set. This is error-prone and awkward to
use.

Introduce hrtimer_setup_on_stack() which does both of these things, so that
users of hrtimer can be simplified.

The new setup function also has a sanity check for the provided function
pointer. If NULL, a warning is emitted and a dummy callback installed.

hrtimer_init_on_stack() will be removed as soon as all of its users have
been converted to the new function.

Signed-off-by: Nam Cao <namcao@linutronix.de>
---
 include/linux/hrtimer.h |  3 +++
 kernel/time/hrtimer.c   | 19 +++++++++++++++++++
 2 files changed, 22 insertions(+)

diff --git a/include/linux/hrtimer.h b/include/linux/hrtimer.h
index bcc0715c59a8..2da513f8d66a 100644
--- a/include/linux/hrtimer.h
+++ b/include/linux/hrtimer.h
@@ -232,6 +232,9 @@ extern void hrtimer_setup(struct hrtimer *timer, enum h=
rtimer_restart (*function
 			  clockid_t clock_id, enum hrtimer_mode mode);
 extern void hrtimer_init_on_stack(struct hrtimer *timer, clockid_t which_c=
lock,
 				  enum hrtimer_mode mode);
+extern void hrtimer_setup_on_stack(struct hrtimer *timer,
+				   enum hrtimer_restart (*function)(struct hrtimer *),
+				   clockid_t clock_id, enum hrtimer_mode mode);
 extern void hrtimer_init_sleeper_on_stack(struct hrtimer_sleeper *sl,
 					  clockid_t clock_id,
 					  enum hrtimer_mode mode);
diff --git a/kernel/time/hrtimer.c b/kernel/time/hrtimer.c
index a5ef67edcda9..daee4e27f839 100644
--- a/kernel/time/hrtimer.c
+++ b/kernel/time/hrtimer.c
@@ -1646,6 +1646,25 @@ void hrtimer_init_on_stack(struct hrtimer *timer, cl=
ockid_t clock_id,
 }
 EXPORT_SYMBOL_GPL(hrtimer_init_on_stack);
=20
+/**
+ * hrtimer_setup_on_stack - initialize a timer on stack memory
+ * @timer:	The timer to be initialized
+ * @function:	the callback function
+ * @clock_id:	The clock to be used
+ * @mode:       The timer mode
+ *
+ * Similar to hrtimer_setup(), except that this one must be used if struct=
 hrtimer is in stack
+ * memory.
+ */
+void hrtimer_setup_on_stack(struct hrtimer *timer,
+			    enum hrtimer_restart (*function)(struct hrtimer *),
+			    clockid_t clock_id, enum hrtimer_mode mode)
+{
+	debug_init_on_stack(timer, clock_id, mode);
+	__hrtimer_setup(timer, function, clock_id, mode);
+}
+EXPORT_SYMBOL_GPL(hrtimer_setup_on_stack);
+
 /*
  * A timer is active, when it is enqueued into the rbtree or the
  * callback function is running or it's in the state of being migrated
--=20
2.39.5

