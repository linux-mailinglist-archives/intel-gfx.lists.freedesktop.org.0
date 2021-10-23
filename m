Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B4247439718
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Oct 2021 15:05:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CB7189FF7;
	Mon, 25 Oct 2021 13:05:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mout.gmx.net (mout.gmx.net [212.227.17.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77EAF6E0D1
 for <intel-gfx@lists.freedesktop.org>; Sat, 23 Oct 2021 11:55:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1634990147;
 bh=res/3O0GMTeGCKjSyb2Qg5uN2cFU/AY8siZQg1mF5QQ=;
 h=X-UI-Sender-Class:Date:From:To:Cc:Subject:References:In-Reply-To;
 b=Hai1Y+9YJ1yZYvYx5ERrvoQeLSQO1j7MIFG7DMtdJBLrm+o5146kTmPfds7UKTgbO
 H3+O3aVMIfWOn4zICDvIZHIqazAO63GwlgLTSgkqmcAJvRkEp4MLO54kQjx/5a3T9T
 YCaTaT05ZXo0xiLE/rPcCtvDUE2/o26InHAkthPc=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from titan ([79.150.72.99]) by mail.gmx.net (mrgmx105
 [212.227.17.174]) with ESMTPSA (Nemesis) id 1N0oBx-1ms2va1SUf-00wns9; Sat, 23
 Oct 2021 13:50:23 +0200
Date: Sat, 23 Oct 2021 13:50:20 +0200
From: Len Baker <len.baker@gmx.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Len Baker <len.baker@gmx.com>, Daniel Vetter <daniel@ffwll.ch>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 David Airlie <airlied@linux.ie>, Kees Cook <keescook@chromium.org>,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-hardening@vger.kernel.org, linux-kernel@vger.kernel.org
Message-ID: <20211023115020.GC4145@titan>
References: <20211003104258.18550-1-len.baker@gmx.com>
 <20211011092304.GA5790@titan> <87k0ihxj56.fsf@intel.com>
 <YWbIQmD1TGikpRm2@phenom.ffwll.local> <20211016111602.GA1996@titan>
 <877deatzz2.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <877deatzz2.fsf@intel.com>
X-Provags-ID: V03:K1:47ElEXUKpxCUG+/3Do1LJlXYFn+geMLaJzbVA+TEePVM4KbZGhd
 PNuBPLjLqHG8+cxLvUPBNryyPZh1IBWya1y/lJzRLek5XpAvsdvUkHLdW+qax3tvcIH9Rym
 bk4edEh4T3RLaV+XAzrxnlCeHzM55j+WsesU11BI0etWs9lO0xVCJH2m/O/T1vE5hlsDaYM
 snyP7NNMTHUb0ZNV94WoQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:zrT+ioz3v1A=:YhLvpY6xYcgHysyYPiijQo
 w4iakYywaYBiZS4M8snEibLEZd3V+3gTEirECOBRSc8/wG/7eN45KMNTBQhN1JgVxhH8BwGEF
 rkDenxGLpnGcQ/pEH9DEdGeDdNX0CN17Q1G3ir4uhM/blRpX9/Y1IQKCk009ngMWiV83ZtnyO
 c2VLVQQFHgi1wMf/PMUzGfs8eK6f1P2YNOtND0EfKMP9OBug+gcE5hPG6b6Rpbcn6TbB2gken
 GPFhnrDJmK4Ov8iTWTnacstovrOg13pyDHG03P6tZqOrHZ6lU6QCJLakcSJ+YbRBem1PS0/rM
 CMmwvJwKJ/if6Mawg3/bWbdOePVOufTOhfUKI7VaFciUGQCHiHQ2/ZLmLx+/oZVDEFfoQymaO
 W3OQBACct7hpKTa1H/uW+HloKCwVkP7W0SiEMhA54WnpANNauPme9WFQluqrqv/eD0W3j7t00
 CENFnGAeVbJFUWY5JZZSWP+6ItsZrOHOvhg1w70xAsjApCZ7TgW9CpIJ3wQ4Bz87OlRc8hqSd
 db8Ry4fT/K41PrTtg3EIMMg3OXGa+Vx/Msu53eKsd8Uqk/dUapGCkp+Ol66jinxfNnKfo8LZK
 zZO+/9ZnGFsZnh+dyy2pM2i9RdKmnzW+aD4PNNuouE8NIhZW1WzYfQ+w4zkZP9a9cB5jxpfDM
 q76pby5wc4AimRrPbMk4KYU8482RmHJOzAdDSjTLYWptf2IACCq2xRFY8r7CqJzFnVdVaqn98
 ShClXr7eWAdUsC/mnjzlRYKcxG9U05XvPICoyiECs8hztNm9WmwilzRcbNxgSyEVEZVZOBeq7
 nM2wWkTDqekweAHZ0xbuAKROxnl7XjjTAeD4pxf9a2FoMiVmF3TtHyYrDUglz+bWKF8t06eG3
 Q1hcVMxPJx+7p7rlO/QhyR2WM9bMWwHweM2TVkaCJR1kIAM5mcKn+mNjngoSsmCQ7srcKaJtq
 iYFsVES1rn+OdSEXAYeNswEix1YIDreSPlTiAGoqKrcwd+OTqXevw6CYSYVbr9THCKkxrFjW9
 JhLOm0AeTZxbz0SjS9F5/VH/8KTwpi1IZ4X+wjnfSxXPHOAba0W0Jiw4F1CWr31383xC6pbP2
 oEuXScSigxZwQs=
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Mon, 25 Oct 2021 13:04:53 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Prefer struct_size over open
 coded arithmetic
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

Hi Jani,

On Mon, Oct 18, 2021 at 01:00:01PM +0300, Jani Nikula wrote:
> On Sat, 16 Oct 2021, Len Baker <len.baker@gmx.com> wrote:
> > Hi Daniel and Jani,
> >
> > On Wed, Oct 13, 2021 at 01:51:30PM +0200, Daniel Vetter wrote:
> >> On Wed, Oct 13, 2021 at 02:24:05PM +0300, Jani Nikula wrote:
> >> > On Mon, 11 Oct 2021, Len Baker <len.baker@gmx.com> wrote:
> >> > > Hi,
> >> > >
> >> > > On Sun, Oct 03, 2021 at 12:42:58PM +0200, Len Baker wrote:
> >> > >> As noted in the "Deprecated Interfaces, Language Features, Attri=
butes,
> >> > >> and Conventions" documentation [1], size calculations (especiall=
y
> >> > >> multiplication) should not be performed in memory allocator (or =
similar)
> >> > >> function arguments due to the risk of them overflowing. This cou=
ld lead
> >> > >> to values wrapping around and a smaller allocation being made th=
an the
> >> > >> caller was expecting. Using those allocations could lead to line=
ar
> >> > >> overflows of heap memory and other misbehaviors.
> >> > >>
> >> > >> In this case these are not actually dynamic sizes: all the opera=
nds
> >> > >> involved in the calculation are constant values. However it is b=
etter to
> >> > >> refactor them anyway, just to keep the open-coded math idiom out=
 of
> >> > >> code.
> >> > >>
> >> > >> So, add at the end of the struct i915_syncmap a union with two f=
lexible
> >> > >> array members (these arrays share the same memory layout). This =
is
> >> > >> possible using the new DECLARE_FLEX_ARRAY macro. And then, use t=
he
> >> > >> struct_size() helper to do the arithmetic instead of the argumen=
t
> >> > >> "size + count * size" in the kmalloc and kzalloc() functions.
> >> > >>
> >> > >> Also, take the opportunity to refactor the __sync_seqno and __sy=
nc_child
> >> > >> making them more readable.
> >> > >>
> >> > >> This code was detected with the help of Coccinelle and audited a=
nd fixed
> >> > >> manually.
> >> > >>
> >> > >> [1] https://www.kernel.org/doc/html/latest/process/deprecated.ht=
ml#open-coded-arithmetic-in-allocator-arguments
> >> > >>
> >> > >> Signed-off-by: Len Baker <len.baker@gmx.com>
> >> > >> ---
> >> > >>  drivers/gpu/drm/i915/i915_syncmap.c | 12 ++++++++----
> >> > >>  1 file changed, 8 insertions(+), 4 deletions(-)
> >> > >
> >> > > I received a mail telling that this patch doesn't build:
> >> > >
> >> > > =3D=3D Series Details =3D=3D
> >> > >
> >> > > Series: drm/i915: Prefer struct_size over open coded arithmetic
> >> > > URL   : https://patchwork.freedesktop.org/series/95408/
> >> > > State : failure
> >> > >
> >> > > But it builds without error against linux-next (tag next-20211001=
). Against
> >> > > which tree and branch do I need to build?
> >> >
> >> > drm-tip [1]. It's a sort of linux-next for graphics. I think there =
are
> >> > still some branches that don't feed to linux-next.
> >>
> >> Yeah we need to get gt-next in linux-next asap. Joonas promised to se=
nd
> >> out his patch to make that happen in dim.
> >> -Daniel
> >
> > Is there a possibility that you give an "Acked-by" tag? And then this =
patch
> > goes to the mainline through the Kees' tree or Gustavo's tree?
>
> If this does not apply to drm-intel-gt-next (or drm-tip), applying it to
> some other branch will just cause unnecessary conflicts later on. It's
> unnecessary extra work. It's not an urgent fix or anything, there is no
> reason to do that. So that's a NAK.

Ok. Understood.

> > Or is it better to wait for drm-tip to update?
>
> drm-tip is up to date, it's just that one of the branches that feed to
> it is (was?) not feeding to linux-next.

Sorry, but I'm missing something here. In linux-next this is the commit
history of include/linux/stddef.h file:

3080ea5553cc stddef: Introduce DECLARE_FLEX_ARRAY() helper
50d7bd38c3aa stddef: Introduce struct_group() helper macro
e7f18c22e6be stddef: Fix kerndoc for sizeof_field() and offsetofend()
4229a470175b stddef.h: Introduce sizeof_field()
...

But in drm-tip this is the commit history:

4229a470175b stddef.h: Introduce sizeof_field()
...

For this patch the DECLARE_FLEX_ARRAY() helper is needed. But the build
fails due to the last tree commits for stddef.h file are not present.
So, if I understand correctly, drm-tip is not up to date with linux-next.

Regards,
Len

>
> If you're contributing to drm, please consider basing your patches on
> top of drm-tip.
>
>
> BR,
> Jani.
>
>
> >
> > Regards,
> > Len
> >
> >>
> >> >
> >> > BR,
> >> > Jani.
> >> >
> >> >
> >> > [1] https://cgit.freedesktop.org/drm/drm-tip
> >> >
> >> >
> >> > >
> >> > > Regards,
> >> > > Len
> >> >
> >> > --
> >> > Jani Nikula, Intel Open Source Graphics Center
> >>
> >> --
> >> Daniel Vetter
> >> Software Engineer, Intel Corporation
> >> http://blog.ffwll.ch
>
> --
> Jani Nikula, Intel Open Source Graphics Center
