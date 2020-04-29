Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 241DF1BE388
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2020 18:14:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B72BF6EAA9;
	Wed, 29 Apr 2020 16:14:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from out3-smtp.messagingengine.com (out3-smtp.messagingengine.com
 [66.111.4.27])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 402E56EF20;
 Wed, 29 Apr 2020 15:37:23 +0000 (UTC)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 480FA5C03E2;
 Wed, 29 Apr 2020 11:37:22 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Wed, 29 Apr 2020 11:37:22 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=aBIpLU5pvnQf4of1J6PpsgOyyTx
 1I6DQXJP3y8c0TLU=; b=AbPWbM735gM5mnHhw85N5myXf1WOlzOkCgw0QU4n7AG
 N38RgXdx7rYV3izKEzlVXXBvW2gJbAKXYTKWgLP8dLsoKSsQ53wNOMlyp0Rmnkwz
 H8hweNp592DhU3zj3Bys9RNo19iSZj1QxssrNfODbIL103qsL57QeiFdSNo8cDqd
 X85/zbQuOVLH29AYRKz7nxTi/yAE4dAAGzmyyEYtSSPmGml7YgeHHiTB7I4S4F/8
 HRxsNMxZgBOh1LqsKtHSe7iAzqFo0BIgtR7gqZRWl9mIp4TZkMXuXVPkJsJFnMcN
 7edTTk5prOsYhQdpz8lgYcP9ImQjUy52e88lFDiziCA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=aBIpLU
 5pvnQf4of1J6PpsgOyyTx1I6DQXJP3y8c0TLU=; b=L2vtezuIgpfZ8wLpr8SmBN
 Z+alg4r+NXynXm/IDOqoHzRkwSG89D5ZcNEhIOcOaYPyLquCNd2axcqbpJ/kzfZm
 rkX13rdhgtq65ngmUM1QPzRQlUKt0cohoqGNS7WGLg04uWH3kE+YsioXlqBvW7Fm
 vKcJeC/0SqwckW3AP4U9tRKhvzrUkls7DppmdimCWRqnihm62irE1Ysv8f9CspUd
 Do4ohmqkxBHS9491PK2fi1bk+vX482TYIvrR0u8eXPZtofmjEcqFuyZALWlC3O8v
 Gn5kUGkkYakVi5agnoTagrxboRGF5Fq1D+7CX2cQpwJq801Ce6vaP1G95KIJ7f3g
 ==
X-ME-Sender: <xms:MJ-pXjeiT5F1ystEcyw_jXCix3KVccsbhIVXnsHyndz8Xy_h1Mkrxg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrieefgdeltdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
 gvrhhnpeelkeeghefhuddtleejgfeljeffheffgfeijefhgfeufefhtdevteegheeiheeg
 udenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurf
 grrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:MJ-pXs5uH0Uw4RV1gCvlAlLtJqzCAVBQf8KNfdmhx7qlKv5xjwu8dQ>
 <xmx:MJ-pXlKPTj0iNkzZUKMNIzI6EYKO3Ec6i0GOi7AY3SeS3C0S-dwDKQ>
 <xmx:MJ-pXmX5ThueS3hzdjw50B758fp7BvcPwcYwlQQGcnF1hdXPaISbFA>
 <xmx:Mp-pXsyKvwBrzwQouaw0RMXN_oJhBVmotUB4MMSTNctwfoFqAaiJug>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id BA06A328005E;
 Wed, 29 Apr 2020 11:37:19 -0400 (EDT)
Date: Wed, 29 Apr 2020 17:37:18 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Rodrigo Siqueira <rodrigosiqueiramelo@gmail.com>
Message-ID: <20200429153718.khgg72qutk7uacwv@gilmour.lan>
References: <20200424012605.2279679-1-rodrigosiqueiramelo@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20200424012605.2279679-1-rodrigosiqueiramelo@gmail.com>
X-Mailman-Approved-At: Wed, 29 Apr 2020 16:14:40 +0000
Subject: Re: [Intel-gfx] [PATCH i-g-t v8 0/4] Add support for testing
 writeback connectors
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
Content-Type: multipart/mixed; boundary="===============0708948774=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============0708948774==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="cxfgrpsggtxchfcc"
Content-Disposition: inline


--cxfgrpsggtxchfcc
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Apr 23, 2020 at 09:26:01PM -0400, Rodrigo Siqueira wrote:
> A couple of months ago, I updated and re-submitted a patchset made by
> Brian Starkey and Liviu Dudau for adding a writeback connectors test to
> IGT. It is important to highlight that DRM already have writeback
> connectors support, which is a way to expose in DRM the hardware
> functionality from display engines that allows writing back into memory
> the result of the DE's composition of supported planes.
>=20
> After I resubmitted the patchset, Simon Ser provides a long and detailed
> review for all of the patches (thanks Simon). Additionally, Maxime
> Ripard tested the previous series in an ARM32 architecture and provided
> his feedback for making this patchset portable (thanks Maxime). I
> finally had time to go through all the details and prepare this new
> version. Follows some notes:
>=20
> 1. Patchset author
>=20
> Brian Starkey is the original author of this patchset, and I'm just
> trying to upstream his changes. Note that during this patch submission,
> the mail server from google going to overwrite Brian's mail by mine;
> this happens on the mail server side for avoiding malicious users to
> send emails as someone else. Note that I could spend time figuring out
> how to fix it, but I think this is not worth since I can fix it during
> the merge process (if it got accepted).
>=20
> 2. Drop the clone commits from the series
>=20
> After Simon's review, we decided to drop the last two patches of the
> original series since it was related to cloning output, and VKMS does
> not support it yet. However, after we finish with this series, I can try
> to take a look at this feature or maybe propose it as a GSoC/Outreachy
> project.
>=20
> Most of the changes happened in the second patch.
>=20
> 3. Cross-platform improvements

I just tested it on top of current master (d095827a) on an RPi running in
32bits, it works like a charm.

Tested-by: Maxime Ripard <mripard@kernel.org>

Thanks!
Maxime

--cxfgrpsggtxchfcc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXqmfLgAKCRDj7w1vZxhR
xdm5AP0cPgNsO9C3BQPUiujFpvYANCvMz6gwBVo/u7gjLJq9YwEA06IGtq6G4jea
N0TyptdIkMnG4vy41pZbnY3g653i6QU=
=3oCg
-----END PGP SIGNATURE-----

--cxfgrpsggtxchfcc--

--===============0708948774==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0708948774==--
