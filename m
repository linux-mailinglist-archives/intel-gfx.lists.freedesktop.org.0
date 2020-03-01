Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FA8E174F84
	for <lists+intel-gfx@lfdr.de>; Sun,  1 Mar 2020 21:18:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C71C16E21F;
	Sun,  1 Mar 2020 20:18:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yw1-xc31.google.com (mail-yw1-xc31.google.com
 [IPv6:2607:f8b0:4864:20::c31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BCC26E505
 for <intel-gfx@lists.freedesktop.org>; Sun,  1 Mar 2020 20:18:14 +0000 (UTC)
Received: by mail-yw1-xc31.google.com with SMTP id t192so1494402ywe.7
 for <intel-gfx@lists.freedesktop.org>; Sun, 01 Mar 2020 12:18:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:date:message-id:in-reply-to:references:user-agent
 :subject:mime-version;
 bh=rK4PWeGVKpjIXGKJ180U5Z6f2nEse/tPAA0Lrmax3uI=;
 b=osaLqRHNYgwZX/IdR39c4LlNFgQr+2Lp0Gg3mgXUInR58/hS6kleqS2+np38mwkeRg
 lWtVGmEeIdKwSgChnHjnsshIIgIEnOBWYU5ARQ0pc5tXqyux2M/FYHxIn6rIy9uA9ypi
 pv60mbowr25P0Gzyw3i4pgeBoy7ymWKbdjjoAmaMTJFaP/7gN4qXVTbxCpzRsyWH1gtx
 87HXDAY6yjG8G6KlsHTVppD/z8GEfgt+BMt/CTwYFyd7nQY1F8ak40eofi1IYvZqnIia
 1M1Oa/jSimHF+oqvWuiwqBIrlubEZPovCP3nE8bsa61BDF4tsq55zWil3q+jYeUcX2XS
 fdjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:date:message-id:in-reply-to
 :references:user-agent:subject:mime-version;
 bh=rK4PWeGVKpjIXGKJ180U5Z6f2nEse/tPAA0Lrmax3uI=;
 b=T0otygIqmJtRDNkuVQVKANAnq2eNWs4rsFViJrNyE5/EpBIa4m42uK2/M6a6cVsX3l
 lL0q2bYNUGyvQUbmVjvpEgGLhgqhnyKQ9SmDRNY5UJ/CAMVp8T71qdcPaFwRqF+O7MjK
 zm4byuueJqy7LmzJAdOq9jvsn6lfyaS9i5kxMrd1ybAcwXJhV3VToed04qB788Q/fQJF
 4NMFnR29Oo/d1fRO00E3hRGArbrO49UALbvyeXb5qQd6PnzMMYKcy/3vPII7nbKZAdnB
 pNz9U14qV9yUw//S8sX4nZ2JFcqcXu2cWMrx/5MuLsDkbhllBu5cQcg/GdQPB4QRwA/I
 gggA==
X-Gm-Message-State: ANhLgQ3PHxSAPsvaaGynfOLU3l/yAUsvIVyjrJXIXwu8Z7kCj1ge2fPK
 9117C6xInd1drS3I4e6JVEsjHw==
X-Google-Smtp-Source: ADFU+vvWnmfxJm/oM15Y377ukJs828ijC03a1zw65RkD35IwURpZPH4W2Eqs2l5L3s0Ue/v/lx/vrg==
X-Received: by 2002:a25:e805:: with SMTP id k5mr5941270ybd.14.1583093892761;
 Sun, 01 Mar 2020 12:18:12 -0800 (PST)
Received: from [100.102.15.57] ([209.107.189.63])
 by smtp.gmail.com with ESMTPSA id z39sm5598176ywj.77.2020.03.01.12.18.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 01 Mar 2020 12:18:11 -0800 (PST)
From: Jason Ekstrand <jason@jlekstrand.net>
To: Jacob Lifshay <programmerjake@gmail.com>,
 Nicolas Dufresne <nicolas@ndufresne.ca>
Date: Sun, 01 Mar 2020 14:18:05 -0600
Message-ID: <17097bfa848.27ad.c6988b7ea6112e3e892765a0d4287e0c@jlekstrand.net>
In-Reply-To: <CAC2bXD5OzDYtAcWAhpM_7Wwkbp2hpRszejjA7d0rqoypVdyDvA@mail.gmail.com>
References: <CAKMK7uHHK2SsCfpmZwEUyTJJHsoccKoadoko3cEBOoYDFkmeAw@mail.gmail.com>
 <CAPM=9txcGPvFdSzMtYZXyqLKnWyacSMuHdoXdV63M53fLFVFpw@mail.gmail.com>
 <b398161ff7d0268454413058dc6c194cf93f5990.camel@collabora.com>
 <ece8ebe3-40ec-2457-02da-4fef19cbe8f6@intel.com>
 <6d2ec570f957b4504fb70e0b1f0632712a99dc0c.camel@collabora.com>
 <CAPj87rO7BuKQj2Kei3T7RdkFq5=TiuShBvtrPU2sn0iqMfXSTg@mail.gmail.com>
 <59f4ea1f13a9a9d37f7801b93061b4ae7dd595e2.camel@gmail.com>
 <d0ef47e45c83b342494e6781b808b4831a008836.camel@ndufresne.ca>
 <9b0b31b8-7610-d5c5-790a-617178cc8c1e@daenzer.net>
 <93d7158b1ab49e51d14d991d5bdb2dba38ad6025.camel@ndufresne.ca>
 <CAC2bXD5OzDYtAcWAhpM_7Wwkbp2hpRszejjA7d0rqoypVdyDvA@mail.gmail.com>
User-Agent: AquaMail/1.23.0-1556 (build: 102300002)
MIME-Version: 1.0
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
Cc: Erik Faye-Lund <erik.faye-lund@collabora.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 =?UTF-8?B?TWljaGVsIETDpG56ZXI=?= <michel@daenzer.net>,
 "X.Org development" <xorg-devel@lists.x.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 wayland <wayland-devel@lists.freedesktop.org>,
 "X.Org Foundation Board" <board@foundation.x.org>,
 Xorg Members List <members@x.org>, dri-devel <dri-devel@lists.freedesktop.org>,
 Mesa Dev <mesa-dev@lists.freedesktop.org>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 Discussion of the development of and with GStreamer
 <gstreamer-devel@lists.freedesktop.org>
Content-Type: multipart/mixed; boundary="===============1444375744=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is a multi-part message in MIME format.
--===============1444375744==
Content-Type: multipart/alternative; boundary="----------17097bfa9d01c2f27ad122937"

This is a multi-part message in MIME format.
------------17097bfa9d01c2f27ad122937
Content-Type: text/plain; format=flowed; charset="UTF-8"
Content-Transfer-Encoding: 8bit

I don't think we need to worry so much about the cost of CI that we need to 
micro-optimize to to get the minimal number of CI runs. We especially 
shouldn't if it begins to impact coffee quality, people's ability to merge 
patches in a timely manner, or visibility into what went wrong when CI 
fails. I've seen a number of suggestions which will do one or both of those 
things including:

 - Batching merge requests
 - Not running CI on the master branch
 - Shutting off CI
 - Preventing CI on other non-MR branches
 - Disabling CI on WIP MRs
 - I'm sure there are more...

I think there are things we can do to make CI runs more efficient with some 
sort of end-point caching and we can probably find some truly wasteful CI 
to remove. Most of the things in the list above, I've seen presented by 
people who are only lightly involved the project to my knowledge (no 
offense to anyone intended).  Developers depend on the CI system for their 
day-to-day work and hampering it will only show down development, reduce 
code quality, and ultimately hurt our customers and community. If we're so 
desperate as to be considering painful solutions which will have a negative 
impact on development, we're better off trying to find more money.

--Jason

On March 1, 2020 13:51:32 Jacob Lifshay <programmerjake@gmail.com> wrote:
> One idea for Marge-bot (don't know if you already do this):
> Rust-lang has their bot (bors) automatically group together a few merge 
> requests into a single merge commit, which it then tests, then, then the 
> tests pass, it merges. This could help reduce CI runs to once a day (or 
> some other rate). If the tests fail, then it could automatically deduce 
> which one failed, by recursive subdivision or similar. There's also a 
> mechanism to adjust priority and grouping behavior when the defaults aren't 
> sufficient.
>
> Jacob
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx


------------17097bfa9d01c2f27ad122937
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.=
w3.org/TR/html4/loose.dtd">
<html>
<body>
<div dir=3D"auto">
<div dir=3D"auto">I don't think we need to worry so much about the cost of =
CI that we need to micro-optimize to to get the minimal number of CI runs. =
We especially shouldn't if it begins to impact coffee quality, people's abi=
lity to merge patches in a timely manner, or visibility into what went wron=
g when CI fails. I've seen a number of suggestions which will do one or bot=
h of those things including:</div><div dir=3D"auto"><br></div><div dir=3D"a=
uto">&nbsp;- Batching merge requests</div><div dir=3D"auto">&nbsp;- Not run=
ning CI on the master branch</div><div dir=3D"auto">&nbsp;- Shutting off CI=
</div><div dir=3D"auto">&nbsp;- Preventing CI on other non-MR branches</div=
><div dir=3D"auto">&nbsp;- Disabling CI on WIP MRs</div><div dir=3D"auto">&=
nbsp;- I'm sure there are more...</div><div dir=3D"auto"><br></div><div dir=
=3D"auto">I think there are things we can do to make CI runs more efficient=
 with some sort of end-point caching and we can probably find some truly wa=
steful CI to remove. Most of the things in the list above, I've seen presen=
ted by people who are only lightly involved the project to my knowledge (no=
 offense to anyone intended).&nbsp; Developers depend on the CI system for =
their day-to-day work and hampering it will only show down development, red=
uce code quality, and ultimately hurt our customers and community. If we're=
 so desperate as to be considering painful solutions which will have a nega=
tive impact on development, we're better off trying to find more money.</di=
v><div dir=3D"auto"><br></div><div dir=3D"auto">--Jason</div><div dir=3D'au=
to'><br></div>
<div id=3D"aqm-original" style=3D"color: black;">
<!-- body start -->
<div class=3D"aqm-original-body">
<div style=3D"color: black;">
<p style=3D"color: black; font-size: 10pt; font-family: sans-serif; margin:=
 8pt 0;">On March 1, 2020 13:51:32 Jacob Lifshay &lt;programmerjake@gmail.c=
om&gt; wrote:</p>
<blockquote type=3D"cite" class=3D"gmail_quote" style=3D"margin: 0 0 0 0.75=
ex; border-left: 1px solid #808080; padding-left: 0.75ex;">
<div dir=3D"auto">One idea for Marge-bot (don't know if you already do this=
):<div dir=3D"auto">Rust-lang has their bot (bors) automatically group toge=
ther a few merge requests into a single merge commit, which it then tests, =
then, then the tests pass, it merges. This could help reduce CI runs to onc=
e a day (or some other rate). If the tests fail, then it could automaticall=
y deduce which one failed, by recursive subdivision or similar. There's als=
o a mechanism to adjust priority and grouping behavior when the defaults ar=
en't sufficient.</div><div dir=3D"auto"><br></div><div dir=3D"auto">Jacob</=
div></div>

<div>_______________________________________________</div>
<div>Intel-gfx mailing list</div>
<div><a class=3D"aqm-autolink aqm-autowrap" href=3D"mailto:Intel-gfx%40list=
s.freedesktop.org">Intel-gfx@lists.freedesktop.org</a></div>
<div><a class=3D"aqm-autolink aqm-autowrap" href=3D"https://lists.freedeskt=
op.org/mailman/listinfo/intel-gfx">https://lists.freedesktop.org/mailman/li=
stinfo/intel-gfx</a></div>
<div><br></div>
</blockquote>
</div>
</div>
<!-- body end -->

</div><div dir=3D"auto"><br></div>
</div></body>
</html>

------------17097bfa9d01c2f27ad122937--


--===============1444375744==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1444375744==--

