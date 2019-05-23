Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BBCEF277B3
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2019 10:10:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 83A6B89CF1;
	Thu, 23 May 2019 08:10:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from relay11.mail.gandi.net (relay11.mail.gandi.net [217.70.178.231])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6EBB89CE0;
 Thu, 23 May 2019 08:10:27 +0000 (UTC)
Received: from localhost (aaubervilliers-681-1-80-185.w90-88.abo.wanadoo.fr
 [90.88.22.185]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id 5BB07100009;
 Thu, 23 May 2019 08:10:22 +0000 (UTC)
Date: Thu, 23 May 2019 10:10:22 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Stephen Rothwell <sfr@canb.auug.org.au>
Message-ID: <20190523081022.cbirvf2vucbyc34r@flea>
References: <20190521105151.51ffa942@canb.auug.org.au>
MIME-Version: 1.0
In-Reply-To: <20190521105151.51ffa942@canb.auug.org.au>
User-Agent: NeoMutt/20180716
Subject: Re: [Intel-gfx] linux-next: manual merge of the drm-misc tree with
 Linus' tree
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics <intel-gfx@lists.freedesktop.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Jyri Sarha <jsarha@ti.com>, Marco Felsch <m.felsch@pengutronix.de>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 DRI <dri-devel@lists.freedesktop.org>, Thierry Reding <treding@nvidia.com>
Content-Type: multipart/mixed; boundary="===============1822174775=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============1822174775==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="xewzbf7ky33bviot"
Content-Disposition: inline


--xewzbf7ky33bviot
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Stephen,

On Tue, May 21, 2019 at 10:51:51AM +1000, Stephen Rothwell wrote:
> Hi all,
>
> Today's linux-next merge of the drm-misc tree got a conflict in:
>
>   Documentation/devicetree/bindings/vendor-prefixes.txt
>
> between commit:
>
>   8122de54602e ("dt-bindings: Convert vendor prefixes to json-schema")
>
> from Linus' tree and commits:
>
>   b4a2c0055a4f ("dt-bindings: Add vendor prefix for VXT Ltd")
>   b1b0d36bdb15 ("dt-bindings: drm/panel: simple: Add binding for TFC S9700RTWV43TR-01B")
>   fbd8b69ab616 ("dt-bindings: Add vendor prefix for Evervision Electronics")
>
> from the drm-misc tree.
>
> I fixed it up (I deleted the file and added the patch below) and can
> carry the fix as necessary. This is now fixed as far as linux-next is
> concerned, but any non trivial conflicts should be mentioned to your
> upstream maintainer when your tree is submitted for merging.  You may
> also want to consider cooperating with the maintainer of the conflicting
> tree to minimise any particularly complex conflicts.
>
> --
> Cheers,
> Stephen Rothwell
>
> From: Stephen Rothwell <sfr@canb.auug.org.au>
> Date: Tue, 21 May 2019 10:48:36 +1000
> Subject: [PATCH] dt-bindings: fix up for vendor prefixes file conversion
>
> Signed-off-by: Stephen Rothwell <sfr@canb.auug.org.au>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> index 83ca4816a78b..749e3c3843d0 100644
> --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> @@ -287,6 +287,8 @@ patternProperties:
>      description: Everest Semiconductor Co. Ltd.
>    "^everspin,.*":
>      description: Everspin Technologies, Inc.
> +  "^evervision,.*":
> +    description: Evervision Electronics Co. Ltd.
>    "^exar,.*":
>      description: Exar Corporation
>    "^excito,.*":
> @@ -851,6 +853,8 @@ patternProperties:
>      description: Shenzhen Techstar Electronics Co., Ltd.
>    "^terasic,.*":
>      description: Terasic Inc.
> +  "^tfc,.*":
> +    description: Three Five Corp
>    "^thine,.*":
>      description: THine Electronics, Inc.
>    "^ti,.*":
> @@ -925,6 +929,8 @@ patternProperties:
>      description: Voipac Technologies s.r.o.
>    "^vot,.*":
>      description: Vision Optical Technology Co., Ltd.
> +  "^vxt,.*"
> +    description: VXT Ltd

I'm not sure whether or not you can change it, but this breaks the
users of that file.

What you want is:

- "^vxt,.*"
+ "^vxt,.*:"

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--xewzbf7ky33bviot
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXOZVbgAKCRDj7w1vZxhR
xdkoAQDobhCUG+I4w3094DQy1fBwYM/nIQz4W3Lnaf6UfXiBFQD/c+ZCEARV7ili
XDWIhqfVU7QecWQJAbtJlN4rMpTK4go=
=c51w
-----END PGP SIGNATURE-----

--xewzbf7ky33bviot--

--===============1822174775==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============1822174775==--
