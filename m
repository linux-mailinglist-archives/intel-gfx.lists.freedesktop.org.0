Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DC61E173585
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 11:44:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF2266EF2A;
	Fri, 28 Feb 2020 10:44:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com
 [IPv6:2a00:1450:4864:20::332])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E05276EF2A
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Feb 2020 10:44:31 +0000 (UTC)
Received: by mail-wm1-x332.google.com with SMTP id t23so2701940wmi.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Feb 2020 02:44:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fooishbar-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qzJJnF2P8v7o31Ml9N5Di+8zMyH/5FFUkGvyONKT3Nc=;
 b=TuzPHmKOeb4yf8+T7Vm+KWfWmVjwGqB3u+YF7p1Ewxglh20LdRWcFPJGWdRar4+rFg
 qKvHyUnqTTQ3nmqTCfCHQ6yvrYo/eifVKrVqr6OIpWEBSt5XO49GYFq5xfNXkEsDEUeA
 KMzL5tEApE7nPn0U2hss2M9WzLyBjMXEKhp1QrPS4v5sbRr51TZTCx515LQ5LoDZv1co
 OYvfTYZVQ/pK9Pqb/UawvcoadIC40Wqnt30qhqeFeqcXT1qAHzQ6pfRdZJe1rTiSZ4sf
 Z3ctRnlfcNzZw1h+8ZP5B3A2BYNsU43HImYXyGF8MJ5mm8SdS/amamVzVJ6ZVD/CV7Rf
 k8Iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qzJJnF2P8v7o31Ml9N5Di+8zMyH/5FFUkGvyONKT3Nc=;
 b=gURL62MAe+GfUiZz6MNNVXUE7jNfXg8yjxxbDgYdwn6E/Jb6uM0Y2nI/hf+Q5Ob6MN
 pSx7qYG/q45KBIa6qZD2NTm3MVh3V92/XXL3e+c5GcxVMfD42L288uI7vZTldNswxKsw
 XazTaUhIsHiz1HzvRK/wCWkpU+jyMahu8Adr1Dhk4hfppZnTagGTHqF0zgSu5dIm8l4/
 eMGI4gB9n15zeXt+8MHM2rZb81/hLAfOWBejKPr4wkrm7JCQZWeaYBUwnDNx26Xi5471
 58AQRoKaPex3utS5LZNl6I5mEqGAt9raAXCNj/VXoR0lY60wJ8aRU2Mn4uPLfahKGKfM
 FNYQ==
X-Gm-Message-State: APjAAAWLqOZjGgTf0GH/FcrBUryyuqRnk5ekDHlZDwfW8VcZ7MvVVGqd
 hOiq3tJV0OS2d/47Xp1vRw3o7nJS85zQN3o8IyaQiA==
X-Google-Smtp-Source: APXvYqxjMlpQYAoaSV79eB5XA4OXS8HLHE+ajKuLAKlYwTaFiXhXgcbYIoZ/XZtJyerWrQcz15snt38n9vUy+lCVotc=
X-Received: by 2002:a05:600c:21c4:: with SMTP id
 x4mr4328201wmj.147.1582886670440; 
 Fri, 28 Feb 2020 02:44:30 -0800 (PST)
MIME-Version: 1.0
References: <CAKMK7uHHK2SsCfpmZwEUyTJJHsoccKoadoko3cEBOoYDFkmeAw@mail.gmail.com>
 <CAPM=9txcGPvFdSzMtYZXyqLKnWyacSMuHdoXdV63M53fLFVFpw@mail.gmail.com>
 <b398161ff7d0268454413058dc6c194cf93f5990.camel@collabora.com>
 <ece8ebe3-40ec-2457-02da-4fef19cbe8f6@intel.com>
 <6d2ec570f957b4504fb70e0b1f0632712a99dc0c.camel@collabora.com>
In-Reply-To: <6d2ec570f957b4504fb70e0b1f0632712a99dc0c.camel@collabora.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Fri, 28 Feb 2020 10:43:49 +0000
Message-ID: <CAPj87rO7BuKQj2Kei3T7RdkFq5=TiuShBvtrPU2sn0iqMfXSTg@mail.gmail.com>
To: Erik Faye-Lund <erik.faye-lund@collabora.com>
Subject: Re: [Intel-gfx] [Mesa-dev] gitlab.fd.o financial situation and
 impact on services
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
Cc: amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 "X.Org development" <xorg-devel@lists.x.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 wayland <wayland-devel@lists.freedesktop.org>,
 "X.Org Foundation Board" <board@foundation.x.org>,
 Xorg Members List <members@x.org>, Mesa Dev <mesa-dev@lists.freedesktop.org>,
 gstreamer-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 28 Feb 2020 at 10:06, Erik Faye-Lund
<erik.faye-lund@collabora.com> wrote:
> On Fri, 2020-02-28 at 11:40 +0200, Lionel Landwerlin wrote:
> > Yeah, changes on vulkan drivers or backend compilers should be
> > fairly
> > sandboxed.
> >
> > We also have tools that only work for intel stuff, that should never
> > trigger anything on other people's HW.
> >
> > Could something be worked out using the tags?
>
> I think so! We have the pre-defined environment variable
> CI_MERGE_REQUEST_LABELS, and we can do variable conditions:
>
> https://docs.gitlab.com/ee/ci/yaml/#onlyvariablesexceptvariables
>
> That sounds like a pretty neat middle-ground to me. I just hope that
> new pipelines are triggered if new labels are added, because not
> everyone is allowed to set labels, and sometimes people forget...

There's also this which is somewhat more robust:
https://gitlab.freedesktop.org/mesa/mesa/merge_requests/2569

Cheers,
Daniel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
