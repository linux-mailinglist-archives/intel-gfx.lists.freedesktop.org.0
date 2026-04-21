Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SAadDwod52lR4AEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2026 08:45:30 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9660D4371A7
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2026 08:45:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F51B10E7F5;
	Tue, 21 Apr 2026 06:45:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=google.com header.i=@google.com header.b="GG49rlbU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-dl1-f50.google.com (mail-dl1-f50.google.com [74.125.82.50])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7834010E7EA
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Apr 2026 06:45:27 +0000 (UTC)
Received: by mail-dl1-f50.google.com with SMTP id
 a92af1059eb24-12c8c9c4cd8so849884c88.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Apr 2026 23:45:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1776753927; cv=none;
 d=google.com; s=arc-20240605;
 b=eJ8tn0zWcQfo8AsIXKj2RNM35KjUXMy+KEcPSTzTUCE1Gr2SGgeN4V2mC6poSQc79x
 dA+Hg5pjdQHTkUS2QtVt38HV5OTpDpijRvNw6DUjYQaC4nC2HA+Nl+HAPlb+VKivvfd2
 Kz7gdiZ3MGsJ7paJxEa2gyMdXLgzfYzm9zZBECwle0qI8dFhhtZgrRtFu7aw1gohu6dK
 JNJT+AREaZ0FAaHpNFsRZ4SkqdsfWZHgkGfcAeifoMxzrkCQpouEEkdP/NW7bBHS7N8L
 +dMUXmMLRNOXmmMvUtSjHZebNYvG95y4Pt0A4bcoOwquvrJF9MRKuQsu77eoSd+52N2h
 zqkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:dkim-signature;
 bh=2kOeojKcaj/EwTY7GyYNrTRVTHflluA95rwy8A5+dVo=;
 fh=ugnGNIc+J3n0KNUvVh0aH5r9MrS/df7J3GNFuLkmUeM=;
 b=RTfxuVfbnutqMKXUqozGIlufNlIWD9MznNYdBK4X1N15WefScTbT5SHr6pa7P7cxNd
 o3JJA9V/etNCFjJr0+NF+U0dYdNC6qJLGKNwf+hoDlrxbJNNNL3aB322UJ1B72+S7KsH
 HsIrD2uE23oEH4Humkif5DGEFOcTIivCs3LnV2ZgixmPLyZidwbZSFbMF126oNNdtR7A
 dM2teM/32uzh28Px6UT0EBf3AwoDS5TxVKwGVzIdd5IBm60B/B1K26nH9QLN8OGkPyS6
 UrKOqXLQXthR3lqlz0DUE8r1M2UfWH1Zrbm0PUZko/gS6V+GoZN4XhWI97QpsAOQ0JGs
 YnKg==; darn=lists.freedesktop.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20251104; t=1776753927; x=1777358727;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=2kOeojKcaj/EwTY7GyYNrTRVTHflluA95rwy8A5+dVo=;
 b=GG49rlbUsmQa7EguWWB0//njducauesgKr7hmIsrRgxrk9VSt//dtRn+imPmlY858j
 TCq+h7ZZLvIzFcobesl4kG/9df6kD60D0M6k6fccb+LlxP4HQ7GrI0BLQnhVSd2JHogN
 wL/IDWgqXR6hBEbyZhO2i1mU1YfB9Ymz/w+XZgld4qgqQyBT1sXIEJzmyepELxAUJoww
 Bq9dl2YUVhCEJYaJxROpzYmXqhspWf3aAtUwmK4OKd3ahTQ9pVTYAZ3gUGVBTd2pjoDO
 /MDQ4yPfJE0cilVQCkL/AQvX90d5jx148Dj+oFKpB7Ndha5PhZp3BbFwJ0MQj6MMYXT5
 GMQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1776753927; x=1777358727;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=2kOeojKcaj/EwTY7GyYNrTRVTHflluA95rwy8A5+dVo=;
 b=ZgA12ff+d+jlf4g2cHr8KwPOI+EJElkkXtlAnOl2+6RAjA7ZMBVmgwduZgie+ABWET
 odP51fFhk1L3kZDiujQuTc7oDk1VMe62zQ9UJTkr+6VNYIIQowJBWWAwphPNW4Fg4LYb
 c6bVWimpehWjqj5T3Zvj+dpA/EKP0zheA1mZZ4uMrI4EVetqn0i8/u4IlZbOVPxD5iJT
 Fp5XIPQIiKPOWq+2zZ79/y+FPZYLnInyUX+J0bBLqiHnKQodLPMQdRnOhJ1T9Yiyf2Tl
 mkjFAL8bVqT0jobRDglLy49lArq8kTFrR0PR70uIyqAhI3unpEgTqqvXrHsPEoDn7DBD
 GXmA==
X-Forwarded-Encrypted: i=1;
 AFNElJ/BgvC8lnk+/63SkiOZ2meqFAJ0puHSu9/5UkNMsVxcVpNAwlvg6bRje0Q2J+f3j55UqEI2Z8gA/8U=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yzu/PLGjC6Tb6tE34t1ZHKHegcCG5bzwxsHjIeoSm6XS4KgRtLY
 7EaVXxR9mQTPMr29O+f8TUCrkIoVDQ1yo4Ra0KwVQwaI/Ylacr4Cm0a1BVwl29fCEKDvCUVZyXg
 OYZcuIlSI9zG6VsPcNFVddyaDhVgGv5cTzK9f2v4=
X-Gm-Gg: AeBDieskB/Ai10nBmwfAudhkZ+9pa9R1EGzKzRSQPNG49GtYQWN4N8k4s54hlAfDud8
 i2T090SwyTfTUetAbz2BhS1+GZSBqeFSutErAc6eoSbGNI5FzgegvMSohlCynv7CxLKS7LtjUzI
 ZhvTHgzr4mYuvGN/oa5mOhDsNBOFD76zNHXsk9jU/olWT0cBPrFmlWzGLFV4dGGJZlOdeaZ/bK5
 gzrvxCcVp6rF+QDenIhc75xZo9/75sDKHgGblci9e+kuYwaMUDS2l3jlinR7d4IrQLT6vLc6JuT
 12PfLhL2gi1LfD4fg8HxAH6Z4vrL8HxePNLvuA1AW3MXEu2WEdiPYlHzcg==
X-Received: by 2002:a05:7022:423:b0:12d:b2ad:fded with SMTP id
 a92af1059eb24-12db2adff6cmr715143c88.10.1776753925997; Mon, 20 Apr 2026
 23:45:25 -0700 (PDT)
MIME-Version: 1.0
References: <af005996-05e9-4336-8450-d14ca652ba5d@intel.com>
 <20260327163100.GL3738010@noisy.programming.kicks-ass.net>
 <20260327164353.GM3739106@noisy.programming.kicks-ass.net>
 <df391df3-3a3b-4a65-b3c7-ffe3ab50ee83@intel.com>
 <20260330195037.GW2872@noisy.programming.kicks-ass.net>
 <20260420130318.GD3102924@noisy.programming.kicks-ass.net>
In-Reply-To: <20260420130318.GD3102924@noisy.programming.kicks-ass.net>
From: John Stultz <jstultz@google.com>
Date: Mon, 20 Apr 2026 23:45:12 -0700
X-Gm-Features: AQROBzC7sYC8u1apFvewiWwTXVpQJW6VmrDu78ol2n6JMrUhSWiPWbDmqRj15Kk
Message-ID: <CANDhNCq=oizzud3hH3oqGzTrcjB8OwGeineJ3mwZuGdDWG8fRQ@mail.gmail.com>
Subject: Re: Regression on linux-next (next-20260324 )
To: Peter Zijlstra <peterz@infradead.org>
Cc: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 willy@infradead.org, linux-kernel@vger.kernel.org, 
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, 
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, 
 "Kurmi, Suresh Kumar" <suresh.kumar.kurmi@intel.com>, "Saarinen,
 Jani" <jani.saarinen@intel.com>, 
 ravitejax.veesam@intel.com, K Prateek Nayak <kprateek.nayak@amd.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
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
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[google.com:s=arc-20240605:i=1];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_DKIM_ALLOW(-0.20)[google.com:s=20251104];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:peterz@infradead.org,m:chaitanya.kumar.borah@intel.com,m:willy@infradead.org,m:linux-kernel@vger.kernel.org,m:intel-xe@lists.freedesktop.org,m:suresh.kumar.kurmi@intel.com,m:jani.saarinen@intel.com,m:ravitejax.veesam@intel.com,m:kprateek.nayak@amd.com,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[jstultz@google.com,intel-gfx-bounces@lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jstultz@google.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[google.com:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[10];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,infradead.org:email]
X-Rspamd-Queue-Id: 9660D4371A7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, Apr 20, 2026 at 6:03=E2=80=AFAM Peter Zijlstra <peterz@infradead.or=
g> wrote:
>
> On Mon, Mar 30, 2026 at 09:50:37PM +0200, Peter Zijlstra wrote:
> > On Mon, Mar 30, 2026 at 01:56:33PM +0530, Borah, Chaitanya Kumar wrote:
> > > > diff --git a/kernel/locking/ww_mutex.h b/kernel/locking/ww_mutex.h
> > > > index b1834ab7e782..bb8b410779d4 100644
> > > > --- a/kernel/locking/ww_mutex.h
> > > > +++ b/kernel/locking/ww_mutex.h
> > > > @@ -42,7 +42,7 @@ __ww_waiter_last(struct mutex *lock)
> > > >           struct mutex_waiter *w =3D lock->first_waiter;
> > > >           if (w)
> > > > -         w =3D list_prev_entry(w, list);
> > > > +         w =3D __ww_waiter_prev(lock, w);
> > > >           return w;
> > > >   }
> > > Thank you for the response, Peter. Unfortunately, the issue is still =
seen
> > > with this change.
> >
> > Bah, indeed. Looking at this after the weekend I see that it's actually
> > wrong.
> >
> > But I haven't yet had a new idea. I don't suppose there is a relatively
> > easy way to reproduce this issue outside of your CI robot?
> >
> > My current working thesis is that since this is graphics, this is
> > ww_mutex related. I'll go over this code once more...

So I tripped over this in my own testing today preping proxy patches,
bisecting it down to the same problematic commit 25500ba7e77c
("locking/mutex: Remove the list_head from struct mutex").

Inteed it does seem related to ww_mutexes, as I can pretty easily
reproduce it with defconfig + CONFIG_WW_MUTEX_SELFTEST=3Dy  using
qemu-system-x86

Where the test will basically hang on bootup.

> Since you've not provided a reproducer, can I ask you to try the below?
>

Unfortunately that patch doesn't seem to sort it (see the same
behavior).  I'm about cooked for tonight so I'll have to look more
closely tomorrow.

thanks
-john
