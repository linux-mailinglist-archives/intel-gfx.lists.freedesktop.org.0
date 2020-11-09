Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E30D32AC57B
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Nov 2020 20:52:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD3BF892CD;
	Mon,  9 Nov 2020 19:52:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com
 [IPv6:2a00:1450:4864:20::542])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF90C892CD
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Nov 2020 19:52:38 +0000 (UTC)
Received: by mail-ed1-x542.google.com with SMTP id p93so10069249edd.7
 for <intel-gfx@lists.freedesktop.org>; Mon, 09 Nov 2020 11:52:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mtpTFGK510kVBwMU/6ZdEhZSNh8+90VVPqsu76PEpDk=;
 b=HzAcQmALbEmY1XCwpyDoVZpLrpH+tSu9KcsecvU+YW03+GbXI1BVgaZ6ljW93ZOYc2
 bPkyt9dKi1is95OjBWK3YdCRGDpgodMuZ3VGg8/vAMKAIQGDT9S6y/MfYyw/Ej+04fKR
 4q0paCdus4XGh1rLmTBL2LM8owY0ZuG6D7jEOWIEzZh+6KMrKITpHpYMbn/vLGOfm69x
 L0Fm657f6BhkkGuqHC+lPE4PSI9yFd2+xpRF/U7nVO/bphHz/mtpOfZES69ASXiy78W0
 Hr6tQGucbxLYO9R6DDGJDvx9H50JNxrGFiVbeKxwtl0/IWSWttjYT5uAl8BxMtTHJzrI
 0Axw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mtpTFGK510kVBwMU/6ZdEhZSNh8+90VVPqsu76PEpDk=;
 b=o3mA0ZMjo4OhnhlWoCOavhiFknBnvliOpOWLOF+/WBTMNVkuwzyYaQPi69efWr/QRn
 24znuS2w7ErtBB4fQ2ple0H3mJ66YH+Ja54y9ZJnZtsxduqxnyCT7JGuWg/PKWzR8hnc
 KiEpuymu6WdTPPZGuBDVrI6l2dRPO8NYhu8CvmeSMfTiPpqNSrmfHnADXTYM0Fue41Ot
 bAKTYi1htgAk+iQw2Oj435AMsSPBw1KUC00m/1vo4SjcfhLGpN6FRN7An1uISsme9aDL
 l3XiULMFdhllyxWLrc7kAAzoWRUBbMzmUgu8GQnKeeS/Z9Pg6Qm3Tz+32489fQGNT7au
 2cFA==
X-Gm-Message-State: AOAM533JOVJMRZnHQbgT6Xf4OTlJWtUFY5su0O/7BbOmP84F8OBIofIK
 YG0Yn/v4fxAQJib71sg3exCjfe4LYuO/s5hu6xl3/w==
X-Google-Smtp-Source: ABdhPJzxRmuhrQFXm7qcmnULJjg1HAEv/k9l/rPfyy2cHb+LxieNAZiaGF/VSsVD7Zfl5ysmoTVPpcgoS6vmZYkEgzA=
X-Received: by 2002:a05:6402:283:: with SMTP id
 l3mr17818840edv.232.1604951557550; 
 Mon, 09 Nov 2020 11:52:37 -0800 (PST)
MIME-Version: 1.0
References: <20190720143132.17522-1-chris@chris-wilson.co.uk>
 <65da19be-2696-8d60-e055-63a37101cf6b@linux.intel.com>
 <156388293186.31349.1576327527372090940@skylake-alporthouse-com>
 <87pnm0qtr2.fsf@riseup.net>
 <156397886241.31349.9195166642161638629@skylake-alporthouse-com>
 <87a7d3qjzx.fsf@riseup.net>
In-Reply-To: <87a7d3qjzx.fsf@riseup.net>
From: Jason Ekstrand <jason@jlekstrand.net>
Date: Mon, 9 Nov 2020 13:52:26 -0600
Message-ID: <CAOFGe96Hs+7GXT=vNmB14oXRnNjLna7D67Pm1G9jrkc3ws3=+w@mail.gmail.com>
To: Francisco Jerez <currojerez@riseup.net>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Disable atomics in L3 for gen9
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
Cc: Intel GFX <intel-gfx@lists.freedesktop.org>,
 =?UTF-8?Q?Marcin_=C5=9Alusarz?= <marcin.slusarz@gmail.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We need to land this patch.  The number of bugs we have piling up in
Mesa gitlab related to this is getting a lot larger than I'd like.
I've gone back and forth with various HW and SW people internally for
countless e-mail threads and there is no other good workaround.  Yes,
the perf hit to atomics sucks but, fortunately, most games don't use
them heavily enough for it to make a significant impact.  We should
just eat the perf hit and fix the hangs.

Reviewed-by: Jason Ekstrand <jason@jlesktrand.net>

--Jason

On Wed, Jul 24, 2019 at 3:02 PM Francisco Jerez <currojerez@riseup.net> wrote:
>
> Chris Wilson <chris@chris-wilson.co.uk> writes:
>
> > Quoting Francisco Jerez (2019-07-23 23:19:13)
> >> Chris Wilson <chris@chris-wilson.co.uk> writes:
> >>
> >> > Quoting Tvrtko Ursulin (2019-07-22 12:41:36)
> >> >>
> >> >> On 20/07/2019 15:31, Chris Wilson wrote:
> >> >> > Enabling atomic operations in L3 leads to unrecoverable GPU hangs, as
> >> >> > the machine stops responding milliseconds after receipt of the reset
> >> >> > request [GDRT]. By disabling the cached atomics, the hang do not occur
> >> >> > and we presume the GPU would reset normally for similar hangs.
> >> >> >
> >> >> > Reported-by: Jason Ekstrand <jason@jlekstrand.net>
> >> >> > Bugzilla: https://bugs.freedesktop.org/show_bug.cgi?id=110998
> >> >> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> >> >> > Cc: Jason Ekstrand <jason@jlekstrand.net>
> >> >> > Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> >> >> > Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> >> >> > ---
> >> >> > Jason reports that Windows is not clearing L3SQCREG4:22 and does not
> >> >> > suffer the same GPU hang so it is likely some other w/a that interacts
> >> >> > badly. Fwiw, these 3 are the only registers I could find that mention
> >> >> > atomic ops (and appear to be part of the same chain for memory access).
> >> >>
> >> >> Bit-toggling itself looks fine to me and matches what I could find in
> >> >> the docs. (All three bits across three registers should be equal.)
> >> >>
> >> >> What I am curious about is what are the other consequences of disabling
> >> >> L3 atomics? Performance drop somewhere?
> >> >
> >> > The test I have where it goes from dead to passing, that's a considerable
> >> > performance improvement ;)
> >> >
> >> > I imagine not being able to use L3 for atomics is pretty dire, whether that
> >> > has any impact, I have no clue.
> >> >
> >> > It is still very likely that we see this because we are doing something
> >> > wrong elsewhere.
> >>
> >> This reminds me of f3fc4884ebe6ae649d3723be14b219230d3b7fd2 followed by
> >> d351f6d94893f3ba98b1b20c5ef44c35fc1da124 due to the massive impact (of
> >> the order of 20x IIRC) using the L3 turned out to have on the
> >> performance of HDC atomics, on at least that platform.  It seems
> >> unfortunate that we're going to lose L3 atomics on Gen9 now, even though
> >> it's only buffer atomics which are broken IIUC, and even though the
> >> Windows driver is somehow getting away without disabling them.  Some of
> >> our setup must be wrong either in the kernel or in userspace...  Are
> >> these registers at least whitelisted so userspace can re-enable L3
> >> atomics once the problem is addressed?  Wouldn't it be a more specific
> >> workaround for userspace to simply use a non-L3-cacheable MOCS for
> >> (rarely used) buffer surfaces, so it could benefit from L3 atomics
> >> elsewhere?
> >
> > If it was the case that disabling L3 atomics was the only way to prevent
> > the machine lockup under this scenario, then I think it is
> > unquestionably the right thing to do, and we could not leave it to
> > userspace to dtrt. We should never add non-context saved unsafe
> > registers to the whitelist (if setting a register may cause data
> > corruption or worse in another context/process, that is bad) despite our
> > repeated transgressions. However, there's no evidence to say that it does
> > prevent the machine lockup as it prevents the GPU hang that lead to the
> > lockup on reset.
> >
> > Other than GPGPU requiring a flush around every sneeze, I did not see
> > anything in the gen9 w/a list that seemed like a match. Nevertheless, I
> > expect there is a more precise w/a than a blanket disable.
> > -Chris
>
> Supposedly there is a more precise one (setting the surface state MOCS
> to UC for buffer images), but it relies on userspace doing the right
> thing for the machine not to lock up.  There is a good chance that the
> reason why L3 atomics hang on such buffers is ultimately under userspace
> control, in which case we'll eventually have to undo the programming
> done in this patch in order to re-enable L3 atomics once the problem is
> addressed.  That means that userspace will have the freedom to hang the
> machine hard once again, which sounds really bad, but it's no real news
> for us (*cough* HSW *cough*), and it might be the only way to match the
> performance of the Windows driver.
>
> What can we do here?  Add an i915 option to enable performance features
> that can lead to the system hanging hard under malicious (or
> incompetent) userspace programming?  Probably only the user can tell
> whether the trade-off between performance and security of the system is
> acceptable...
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
