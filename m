Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A5C7E9B8EB9
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Nov 2024 11:08:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8913110E98A;
	Fri,  1 Nov 2024 10:08:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; secure) header.d=linutronix.de header.i=@linutronix.de header.b="tJ6zgXnl";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="NKtYgqgN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A689710E079
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Oct 2024 15:15:04 +0000 (UTC)
From: Nam Cao <namcao@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1730387703;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=FyuxFuHZyEAgLrnvafIRcWRKTeRTsVTMh2Dczz2F9rU=;
 b=tJ6zgXnltAPSCcx7THHEtdYpBg/DS8NrFZ02jd33CGDpy49sS9dp6ids4gtlsFpOONmg4I
 zn7HjwH+7fNNKyZ9cagv6Kt1OFfBeDlDOrmth8blvN+yVy+xht6MIY+Q/B1/+zT2jzy/a9
 YiMkkc2DZDsPJeuzo11TgZnctzGNyzlWwW58J/Lv6kGpv+PnU60BxSfsmV20IplsyYIg5b
 U6K/kLmz85Fp0mG2HKnsxIY7EwC0Qbhlo+TLxalXoz7+bRdS6BZvRqIknOLX3T5V8rYstH
 Nmf4KZmFGIZ3PRMD5OfEO6YII8zq0XXbIsT3x8DeaCR6Sbgaf86NjNOSd0y+lA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1730387703;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=FyuxFuHZyEAgLrnvafIRcWRKTeRTsVTMh2Dczz2F9rU=;
 b=NKtYgqgNGk4bIoUpaptCn6O7NlJj+lp7jKGQCDEoVRKabClUHDqq3vxb7ws7xpabxmSEfj
 Vs0PJ7aVdW/esRDA==
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
 Nam Cao <namcao@linutronix.de>, Oliver Hartkopp <socketcan@hartkopp.net>,
 linux-wireless@vger.kernel.org
Subject: [RESEND PATCH v2 04/19] wifi: rt2x00: Remove redundant hrtimer_init()
Date: Thu, 31 Oct 2024 16:14:18 +0100
Message-Id: <66116057f788e18a6603d50a554417eee459e02c.1730386209.git.namcao@linutronix.de>
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

rt2x00usb_probe() executes a hrtimer_init() for txstatus_timer. Afterwards,
rt2x00lib_probe_dev() is called which also initializes this txstatus_timer
with the same settings.

Remove the redundant hrtimer_init() call in rt2x00usb_probe().

Signed-off-by: Nam Cao <namcao@linutronix.de>
Acked-by: Kalle Valo <kvalo@kernel.org>
Cc: linux-wireless@vger.kernel.org
---
 drivers/net/wireless/ralink/rt2x00/rt2x00usb.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/net/wireless/ralink/rt2x00/rt2x00usb.c b/drivers/net/w=
ireless/ralink/rt2x00/rt2x00usb.c
index 8fd22c69855f..a6d50149e0c3 100644
--- a/drivers/net/wireless/ralink/rt2x00/rt2x00usb.c
+++ b/drivers/net/wireless/ralink/rt2x00/rt2x00usb.c
@@ -823,8 +823,6 @@ int rt2x00usb_probe(struct usb_interface *usb_intf,
=20
 	INIT_WORK(&rt2x00dev->rxdone_work, rt2x00usb_work_rxdone);
 	INIT_WORK(&rt2x00dev->txdone_work, rt2x00usb_work_txdone);
-	hrtimer_init(&rt2x00dev->txstatus_timer, CLOCK_MONOTONIC,
-		     HRTIMER_MODE_REL);
=20
 	retval =3D rt2x00usb_alloc_reg(rt2x00dev);
 	if (retval)
--=20
2.39.5

