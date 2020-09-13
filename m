Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D818268192
	for <lists+intel-gfx@lfdr.de>; Sun, 13 Sep 2020 23:53:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 53C406E082;
	Sun, 13 Sep 2020 21:53:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com
 [IPv6:2a00:1450:4864:20::62a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6958B6E082
 for <intel-gfx@lists.freedesktop.org>; Sun, 13 Sep 2020 21:53:36 +0000 (UTC)
Received: by mail-ej1-x62a.google.com with SMTP id nw23so20452962ejb.4
 for <intel-gfx@lists.freedesktop.org>; Sun, 13 Sep 2020 14:53:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NTwM+fq4bTkH52i9nA29Ltn95fkXewMardeNr6t/WpM=;
 b=TUZZxykNm3VsT+CTLYEkEGEh5k8u3QVMxiyTJrBWns0NaK5oWixqqaABhKUlAJ3ABx
 sqe7f6kTyHXvM8xK1r08Il/XwuKrh2p7CfGcza44bN7/OyWJOSmK3zSjS7BBfLC9TMKg
 6evIpUweIOn9pG0AV1Bxts3c11MdobM6o7nv9YUR4mOmEv4s/5HT9gQJkQZjpRW/H1hT
 jo59YbCcduGlDecY/W5fXu5K+oVPmsBTWjvyUalfeI4+tDoWDAc5bssz84iAVNXDHTzC
 UFIHcjVyhg34O2r3eMD64Xdq6I4tfuyzOJXRjTQJL4DzOy4+CFvSgi47aoDSGjNwJZUd
 rpvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NTwM+fq4bTkH52i9nA29Ltn95fkXewMardeNr6t/WpM=;
 b=PMle4Az88ZgHVAmcJuoIiIdbvipLHZJIpwPSkL9lSEDaGj3hC+EikYxjFuNaGgaUOw
 LVC3wJ6I0Te9Fz6JUWvoaR6Da+86HL+Ll3cJZH/CI0/8+8hQfABk4UQnBP0GENXbh3Zu
 /MLdxFonsZ5lUOqVEMpUyvDteaWBTXamEg27SudekxcNsAdIkjqDtk+wc4+yDh+lXeFJ
 GlTpRviE7JuUcQPMg2SlUe9TfMTe6wTfPRpEf08Zu1WAlWltd2gCs4PulBCphMCNfvCQ
 sHYR8/PXGUYYUEtrQzrUGvmJzV1k/2ipXLatUNg0NoTmdX8b1s1p0Uy/VchLoH8kVUS2
 uyeg==
X-Gm-Message-State: AOAM530sgROV9HTZZavPWvtsaRQ9hwPCWyvFIUXfC1N6xtKBCfaPto8d
 Kr9pZcXD/8IKDqIyKjZ+RiPZiBDnQ0WDapVQ1mk=
X-Google-Smtp-Source: ABdhPJyEceaiAodnRN4128qeO1GfOUBlBzVVdO0zoleGfF4pDx2YUiNgNJBGY8vKZRh0gn8oShZfHaPKu1/Q0oJUFUM=
X-Received: by 2002:a17:906:813:: with SMTP id
 e19mr11525766ejd.101.1600034014980; 
 Sun, 13 Sep 2020 14:53:34 -0700 (PDT)
MIME-Version: 1.0
References: <CAPM=9twVqXMW17Pw11W09D9+tn+r676yb7R3FxwpkMYrTEtS1A@mail.gmail.com>
 <f42a12f4-9c43-bfe1-20b6-f42b729d633f@intel.com>
 <159982722697.15554.10447903613389770525@jlahtine-mobl.ger.corp.intel.com>
In-Reply-To: <159982722697.15554.10447903613389770525@jlahtine-mobl.ger.corp.intel.com>
From: Dave Airlie <airlied@gmail.com>
Date: Mon, 14 Sep 2020 07:53:23 +1000
Message-ID: <CAPM=9twCckk5-YfY0prtCoNi+Nz3BwEiwQPiVh-egKfNubE3Mg@mail.gmail.com>
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Subject: Re: [Intel-gfx] dg1 flag for userspace to allocate contig resources
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
Cc: Jani Nikula <jani.nikula@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 11 Sep 2020 at 22:27, Joonas Lahtinen
<joonas.lahtinen@linux.intel.com> wrote:
>
> + Jani and Ville
>
> Quoting Matthew Auld (2020-09-11 11:56:56)
> > On 11/09/2020 06:42, Dave Airlie wrote:
> > > I've just been looking at the current DG1 uapi, and I can't see any
> > > flag to allow userspace to upfront say it was a contiguous vram BO.
> > >
> > > I think you'd really want this for scanout, since otherwise you'll
> > > have to migrate any non-contig to contig when it transitions to
> > > scanout, and cause an extra set of copies.
> >
> > Hmm, why do we need physically contiguous memory for scanout? From hw
> > pov it's seen through the GTT.
>
> That's correct. On both discrete (and integrated) platforms the scan-out
> addresses on Intel GPUs are programmed to targer Global GTT managed by
> kernel. So no need to have the backing storage contiguous.
>
> Only extra action required for a scan-out BO is to bind it to the GGTT in
> addition to the ppGTT that renders to it.
>
> GGTT is relatively expensive to write to these days and limited in size,
> but that can't really be helped with an upfront flag.
>

Oops thanks for enlightenment! Indeed binding things to the GTT
properly helps, sg iterator I had produced wrong pte entries, now I
can at least see an X stipple.

Dave.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
