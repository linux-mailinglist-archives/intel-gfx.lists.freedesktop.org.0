Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C339218682E
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2020 10:50:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B98AB6E3B7;
	Mon, 16 Mar 2020 09:50:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com
 [IPv6:2a00:1450:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBC5789DF9
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Mar 2020 09:50:11 +0000 (UTC)
Received: by mail-wr1-x444.google.com with SMTP id f11so3516617wrp.8
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Mar 2020 02:50:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to; bh=ERTY/dO2K1SPKjMbktdMeysHG0XO9+huCKvmnpNOLJI=;
 b=ibTHYW+ifSOK/LTwiOq9PvvBipE99KOth2lQwB2NBbuHnYCQ/NlKS7NdOgfiitP9Tq
 woUhVB3QTfB09JULKmuFEYCYBDCGqSp1vXFLBUFiLq7vXw0x41Q53oQG0oOLLcEwBghC
 iPXOUGNazW7XgLId9HV2Cylcj4oKabBf930Vs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to;
 bh=ERTY/dO2K1SPKjMbktdMeysHG0XO9+huCKvmnpNOLJI=;
 b=CjQ+/NXrtJE0qOKEZxC5NxkcrSegk5qYiByDs92cxDJexzS/nnJP9nm9TL4lOAqCb/
 kKf2qA68TB5NxN7VXiEADCiDBfoymc4x8rBMFfbtbVo2fAaLIrP4TauIjdBRbHGNmN3o
 cEzyQJDFrRdAJ47bXInsj0pX5avRRW5ALoYxA/XcCwcjX1vkCDFhHQJQqnon/8lQrtUu
 gwRvTihFpyItE0qxwBdtIVwncjLW1pwR8SlVf8Z33R3iw+NKmXtRPDWyrwxpEDDOyJkP
 E1/nlWYGmUaDIe3TZ0W2SxY47nvhT2piRktXEX3iB7nN7y9Xn1RoI5mxeCKnUzJHLVDH
 LfXg==
X-Gm-Message-State: ANhLgQ2gyYrWAoWUr2U8vAT4cF3FPhEU9kQlxOQJJ2enYqQywWPfJkOS
 pl2mxC+CTCWL3iuxvgROVhNyAg==
X-Google-Smtp-Source: ADFU+vtGDKyYyg/j1KSDufUqygL0smsKl8gN9P6w7ZHoyArqQzjHnMTkautF3tAyQ2ZQ3DB2aaFDeg==
X-Received: by 2002:a5d:6ca7:: with SMTP id a7mr17894725wra.157.1584352210573; 
 Mon, 16 Mar 2020 02:50:10 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id x6sm6531641wrm.29.2020.03.16.02.50.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Mar 2020 02:50:09 -0700 (PDT)
Date: Mon, 16 Mar 2020 10:50:07 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Joe Perches <joe@perches.com>
Message-ID: <20200316095007.GI2363188@phenom.ffwll.local>
Mail-Followup-To: Joe Perches <joe@perches.com>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 Lukas Bulwahn <lukas.bulwahn@gmail.com>,
 intel-gfx@lists.freedesktop.org, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Sebastian Duda <sebastian.duda@fau.de>,
 Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org
References: <20200304120711.12117-1-lukas.bulwahn@gmail.com>
 <b0296e3a-31f8-635a-f26d-8b0bc490aae3@amd.com>
 <20200306103946.GT2363188@phenom.ffwll.local>
 <155f99baffe11836fc9d794ff297bdcee7831050.camel@perches.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <155f99baffe11836fc9d794ff297bdcee7831050.camel@perches.com>
X-Operating-System: Linux phenom 5.3.0-3-amd64 
Subject: Re: [Intel-gfx] [PATCH] MAINTAINERS: adjust to reservation.h
 renaming
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
Cc: intel-gfx@lists.freedesktop.org, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Lukas Bulwahn <lukas.bulwahn@gmail.com>,
 Sebastian Duda <sebastian.duda@fau.de>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Mar 06, 2020 at 02:56:06AM -0800, Joe Perches wrote:
> On Fri, 2020-03-06 at 11:39 +0100, Daniel Vetter wrote:
> > On Wed, Mar 04, 2020 at 01:08:32PM +0100, Christian K=F6nig wrote:
> > > Am 04.03.20 um 13:07 schrieb Lukas Bulwahn:
> > > > Commit 52791eeec1d9 ("dma-buf: rename reservation_object to dma_res=
v")
> > > > renamed include/linux/reservation.h to include/linux/dma-resv.h, but
> > > > missed the reference in the MAINTAINERS entry.
> > > > =

> > > > Since then, ./scripts/get_maintainer.pl --self-test complains:
> > > > =

> > > >    warning: no file matches F: include/linux/reservation.h
> > > > =

> > > > Adjust the DMA BUFFER SHARING FRAMEWORK entry in MAINTAINERS.
> > > > =

> > > > Co-developed-by: Sebastian Duda <sebastian.duda@fau.de>
> > > > Signed-off-by: Sebastian Duda <sebastian.duda@fau.de>
> > > > Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
> > > =

> > > Reviewed-by: Christian K=F6nig <christian.koenig@amd.com>
> > =

> > You'll push this too?
> > -Daniel
> > =

> > > > ---
> > > > Christian, please pick this patch.
> > > > applies cleanly on current master and next-20200303
> > > > =

> > > >   MAINTAINERS | 2 +-
> > > >   1 file changed, 1 insertion(+), 1 deletion(-)
> > > > =

> > > > diff --git a/MAINTAINERS b/MAINTAINERS
> > > > index 6158a143a13e..3d6cb2789c9e 100644
> > > > --- a/MAINTAINERS
> > > > +++ b/MAINTAINERS
> > > > @@ -5022,7 +5022,7 @@ L:	dri-devel@lists.freedesktop.org
> > > >   L:	linaro-mm-sig@lists.linaro.org (moderated for non-subscribers)
> > > >   F:	drivers/dma-buf/
> > > >   F:	include/linux/dma-buf*
> > > > -F:	include/linux/reservation.h
> > > > +F:	include/linux/dma-resv.h
> > > >   F:	include/linux/*fence.h
> > > >   F:	Documentation/driver-api/dma-buf.rst
> > > >   K:	dma_(buf|fence|resv)
> =

> Slightly unrelated:
> =

> The K: entry matches a lot of other things
> and may have a lot of false positive matches
> like any variable named dma_buffer
> =

> This should also use (?:...) to avoid a perl
> capture group.
> =

> Perhaps:
> =

> K:	'\bdma_(?:buf|fence|resv)\b'

Hm either people aren't using get_maintainers.pl consistently, or it
doesn't seem to be a real world problem. I'm not seeing any unrelated
patches on dri-devel at least.

But happy to merge such a patch if it shows up ofc, it's definitely the
more correct thing :-)
-Daniel
-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
