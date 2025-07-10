Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD7EEAFF9FD
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Jul 2025 08:41:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67CA710E883;
	Thu, 10 Jul 2025 06:41:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; secure) header.d=linutronix.de header.i=@linutronix.de header.b="uzpyZwBl";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="lbS8114A";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7551F10E883
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Jul 2025 06:41:39 +0000 (UTC)
Date: Thu, 10 Jul 2025 08:41:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1752129698;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=TxFDmPmW7tEsz5guEbRajSBXKybTBURygzPSLi41GU4=;
 b=uzpyZwBlfTQQa5M8R7K7y2sF8vIro2v+MycEgpeEiFpbhl+N2rgO+UEU/dCQWsvlRto4Yl
 32urVaUows/RO2JUwjDUr/ci5UZ9qShO4+Il/nv31Mu4KXfrthhnXduRUnAHB/1yVC6xJT
 /TwNCH8i74SQ49Zgg12nxfS85LwEy0WJuFuyCa0K7ADifupKXB0HIB563wdELj3dtG2pdv
 WgMm5es56pvBzAJfq/J01xDI19rQRhrGKuVUcLqBwc0F2dUjndS4juvSKJcjfA+RcU8Uy8
 0Bmfhkigy7NHaTYSMfke/6DmtMdU+tQDDveBRQQ/z18qF1yEaoqMe8dQbwz/pQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1752129698;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=TxFDmPmW7tEsz5guEbRajSBXKybTBURygzPSLi41GU4=;
 b=lbS8114AXm4BFVFCinyfD7bNgqwQGeLvlgPoMVoEvqF/LHWz4thJDZoCem1HY+OZ5BUIMx
 HFxqs9GeYUKTtLCw==
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: Ben Hutchings <ben@decadent.org.uk>, linux-rt-users@vger.kernel.org,
 intel-gfx@lists.freedesktop.org,
 Debian kernel maintainers <debian-kernel@lists.debian.org>
Subject: Re: PREEMPT_RT vs i915
Message-ID: <20250710064136.rur6FoOU@linutronix.de>
References: <7c42fe5a6158445e150e7d63991767e44fc36d3d.camel@decadent.org.uk>
 <aG6nMhimN1lWKAEP@intel.com>
 <20250709194443.lkevdn6m@linutronix.de>
 <aG7MckLkTuzZ5LBe@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <aG7MckLkTuzZ5LBe@intel.com>
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

On 2025-07-09 23:09:22 [+0300], Ville Syrj=C3=A4l=C3=A4 wrote:
> On Wed, Jul 09, 2025 at 09:44:43PM +0200, Sebastian Andrzej Siewior wrote:
> > On 2025-07-09 20:30:26 [+0300], Ville Syrj=C3=A4l=C3=A4 wrote:
> > > >=20
> > > > It seems like the critical uncore lock is currently held in a lot of
> > > > places and potentially for a long time.
> > >=20
> > > It shouldn't be held for that long. I think it should just be
> > > a raw spinlock.
> >=20
> > What about I resubmit the series and we look again? I don't think the
> > lock should be made raw just to be done with it.
>=20
> Until someone actually does the work to confirm the thing is working
> reliably there's no point in posting anything.

Well it works on my machine and this machine dose not pass the code
paths that I patch.

Every patch made was done because someone reported an error/ warning and
confirmed afterwards that the patch fixes it for them and they can use
the machine and don't observe anything.

> And IIRC the other remaining problem with RT was the spinlocks used
> inside tracepoints (which is uncore lock, and probably some vblank
> locks). So that too needs some kind of solution because it's going to
> very hard to debug the timing sensitive parts without the tracepoints.

no, not just that. Making the lock raw led to latency spikes in simple
spikes and I just disabled trace points. It could be worked around by
taking the lock if the tracepoint is enabled and then invoking the
tracepoint unconditionally and not taking the lock anymore. Steven made
a suggestion a while ago how to put this in macro as far as I remember.

Looking at series there are things like execlists_dequeue_irq() which do
local_irq_disable() follwed by spin_lock() which is a no-no and
explained in Documentation/locking/locktypes.rst. There is also
intel_guc_send_busy_loop() no considering RCU read-locks for their
atomic detection. I have 8 patches in total and one in the pipe.

I have patches with Acks by Tvrtko Ursulin but I remain caring them.
I can repost it but usually the bot complains, the bot gets retriggered.
The first patch in series is vblank detection and I've been told this is
old code and scares people. So that might be why the remaining part is
ignored.

Sebastian
