Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 51EEB9267A
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Aug 2019 16:19:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5B966E141;
	Mon, 19 Aug 2019 14:19:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from relay2-d.mail.gandi.net (relay2-d.mail.gandi.net
 [217.70.183.194])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E79BF89250;
 Mon, 19 Aug 2019 14:19:52 +0000 (UTC)
X-Originating-IP: 86.250.200.211
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id B698E40012;
 Mon, 19 Aug 2019 14:19:48 +0000 (UTC)
Date: Mon, 19 Aug 2019 16:19:48 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20190819141948.hexaspzwv5bx5qrk@flea>
References: <20190816113201.jwh7bqeddxllvgdv@flea>
 <156595602639.11610.9192945758435317854@skylake-alporthouse-com>
MIME-Version: 1.0
In-Reply-To: <156595602639.11610.9192945758435317854@skylake-alporthouse-com>
User-Agent: NeoMutt/20180716
Subject: Re: [Intel-gfx] [PULL] drm-misc-next
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
Cc: dim-tools@lists.freedesktop.org, Daniel Vetter <daniel.vetter@ffwll.ch>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Content-Type: multipart/mixed; boundary="===============1691345217=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============1691345217==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="tzh7ajwlyfp33ole"
Content-Disposition: inline


--tzh7ajwlyfp33ole
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Chris,

On Fri, Aug 16, 2019 at 12:47:06PM +0100, Chris Wilson wrote:
> Quoting Maxime Ripard (2019-08-16 12:32:01)
> > Hi Daniel, Dave,
> >
> > Here's this week drm-misc-next PR.
> >
> > Maxime
> >
> > drm-misc-next-2019-08-16:
> > drm-misc-next for 5.4:
> >
> > UAPI Changes:
> >
> > Cross-subsystem Changes:
> >
> > Core Changes:
> >   - dma-buf: add reservation_object_fences helper, relax
> >              reservation_object_add_shared_fence, remove
> >              reservation_object seq number
>
> I just undid these. Probably better to respin without the headline
> feature being immediately reverted :)

Thanks for telling us :)

I've sent a new PR with the revert

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--tzh7ajwlyfp33ole
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXVqwBAAKCRDj7w1vZxhR
xR6qAQDoj6KGEcm7v72tXuZRpn1MS631sD0Z/GYLITkulUSGAwD9G5pUGW4Veub6
K2TwxbMbr2JHNlvDiziLzbyXYWh82QM=
=e3iz
-----END PGP SIGNATURE-----

--tzh7ajwlyfp33ole--

--===============1691345217==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============1691345217==--
