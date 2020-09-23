Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 01C952756FC
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Sep 2020 13:16:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E81A6E051;
	Wed, 23 Sep 2020 11:16:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x242.google.com (mail-oi1-x242.google.com
 [IPv6:2607:f8b0:4864:20::242])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D4A36E051
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Sep 2020 11:16:54 +0000 (UTC)
Received: by mail-oi1-x242.google.com with SMTP id x14so24614981oic.9
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Sep 2020 04:16:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rTSXpPPpcxIeMmfzwprfzSe0gqeoKE7piFOaQTAnR88=;
 b=U3ePQ6UANsmOqJvqkSDwhxC0dOVjzUOwE4x0udnLdKAnZwfoH54D6zA2aFyQNBZ6wx
 2nPN0NSQMoR5XgpW6AE5wFrsDvhtBtVH1i8rDX+nIRku/Hn3aKl/NydxLBvMqP61YHXK
 klri+iTBjmr1dXBgHh5qcNJuaXoUc/kGEvHXM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rTSXpPPpcxIeMmfzwprfzSe0gqeoKE7piFOaQTAnR88=;
 b=tysW9L+GRWPOk3ipz3if/Zr3V4IKXiFR8IvNIz1Vr16aboHYuYIvW0nIyokZ6IM+Zf
 IzrvVPLwHO9q7Hf2i/BmEDLfg9RTvibNfBYZ079hJA1EhtJC6U7LWNO5AEbxZR+T1rBZ
 25PY/BQcgTGwwzj0F4+0ytUXcvxZsQwdquraw2BOQA4BtC3a7/idyFizuQn6ay2QCD6/
 dIITOpD5l5b2HxITSgpR9xZAIwAzD1H+lvP2F4QQPMiUJCJVToJKxEFqMf/297GgM8HL
 9FDj8lU2WI18fIKRDUWhP0b3NfwCBAW8yo0mirEQgZKcx0smQDXwpOQhbu+5eFQ37ncD
 J57Q==
X-Gm-Message-State: AOAM532EjK96XN2tWdOwUG3AlCkd+eML0xVnOi+6/3+EkiOSAor9SlQU
 sZPhjZy0aeHn32VMdpu+SVCn419IiXyxgeQhaVkUSA==
X-Google-Smtp-Source: ABdhPJym2IcGvMv5rOZjsbiRqhxPjtR71Yu3t2aEm8NnZePkvZj0lvdMkwwEEHrfVsZ043SiVMMfQ1JGyPCTmC7z9Bw=
X-Received: by 2002:a05:6808:206:: with SMTP id
 l6mr5446894oie.128.1600859813680; 
 Wed, 23 Sep 2020 04:16:53 -0700 (PDT)
MIME-Version: 1.0
References: <20180705101043.4883-1-daniel.vetter@ffwll.ch>
 <20180705102121.5091-1-daniel.vetter@ffwll.ch>
 <CAPj87rN48S8+pLd0ksOX4pdCTqtO=bDgjhkPxpWr_AnpVvgaSQ@mail.gmail.com>
 <20200922133636.GA2369@xpredator>
 <CAKMK7uHr3dKu8o4e3hoSe3S5MfVtZ92nLk1VGZTqSuDsH6kphg@mail.gmail.com>
 <20200923111443.GA8478@xpredator>
In-Reply-To: <20200923111443.GA8478@xpredator>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Wed, 23 Sep 2020 13:16:42 +0200
Message-ID: <CAKMK7uGwTbt4OdfVGVLk_0i_F5LNTx1RAaNz_D8LxnpwJo-i2Q@mail.gmail.com>
To: Marius Vlad <marius.vlad@collabora.com>, 
 "Syrjala, Ville" <ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm: avoid spurious EBUSY due to
 nonblocking atomic modesets
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 stable <stable@vger.kernel.org>, Daniel Vetter <daniel.vetter@intel.com>,
 Pekka Paalanen <pekka.paalanen@collabora.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Sep 23, 2020 at 1:14 PM Marius Vlad <marius.vlad@collabora.com> wrote:
>
> On Wed, Sep 23, 2020 at 12:58:30PM +0200, Daniel Vetter wrote:
> > On Tue, Sep 22, 2020 at 3:36 PM Marius Vlad <marius.vlad@collabora.com> wrote:
> > >
> > > On Fri, Jan 31, 2020 at 07:34:00AM +0000, Daniel Stone wrote:
> > > > On Thu, 5 Jul 2018 at 11:21, Daniel Vetter <daniel.vetter@ffwll.ch> wrote:
> > > > > When doing an atomic modeset with ALLOW_MODESET drivers are allowed to
> > > > > pull in arbitrary other resources, including CRTCs (e.g. when
> > > > > reconfiguring global resources).
> > > > >
> > > > > But in nonblocking mode userspace has then no idea this happened,
> > > > > which can lead to spurious EBUSY calls, both:
> > > > > - when that other CRTC is currently busy doing a page_flip the
> > > > >   ALLOW_MODESET commit can fail with an EBUSY
> > > > > - on the other CRTC a normal atomic flip can fail with EBUSY because
> > > > >   of the additional commit inserted by the kernel without userspace's
> > > > >   knowledge
> > > > >
> > > > > For blocking commits this isn't a problem, because everyone else will
> > > > > just block until all the CRTC are reconfigured. Only thing userspace
> > > > > can notice is the dropped frames without any reason for why frames got
> > > > > dropped.
> > > > >
> > > > > Consensus is that we need new uapi to handle this properly, but no one
> > > > > has any idea what exactly the new uapi should look like. As a stop-gap
> > > > > plug this problem by demoting nonblocking commits which might cause
> > > > > issues by including CRTCs not in the original request to blocking
> > > > > commits.
> > > Gentle ping. I've tried out Linus's master tree and, and like Pekka,
> > > I've noticed this isn't integrated/added.
> > >
> > > Noticed this is fixing (also) DPMS when multiple outputs are in use.
> > > Wondering if we can just use a _ONCE() variant instead of WARN_ON(). I'm seeing
> > > the warning quite often.
> >
> > On which driver/chip does this happen?
> I've tried it out on i915.

lspci -nn please.

Also adding Ville, who has an idea where this can all go wrong. The
one he pointed out thus far is gen12+ only though.
-Daniel

> > -Daniel
> >
> > >
> > > >
> > > > Thanks for writing this up Daniel, and for reminding me about it some
> > > > time later as well ...
> > > >
> > > > Reviewed-by: Daniel Stone <daniels@collabora.com>
> > > >
> > > > Cheers,
> > > > Daniel
> > > > _______________________________________________
> > > > dri-devel mailing list
> > > > dri-devel@lists.freedesktop.org
> > > > https://lists.freedesktop.org/mailman/listinfo/dri-devel
> >
> >
> >
> > --
> > Daniel Vetter
> > Software Engineer, Intel Corporation
> > http://blog.ffwll.ch



-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
