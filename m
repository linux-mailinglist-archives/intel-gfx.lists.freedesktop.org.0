Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D9709B8EAB
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Nov 2024 11:08:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9AD710E970;
	Fri,  1 Nov 2024 10:08:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; secure) header.d=linutronix.de header.i=@linutronix.de header.b="D8R3JnkO";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="vSyDZ/mN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B13410E079
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Oct 2024 15:15:04 +0000 (UTC)
From: Nam Cao <namcao@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1730387702;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=HdVqhgFUx4wGhiyBVzB1j0RExe8nGmkufQErz8orPxA=;
 b=D8R3JnkO+m2baGKosWMEPCCgHEh93eEj3i5YM9IrL8ArYpE8sw2m3aMJr+wEoCSXY8Sk0o
 cNAwkYpIWaFLG/Hq2XJiVUcS+2TwzoEBxaJdnGTgTdUNaZDYPxCUahyT1R1Q2ZLKgAtlkC
 RGS4x58PXmjWRlEO06mYDbfjn42Bl5gCV5yLqmk+XU+l7pzFjdQcD1DB4hvBdhkbxvKYVn
 VQIs9hdbp/4lysS0E9Lr73R3hrjyUE0TZ1qUF3uy/S4GxCdrvN8y8ONJx8mE8TcNJpaftx
 o+H+v+lYJ5bnvSf7068cGQ9ReuPpyPFB2jhD2I6tEYa4wi9D8UuYsg7tL5wujQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1730387702;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=HdVqhgFUx4wGhiyBVzB1j0RExe8nGmkufQErz8orPxA=;
 b=vSyDZ/mNZsHFwmAZ5X6uDDFZnl5blvdtESX/4yICVSJ/nHMJu3Ss4nFWwbP39h1ewJkXLG
 oKAz3ELATfAAFmAA==
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
 kvm@vger.kernel.org
Subject: [RESEND PATCH v2 03/19] KVM: x86/xen: Initialize hrtimer in
 kvm_xen_init_vcpu()
Date: Thu, 31 Oct 2024 16:14:17 +0100
Message-Id: <9c33c7224d97d08f4fa30d3cc8687981c1d3e953.1730386209.git.namcao@linutronix.de>
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

The hrtimer is initialized in the KVM_XEN_VCPU_SET_ATTR ioctl. That caused
problem in the past, because the hrtimer can be initialized multiple times,
which was fixed by commit af735db31285 ("KVM: x86/xen: Initialize Xen timer
only once"). This commit avoids initializing the timer multiple times by
checking the field 'function' of struct hrtimer to determine if it has
already been initialized.

This is not required and in the way to make the function field private.

Move the hrtimer initialization into kvm_xen_init_vcpu() so that it will
only be initialized once.

Signed-off-by: Nam Cao <namcao@linutronix.de>
Acked-by: Sean Christopherson <seanjc@google.com>
Cc: Paolo Bonzini <pbonzini@redhat.com>
Cc: x86@kernel.org
Cc: kvm@vger.kernel.org
---
 arch/x86/kvm/xen.c | 12 ++----------
 1 file changed, 2 insertions(+), 10 deletions(-)

diff --git a/arch/x86/kvm/xen.c b/arch/x86/kvm/xen.c
index 622fe24da910..a909b817b9c0 100644
--- a/arch/x86/kvm/xen.c
+++ b/arch/x86/kvm/xen.c
@@ -263,13 +263,6 @@ static void kvm_xen_stop_timer(struct kvm_vcpu *vcpu)
 	atomic_set(&vcpu->arch.xen.timer_pending, 0);
 }
=20
-static void kvm_xen_init_timer(struct kvm_vcpu *vcpu)
-{
-	hrtimer_init(&vcpu->arch.xen.timer, CLOCK_MONOTONIC,
-		     HRTIMER_MODE_ABS_HARD);
-	vcpu->arch.xen.timer.function =3D xen_timer_callback;
-}
-
 static void kvm_xen_update_runstate_guest(struct kvm_vcpu *v, bool atomic)
 {
 	struct kvm_vcpu_xen *vx =3D &v->arch.xen;
@@ -1070,9 +1063,6 @@ int kvm_xen_vcpu_set_attr(struct kvm_vcpu *vcpu, stru=
ct kvm_xen_vcpu_attr *data)
 			break;
 		}
=20
-		if (!vcpu->arch.xen.timer.function)
-			kvm_xen_init_timer(vcpu);
-
 		/* Stop the timer (if it's running) before changing the vector */
 		kvm_xen_stop_timer(vcpu);
 		vcpu->arch.xen.timer_virq =3D data->u.timer.port;
@@ -2235,6 +2225,8 @@ void kvm_xen_init_vcpu(struct kvm_vcpu *vcpu)
 	vcpu->arch.xen.poll_evtchn =3D 0;
=20
 	timer_setup(&vcpu->arch.xen.poll_timer, cancel_evtchn_poll, 0);
+	hrtimer_init(&vcpu->arch.xen.timer, CLOCK_MONOTONIC, HRTIMER_MODE_ABS_HAR=
D);
+	vcpu->arch.xen.timer.function =3D xen_timer_callback;
=20
 	kvm_gpc_init(&vcpu->arch.xen.runstate_cache, vcpu->kvm);
 	kvm_gpc_init(&vcpu->arch.xen.runstate2_cache, vcpu->kvm);
--=20
2.39.5

