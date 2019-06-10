Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F6F63B859
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jun 2019 17:31:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FA6789167;
	Mon, 10 Jun 2019 15:31:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 356 seconds by postgrey-1.36 at gabe;
 Mon, 10 Jun 2019 15:31:48 UTC
Received: from smtp107.iad3a.emailsrvr.com (smtp107.iad3a.emailsrvr.com
 [173.203.187.107])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 908C589167
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jun 2019 15:31:48 +0000 (UTC)
X-Auth-ID: kenneth@whitecape.org
Received: by smtp14.relay.iad3a.emailsrvr.com (Authenticated sender:
 kenneth-AT-whitecape.org) with ESMTPSA id 4B79F25184; 
 Mon, 10 Jun 2019 11:25:51 -0400 (EDT)
X-Sender-Id: kenneth@whitecape.org
Received: from kirito.localnet (50-39-175-242.bvtn.or.frontiernet.net
 [50.39.175.242])
 (using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384)
 by 0.0.0.0:465 (trex/5.7.12); Mon, 10 Jun 2019 11:25:51 -0400
From: Kenneth Graunke <kenneth@whitecape.org>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 10 Jun 2019 08:25:46 -0700
Message-ID: <2412677.VNyTJ0fQGL@kirito>
In-Reply-To: <20190610081914.25428-1-lionel.g.landwerlin@intel.com>
References: <20190610081914.25428-1-lionel.g.landwerlin@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/perf: fix ICL perf register offsets
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
Content-Type: multipart/mixed; boundary="===============0151351840=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0151351840==
Content-Type: multipart/signed; boundary="nextPart5940946.cnCSSQtQyx"; micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPart5940946.cnCSSQtQyx
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday, June 10, 2019 1:19:14 AM PDT Lionel Landwerlin wrote:
> We got the wrong offsets (could they have changed?). New values were
> computed off an error state by looking up the register offset in the
> context image as written by the HW.
> 
> Signed-off-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
> Fixes: 1de401c08fa805 ("drm/i915/perf: enable perf support on ICL")
> ---
>  drivers/gpu/drm/i915/i915_perf.c | 10 +++++++---
>  1 file changed, 7 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
> index 4a767087de27..6c85191fc6c9 100644
> --- a/drivers/gpu/drm/i915/i915_perf.c
> +++ b/drivers/gpu/drm/i915/i915_perf.c
> @@ -3612,9 +3612,13 @@ void i915_perf_init(struct drm_i915_private *dev_priv)
>  			dev_priv->perf.oa.ops.enable_metric_set = gen8_enable_metric_set;
>  			dev_priv->perf.oa.ops.disable_metric_set = gen10_disable_metric_set;
>  
> -			dev_priv->perf.oa.ctx_oactxctrl_offset = 0x128;
> -			dev_priv->perf.oa.ctx_flexeu0_offset = 0x3de;
> -
> +			if (IS_GEN(dev_priv, 10)) {
> +				dev_priv->perf.oa.ctx_oactxctrl_offset = 0x128;
> +				dev_priv->perf.oa.ctx_flexeu0_offset = 0x3de;
> +			} else {
> +				dev_priv->perf.oa.ctx_oactxctrl_offset = 0x124;
> +				dev_priv->perf.oa.ctx_flexeu0_offset = 0x78e;
> +			}
>  			dev_priv->perf.oa.gen8_valid_ctx_bit = (1<<16);
>  		}
>  	}
> 

Sounds believable.

Acked-by: Kenneth Graunke <kenneth@whitecape.org>

--nextPart5940946.cnCSSQtQyx
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE6OtbNAgc4e6ibv4ZW1vaBx1JzDgFAlz+dnoACgkQW1vaBx1J
zDhHZQ//RyggyJ5Yg+jLujWlnxJLMs/HYTCM8AmweuS/5ggsr/bOBN6WDDO0wruS
IJlVVrq6Fcs/GEGXKuEQf6hmuyBu3FRbHFTIsXvSqcZYYcTe2sml//O1bsILtbbB
i1DlBxh91AOqRJ1VN2FOAyQFZdv5yY8egnQxC0IRKDDMjqa9ZuW+ITn46sZX3EO5
+pr5RblgP+zBopmi4Uij1j0wtLZr4XVJsy8VCKCUUh/IAYfe6tap5mCrThlC8XTP
9nOYJjaGqzmdRntIiX3HN0ICq1++Y2/KRMk7v9etmeHGJWzjP/0HRmyJIaHPr3kP
ZW043tf/rn/2Mqnoiq8tOfZ/qTing8yZKKZtGsIAluylImEJGKCgqpgOjJZK6KfY
rayuqe8zHi5Cw1ak05A6a1fIGBMREtaRJPZV2ob1x0ousqd355qpAKcBXtI/wC6e
8E6Y6Bz1YOivZZ9wIfupugrWDe5wjQ6IZWUbvrv/fQmofQQCMEAWDrCxebyallMc
+3NKx+IFesFbsekyR02Quipv7Q4HYao9AIvSYmffmpTZRBj8DA098xBRRXia3N3u
ITBfHpb6/JIt8EJp9rD7LNEpLpGoFh1GO0JgN3xw7N7lgCDY+VfXivRKF9rEZQOq
aSvNPTPw/LETaC7Sq9Q8FOD0RmYxoco8PjVjBNpaEDuT4azEUKE=
=Ep1F
-----END PGP SIGNATURE-----

--nextPart5940946.cnCSSQtQyx--




--===============0151351840==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============0151351840==--



