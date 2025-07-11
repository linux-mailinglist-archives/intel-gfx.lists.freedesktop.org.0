Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DEC32B04535
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Jul 2025 18:16:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E76110E4E3;
	Mon, 14 Jul 2025 16:16:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; secure) header.d=gmx.de header.i=efault@gmx.de header.b="Rqu1tG6z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3EBD10E251
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Jul 2025 02:41:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.de;
 s=s31663417; t=1752201718; x=1752806518; i=efault@gmx.de;
 bh=AS5LF7FXkZcNVT5ii5sVZHRlbxXuRD6RP+Kz5Tb9dRc=;
 h=X-UI-Sender-Class:Message-ID:Subject:From:To:Cc:Date:In-Reply-To:
 References:Content-Type:Content-Transfer-Encoding:MIME-Version:cc:
 content-transfer-encoding:content-type:date:from:message-id:
 mime-version:reply-to:subject:to;
 b=Rqu1tG6zg6VqRhj8o/htU292kvBRi2dTibs3Ol8zp9mcr2aOYERb3dkPe1aKBoOl
 dscQo5nvZthsw5HA0IKkFiwqMOTjzEvypttJ4xtpr8PLH29vfDY/F8xYSjZ9IuVDl
 cdv1WA0m3cO0F9kGg5qzaDbveQQNhSK61NvPX2qCbEVI5ELvYKFMFJuENuBHFHiYW
 jIrrSoA6yCxvf2HPHBNtiXb3ROWWK+nDgN1Say/AFO9eOUTcKIVkrubSttpOdeM/o
 C5b5z9ac1kjdpY8woSrHN/ZYlLwHMey3BK4PyLy/TfQZzPeX9HGcvuIgYguQiZlul
 j8qN0zFTeRjOuWillg==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from homer.fritz.box ([185.146.50.87]) by mail.gmx.net (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1N33Il-1umSk20X5p-011Nmd; Fri, 11
 Jul 2025 04:36:11 +0200
Message-ID: <641d3228244517fd1cfb4a103339e86a222cae2b.camel@gmx.de>
Subject: Re: PREEMPT_RT vs i915
From: Mike Galbraith <efault@gmx.de>
To: Ville =?ISO-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Cc: Sebastian Andrzej Siewior <bigeasy@linutronix.de>, Ben Hutchings
 <ben@decadent.org.uk>, linux-rt-users@vger.kernel.org, 
 intel-gfx@lists.freedesktop.org, Debian kernel maintainers
 <debian-kernel@lists.debian.org>
Date: Fri, 11 Jul 2025 04:36:08 +0200
In-Reply-To: <aG_hNb-c_m0yfVE4@intel.com>
References: <7c42fe5a6158445e150e7d63991767e44fc36d3d.camel@decadent.org.uk>
 <aG6nMhimN1lWKAEP@intel.com> <20250709194443.lkevdn6m@linutronix.de>
 <aG7MckLkTuzZ5LBe@intel.com>
 <da51a963b04f0a1b628e80a2c5df72a1609960d1.camel@gmx.de>
 <aG_hNb-c_m0yfVE4@intel.com>
Autocrypt: addr=efault@gmx.de;
 keydata=mQGiBE/h0fkRBACJWa+2g5r12ej5DQZEpm0cgmzjpwc9mo6Jz7PFSkDQGeNG8wGwFzFPKQrLk1JRdqNSq37FgtFDDYlYOzVyO/6rKp0Iar2Oel4tbzlUewaYWUWTTAtJoTC0vf4p9Aybyo9wjor+XNvPehtdiPvCWdONKZuGJHKFpemjXXj7lb9ifwCg7PLKdz/VMBFlvbIEDsweR0olMykD/0uSutpvD3tcTItitX230Z849Wue3cA1wsOFD3N6uTg3GmDZDz7IZF+jJ0kKt9xL8AedZGMHPmYNWD3Hwh2gxLjendZlcakFfCizgjLZF3O7k/xIj7Hr7YqBSUj5Whkbrn06CqXSRE0oCsA/rBitUHGAPguJfgETbtDNqx8RYJA2A/9PnmyAoqH33hMYO+k8pafEgXUXwxWbhx2hlWEgwFovcBPLtukH6mMVKXS4iik9obfPEKLwW1mmz0eoHzbNE3tS1AaagHDhOqnSMGDOjogsUACZjCJEe1ET4JHZWFM7iszyolEhuHbnz2ajwLL9Ge8uJrLATreszJd57u+NhAyEW7QeTWlrZSBHYWxicmFpdGggPGVmYXVsdEBnbXguZGU+iGIEExECACIFAk/h0fkCGyMGCwkIBwMCBhUIAgkKCwQWAgMBAh4BAheAAAoJEMYmACnGfbb41A4AnjscsLm5ep+DSi7Bv8BmmoBGTCRnAJ9oXX0KtnBDttPkgUbaiDX56Z1+crkBDQRP4dH5EAQAtYCgoXJvq8VqoleWvqcNScHLrN4LkFxfGkDdqTyQe/79rDWr8su+8TH1ATZ/k+lC6W+vg7ygrdyOK7egA5u+T/GBA1VN+KqcqGqAEZqCLvjorKVQ6mgb5FfXouSGvtsblbRMireEEhJqIQPndq3DvZbKXHVkKrUBcco4MMGDVucABAsEAKXKCwGVEVuYcM/KdT2htDpziRH4JfUn3Ts2EC6F7rXIQ4NaIA6gAvL6HdD3q
 y6yrWaxyqUg8CnZF/J5HR+IvRK+vu85xxwSLQsrVONH0Ita1jg2nhUW7yLZer8xrhxIuYCqrMgreo5BAA3+irHy37rmqiAFZcnDnCNDtJ4sz48tiEkEGBECAAkFAk/h0fkCGwwACgkQxiYAKcZ9tvgIMQCeIcgjSxwbGiGn2q/cv8IvHf1r/DIAnivw+bGITqTU7rhgfwe07dhBoIdz
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.50.3 
MIME-Version: 1.0
X-Provags-ID: V03:K1:o4zZTVGqpxGlbgWb5nQeJpjFfUYfOZx48GFFoM78Fr3Zz0lbOn7
 eWlqjJLqNicsf5wGjQjIT98tqjQ2/sAGaqKiBsEexTT9PvNSZeGo56fwz9TBB7bQGDNGeh3
 VEwnwnqmDLjpqTxhLXYp34FBw3hu95g3lnYRZvfGwVvs/K74H6qmKoHhwI1CdgSm1uYuGHU
 2Gd1Dnk33KxOlSwMPXizQ==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:654jAH+zWoA=;EyJX19YM+pX1hKfK7k4p9fNdQ5A
 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
X-Mailman-Approved-At: Mon, 14 Jul 2025 16:16:06 +0000
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

On Thu, 2025-07-10 at 18:50 +0300, Ville Syrj=C3=A4l=C3=A4 wrote:
> On Thu, Jul 10, 2025 at 06:52:58AM +0200, Mike Galbraith wrote:
> > >=20
> > > Until someone actually does the work to confirm the thing is working
> > > reliably there's no point in posting anything.
> >=20
> > What does that entail?
>=20
> Basic testing would be something like this:
> - enable CONFIG_DRM_I915_DEBUG_VBLANK_EVADE
> - set i915.enable_dsb=3D0 to make sure everything takes the
> =C2=A0 mmio path

I can give that a go while tossing rocks to check for moaning..

> - stress the heck out of it and make sure the histogram
> =C2=A0 doesn't look significantly worse than on !RT
> =C2=A0 (kms_atomic_transition --extended might take care of the display
> =C2=A0 side here, but it should probably be accompanied with some
> =C2=A0 horrendous system loads which is a less well defined part)
> - ideally do that on a potato
> =C2=A0 (some VLV/CHV (Atom) thing would probably be a good candidate)
> - repeat with lockdep enabled to make everything even harder

..forwarding any performance goop emitted, but lockdep runs out of lock
counting fingers and turns itself off in short order with RT builds.

	-Mike
