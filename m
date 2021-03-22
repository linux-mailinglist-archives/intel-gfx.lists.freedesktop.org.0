Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 33BD4344B39
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Mar 2021 17:27:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86B196E517;
	Mon, 22 Mar 2021 16:26:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x32e.google.com (mail-ot1-x32e.google.com
 [IPv6:2607:f8b0:4864:20::32e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CCAB96E517
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Mar 2021 16:26:56 +0000 (UTC)
Received: by mail-ot1-x32e.google.com with SMTP id
 h6-20020a0568300346b02901b71a850ab4so16526274ote.6
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Mar 2021 09:26:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Tqh9FeOHVd4poYote/ngr+Xzz2Rj23UjzEqrB7uTeRo=;
 b=cpNXOIFlnTrxbTTxFrPv67IFYXotVX6OHbtc9plOtfWvrdMYilu1fSscnSkOvm6A9A
 tb5N3Y4KyIybiyqrF12g2WuE8up3mebJLU084AiAw1XTnKOwJUW4/2TBvdRrSsSuQr8B
 DBVKj27tC8kRrjrGRqEbux3pa6HSRv0qvxcAI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Tqh9FeOHVd4poYote/ngr+Xzz2Rj23UjzEqrB7uTeRo=;
 b=m3rpQi/D+N1UivWSEVgJKBNjFkxLIHdVQX3fG21lzCRQdqz1z060+K7IGXJy/6ogy/
 n6i9n3xEHPl14puklVspq5+5D2Qtrv6sMll39dcEaQNzzXwTyLZzGGt8uHmf06P7Uh44
 Edp6YiT95aXQqHmvrqaQ3B0gif5xHxtGHZCl3b62jpkG7UfirXi1Lc/it5WDPYYioTnC
 HspEFgm/szMLKW0QUUl0nTpB6R08q1axqZZs4O0+w/EmC5th3NiswNI0QRkEg7htyoqM
 WykdvkmxoMM0OhRabsIuOEtj3navspFIrDO6VP156s642O6isk1b9Cs6uJYJ7OtUz7en
 kIqg==
X-Gm-Message-State: AOAM532SB6LsKketPKmPt3i7LrMdwdpiNtKaUiol2pk4VHFuUEBRYti6
 J98ElMWu770zVrMN0v1QOHxfcuOLwNNYj77edjZimA==
X-Google-Smtp-Source: ABdhPJzmE4tgEpb/ip2Lx5v3nt77TXD1Cj/CIGBi50PjCLpf9bgUX0JMxFbk82TA8RxbH5/WpyAySxb33kK3SGv1lFs=
X-Received: by 2002:a9d:7b4e:: with SMTP id f14mr588783oto.281.1616430416150; 
 Mon, 22 Mar 2021 09:26:56 -0700 (PDT)
MIME-Version: 1.0
References: <20210319223856.2983244-1-jason@jlekstrand.net>
 <20210319223856.2983244-2-jason@jlekstrand.net>
 <CAOFGe94ggJUBH_+bbxAVLUge8NZQYHK55ZzjnQ2erXhh+r8c=A@mail.gmail.com>
 <87wntz5rdg.fsf@intel.com>
 <CAOFGe97UDA9n6LCGXEZi-2B6ZTNeOG+D7sEX1kwEF5L2kUsWcw@mail.gmail.com>
In-Reply-To: <CAOFGe97UDA9n6LCGXEZi-2B6ZTNeOG+D7sEX1kwEF5L2kUsWcw@mail.gmail.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Mon, 22 Mar 2021 17:26:44 +0100
Message-ID: <CAKMK7uH1o316GKH9234AZUE9Oo3STE7zt1aHY2uqZE9PYy6zzQ@mail.gmail.com>
To: Jason Ekstrand <jason@jlekstrand.net>
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915: Drop
 I915_CONTEXT_PARAM_RINGSIZE
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

On Mon, Mar 22, 2021 at 5:01 PM Jason Ekstrand <jason@jlekstrand.net> wrote:
>
> On Mon, Mar 22, 2021 at 7:01 AM Jani Nikula <jani.nikula@linux.intel.com> wrote:
> >
> > On Sat, 20 Mar 2021, Jason Ekstrand <jason@jlekstrand.net> wrote:
> > >     This reverts commit 88be76cdafc7e60e2e4ed883bfe7e8dd7f35fa3a.  This API
> >
> > Small nit, I think it would be useful to reference commits with the
> > citation style:
> >
> > 88be76cdafc7 ("drm/i915: Allow userspace to specify ringsize on construction")
>
> Done.
>
> >
> > I use this monster in my .gitconfig:
> >
> > [alias]
> >         cite = "!f() { git log -1 '--pretty=format:%H (\"%s\")%n' $1 | sed -e 's/\\([0-f]\\{12\\}\\)[0-f]*/\\1/'; }; f"
>
> Thanks for the tip!

dim script from maintainer-tools has a bunch of these helpers
(andother one is dim fixes for generating Cc: lists) which should work
even without commit rights and all that set up:

https://gitlab.freedesktop.org/drm/maintainer-tools/-/blob/master/dim

Cheers, Daniel

>
> > With that, 'git cite <committish>' will give you the nice reference with
> > 12 chars of sha1 regardless of core.abbrev config.
> >
> >
> > BR,
> > Jani.
> >
> > --
> > Jani Nikula, Intel Open Source Graphics Center
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel



-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
