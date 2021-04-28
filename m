Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CD52536DF44
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Apr 2021 20:58:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C25B38922E;
	Wed, 28 Apr 2021 18:58:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com
 [IPv6:2a00:1450:4864:20::52f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1324B8922E
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Apr 2021 18:58:30 +0000 (UTC)
Received: by mail-ed1-x52f.google.com with SMTP id h10so75534866edt.13
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Apr 2021 11:58:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=PBfFqysSCv5aYeJdgDmOL5M990SamiTBuxP7uomvGBg=;
 b=oT2D5Aoidg7czILy93VJIsF9oN0MCYYU2FHF52ELXDsHFIJwz/zgfEfrIAlo/r8+aQ
 ZAiLLnky/5ixQ9b7EuEXxoJGfCZTSweo8y8/9V3BKkW2UiNtJ8xCl/QxV5xiuhra+tFb
 7wNhrojBn987qppCgyEbRn0popM9pJnzwhS8+NQPVyBLuTfEVjimf9WU7UUs17SEGSCr
 kL1GpU+VyodmZEvWK3ZW2yJi/ve8O15m0mNk4KLmBboAFkjOOojCcRWs6QTHZdiAQhRU
 RFQGkl13wT3VG3RAYl84vApoYYyicdTMtHjwjdCUDqSaT/OkwbTTqWhkk1bisJmAVZEB
 emPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PBfFqysSCv5aYeJdgDmOL5M990SamiTBuxP7uomvGBg=;
 b=aRYU38iyCwPwrAhhX9BlUrHBf3+KWRbxK0PQzmCn6Q0DlBdH/CSh0PLJMvnAa9jULX
 R1dXchdBOTrWgwhGo3lCPzr7EqQSXNklqHB3T0dbunlT6BH/PClwYE860Gv6fMSiTvGZ
 nE1mNIdewmkY+Xtw/7O8eQrbgMJxnDbyi04vjPKmCQbCpueMWT+kcoYi7GHT+vRLoBit
 Of9yV1xXKYDyTNtSkxjOWc4rsuamRVMJfNyBIK830VTn27T6zDGx2uMhdRaIFzWNFgOE
 eAIS5lZ0KWbw6Q5q499xDKZI5R4UONgzpaoc0R1uDzGgZlwQvezj0IQBRBBiSAR32Ckg
 3r0A==
X-Gm-Message-State: AOAM533Ylz/CO5zm97BVKlZNzzGbvghRqOZiGJ+9c2qWQ6FvLv+Bw/Mm
 BYu0H0XrGhfMpR+AXpIkSqriOj/OIRfUHEmtHWKMeg==
X-Google-Smtp-Source: ABdhPJyvbTIB+8eZVU0z8DLyCDcNctzs0qmvkinlK31RGaTasbfRxOdzEqFDRgwRN9zgPGnAoZCxr15Nw3v1lpLcB7M=
X-Received: by 2002:a05:6402:1013:: with SMTP id
 c19mr13421187edu.213.1619636308543; 
 Wed, 28 Apr 2021 11:58:28 -0700 (PDT)
MIME-Version: 1.0
References: <20210423223131.879208-1-jason@jlekstrand.net>
 <20210423223131.879208-9-jason@jlekstrand.net>
 <CAOFGe958Y6eq1qcPPS-h8Swca8kMy39Vp-gGv6irXdS_8xje5w@mail.gmail.com>
 <YIk1YEXjvaDN+feW@phenom.ffwll.local>
 <CAOFGe97PUT8Ns0bVhHi6D+21yA3=v0QkhdmmKBm=dCn4CizwiA@mail.gmail.com>
In-Reply-To: <CAOFGe97PUT8Ns0bVhHi6D+21yA3=v0QkhdmmKBm=dCn4CizwiA@mail.gmail.com>
From: Jason Ekstrand <jason@jlekstrand.net>
Date: Wed, 28 Apr 2021 13:58:17 -0500
Message-ID: <CAOFGe979BEBSSw_0oqGRADHWZJAg4c=iyr3FiJB5oxno+YM+uw@mail.gmail.com>
To: Daniel Vetter <daniel@ffwll.ch>, Matthew Brost <matthew.brost@intel.com>
Subject: Re: [Intel-gfx] [PATCH 08/21] drm/i915/gem: Disallow bonding of
 virtual engines
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
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Apr 28, 2021 at 12:18 PM Jason Ekstrand <jason@jlekstrand.net> wrote:
>
> On Wed, Apr 28, 2021 at 5:13 AM Daniel Vetter <daniel@ffwll.ch> wrote:
> >
> > On Tue, Apr 27, 2021 at 08:51:08AM -0500, Jason Ekstrand wrote:
> > > I sent a v2 of this patch because it turns out I deleted a bit too
> > > much code.  This function in particular, has to stay, unfortunately.
> > > When a batch is submitted with a SUBMIT_FENCE, this is used to push
> > > the work onto a different engine than than the one it's supposed to
> > > run in parallel with.  This means we can't dead-code this function or
> > > the bond_execution function pointer and related stuff.
> >
> > Uh that's disappointing, since if I understand your point correctly, the
> > sibling engines should all be singletons, not load balancing virtual ones.
> > So there really should not be any need to pick the right one at execution
> > time.
>
> The media driver itself seems to work fine if I delete all the code.
> It's just an IGT testcase that blows up.  I'll do more digging to see
> if I can better isolate why.

I did more digging and I figured out why this test hangs.  The test
looks at an engine class where there's more than one of that class
(currently only vcs) and creates a context where engine[0] is all of
the engines of that class bonded together and engine[1-N] is each of
those engines individually.  It then tests that you can submit a batch
to one of the individual engines and then submit with
EXEC_FENCE_SUBMIT to the balanced engine and the kernel will sort it
out.  This doesn't seem like a use-case we care about.

If we cared about anything, I would expect it to be submitting to two
balanced contexts and expecting "pick any two" behavior.  But that's
not what the test is testing for.

--Jason
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
