Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D95B7EDD8D
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Nov 2023 10:23:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BC6110E255;
	Thu, 16 Nov 2023 09:23:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6516610E255
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Nov 2023 09:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1700126584;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=w35rrT7mZxkd5tfTUmEJQuHgJFwG2ZKuKcURtyFKyzE=;
 b=UcJt/bHRo1Hw9alGd/An8pOs/YcsoP8CAICrILX516W8uAYcDc1I7iRx3/NZy+SM/qqe82
 T1VzASp6lWuk+WMByYr68FCA0hGwP2zy8Bl4v1W7OTyRnWMP4bnZ3N1gA4//CpFavWOo8y
 +gpkxuKbW0it412/wty/O/kVM/ctWJI=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-516-JOALN0EiP6GQnPBCy6NAXQ-1; Thu, 16 Nov 2023 04:23:00 -0500
X-MC-Unique: JOALN0EiP6GQnPBCy6NAXQ-1
Received: by mail-wm1-f69.google.com with SMTP id
 5b1f17b1804b1-4092164eceeso3306905e9.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Nov 2023 01:23:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1700126579; x=1700731379;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=w35rrT7mZxkd5tfTUmEJQuHgJFwG2ZKuKcURtyFKyzE=;
 b=B/lZivZmdCnn1peQkF4RmdB1nNOY1gOAzpSXr/e4Jz+fT0Chw1+RAkjBVTHZySJm4Z
 9e7mWEvohjLk1qWpjARTRU37Oa3zBuGY9zzkgI4EiEm3U45GhIbaIP6thvguRDmQxDDu
 yKlQkCven7sCiJ/r2V4J/r941xx1dQttUMVPAlnfumE4kPd6ovNkJ2vcH9/oOENOMqY4
 yvyKGiLcK3TCPaPfWDM9eQIsr6CuHG6EQ3mOcCvB8ZnPhLhGbWLaGVH0+ri0rPBYS+ng
 ZrWJl+GZGU7vLzzPRc5idHcFOz09wXtSMN6t6VfgPUBxxADPkRNmygO1KdBPsL6o2EF0
 UfUQ==
X-Gm-Message-State: AOJu0Yxsj4jh14P5KLRBxjOM1B4+4EBQRYl/BpKY26g4SgK3nfkr7GCZ
 rQtb6wZQJTSWWCI8KKQy7obQGeq0m5FDiQbgdl5dU8VY+p/Wl2lTcLoC3F2VKlbJHQqc325pQCu
 CEBGlhmWuMGXCMrNAWI8vZVUqZlBi
X-Received: by 2002:a05:600c:1906:b0:408:5ba9:d707 with SMTP id
 j6-20020a05600c190600b004085ba9d707mr12879657wmq.16.1700126579448; 
 Thu, 16 Nov 2023 01:22:59 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGyuBLaQ9uVYXCAgGY4tjsp6WBRdoWBL/6H3EJ08muS9pK4nQxBMd8/uWN9ZKr7eoapbzo5sw==
X-Received: by 2002:a05:600c:1906:b0:408:5ba9:d707 with SMTP id
 j6-20020a05600c190600b004085ba9d707mr12879634wmq.16.1700126579048; 
 Thu, 16 Nov 2023 01:22:59 -0800 (PST)
Received: from localhost ([2a01:e0a:b25:f902::ff])
 by smtp.gmail.com with ESMTPSA id
 dn17-20020a0560000c1100b0032db1d741a6sm12734556wrb.99.2023.11.16.01.22.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Nov 2023 01:22:58 -0800 (PST)
Date: Thu, 16 Nov 2023 10:22:58 +0100
From: Maxime Ripard <mripard@redhat.com>
To: Luben Tuikov <ltuikov89@gmail.com>
Message-ID: <53oamsiakocoohdvs2raagdpzfj73xlrxuxvrsdvxkkwxdrm3m@dlu2tno6tjgv>
References: <20231114075501.61321c29@canb.auug.org.au>
 <19740d41-dd5a-47e4-b3e8-539b45bbd3e5@gmail.com>
 <3c306310-04b3-4658-a197-4b2d22a88274@gmail.com>
 <20231114134506.2ba0de1f@canb.auug.org.au>
 <530b6100-4f4e-4b3d-8fea-5b316e989633@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="oucpashu4qkda5nm"
Content-Disposition: inline
In-Reply-To: <530b6100-4f4e-4b3d-8fea-5b316e989633@gmail.com>
Subject: Re: [Intel-gfx] linux-next: Signed-off-by missing for commit in the
 drm-misc tree
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics <intel-gfx@lists.freedesktop.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 DRI <dri-devel@lists.freedesktop.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--oucpashu4qkda5nm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Nov 13, 2023 at 09:56:32PM -0500, Luben Tuikov wrote:
> On 2023-11-13 21:45, Stephen Rothwell wrote:
> > Hi Luben,
> >=20
> > On Mon, 13 Nov 2023 20:32:40 -0500 Luben Tuikov <ltuikov89@gmail.com> w=
rote:
> >>
> >> On 2023-11-13 20:08, Luben Tuikov wrote:
> >>> On 2023-11-13 15:55, Stephen Rothwell wrote: =20
> >>>> Hi all,
> >>>>
> >>>> Commit
> >>>>
> >>>>   0da611a87021 ("dma-buf: add dma_fence_timestamp helper")
> >>>>
> >>>> is missing a Signed-off-by from its committer.
> >>>> =20
> >>>
> >>> In order to merge the scheduler changes necessary for the Xe driver, =
those changes
> >>> were based on drm-tip, which included this change from drm-misc-fixes=
, but which
> >>> wasn't present in drm-misc-next.
> >>>
> >>> I didn't want to create a merge conflict between drm-misc-next and dr=
m-misc-fixes,
> >>> when pulling that change from drm-misc-next to drm-misc-fixes, so tha=
t I can apply =20
> >>
> >> ... when pulling that change from from drm-misc-fixes into drm-misc-ne=
xt, so that I can apply...
> >>
> >>> the Xe scheduler changes on top of drm-misc-next. =20
> >>
> >> The change in drm-misc-fixes is b83ce9cb4a465b. The latter is contained
> >> in linus-master, and in drm-misc-fixes, while the former is in drm-mis=
c-next.
> >> When we merge linus-master/drm-misc-fixes into drm-misc-next, or which=
ever way
> >> it happens, I'd like to avoid a merge conflict, but wanted to expedite=
 the changes
> >> for Xe.
> >=20
> > None of that is relevant ... if you commit a patch to a tree that will
> > be in the linux kernel tree, you must add your Signed-off-by to the com=
mit.
>
> Noted!
>=20
> So I always do this when I do git-am and such, but wasn't sure for this o=
ne single cherry-pick whose
> original author was the committer in drm-misc-fixes, but will add my Sign=
ed-off-by in those
> rare circumstances.
>=20
> Thanks for the clarification!

In order to move forward with this, can you provide your SoB here for
that patch so that we can at least point to it in the drm-misc-next PR?

Maxime

--oucpashu4qkda5nm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZVXfcgAKCRDj7w1vZxhR
xQ0TAQD+tZvFBotDMwtlIexNUj36LAdqeTNlZf+et4C/TGjE6wD8Cpt1DNsNFwD7
HtkspJgcjo7h41mN5yevjDoR2XxRbAo=
=ZICb
-----END PGP SIGNATURE-----

--oucpashu4qkda5nm--

