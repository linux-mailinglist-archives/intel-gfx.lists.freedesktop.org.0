Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B13AC8CBDC
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Aug 2019 08:21:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 529D96E24E;
	Wed, 14 Aug 2019 06:20:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com
 [IPv6:2607:f8b0:4864:20::243])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 64F856E24E
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Aug 2019 06:20:58 +0000 (UTC)
Received: by mail-oi1-x243.google.com with SMTP id k22so2203036oiw.11
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Aug 2019 23:20:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hpJolByIHyZPlmi/5SbfbdZfrmAHnxrtaOJkwS94th0=;
 b=skdp2JdqJzMNc2Qix2fZ7rHcNFcHqGS3DTSnnkN3ELazPm0dn3gZqk2fhc6zUUo++6
 /92Zvyj4Cafz1p7QqlYW6WLV1XBitJ8ZWAICmB2TB74eVTwDMpyGSU8Rhy5H6b5u5SvE
 aCNrYEm3mTK0/yxz55+yMraj5QKH1eCvVE0/0wYdTvXWAQT8utm/ofcgZ2xB4wGwzJOg
 tybO/e87AwjgYrfZ+S5zctx9AbYY/Y84R/xJ5yH2erndiNxhxH2Ab84A+ilTeoqaXzYu
 nXSqOBsUPUU1hxatUjzWgsuI1IjV2oqsFtvQLJf3x9+hyLWF9Mha3LtTMVYEgONDwp5K
 p0sQ==
X-Gm-Message-State: APjAAAVpDwBxFHcao5B0qMzKMY0PUvVDd3Vw0A0EcbN9NpQCiWaZvAUJ
 Pgv7avVYnkV2QNH5nWGFy7/6YGBhYUffabgCtpHYoIG9/L4=
X-Google-Smtp-Source: APXvYqzEWQiLfRvT0q4eSQ5MqxnIR9U8kY51DdHz1KywC011NgNOL0iSRryO7FCKfcZp9UVpDq4f08O5ClImssaQaFM=
X-Received: by 2002:aca:6183:: with SMTP id v125mr3714399oib.6.1565763657439; 
 Tue, 13 Aug 2019 23:20:57 -0700 (PDT)
MIME-Version: 1.0
References: <20190811085601.110919-1-christian.koenig@amd.com>
 <156551511039.2301.9800850987730158624@skylake-alporthouse-com>
In-Reply-To: <156551511039.2301.9800850987730158624@skylake-alporthouse-com>
From: Sumit Semwal <sumit.semwal@linaro.org>
Date: Wed, 14 Aug 2019 11:50:46 +0530
Message-ID: <CAO_48GGPTVK0iaZQJr0vh=iOtCc7VX-EBD0mtPvraO6RVvywww@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=hpJolByIHyZPlmi/5SbfbdZfrmAHnxrtaOJkwS94th0=;
 b=xCCUG2oMD08DGg8HiXiou8bkugK13FTZr5NAS1Nu4YFsbJjc+NhJ4mFVqSPtSUMKg2
 5xlhlCsKxgqAGLKmkE4atKI9E/BfEg3YbvmYmBlWHl5nFppNbCVV0yEWnW4W6zZv0zDe
 vyYdYyWiR18fIixCljwk6ZrD/avFaxYkvTF+wVgaj28heXQg9ogVjE7uOaK+QZPgibdm
 ZlDUazBoILkVQ0nFeGitK86SwhuyRaKNzKjMwq6syBDZmBsGNvVFnh3uttU8AzvT5lKr
 7Xx55tCSjYP6WvaqK9aoxkPKw5fK7E2bpd3abJSEqx+kQ2YRfu8r9Squ8/W+eVxRpz1J
 kUPg==
Subject: Re: [Intel-gfx] [PATCH] dma-buf: rename reservation_object to
 dma_resv
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Cc: =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI mailing list <dri-devel@lists.freedesktop.org>,
 Gustavo Padovan <gustavo@padovan.org>
Content-Type: multipart/mixed; boundary="===============0178441945=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0178441945==
Content-Type: multipart/alternative; boundary="0000000000009ac14805900dc2ac"

--0000000000009ac14805900dc2ac
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Christian,

On Sun, 11 Aug 2019 at 14:48, Chris Wilson <chris@chris-wilson.co.uk> wrote=
:

> Quoting Christian K=C3=B6nig (2019-08-11 09:56:01)
> > Be more consistent with the naming of the other DMA-buf objects.
>
> From the tip of my fingers, \o/
>
> > Signed-off-by: Christian K=C3=B6nig <christian.koenig@amd.com>
>
Thanks for doing this!
Acked-by: Sumit Semwal <sumit.semwal@linaro.org>


>
> Letting the compiler do the real work (for the bits I spot checked it
> was the expected mechanical translation), and overwhelmingly agreeing wit=
h
> the motivation,
> Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
> -Chris
>

Best,
Sumit.

--0000000000009ac14805900dc2ac
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hello Christian,</div><br><div class=3D"g=
mail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sun, 11 Aug 2019 at 14=
:48, Chris Wilson &lt;<a href=3D"mailto:chris@chris-wilson.co.uk">chris@chr=
is-wilson.co.uk</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex">Quoting Christian K=C3=B6nig (2019-08-11 09:56:01)<br>
&gt; Be more consistent with the naming of the other DMA-buf objects.<br>
<br>
From the tip of my fingers, \o/<br>
<br>
&gt; Signed-off-by: Christian K=C3=B6nig &lt;<a href=3D"mailto:christian.ko=
enig@amd.com" target=3D"_blank">christian.koenig@amd.com</a>&gt;<br></block=
quote><div>Thanks for doing this!</div><div>Acked-by: Sumit Semwal &lt;<a h=
ref=3D"mailto:sumit.semwal@linaro.org">sumit.semwal@linaro.org</a>&gt;</div=
><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
Letting the compiler do the real work (for the bits I spot checked it<br>
was the expected mechanical translation), and overwhelmingly agreeing with<=
br>
the motivation,<br>
Reviewed-by: Chris Wilson &lt;<a href=3D"mailto:chris@chris-wilson.co.uk" t=
arget=3D"_blank">chris@chris-wilson.co.uk</a>&gt;<br>
-Chris<br>
</blockquote></div><br><div>Best,</div><div>Sumit.</div></div>

--0000000000009ac14805900dc2ac--

--===============0178441945==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============0178441945==--
