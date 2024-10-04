Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 92B66990184
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Oct 2024 12:44:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD73110E289;
	Fri,  4 Oct 2024 10:44:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; secure) header.d=linutronix.de header.i=@linutronix.de header.b="F4ZxACCd";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="I2WbXEph";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 032DE10E27D;
 Fri,  4 Oct 2024 10:44:51 +0000 (UTC)
Date: Fri, 4 Oct 2024 12:44:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1728038689;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=o6B6gvnrO8I7TCnILAWRKtXJUiUCLDNl6LRrHw3VzyU=;
 b=F4ZxACCdhigUyQXGvF5x65CUAqM0ah+5DOr4Ua7bnsTLMPQ4UAMoBLOgftmVNGQey1Agxx
 zg9GLXKYt0tpwgoGxc7RqLDlJm/2egF2+DFSdsA7YZbqzmU6hVSJxAfug2c29M6921ErZE
 MKwlkUCo8BY6D/s4j7EPzGFKZi7nAXAeZgryG/gTrsXaYowOCvWI/C0LDKOKuUrg/JMNxT
 2/pmSK70WFl/2I/NpRb58+TuNhNmm1T44QzaxRUkw3jI+CcYvP35pn+ApCebsMS1NRC2hf
 M3cEbKJNawYpDVOq8CkZhdIUKd5iqBGK2ZS+hrlcvZ5ZABW6U5w5GASEq+9XWg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1728038689;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=o6B6gvnrO8I7TCnILAWRKtXJUiUCLDNl6LRrHw3VzyU=;
 b=I2WbXEphzYQsbWkKjfmT5XHWzRhRB6yHavx0Ex4pJyHBWxr/IHXHoq1/kpQA3SamlVD1ox
 o9VpI94onxZhY/DQ==
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Thomas Gleixner <tglx@linutronix.de>, Tvrtko Ursulin <tursulin@ursulin.net>
Subject: Re: [PATCH v3 0/8] drm/i915: PREEMPT_RT related fixups.
Message-ID: <20241004104448.as7iuUly@linutronix.de>
References: <20240628130601.1772849-1-bigeasy@linutronix.de>
 <20241002162543.TKbd-8g0@linutronix.de>
 <Zv17oKlIImyfg_KI@intel.com>
 <20241004064951.XLw7TFbS@linutronix.de>
 <Zv-n2h0gsquKOvXu@intel.com>
 <20241004084525.333iWV-t@linutronix.de>
 <Zv-wTDujdFuH_wIQ@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <Zv-wTDujdFuH_wIQ@intel.com>
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

On 2024-10-04 12:07:24 [+0300], Ville Syrj=C3=A4l=C3=A4 wrote:
> > what happens if this gets delayed? Just flicker or worse?
>=20
> In the best best case it just gets you a corrupted frame
> of some sort, in the worst case the hardware falls over.
> Depends on what kind of update is happening, and what
> platform we're dealing with.
>=20
> We've tried to mitigate some of the worst issues by
> trying to order the register writes more carefully,
> but some of the ordering constraints (eg. scalers vs.
> DDB) are more or less in conflict with each other
> so making it 100% safe seems impossible.

So based on what you are saying, this _has_ to happen with disabled
interrupts.

> >=20
> > Is this something that affects all i915 based HW or only old ones? As
> > far as I remember, there is a register lock which is only required on
> > older HW.
>=20
> Currently it affects everything. There is a new double buffer
> latching inhibit bit on some of the very latest platforms that
> we could probably use to make things more safe if vblank evasion
> fails, but we've not hooked that up. But vblank evasion would still
> be necessary at least for cursor updates since those are
> done as mailbox style updates (ie. multiple updates per frame)
> and there is no way to guarantee forward progress without vblank
> evasion.

This sounds sad. Especially since the delay is at 100us.

> Register access locks aren't relevant here, and most
> register accesses in the vblank evade critical section
> are lockless anyway. The locks were too expensive and we
> determined that we an safely use lockless accesses here.

The register lock question was only an example of something that is not
required on newish hardware. Also disabling interrupts within in patch
1, 2 would require to make uncore:lock a raw_spinlock_t since it is
acquire there.

What do suggest as in how do we move forward? In terms of testing, I
have here an i7 sandy bridge with embedded GPU.

Sebastian
