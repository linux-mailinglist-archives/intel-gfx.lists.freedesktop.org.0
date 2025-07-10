Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ADA0B04534
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Jul 2025 18:16:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 568A410E4E2;
	Mon, 14 Jul 2025 16:16:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; secure) header.d=gmx.de header.i=efault@gmx.de header.b="MAnIhCcI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mout.gmx.net (mout.gmx.net [212.227.15.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F2CD10E04E
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Jul 2025 04:53:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.de;
 s=s31663417; t=1752123180; x=1752727980; i=efault@gmx.de;
 bh=XGsieM+3MzDLZST4Dk/2NflMYQe9+m2mArWT+suN528=;
 h=X-UI-Sender-Class:Message-ID:Subject:From:To:Cc:Date:In-Reply-To:
 References:Content-Type:Content-Transfer-Encoding:MIME-Version:cc:
 content-transfer-encoding:content-type:date:from:message-id:
 mime-version:reply-to:subject:to;
 b=MAnIhCcI2pGI+Iei4Seb3HeAZLNM0klzyGdqiXUZMs5XfokiDEXC/VnUH2NV3sXF
 6k5fr7EzcMwkOZL2gd65znehBX3VuNcmrXDigTPqtcIadByJmMsZ6Zo1A/zyygIOS
 N+HFlUwq6nVzEnENyziMI1KaUTkeRrJUWpdgK3bjEhJ0RuxMTc94PD/YQDSkiK2DK
 +kItSpxaBqG/nSfdvIfX/sd9f4BEcOAFHBXJLoy9TB5zG/95HijSoMtMbefDAy3O6
 362bS5RiRNSFDkkw1hL3sUkdwSfnuVuuHXmh7PD31C1gZT/z1Ozla+VMnPgs5rm6q
 kigyrD44ct5JeT478g==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from homer.fritz.box ([185.146.50.32]) by mail.gmx.net (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1M8QWA-1ue9880toO-007GCi; Thu, 10
 Jul 2025 06:53:00 +0200
Message-ID: <da51a963b04f0a1b628e80a2c5df72a1609960d1.camel@gmx.de>
Subject: Re: PREEMPT_RT vs i915
From: Mike Galbraith <efault@gmx.de>
To: Ville =?ISO-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>, 
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Cc: Ben Hutchings <ben@decadent.org.uk>, linux-rt-users@vger.kernel.org, 
 intel-gfx@lists.freedesktop.org, Debian kernel maintainers
 <debian-kernel@lists.debian.org>
Date: Thu, 10 Jul 2025 06:52:58 +0200
In-Reply-To: <aG7MckLkTuzZ5LBe@intel.com>
References: <7c42fe5a6158445e150e7d63991767e44fc36d3d.camel@decadent.org.uk>
 <aG6nMhimN1lWKAEP@intel.com> <20250709194443.lkevdn6m@linutronix.de>
 <aG7MckLkTuzZ5LBe@intel.com>
Autocrypt: addr=efault@gmx.de;
 keydata=mQGiBE/h0fkRBACJWa+2g5r12ej5DQZEpm0cgmzjpwc9mo6Jz7PFSkDQGeNG8wGwFzFPKQrLk1JRdqNSq37FgtFDDYlYOzVyO/6rKp0Iar2Oel4tbzlUewaYWUWTTAtJoTC0vf4p9Aybyo9wjor+XNvPehtdiPvCWdONKZuGJHKFpemjXXj7lb9ifwCg7PLKdz/VMBFlvbIEDsweR0olMykD/0uSutpvD3tcTItitX230Z849Wue3cA1wsOFD3N6uTg3GmDZDz7IZF+jJ0kKt9xL8AedZGMHPmYNWD3Hwh2gxLjendZlcakFfCizgjLZF3O7k/xIj7Hr7YqBSUj5Whkbrn06CqXSRE0oCsA/rBitUHGAPguJfgETbtDNqx8RYJA2A/9PnmyAoqH33hMYO+k8pafEgXUXwxWbhx2hlWEgwFovcBPLtukH6mMVKXS4iik9obfPEKLwW1mmz0eoHzbNE3tS1AaagHDhOqnSMGDOjogsUACZjCJEe1ET4JHZWFM7iszyolEhuHbnz2ajwLL9Ge8uJrLATreszJd57u+NhAyEW7QeTWlrZSBHYWxicmFpdGggPGVmYXVsdEBnbXguZGU+iGIEExECACIFAk/h0fkCGyMGCwkIBwMCBhUIAgkKCwQWAgMBAh4BAheAAAoJEMYmACnGfbb41A4AnjscsLm5ep+DSi7Bv8BmmoBGTCRnAJ9oXX0KtnBDttPkgUbaiDX56Z1+crkBDQRP4dH5EAQAtYCgoXJvq8VqoleWvqcNScHLrN4LkFxfGkDdqTyQe/79rDWr8su+8TH1ATZ/k+lC6W+vg7ygrdyOK7egA5u+T/GBA1VN+KqcqGqAEZqCLvjorKVQ6mgb5FfXouSGvtsblbRMireEEhJqIQPndq3DvZbKXHVkKrUBcco4MMGDVucABAsEAKXKCwGVEVuYcM/KdT2htDpziRH4JfUn3Ts2EC6F7rXIQ4NaIA6gAvL6HdD3q
 y6yrWaxyqUg8CnZF/J5HR+IvRK+vu85xxwSLQsrVONH0Ita1jg2nhUW7yLZer8xrhxIuYCqrMgreo5BAA3+irHy37rmqiAFZcnDnCNDtJ4sz48tiEkEGBECAAkFAk/h0fkCGwwACgkQxiYAKcZ9tvgIMQCeIcgjSxwbGiGn2q/cv8IvHf1r/DIAnivw+bGITqTU7rhgfwe07dhBoIdz
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.50.3 
MIME-Version: 1.0
X-Provags-ID: V03:K1:eKi/Qa/kY4ZQyi3x6QEBMFhEbwWIRZkn6LFUHQUWrtIBSSQFUD0
 Fzf7Uf+uvdre9xjVOe4EpPquXWTttjwpWyWtNt0IweySAC2bstIw+XDn79Ggus8gXx7+xJ5
 MEQeUkBBDkbJ6FTapqaxA1lPUxjtcKG3OVQNNlo06hxBJuqtAY6X9WodApGEozzBHB1VwHA
 XqG/tOAW+sdHV76908w0Q==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:iDpEZgUTitY=;hzlgxmjcPevlLSmilqRJ/ImA+3t
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

On Wed, 2025-07-09 at 23:09 +0300, Ville Syrj=C3=A4l=C3=A4 wrote:
> On Wed, Jul 09, 2025 at 09:44:43PM +0200, Sebastian Andrzej Siewior wrote=
:
> > On 2025-07-09 20:30:26 [+0300], Ville Syrj=C3=A4l=C3=A4 wrote:
> > > >=20
> > > > It seems like the critical uncore lock is currently held in a lot o=
f
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

What does that entail?

My little i915 equipped lappy seems perfectly happy with the latest RT
kernel+DEBUG_ATOMIC_SLEEP.  The thing is an awful RT platform, but as
far as display handling goes go, it does fine at browsing as long as
you're not picky about hires frame drop (not RT related), nor does the
not very impressive looking rendering glmark2 does trigger splats.

WRT reliability, it's primary mission is to be a console, can and does
idle for days on end without dying of boredom, waking for an occasional
ssh session or OS update.. so.. check? :)

	-Mike
