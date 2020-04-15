Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E5F2A1AA47E
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 15:32:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 539546E9DC;
	Wed, 15 Apr 2020 13:32:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from out5-smtp.messagingengine.com (out5-smtp.messagingengine.com
 [66.111.4.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13D5F89BFE;
 Wed, 15 Apr 2020 10:06:21 +0000 (UTC)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 69BD35C01C1;
 Wed, 15 Apr 2020 06:06:20 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Wed, 15 Apr 2020 06:06:20 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=xwLJEkyStLLRx/MkSJzpK9ctfqQ
 DiowaHbVnRT1E52w=; b=rrajHLpZFd73V8GN6vje2MPe1N3vDEivlK41gTcuVJ8
 slNZeE+GDcaoC3Uw1XZ0vb2oeG4Rosj0rddrCKNoG34ftSZm6Rd0DlxcAHNkrmY9
 DewKZrZEBcCrjf5owfAiks4bZcajhoE9lkuX40xOaLyvWtev9mwLgiok6tbbjM6p
 hXbaG3NWNFi4kyboB1wApoowNh3YrEeZuoqmuTaPrW9zQuNiheLVklPzdq6xgAvO
 p28mJUKrk2VFzwM5z5sk+tbjgu/mpD2o2pVGCvcD69Khx3jCYjDYqRx2YjjXutMd
 hpl309T2YANSFdOIT5sHpnrDi24iOcxGqoyqKy9lBJQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=xwLJEk
 yStLLRx/MkSJzpK9ctfqQDiowaHbVnRT1E52w=; b=dgK7tt9A6Ofy0bCzUTeTgC
 Etp/izQ25Dh0jslwvoF+0NstvkSc+2t+O1+aOBBfaDgjDKXLHT1tDV2wZlaCM7hm
 fLul09aS3nJ9aE4JHrgEew6KgzmewYrw7uCBDkszI8G9dpNH1c5QC+1Rf3cj41jI
 EJxw+7tP9CjnlmTbXlVIOaJM0iOJroEx2fSfyd4TnOz4s0WumePjozdDNBMUebvr
 9K9JyAUFnxp58peo5RascZD8q1Y1EkEazLveJwp01ARGI4psdL7v70qyW/AXHDKx
 EXuH7y+qskJ+HXKPElEKRnCC7LBTnkrRFtcM8JLgeek1QtXF8lvRWjVEiasyyIzw
 ==
X-ME-Sender: <xms:m9yWXkTUmOJhIK1h6VuDUrMuPPAqvG4IAI85gqT4JuWrLQgsnKJHdA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrfeefgdduvdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhl
 fhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:m9yWXjQVWTO-kQqP1q0TkGTgVisY_0p7yQGJWmib4tdsjwOzpOdaJQ>
 <xmx:m9yWXveXkKzp5r_aJJTojlG1zIVO7wpagxN76vZxf_Ly9v7EacjJlA>
 <xmx:m9yWXvdQjLh2WKxQvFy2nBX-XrkU8XPgMHIu3pXRyjJMx53f9U32wA>
 <xmx:nNyWXnRPdyqDH-YSH4wRSX4EJSy3qDCDIyx7E9SA8UYzUzLZmAT0Zw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 505E6306005E;
 Wed, 15 Apr 2020 06:06:19 -0400 (EDT)
Date: Wed, 15 Apr 2020 12:06:18 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Simon Ser <contact@emersion.fr>
Message-ID: <20200415100618.dffhwxhctgarqleq@gilmour.lan>
References: <20191022005910.siuiwfikmr76qpg3@smtp.gmail.com>
 <20200415094649.2tgelyotjliao2dk@gilmour.lan>
 <0kwho152-gzRe09N-ECBh9KepTGX-b_MU8X-TtBnTdWAQP9o5ni7tOVqGn9LK2U2ormexeYvS8U1uVcBMY5Lv-Le4z0dnnMnRaSbb29xjqo=@emersion.fr>
MIME-Version: 1.0
In-Reply-To: <0kwho152-gzRe09N-ECBh9KepTGX-b_MU8X-TtBnTdWAQP9o5ni7tOVqGn9LK2U2ormexeYvS8U1uVcBMY5Lv-Le4z0dnnMnRaSbb29xjqo=@emersion.fr>
X-Mailman-Approved-At: Wed, 15 Apr 2020 13:32:12 +0000
Subject: Re: [Intel-gfx] [PATCH v7 i-g-t 2/4] kms_writeback: Add initial
 writeback tests
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
Cc: Brian Starkey <rodrigosiqueiramelo@gmail.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "igt-dev@lists.freedesktop.org" <igt-dev@lists.freedesktop.org>,
 nd <nd@arm.com>
Content-Type: multipart/mixed; boundary="===============0126914759=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============0126914759==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="iqwghg2ae7xjnb5u"
Content-Disposition: inline


--iqwghg2ae7xjnb5u
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Apr 15, 2020 at 09:49:46AM +0000, Simon Ser wrote:
> > > +   igt_output_set_prop_value(output, IGT_CONNECTOR_WRITEBACK_OUT_FENCE_PTR, (uint64_t)out_fence_ptr);
> >
> > On ARM (32bits), this cast creates a compilation error since the
> > pointer size isn't an uint64_t.
>
> Does casting to uintptr_t before uint64_t fix it?

It does yep. Casting to uintptr_t alone also works

Maxime

--iqwghg2ae7xjnb5u
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXpbcmQAKCRDj7w1vZxhR
xRltAQCsHwl0Opg1dnFbHzByfer2JWyYtCvM5aNFZxyjXiNCDQEAjfl2jJJBRsTA
pOEtKD/zOuO0xPadYxVUN15OL/v4JQc=
=dxUv
-----END PGP SIGNATURE-----

--iqwghg2ae7xjnb5u--

--===============0126914759==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0126914759==--
