Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E6DE436EEAB
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Apr 2021 19:14:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 45CAA6F3F9;
	Thu, 29 Apr 2021 17:14:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com
 [IPv6:2a00:1450:4864:20::329])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D47976F3F9
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Apr 2021 17:14:36 +0000 (UTC)
Received: by mail-wm1-x329.google.com with SMTP id g65so7160749wmg.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Apr 2021 10:14:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=ajSsHKNDfAVymEMJqR7ymQUX9YPKW+a1e9VmpgXluJQ=;
 b=lIOzAAmYLhP0pRWITkkfcUlWWQ8LaLokYdC8+ffMWHGz4La0qdP5YYT4kknaYtlylm
 t8DmV3dNclZckq9jOlyjIR6GXHyyMso23DUPuLQNe5k+2/6RVdQM30pnhtgtd76bVNT4
 Dy2OBsNJMG/qDb6+ECgU9xQuAPwzfUgHfYljI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ajSsHKNDfAVymEMJqR7ymQUX9YPKW+a1e9VmpgXluJQ=;
 b=P+Hw1WNZ4mmRi9aH7BYz+nGtf08fK274VsU48KUIl4SDAX/y1bC7og+UiQmSvUh57Q
 MS5Raq/43dqNRiuAM166YAK25Vbxm70hYmX4IMOFXjgkcCF7Ck4UyXZuOcB3Rx7jxYfk
 6O0TBqHty8zGJwPQ2Red0I2qC8LQcqnv4RnW7LR/EsJ3IzinA3jf/vtiUetobEBLqJPy
 F141I6ANeRJkAVMVO0/j/RGM0pozMu/p0VC+/sjkcP+zPt4DbJjynHDi1gsqQDCo2IhV
 slXuBkbsXj9XdENpGJdN8iE7HORbOwUV2xjKwrXAVYLDzDIoUuLjzlZMivWk2UI7iuz7
 m43A==
X-Gm-Message-State: AOAM533bqCwBGawb3hAhtpxmdqyURLuQef7mygWtWfM7tWifyq/oNgvz
 MCmvmgmirmvjaU7shBWNW6IsrQ==
X-Google-Smtp-Source: ABdhPJwblmiMexgOUPvvzUBmVsVohdyAPzQ4enULEwTvHimn0bVZntX/GEFJfixDEXzLIrkPjjT0fQ==
X-Received: by 2002:a1c:7516:: with SMTP id o22mr11609002wmc.91.1619716475549; 
 Thu, 29 Apr 2021 10:14:35 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id g10sm9349381wmq.25.2021.04.29.10.14.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Apr 2021 10:14:35 -0700 (PDT)
Date: Thu, 29 Apr 2021 19:14:33 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Jason Ekstrand <jason@jlekstrand.net>
Message-ID: <YIrpeUcEJYK6X2eO@phenom.ffwll.local>
References: <20210423223131.879208-1-jason@jlekstrand.net>
 <20210423223131.879208-9-jason@jlekstrand.net>
 <CAOFGe958Y6eq1qcPPS-h8Swca8kMy39Vp-gGv6irXdS_8xje5w@mail.gmail.com>
 <YIk1YEXjvaDN+feW@phenom.ffwll.local>
 <CAOFGe97PUT8Ns0bVhHi6D+21yA3=v0QkhdmmKBm=dCn4CizwiA@mail.gmail.com>
 <CAOFGe979BEBSSw_0oqGRADHWZJAg4c=iyr3FiJB5oxno+YM+uw@mail.gmail.com>
 <YIqjhXiIuKc1Hw8r@phenom.ffwll.local>
 <CAOFGe96NnkV-ChcxU9txxOy2dnVjhKrm5Q6E=BDkQCV7cUFB-g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOFGe96NnkV-ChcxU9txxOy2dnVjhKrm5Q6E=BDkQCV7cUFB-g@mail.gmail.com>
X-Operating-System: Linux phenom 5.10.32scarlett+ 
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

On Thu, Apr 29, 2021 at 11:02:27AM -0500, Jason Ekstrand wrote:
> On Thu, Apr 29, 2021 at 7:16 AM Daniel Vetter <daniel@ffwll.ch> wrote:
> >
> > On Wed, Apr 28, 2021 at 01:58:17PM -0500, Jason Ekstrand wrote:
> > > On Wed, Apr 28, 2021 at 12:18 PM Jason Ekstrand <jason@jlekstrand.net> wrote:
> > > >
> > > > On Wed, Apr 28, 2021 at 5:13 AM Daniel Vetter <daniel@ffwll.ch> wrote:
> > > > >
> > > > > On Tue, Apr 27, 2021 at 08:51:08AM -0500, Jason Ekstrand wrote:
> > > > > > I sent a v2 of this patch because it turns out I deleted a bit too
> > > > > > much code.  This function in particular, has to stay, unfortunately.
> > > > > > When a batch is submitted with a SUBMIT_FENCE, this is used to push
> > > > > > the work onto a different engine than than the one it's supposed to
> > > > > > run in parallel with.  This means we can't dead-code this function or
> > > > > > the bond_execution function pointer and related stuff.
> > > > >
> > > > > Uh that's disappointing, since if I understand your point correctly, the
> > > > > sibling engines should all be singletons, not load balancing virtual ones.
> > > > > So there really should not be any need to pick the right one at execution
> > > > > time.
> > > >
> > > > The media driver itself seems to work fine if I delete all the code.
> > > > It's just an IGT testcase that blows up.  I'll do more digging to see
> > > > if I can better isolate why.
> > >
> > > I did more digging and I figured out why this test hangs.  The test
> > > looks at an engine class where there's more than one of that class
> > > (currently only vcs) and creates a context where engine[0] is all of
> > > the engines of that class bonded together and engine[1-N] is each of
> > > those engines individually.  It then tests that you can submit a batch
> > > to one of the individual engines and then submit with
> > > EXEC_FENCE_SUBMIT to the balanced engine and the kernel will sort it
> > > out.  This doesn't seem like a use-case we care about.
> > >
> > > If we cared about anything, I would expect it to be submitting to two
> > > balanced contexts and expecting "pick any two" behavior.  But that's
> > > not what the test is testing for.
> >
> > Yeah ditch it.
> >
> > Instead make sure that the bonded setparam/ctx validation makes sure that
> > 1) no virtual engines are used
> > 2) no engine used twice
> > 3) anything else stupid you can come up with that we should make sure is
> > blocked.
> 
> I've re-introduced the deletion and I'll add nuking that test to my
> IGT series.  I did it as a separate patch as the FENCE_SUBMIT logic
> and the bonding are somewhat separate concerns.
> 
> As far as validation goes, I don't think we need any more for this
> case.  You used FENCE_SUBMIT and didn't properly isolate things such
> that the two run on different engines.  Not our problem.

Oh I just meant validating the bonded ctx extension thing. Not validating
submit fence, that's rather hopeless since it really allows anything you
can think of, by design.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
