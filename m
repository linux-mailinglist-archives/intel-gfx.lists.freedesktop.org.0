Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3692936F01B
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Apr 2021 21:07:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BFE26E30F;
	Thu, 29 Apr 2021 19:07:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com
 [IPv6:2a00:1450:4864:20::32b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6ADF96E30F
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Apr 2021 19:07:32 +0000 (UTC)
Received: by mail-wm1-x32b.google.com with SMTP id
 o26-20020a1c4d1a0000b0290146e1feccdaso679384wmh.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Apr 2021 12:07:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=/xgXWvdhHR12LQ7twoZwUWQ3wyYVnWIVUix5A9UrA9A=;
 b=a++/8glf9ooXqXDkrpe7AY/bGJ75vph3pt2Ws6X10GvmQmNbpVIEe93PdA/HahK7i1
 Tt2MWx6/wZmcLBU+nHTyXN5Khvf2u5lRnYeFmaJYLW8vLGJnBGpFmtJHSjR2iaYKxVVV
 l6v9kkZKv2SARCeH7h7GaQQgjxyeBvTRpfZ9E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=/xgXWvdhHR12LQ7twoZwUWQ3wyYVnWIVUix5A9UrA9A=;
 b=ZaKxsu1usBw6miE/tT6SuhURCuMIqUs54VESymu7maey9Xk7NFVAz0CLK92fSeKk02
 iv8nELlRI4/COtARGU6wUHLdXm90zx+VddpXSfpzaMCfeA6Q0UJ9oB0V4bVef0pAsjok
 9ekbl54+Plis81/t4llNZelTzFK07OQvjIHE4slcNL5DB0UuuFpvk48BeudOOHY4h+hP
 Gam6k5EiqYSJrnunrCY9oHzbL9CyGYXteETr5epqf+Pkxz+7kntriTptAbvf9CHCHYDB
 e5TmmncQT9XBHekI5irDix9HG4C+ayTQWIWjH8rrrhJpU9V05U2NSFW3DfKlPGQxXapp
 aVjw==
X-Gm-Message-State: AOAM530qjsSJ+GU6kjS324rTO0jP3uKmGH1U16MqwG/c3BDN3Tg+1LTv
 IkGrTuGria/Vx09jH3++VzoWnBcwfj+0uA==
X-Google-Smtp-Source: ABdhPJzdjHHMiOPvrtpOnMd8JDlZ56CicQO/sLBojCn8V6BlhSj3i0VW2t95SmgZN00AxsyJDGfImA==
X-Received: by 2002:a1c:7c0e:: with SMTP id x14mr1829258wmc.31.1619723251111; 
 Thu, 29 Apr 2021 12:07:31 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id l12sm6562244wrq.36.2021.04.29.12.07.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Apr 2021 12:07:30 -0700 (PDT)
Date: Thu, 29 Apr 2021 21:07:28 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Jason Ekstrand <jason@jlekstrand.net>
Message-ID: <YIsD8OSFdLnjz5cL@phenom.ffwll.local>
References: <20210423223131.879208-1-jason@jlekstrand.net>
 <20210423223131.879208-17-jason@jlekstrand.net>
 <YIrWB3fX3TseroSh@phenom.ffwll.local>
 <CAOFGe97b_LSGfrLo3LBhBuvx8wduVJLf0ySC=gG7Z+L6v2dPzQ@mail.gmail.com>
 <YIsBSRwNGiiF/kxE@phenom.ffwll.local>
 <CAOFGe97qi=jB+MGPtJyX-QYmjvTe2QPeijsNCeJ2z+E19x6ZNg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOFGe97qi=jB+MGPtJyX-QYmjvTe2QPeijsNCeJ2z+E19x6ZNg@mail.gmail.com>
X-Operating-System: Linux phenom 5.10.32scarlett+ 
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

On Thu, Apr 29, 2021 at 02:01:16PM -0500, Jason Ekstrand wrote:
> On Thu, Apr 29, 2021 at 1:56 PM Daniel Vetter <daniel@ffwll.ch> wrote:
> > On Thu, Apr 29, 2021 at 01:16:04PM -0500, Jason Ekstrand wrote:
> > > On Thu, Apr 29, 2021 at 10:51 AM Daniel Vetter <daniel@ffwll.ch> wrote:
> > > > > +     ret = set_proto_ctx_param(file_priv, pc, args);
> > > >
> > > > I think we should have a FIXME here of not allowing this on some future
> > > > platforms because just use CTX_CREATE_EXT.
> > >
> > > Done.
> > >
> > > > > +     if (ret == -ENOTSUPP) {
> > > > > +             /* Some params, specifically SSEU, can only be set on fully
> > > >
> > > > I think this needs a FIXME: that this only holds during the conversion?
> > > > Otherwise we kinda have a bit a problem me thinks ...
> > >
> > > I'm not sure what you mean by that.
> >
> > Well I'm at least assuming that we wont have this case anymore, i.e.
> > there's only two kinds of parameters:
> > - those which are valid only on proto context
> > - those which are valid on both (like priority)
> >
> > This SSEU thing looks like a 3rd parameter, which is only valid on
> > finalized context. That feels all kinds of wrong. Will it stay? If yes
> > *ugh* and why?
> 
> Because I was being lazy.  The SSEU stuff is a fairly complex param to
> parse and it's always set live.  I can factor out the SSEU parsing
> code if you want and it shouldn't be too bad in the end.

Yeah I think the special case here is a bit too jarring.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
