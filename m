Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AA3F1AC87D
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2020 17:09:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 975236E30C;
	Thu, 16 Apr 2020 15:09:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com
 [66.111.4.25])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6736D6E149;
 Thu, 16 Apr 2020 14:04:55 +0000 (UTC)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id CE4135C02F2;
 Thu, 16 Apr 2020 10:04:52 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Thu, 16 Apr 2020 10:04:52 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=jzjhMr7oxttRelvMC92ayFxHYJ4
 qRirEly34DulpMq4=; b=l9Wzx14DdQbpnXsOSjLx1b11yOh65xWEb7QqC89+yC5
 nYc45ipC2VbES6vk1qWODS3KpYSdBgt0GengFsWmbB9qxt75UvOI3N5nbRDo4nVj
 CsZm1ugf80RC0vfr24fcJAorOjGWnjzf2gyg/dVt4lsUhVSwXlfbiVff/JEP4Pxq
 ZT17f84eu9wz+C8Cil6ydyjKl1xx+i31HXCDZr5Frq+NnSLnT9ZbmB0L+GmraPyX
 vOZq1ahyHVUVd9cylOvXY38Eba1PKJN8erNI6KdlXaG5CgpNtv7MxigO7HcT7Vys
 g3hQSblXiescvsRhPhaoGz3IvDCCXC5/enTsmPd37iA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=jzjhMr
 7oxttRelvMC92ayFxHYJ4qRirEly34DulpMq4=; b=lDKK14B4zR6cdhBO/HUHMh
 77RJi5OWAci82jTlktB9qpKasSwdbS5ge+3EipTExd2JqDRYwpYj5gFzHITcC0za
 OQRcmFrhC2sE/abzxzqwPqcuNHy+rg+iRfPHvjszadZOZWBvz2Vq58EgjAzMHnm/
 CmLf9ATMXEWl6X34Rh/vT/hYCdSc1JoLWloRqtE150xEa1ut88FhwMbzo4lNzLEI
 JakP1tdc8pJgZXGLRi8hQA/V+ais2Lv8TT3ElMA1/YwKTEGQjGkKkxywMoHIXHSO
 5YnycX2+w7tGveMAROSEiOpwP5z4laOiWm5H7vA6yQs1jZ4LxmfckfYrNrRAwKLg
 ==
X-ME-Sender: <xms:A2aYXqKAqXAfAc6X-uunP2i8hlt7_j1cXNcIlHoc6qdINb1hr_G81A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrfeehgdejfecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhl
 fhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:A2aYXpFSqEwVyf0hKOe_U2Z32NdZ9T_wFxELcLoDIzPGtl3bokpdgw>
 <xmx:A2aYXhIZRkUE6s7NrJJ0ZNDP_ug_kAeN3Wb4ugpEDISDE2cAMNmsoQ>
 <xmx:A2aYXt7haXOQF-nAVXwL9lEPdlRGaOCywrtG8NznDpnHcDLiMiUkXA>
 <xmx:BGaYXlgtUH60b1YN0CkWQrGt1KFxG9Ov93ONJkz1lmQtu4vvRgML8g>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 937A4328006C;
 Thu, 16 Apr 2020 10:04:51 -0400 (EDT)
Date: Thu, 16 Apr 2020 16:04:49 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Rodrigo Siqueira <rodrigosiqueiramelo@gmail.com>
Message-ID: <20200416140449.mmws2pycjuy3ag6m@gilmour.lan>
References: <20191022005952.tkdtftzbxk4b2lzk@smtp.gmail.com>
 <20200415094203.stjco4xo4uw23vmh@gilmour.lan>
 <20200416124942.6nxyf5m3ogmr4nva@smtp.gmail.com>
MIME-Version: 1.0
In-Reply-To: <20200416124942.6nxyf5m3ogmr4nva@smtp.gmail.com>
X-Mailman-Approved-At: Thu, 16 Apr 2020 15:09:31 +0000
Subject: Re: [Intel-gfx] [PATCH v7 i-g-t 3/4] lib: Add function to hash a
 framebuffer
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
Cc: Simon Ser <contact@emersion.fr>, intel-gfx@lists.freedesktop.org,
 igt-dev@lists.freedesktop.org, nd <nd@arm.com>
Content-Type: multipart/mixed; boundary="===============1260350645=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============1260350645==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="m7lnjywpj57oofkt"
Content-Disposition: inline


--m7lnjywpj57oofkt
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Thu, Apr 16, 2020 at 08:49:42AM -0400, Rodrigo Siqueira wrote:
> First of all, thank you a lot for your review and for testing this
> patchset. I'm going to prepare a new version trying to address all
> issues highlight by you, Petri, and Simon (I'm already working in a new
> version).

That would be awesome, thanks :)

> Just a note, I run this test on top of VKMS in a virtual machine (x86).

Yeah, that's what I assumed. Cc me when the new version will be ready,
I'll give it a shot on an arm32 board.

Maxime

--m7lnjywpj57oofkt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXphmAQAKCRDj7w1vZxhR
xV3eAQDY9P4oSmeV1VU/Ac1+gWZCcvhJgmBSZMxDff6aSVzcXAD+IbuLthbnOFAh
2oJ+X3bDfutGJUvw/t4LNhzqZdgHbQI=
=QbXy
-----END PGP SIGNATURE-----

--m7lnjywpj57oofkt--

--===============1260350645==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1260350645==--
