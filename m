Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E21B4AC4FF8
	for <lists+intel-gfx@lfdr.de>; Tue, 27 May 2025 15:37:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70F4210E4F5;
	Tue, 27 May 2025 13:37:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=google.com header.i=@google.com header.b="mvIxFccJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com
 [209.85.160.171])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D9D910E4F2
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 May 2025 13:37:33 +0000 (UTC)
Received: by mail-qt1-f171.google.com with SMTP id
 d75a77b69052e-4768f90bf36so27450251cf.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 May 2025 06:37:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1748353052; x=1748957852;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=1DfXclIybJgrhp7Ns7X38FYQwzivRLt7u8VY7d1k9FQ=;
 b=mvIxFccJeFGqIEqvAbqwLyHi2FnQw1BOchS9/G79VaSKwnS8IiFvEtdxp7KrhPq4d9
 /UfTPppMCobKVgt2tNeZURQJjcbE1+eHaaqjCKZMXvXK+f10DlESdrFsYIf30O+4dcaZ
 z+xwve1QTOVHFl6XZKaWZdZnRiqL7/7yZj/Wd5npHbAn9oeXS1BZ0Omxtt7TgOP5djL2
 bPe42IAeZjaWPIUXn5NEuQpKyYWY89UkaHr4I0yZ8AMyGV6GXTseHy5VSe/2m0pphGEg
 g3CQit8hxUBRdV1wwTUVcfhtJrTImcflGuycs4SLLdPVr2a210StJrfd5/hFIYvohM/1
 GVow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1748353052; x=1748957852;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=1DfXclIybJgrhp7Ns7X38FYQwzivRLt7u8VY7d1k9FQ=;
 b=ukj2NCStkJBrMhxkZoY0hCtlPOXMKaVTiIThzHUoNx9sFoB80c9ReQPvob7sci8VvF
 nGOXVKqXxIHKWqRYwCuV0Y2/qE9xd6a4p5bXshND5/JsT2T44jcPbpYhi56iRbeTGxeu
 ZPwBqC56S37D/9DkAConqgySwCJ5anIY/WjfGZ0/LLdWDiy55NgfRLpt+hTBnNT/FGQf
 33SJ1fwfc4Tx8tQkaJG8dHIN4qpzEnlGZC/m6f36XuMl9y/QaODjsQHTVq7JMBnQXST0
 rCiPzKMY4dgAcvhdLNEcitG3VyH3z51NBhV1CDoiGy+EewvKBxNYTOWxDPfZaGzMtqMA
 1dEA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWrSU1Oe3aBnXe7AsO/Tn68hHY1UqjcwqDmFAFqfndZsVnwfJOnk956ifzuTO3YZtbvdyMlYpQaCiE=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YymNbdOYw+tHLhqFiFKSoPee35NZqhPIMxfX2U5MOQHFhB+CasT
 eRnWBHy39KtzSAE7wR994A4ELqdF78qLyJVQnZTbfQo3pwkrJRTcYau6t3BPqV/Tu8NKL8B/FgI
 74RfvhBdaTxWEIs+ehOy9fDROdpdVlIA/DpouyYmm
X-Gm-Gg: ASbGncvKC3ExgmzZUMQ6GPBXQL5Vhro8QIXNdWSrgvrUf0S/q6qJcrj3mTZqKM9xRUS
 tSh+jHiKjA8W8/uw6wNiKeXFe8Rv+2lnsQUrd416NAS+Uc502yIaZNEl4YzsVbsujhlBeTG4h21
 MZR94W3t9Px40CSROSguRLY+oBGBOQu3zt/66128opohN0
X-Google-Smtp-Source: AGHT+IE7m4Cq3bQJjOeyJAia21VMlshs95gl112B78zB/spj93HG+Zo7WNUPRTmVelhviwuo19ZaiquZWB2TPUAPtQk=
X-Received: by 2002:a05:622a:5512:b0:476:7eca:57e7 with SMTP id
 d75a77b69052e-49f46d31350mr213132041cf.26.1748353052042; Tue, 27 May 2025
 06:37:32 -0700 (PDT)
MIME-Version: 1.0
References: <20250527-reftrack-dbgfs-v10-0-dc55f7705691@kernel.org>
 <20250527-reftrack-dbgfs-v10-8-dc55f7705691@kernel.org>
 <CANn89i+PFJguSKfbiX1nWSvPA2S8O-pb7HxVT4+zkjMdD3meqg@mail.gmail.com>
In-Reply-To: <CANn89i+PFJguSKfbiX1nWSvPA2S8O-pb7HxVT4+zkjMdD3meqg@mail.gmail.com>
From: Eric Dumazet <edumazet@google.com>
Date: Tue, 27 May 2025 06:37:21 -0700
X-Gm-Features: AX0GCFsrSMIV6ani5r800MRwO3KbNjXkHyjYRDMotIUPivEBkfDrOZ2V5akOvLk
Message-ID: <CANn89i+qv8SsgdDv9PUG=Yuw1KMUyZC=_KqWdYOBL4p3nmcd1g@mail.gmail.com>
Subject: Re: [PATCH v10 8/9] net: add symlinks to ref_tracker_dir for netns
To: Jeff Layton <jlayton@kernel.org>
Cc: Andrew Morton <akpm@linux-foundation.org>,
 "David S. Miller" <davem@davemloft.net>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Simon Horman <horms@kernel.org>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, 
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, 
 Jani Nikula <jani.nikula@linux.intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Tvrtko Ursulin <tursulin@ursulin.net>, Kuniyuki Iwashima <kuniyu@amazon.com>, 
 Qasim Ijaz <qasdev00@gmail.com>, Nathan Chancellor <nathan@kernel.org>,
 Andrew Lunn <andrew@lunn.ch>, 
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
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

On Tue, May 27, 2025 at 6:35=E2=80=AFAM Eric Dumazet <edumazet@google.com> =
wrote:
>
> On Tue, May 27, 2025 at 4:34=E2=80=AFAM Jeff Layton <jlayton@kernel.org> =
wrote:
> >
> > After assigning the inode number to the namespace, use it to create a
> > unique name for each netns refcount tracker with the ns.inum and
> > net_cookie values in it, and register a symlink to the debugfs file for
> > it.
> >
> > init_net is registered before the ref_tracker dir is created, so add a
> > late_initcall() to register its files and symlinks.
> >
> > Signed-off-by: Jeff Layton <jlayton@kernel.org>
> > ---
> >  net/core/net_namespace.c | 30 +++++++++++++++++++++++++++++-
> >  1 file changed, 29 insertions(+), 1 deletion(-)
> >
> > diff --git a/net/core/net_namespace.c b/net/core/net_namespace.c
> > index 8708eb975295ffb78de35fcf4abef7cc281f5a51..39b01af90d240df48827e5c=
3159c3e2253e0a44d 100644
> > --- a/net/core/net_namespace.c
> > +++ b/net/core/net_namespace.c
> > @@ -791,12 +791,40 @@ struct net *get_net_ns_by_pid(pid_t pid)
> >  }
> >  EXPORT_SYMBOL_GPL(get_net_ns_by_pid);
> >
> > +#ifdef CONFIG_NET_NS_REFCNT_TRACKER
> > +static void net_ns_net_debugfs(struct net *net)
> > +{
> > +       ref_tracker_dir_symlink(&net->refcnt_tracker, "netns--%lx-%u-re=
fcnt",
> > +                               net->net_cookie, net->ns.inum);
>
> With proper annotations, you should be able to catch format error as in:
>
> warning: format =E2=80=98%lx=E2=80=99 expects argument of type =E2=80=98l=
ong unsigned int=E2=80=99,
> but argument x has type =E2=80=98u64=E2=80=99 {aka =E2=80=98long long uns=
igned int=E2=80=99}
> [-Wformat=3D]

Reference:

include/linux/compiler_attributes.h:158:#define __printf(a, b)
         __attribute__((__format__(printf, a, b)))
