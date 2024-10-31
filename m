Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C2F929B8EAF
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Nov 2024 11:08:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3854010E97A;
	Fri,  1 Nov 2024 10:08:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; secure) header.d=linutronix.de header.i=@linutronix.de header.b="xqtG4Ior";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="9eypi/Ws";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31B2810E079
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Oct 2024 15:15:02 +0000 (UTC)
From: Nam Cao <namcao@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1730387700;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=O/XUZ0eG/8vGxIrc+zbSE9aYD/gKSkD2lZMTg4+jnac=;
 b=xqtG4IorWAefgYadskGCxO7pnIYqkZyRGY96cqw5JXhqGB5dJg8Xsc8C1MtY2MsPx9Xybn
 dXMvu2LXjlZAHNXg3MAZ4Z8wv89ZKANQ48XlZo5fsSOYAhqDvEVb4D7yfUMPpbeB05roQ9
 31HxUt8ccDtysd71LFke07FMpP2yJrJJ/zkSthSwzorSdnXWwP1Y8NnngM1mrzdk3MHmJc
 W6YAmZ0eSR+SBUpm8mqIdT0QMV0n/dQVKogyJf47o3WpuyNbLh3pMUsoc5LgZpa4QXkx+0
 ylQ9YYp+Tzau/YNo1mmu/LKS3HvGg/Cry6EKkMmQrwFlSVTxnOLaNCj7C66NQQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1730387700;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=O/XUZ0eG/8vGxIrc+zbSE9aYD/gKSkD2lZMTg4+jnac=;
 b=9eypi/WsRd1XzOfKRQiTbpbU4pzg79qjgzqJ1M+hTuU3qPOLV43MpTKuQRNIIkFYqRE99u
 FAMhSRPSApZSbIDA==
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
Subject: [RESEND PATCH v2 00/19] hrtimers: Consolidate hrtimer initialization
 - Part 1
Date: Thu, 31 Oct 2024 16:14:14 +0100
Message-Id: <cover.1730386209.git.namcao@linutronix.de>
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

(resend due to broken emails)

This is a follow up to version 1, which can be found here:

    https://lore.kernel.org/lkml/cover.1729864615.git.namcao@linutronix.de/

hrtimers must be initialized with a hrtimer_init() variant, and after that
the timer's callback function must be setup separately.

This separate initialization is error prone and awkward to use. The
separate initialization is also problematic for a clean Rust abstraction.

A combined setup function like timer_setup() is less error prone and
simpler to use.

This first part of the conversion provides:

  - a set of hrtimer_setup*() variants, which take the function pointer as
    argument.

  - hrtimer_update_function() which allows to change the callback function
    after initialization with the proper safety checks in place.

  - conversion of the hrtimer_init*_on_stack() variants

  - some minor cleanups

The remaining users will be converted in follow up series.

Most conversions were done with Coccinelle. See sematic patch below.

Changes versus v1:
  - Open code kvm_xen_init_vcpu() (Sean)
  - Drop the can/bcm patch (Oliver)
  - Folded the removal of hrtimer_init_sleeper() (tglx)
  - Update change logs and cover letter

The series applies on top of:

    git://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git timers/core

and is also available from git:

    git://git.kernel.org/pub/scm/linux/kernel/git/tglx/devel.git hrtimer-se=
tup-part1-v2

Best regards,

Nam

---
virtual patch
@@ expression timer, clock, mode, func; @@
- hrtimer_init(timer, clock, mode);
  ...
- timer->function =3D func;
+ hrtimer_setup(timer, func, clock, mode);

@@ expression timer, clock, mode, func; @@
- hrtimer_init(&timer, clock, mode);
  ...
- timer.function =3D func;
+ hrtimer_setup(&timer, func, clock, mode);

@@ expression timer, clock, mode, func; @@
- hrtimer_init_on_stack(&timer, clock, mode);
  ...
- timer.function =3D func;
+ hrtimer_setup_on_stack(&timer, func, clock, mode);

@@ expression timer, clock, mode; @@
- hrtimer_init_sleeper_on_stack(timer, clock, mode);
+ hrtimer_setup_sleeper_on_stack(timer, clock, mode);

---
 arch/x86/kvm/xen.c                             |  12 +--
 drivers/gpu/drm/i915/i915_request.c            |  17 ++--
 drivers/net/wireless/ralink/rt2x00/rt2x00usb.c |   2 -
 fs/aio.c                                       |   2 +-
 include/linux/hrtimer.h                        |  51 +++++++-----
 include/linux/wait.h                           |   4 +-
 io_uring/io_uring.c                            |   7 +-
 io_uring/timeout.c                             |   1 -
 kernel/futex/core.c                            |   6 +-
 kernel/sched/idle.c                            |   4 +-
 kernel/time/alarmtimer.c                       |   9 +-
 kernel/time/hrtimer.c                          | 110 ++++++++++++++++++---=
----
 kernel/time/sleep_timeout.c                    |   2 +-
 net/core/pktgen.c                              |   2 +-
 14 files changed, 136 insertions(+), 93 deletions(-)
