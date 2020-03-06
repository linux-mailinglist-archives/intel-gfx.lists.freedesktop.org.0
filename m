Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A13817BA77
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Mar 2020 11:39:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7FB16E57E;
	Fri,  6 Mar 2020 10:39:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com
 [IPv6:2a00:1450:4864:20::344])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2FA916ECCF
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Mar 2020 10:39:50 +0000 (UTC)
Received: by mail-wm1-x344.google.com with SMTP id i9so1810378wml.4
 for <intel-gfx@lists.freedesktop.org>; Fri, 06 Mar 2020 02:39:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to; bh=rCwwPNd2pA0INB2HwJkp3rqo1usGcNxwzdg6ma8wOKI=;
 b=eTHhCcEclE09OQebKxTAtBcuem6YrVVfqc6wr7gzch/KOv9hjBwMrETehU/oSBUFjX
 l9RbDlri1cZqI8jE26fig1J/BgoL9F/ihHJocP8/UCnDCvgi1xfAqPrfmg0Ceb7WmzQm
 aWZ7/H0OldRYsjAGDfwM90Gf9q8iHvafGPsVM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to;
 bh=rCwwPNd2pA0INB2HwJkp3rqo1usGcNxwzdg6ma8wOKI=;
 b=oz62/7NhenMERsSIpsmG3DyAUDXeeLNOqUX2qglO7IopAPZ9WYjisEU/8h3QfNpwsT
 dIKpqKrsBvFbvCnoSbHEKa2pgYbicl+Sh07kwqeEkjRp1V0BdOF1TfCPGAvf93k5RnZm
 hswJ6g0fXffzhMzpcG03wpdLpDMyqPaYH9RtLmak779y5bOfP/vDUo4zbG/6Yz92GNM+
 Oj/J1wEWdNePkQPZiB/3uGMY70ZyM9smzz9FJHEXeQCmaLNM9S2Dn1f1gBKXCxItpIOg
 Q1fQU7Ggbb7ZAWw/NH0yjc8C5y9wIk4IP06qsBnKPfamDLAGp4P8cA9VKGF3JDfIKZPD
 OCJQ==
X-Gm-Message-State: ANhLgQ3F8xo9FpuC1mgvTI+mtabtXUhPdckbxM9lBa22ghCNWTY0zDSx
 V9VpUN2v1zGY8J03sPIwUflwXQ==
X-Google-Smtp-Source: ADFU+vsoxbiLn65abeK+CoaJTkFH/7IMTTkUgAtZxrezRu/238vSq4AIzpYtowBToyIoT+aRz7bdHg==
X-Received: by 2002:a7b:c756:: with SMTP id w22mr3356418wmk.90.1583491188842; 
 Fri, 06 Mar 2020 02:39:48 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id a184sm13066027wmf.29.2020.03.06.02.39.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 06 Mar 2020 02:39:48 -0800 (PST)
Date: Fri, 6 Mar 2020 11:39:46 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <20200306103946.GT2363188@phenom.ffwll.local>
Mail-Followup-To: Christian =?iso-8859-1?Q?K=F6nig?=
 <christian.koenig@amd.com>, 
 Lukas Bulwahn <lukas.bulwahn@gmail.com>,
 intel-gfx@lists.freedesktop.org, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Joe Perches <joe@perches.com>,
 Sebastian Duda <sebastian.duda@fau.de>,
 Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org
References: <20200304120711.12117-1-lukas.bulwahn@gmail.com>
 <b0296e3a-31f8-635a-f26d-8b0bc490aae3@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b0296e3a-31f8-635a-f26d-8b0bc490aae3@amd.com>
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
 Joe Perches <joe@perches.com>, Lukas Bulwahn <lukas.bulwahn@gmail.com>,
 Sebastian Duda <sebastian.duda@fau.de>, Sumit Semwal <sumit.semwal@linaro.org>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Mar 04, 2020 at 01:08:32PM +0100, Christian K=F6nig wrote:
> Am 04.03.20 um 13:07 schrieb Lukas Bulwahn:
> > Commit 52791eeec1d9 ("dma-buf: rename reservation_object to dma_resv")
> > renamed include/linux/reservation.h to include/linux/dma-resv.h, but
> > missed the reference in the MAINTAINERS entry.
> > =

> > Since then, ./scripts/get_maintainer.pl --self-test complains:
> > =

> >    warning: no file matches F: include/linux/reservation.h
> > =

> > Adjust the DMA BUFFER SHARING FRAMEWORK entry in MAINTAINERS.
> > =

> > Co-developed-by: Sebastian Duda <sebastian.duda@fau.de>
> > Signed-off-by: Sebastian Duda <sebastian.duda@fau.de>
> > Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
> =

> Reviewed-by: Christian K=F6nig <christian.koenig@amd.com>

You'll push this too?
-Daniel

> =

> > ---
> > Christian, please pick this patch.
> > applies cleanly on current master and next-20200303
> > =

> >   MAINTAINERS | 2 +-
> >   1 file changed, 1 insertion(+), 1 deletion(-)
> > =

> > diff --git a/MAINTAINERS b/MAINTAINERS
> > index 6158a143a13e..3d6cb2789c9e 100644
> > --- a/MAINTAINERS
> > +++ b/MAINTAINERS
> > @@ -5022,7 +5022,7 @@ L:	dri-devel@lists.freedesktop.org
> >   L:	linaro-mm-sig@lists.linaro.org (moderated for non-subscribers)
> >   F:	drivers/dma-buf/
> >   F:	include/linux/dma-buf*
> > -F:	include/linux/reservation.h
> > +F:	include/linux/dma-resv.h
> >   F:	include/linux/*fence.h
> >   F:	Documentation/driver-api/dma-buf.rst
> >   K:	dma_(buf|fence|resv)
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
