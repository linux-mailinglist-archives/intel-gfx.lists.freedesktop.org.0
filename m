Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 932E336FA2A
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Apr 2021 14:31:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DBCA6F44C;
	Fri, 30 Apr 2021 12:31:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x334.google.com (mail-ot1-x334.google.com
 [IPv6:2607:f8b0:4864:20::334])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE1026E454
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Apr 2021 12:31:04 +0000 (UTC)
Received: by mail-ot1-x334.google.com with SMTP id
 n32-20020a9d1ea30000b02902a53d6ad4bdso9242086otn.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Apr 2021 05:31:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=iijatRdyRIF4KuV/sEVtIHfFOnq+zO7XgUxUTa2Fsoo=;
 b=KrJk9CASGOKshWxuBcE80+0krPkDmMNjeySfqx/cDKn+XIjnMZJ+zO1LmtFp+D67dY
 wePEU0GlzcAZM7IPZyzrSyzevBYsWB0Ij2s5EnHFOO5BRE6czNpjbYG6GIlmPlyrEGwP
 /imV7mmBZr1X3a8AXCZLT7ODsBwb14abVjOjA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=iijatRdyRIF4KuV/sEVtIHfFOnq+zO7XgUxUTa2Fsoo=;
 b=Rb3lnwBR6tIKd1nmJKLH/vdtKMyABZmAE0SnTZZwbbMddBMdUUHy757C62iM1JQKbH
 YkuszH61zyLutm+AwZxZehpxDROPQFtsygwIm5V9Q7SBOkk6sTMQCCBuALhzLhNNILAq
 HUqF/LhXcBEeBt7lSgAgL1YOfazWk2TxjvAMzAL39WGHmXG+4hgSIuev+jsOG88M8Abj
 pvXOUW6ZjDsNo4v3KynSFkQo3I3yBHv3vOa1VRh/g/aFY7WlRS2cw3dEEwRSjV/e2z61
 2cvnvDUYqdZRO7IL4Zz9xURWBVJ7tLHO/8g3DcPTLeJlrCQwvmvN/4ZikSL8I7yOS8sw
 WHxw==
X-Gm-Message-State: AOAM533HWBuBWbXJPfmNqthF1vqXrSZ7Sa1HhAFZuhlziK+U+Q6drVOG
 3T7ixgwgAoeHiy6pFWbkTuavRrhpp0tAKwaAhXos7A==
X-Google-Smtp-Source: ABdhPJzsxZFn23Q2U/gUT437VzpAkIPq7Eyfux4UpNoyuvRQU8yC2xGQA4R0lTkEbfEqAs6ntWhENghKll2nrpkXd00=
X-Received: by 2002:a05:6830:1398:: with SMTP id
 d24mr3281976otq.281.1619785864179; 
 Fri, 30 Apr 2021 05:31:04 -0700 (PDT)
MIME-Version: 1.0
References: <20210423223131.879208-1-jason@jlekstrand.net>
 <20210423223131.879208-17-jason@jlekstrand.net>
 <YIrWB3fX3TseroSh@phenom.ffwll.local>
 <CAOFGe97b_LSGfrLo3LBhBuvx8wduVJLf0ySC=gG7Z+L6v2dPzQ@mail.gmail.com>
 <YIsBSRwNGiiF/kxE@phenom.ffwll.local>
 <CAOFGe97qi=jB+MGPtJyX-QYmjvTe2QPeijsNCeJ2z+E19x6ZNg@mail.gmail.com>
 <YIsD8OSFdLnjz5cL@phenom.ffwll.local>
 <CAOFGe96DXzFVX77f5qVMrCzJq2Cuco1pOyCfYmo_1v6rmxpMKg@mail.gmail.com>
 <CAKMK7uGzAGDS97hoj0xjzw8EJoPZazsLF=wxUz90cswjPSHthQ@mail.gmail.com>
 <1eb8d34d-463e-3199-cdb0-0dff95e17f7b@linux.intel.com>
In-Reply-To: <1eb8d34d-463e-3199-cdb0-0dff95e17f7b@linux.intel.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Fri, 30 Apr 2021 14:30:53 +0200
Message-ID: <CAKMK7uGHaoMxcaye=ij0-jYE041+xUVneQv6a_J88dgFOh=hiQ@mail.gmail.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 16/21] drm/i915/gem: Delay context creation
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

On Fri, Apr 30, 2021 at 1:58 PM Tvrtko Ursulin
<tvrtko.ursulin@linux.intel.com> wrote:
>
>
> On 30/04/2021 07:53, Daniel Vetter wrote:
> > On Thu, Apr 29, 2021 at 11:35 PM Jason Ekstrand <jason@jlekstrand.net> wrote:
> >>
> >> On Thu, Apr 29, 2021 at 2:07 PM Daniel Vetter <daniel@ffwll.ch> wrote:
> >>>
> >>> On Thu, Apr 29, 2021 at 02:01:16PM -0500, Jason Ekstrand wrote:
> >>>> On Thu, Apr 29, 2021 at 1:56 PM Daniel Vetter <daniel@ffwll.ch> wrote:
> >>>>> On Thu, Apr 29, 2021 at 01:16:04PM -0500, Jason Ekstrand wrote:
> >>>>>> On Thu, Apr 29, 2021 at 10:51 AM Daniel Vetter <daniel@ffwll.ch> wrote:
> >>>>>>>> +     ret = set_proto_ctx_param(file_priv, pc, args);
> >>>>>>>
> >>>>>>> I think we should have a FIXME here of not allowing this on some future
> >>>>>>> platforms because just use CTX_CREATE_EXT.
> >>>>>>
> >>>>>> Done.
> >>>>>>
> >>>>>>>> +     if (ret == -ENOTSUPP) {
> >>>>>>>> +             /* Some params, specifically SSEU, can only be set on fully
> >>>>>>>
> >>>>>>> I think this needs a FIXME: that this only holds during the conversion?
> >>>>>>> Otherwise we kinda have a bit a problem me thinks ...
> >>>>>>
> >>>>>> I'm not sure what you mean by that.
> >>>>>
> >>>>> Well I'm at least assuming that we wont have this case anymore, i.e.
> >>>>> there's only two kinds of parameters:
> >>>>> - those which are valid only on proto context
> >>>>> - those which are valid on both (like priority)
> >>>>>
> >>>>> This SSEU thing looks like a 3rd parameter, which is only valid on
> >>>>> finalized context. That feels all kinds of wrong. Will it stay? If yes
> >>>>> *ugh* and why?
> >>>>
> >>>> Because I was being lazy.  The SSEU stuff is a fairly complex param to
> >>>> parse and it's always set live.  I can factor out the SSEU parsing
> >>>> code if you want and it shouldn't be too bad in the end.
> >>>
> >>> Yeah I think the special case here is a bit too jarring.
> >>
> >> I rolled a v5 that allows you to set SSEU as a create param.  I'm not
> >> a huge fan of that much code duplication for the SSEU set but I guess
> >> that's what we get for deciding to "unify" our context creation
> >> parameter path with our on-the-fly parameter path....
> >>
> >> You can look at it here:
> >>
> >> https://gitlab.freedesktop.org/jekstrand/linux/-/commit/c805f424a3374b2de405b7fc651eab551df2cdaf#474deb1194892a272db022ff175872d42004dfda_283_588
> >
> > Hm yeah the duplication of the render engine check is a bit annoying.
> > What's worse, if you tthrow another set_engines on top it's probably
> > all wrong then. The old thing solved that by just throwing that
> > intel_context away.
> >
> > You're also not keeping the engine id in the proto ctx for this, so
> > there's probably some gaps there. We'd need to clear the SSEU if
> > userspace puts another context there. But also no userspace does that.
> >
> > Plus cursory review of userspace show
> > - mesa doesn't set this
> > - compute sets its right before running the batch
> > - media sets it as the last thing of context creation
>
> Noticed a long sub-thread so looked inside..
>
> SSEU is a really an interesting one.
>
> For current userspace limiting to context creation is fine, since it is
> only allowed for Icelake/VME use case. But if you notice the comment inside:
>
>                 /* ABI restriction - VME use case only. */
>
> It is a hint there was, or could be, more to this uapi than that.
>
> And from memory I think limiting to creation time will nip the hopes
> media had to use this dynamically on other platforms in the bud. So not
> that good really. They had convincing numbers what gets significantly
> better if we allowed dynamic control to this, just that as always, open
> source userspace was not there so we never allowed it. However if you
> come up with a new world order where it can only be done at context
> creation, as said already, the possibility for that improvement (aka
> further improving the competitive advantage) is most likely dashed.

Hm are you sure that this is create-time only? media-driver uses it
like that, but from my checking compute-runtime updates SSEU mode
before every execbuf call. So it very much looked like we have to keep
this dynamic.

Or do you mean this is defacto dead code? this = compute setting it
before every batch I mean here.
-Daniel




--
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
