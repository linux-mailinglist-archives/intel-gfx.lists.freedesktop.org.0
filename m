Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4974636EA24
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Apr 2021 14:14:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BF966EE81;
	Thu, 29 Apr 2021 12:14:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com
 [IPv6:2a00:1450:4864:20::32a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EEE0F6EE7F
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Apr 2021 12:14:22 +0000 (UTC)
Received: by mail-wm1-x32a.google.com with SMTP id
 i21-20020a05600c3555b029012eae2af5d4so11181435wmq.4
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Apr 2021 05:14:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=8DC9ozkq9NhLoH8QWyc5Az9r2IL7rkBQY4hDTI1sLuM=;
 b=cJIPNJaPbSNadhuBRzX0WUZaIPB+1rlsCcZZTRBbmb01UWhMl9at1e8bHSOCsgJUw+
 9iMMEB1Whd7BUtgfhrr2uXo9EBVABOIJkvPCJ2aBMhneu0xwnReFkO68TRww8lRkcme1
 2iF8PPMVaTqh2IDwSw/29sC5xJ+C89hxT/xWI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=8DC9ozkq9NhLoH8QWyc5Az9r2IL7rkBQY4hDTI1sLuM=;
 b=FfRjYyBXAHdyZwL7xSLUNRnObQ91gh5whiRGomkGAVc3fBHghvaK8fqVhEfSZWOIV3
 fVsW0p0pgA7pz5byeUOFrjLPhppbb7fhFn4lJNoONx21Wdb1XsSoKBRujIQr2dkBxtUp
 079feRFVbP7my1aUK73G3iN6nqMwevePxYb7jddAuj77J0VVNtoBxvyUVHOgXAEJ07uY
 c6p1XSgvfInoEuMt2AZiYoNORz+emd26K58gyhrd2EOpljkbTxGeP9zkLBTm9crDSGPn
 v4qZBsZSuJjWV+ZvtaL/mhvT23gCwrK7c6+c9DPWpgTUrywVue3yicqRwztOhDw876/H
 nREw==
X-Gm-Message-State: AOAM531sGPVpjkeWZW2EZZExFZtyEBdXlEOLyhhV3Z3dgaeXw1NAoplt
 DfcK8ltcEaZvlM9FLUwR4m0+lw==
X-Google-Smtp-Source: ABdhPJwlY5WYu7LKwW0ZED5+a9NSGe3OUZ8+gMWIY+vqxv/0AepSLn+8MgJ6evcPDrfLjkuzsDx8MQ==
X-Received: by 2002:a1c:2985:: with SMTP id
 p127mr37033775wmp.165.1619698461519; 
 Thu, 29 Apr 2021 05:14:21 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id d13sm4620141wrx.29.2021.04.29.05.14.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Apr 2021 05:14:20 -0700 (PDT)
Date: Thu, 29 Apr 2021 14:14:19 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Jason Ekstrand <jason@jlekstrand.net>
Message-ID: <YIqjG9l30ZmuN1Wg@phenom.ffwll.local>
References: <20210423223131.879208-1-jason@jlekstrand.net>
 <20210423223131.879208-9-jason@jlekstrand.net>
 <CAOFGe958Y6eq1qcPPS-h8Swca8kMy39Vp-gGv6irXdS_8xje5w@mail.gmail.com>
 <YIk1YEXjvaDN+feW@phenom.ffwll.local>
 <CAOFGe97PUT8Ns0bVhHi6D+21yA3=v0QkhdmmKBm=dCn4CizwiA@mail.gmail.com>
 <20210428171853.GA3260@sdutt-i7>
 <CAOFGe96Qy8hXsJCemgDJtZYCbwqxvUS4j-SEKKnLQjE6dmRP2w@mail.gmail.com>
 <20210428175525.GA7224@sdutt-i7>
 <CAOFGe96i7GPvQ8yDreTGF-K5pr_GRNkofQhH7W6Wxr-F8qmxrQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOFGe96i7GPvQ8yDreTGF-K5pr_GRNkofQhH7W6Wxr-F8qmxrQ@mail.gmail.com>
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

On Wed, Apr 28, 2021 at 01:17:27PM -0500, Jason Ekstrand wrote:
> On Wed, Apr 28, 2021 at 1:02 PM Matthew Brost <matthew.brost@intel.com> wrote:
> >
> > On Wed, Apr 28, 2021 at 12:46:07PM -0500, Jason Ekstrand wrote:
> > > On Wed, Apr 28, 2021 at 12:26 PM Matthew Brost <matthew.brost@intel.com> wrote:
> > > > Jumping on here mid-thread. For what is is worth to make execlists work
> > > > with the upcoming parallel submission extension I leveraged some of the
> > > > existing bonding code so I wouldn't be too eager to delete this code
> > > > until that lands.
> > >
> > > Mind being a bit more specific about that?  The motivation for this
> > > patch is that the current bonding handling and uAPI is, well, very odd
> > > and confusing IMO.  It doesn't let you create sets of bonded engines.
> > > Instead you create engines and then bond them together after the fact.
> > > I didn't want to blindly duplicate those oddities with the proto-ctx
> > > stuff unless they were useful.  With parallel submit, I would expect
> > > we want a more explicit API where you specify a set of engine
> > > class/instance pairs to bond together into a single engine similar to
> > > how the current balancing API works.
> > >
> > > Of course, that's all focused on the API and not the internals.  But,
> > > again, I'm not sure how we want things to look internally.  What we've
> > > got now doesn't seem great for the GuC submission model but I'm very
> > > much not the expert there.  I don't want to be working at cross
> > > purposes to you and I'm happy to leave bits if you think they're
> > > useful.  But I thought I was clearing things away so that you can put
> > > in what you actually want for GuC/parallel submit.
> > >
> >
> > Removing all the UAPI things are fine but I wouldn't delete some of the
> > internal stuff (e.g. intel_virtual_engine_attach_bond, bond
> > intel_context_ops, the hook for a submit fence, etc...) as that will
> > still likely be used for the new parallel submission interface with
> > execlists. As you say the new UAPI wont allow crazy configurations,
> > only simple ones.
> 
> I'm fine with leaving some of the internal bits for a little while if
> it makes pulling the GuC scheduler in easier.  I'm just a bit
> skeptical of why you'd care about SUBMIT_FENCE. :-)  Daniel, any
> thoughts?

Yeah I'm also wondering why we need this. Essentially your insight (and
Tony Ye from media team confirmed) is that media umd never uses bonded on
virtual engines.

So the only thing we need is the await_fence submit_fence logic to stall
the subsequent patches just long enough. I think that stays.

All the additional logic with the cmpxchg lockless trickery and all that
isn't needed, because we _never_ have to select an engine for bonded
submission: It's always the single one available.

This would mean that for execlist parallel submit we can apply a
limitation (beyond what GuC supports perhaps) and it's all ok. With that
everything except the submit fence await logic itself can go I think.

Also one for Matt: We decided to ZBB implementing parallel submit on
execlist, it's going to be just for GuC. At least until someone starts
screaming really loudly.

Cheers, Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
