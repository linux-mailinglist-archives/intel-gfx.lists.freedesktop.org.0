Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09337312E0B
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Feb 2021 10:56:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DACB06E84D;
	Mon,  8 Feb 2021 09:56:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com
 [IPv6:2a00:1450:4864:20::336])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CFA006E84E
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Feb 2021 09:56:40 +0000 (UTC)
Received: by mail-wm1-x336.google.com with SMTP id i9so12669423wmq.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 08 Feb 2021 01:56:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=WU4s5R0HTP1DIK8DBaOyVqmmf4CfXOwlpD1a/2Dy1j8=;
 b=F5G+LyHbhh8sWZJsFVZUUvtSfKWw2DFw0sSAHSx1pVsjiH/KY4EPuP66QrvXcArW7S
 Zdo9dNglO+l44ji0L5alsqVwXMtVk5wUl9DGkOzDuWin5IN3jmkisKEepn2UXoYBCpRx
 V7N5y71L4hrOocxkIrSPh0w+Szkboi2xtQ1U8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=WU4s5R0HTP1DIK8DBaOyVqmmf4CfXOwlpD1a/2Dy1j8=;
 b=gdt5PCVY+mEv5zE8VW/2wnVCBT65hxkaanga0E0L9Wqpr2ptxzZ0GGFEIOjDklkoW1
 jK6sBO+2fTrX0rNut0Oub1xCQWLekgJgitBV+FPhUx5W9S2W8l044Ka2JM0KrNSO78vO
 5ZKqB25bU4PD25EMk3jR8Rv7XMRvDcpzpHGPIj87p//AuycDaB8cNM3tgvsiGZJ8jRvM
 OTz4weXKiR5Pi6bVyAngbUEcwEbaQbJd/gOEAfZP3yxt8gIYtXqSjcyV9PSR5Lqrph4i
 uYLeONzZNkzg5YeWOgVZGTMwkNEh5iCG7C1SBh2DmxJR2Y6mQ3asiYw537oi4uXnj+3L
 aNlQ==
X-Gm-Message-State: AOAM533WmkMaNgfKYcD3KgfHuwb5wDqhLW9U7N0ZF7c1MYQUQcenrNM8
 arbllr6h25mCOMdgCJ0uuBR+Bg==
X-Google-Smtp-Source: ABdhPJyHVvyRQ4I+Cn6WP7NCHc1M4psVl0anuPgPkhUf0XueZmXVELZtwZ5Tk65bKH2L9vIsWplsnw==
X-Received: by 2002:a1c:e043:: with SMTP id x64mr10677341wmg.75.1612778199432; 
 Mon, 08 Feb 2021 01:56:39 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id m24sm19830894wmi.24.2021.02.08.01.56.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Feb 2021 01:56:38 -0800 (PST)
Date: Mon, 8 Feb 2021 10:56:36 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <YCEK1AWP5DarlMIt@phenom.ffwll.local>
References: <20210204020400.29628-1-ville.syrjala@linux.intel.com>
 <YBwTgHwZwMr8PwMr@phenom.ffwll.local> <YBwY8DZnrPNXYvfy@intel.com>
 <YB1oU6asAR3ki4ZT@phenom.ffwll.local> <YB1xKG317Zp7NogO@intel.com>
 <YB22V+n2bdIWrH2m@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YB22V+n2bdIWrH2m@intel.com>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
Subject: Re: [Intel-gfx] [PATCH] drm/vblank: Avoid storing a timestamp for
 the same frame twice
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org,
 Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Feb 05, 2021 at 11:19:19PM +0200, Ville Syrj=E4l=E4 wrote:
> On Fri, Feb 05, 2021 at 06:24:08PM +0200, Ville Syrj=E4l=E4 wrote:
> > On Fri, Feb 05, 2021 at 04:46:27PM +0100, Daniel Vetter wrote:
> > > On Thu, Feb 04, 2021 at 05:55:28PM +0200, Ville Syrj=E4l=E4 wrote:
> > > > On Thu, Feb 04, 2021 at 04:32:16PM +0100, Daniel Vetter wrote:
> > > > > On Thu, Feb 04, 2021 at 04:04:00AM +0200, Ville Syrjala wrote:
> > > > > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > > > > =

> > > > > > drm_vblank_restore() exists because certain power saving states
> > > > > > can clobber the hardware frame counter. The way it does this is
> > > > > > by guesstimating how many frames were missed purely based on
> > > > > > the difference between the last stored timestamp vs. a newly
> > > > > > sampled timestamp.
> > > > > > =

> > > > > > If we should call this function before a full frame has
> > > > > > elapsed since we sampled the last timestamp we would end up
> > > > > > with a possibly slightly different timestamp value for the
> > > > > > same frame. Currently we will happily overwrite the already
> > > > > > stored timestamp for the frame with the new value. This
> > > > > > could cause userspace to observe two different timestamps
> > > > > > for the same frame (and the timestamp could even go
> > > > > > backwards depending on how much error we introduce when
> > > > > > correcting the timestamp based on the scanout position).
> > > > > > =

> > > > > > To avoid that let's not update the stored timestamp unless we're
> > > > > > also incrementing the sequence counter. We do still want to upd=
ate
> > > > > > vblank->last with the freshly sampled hw frame counter value so
> > > > > > that subsequent vblank irqs/queries can actually use the hw fra=
me
> > > > > > counter to determine how many frames have elapsed.
> > > > > =

> > > > > Hm I'm not getting the reason for why we store the updated hw vbl=
ank
> > > > > counter?
> > > > =

> > > > Because next time a vblank irq happens the code will do:
> > > > diff =3D current_hw_counter - vblank->last
> > > > =

> > > > which won't work very well if vblank->last is garbage.
> > > > =

> > > > Updating vblank->last is pretty much why drm_vblank_restore()
> > > > exists at all.
> > > =

> > > Oh sure, _restore has to update this, together with the timestamp.
> > > =

> > > But your code adds such an update where we update the hw vblank count=
er,
> > > but not the timestamp, and that feels buggy. Either we're still in the
> > > same frame, and then we should story nothing. Or we advanced, and the=
n we
> > > probably want a new timestampt for that frame too.
> > =

> > Even if we're still in the same frame the hw frame counter may already
> > have been reset due to the power well having been turned off. That is
> > what I'm trying to fix here.
> > =

> > Now I suppose that's fairly unlikely, at least with PSR which probably
> > does impose some extra delays before the power gets yanked. But at least
> > theoretically possible.
> =

> Pondering about this a bit further. I think the fact that the current
> code takes the round-to-closest approach I used for the vblank handler
> is perhaps a bit bad. It could push the seq counter forward if we're
> past the halfway point of a frame. I think that rounding behaviour
> makes sense for the irq since those tick steadily and so allowing a bit
> of error either way seems correct to me. Perhaps round-down might be
> the better option for _restore(). Not quites sure, need more thinking
> probably.

Yes this is the rounding I'm worried about.

But your point above that the hw might reset the counter again is also
valid. I'm assuming what you're worried about is that we first do a
_restore (and the hw vblank counter hasn't been trashed yet), and then in
the same frame we do another restore, but now the hw frame counter has
been trashe, and we need to update it?

> Another idea that came to me now is that maybe we should actually just
> check if the current hw frame counter value looks sane, as in something
> like:
> =

> diff_hw_counter =3D current_hw_counter-stored_hw_counter
> diff_ts =3D (current_ts-stored_ts)/framedur
> =

> if (diff_hw_counter ~=3D diff_ts)
> 	diff =3D diff_hw_counter;
> else
> 	diff =3D diff_ts;
> =

> and if they seem to match then just keep trusting the hw counter.
> So only if there's a significant difference would we disregard
> the diff of the hw counter and instead use the diff based on the
> timestamps. Not sure what "significant" is though; One frame, two
> frames?

Hm, another idea: The only point where we can trust the entire hw counter
+ timestamp sampling is when the irq happens. Because then we know the
driver will have properly corrected for any hw oddities (like hw counter
flipping not at top-of-frame, like the core expects).

So what if _restore always goes back to the last such trusted hw counter
for computing the frame counter diff and all that stuff? That way if we
have a bunch of _restore with incosisten hw vblank counter, we will a)
only take the last one (fixes the bug you're trying to fix) b) still use
the same last trusted baseline for computations (addresses the race I'm
seeing).

Or does this not work?

It does complicate the code a bit, because we'd need to store the
count/timestamp information from _restore outside of the usual vblank ts
array. But I think that addresses everything.
-Daniel
-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
