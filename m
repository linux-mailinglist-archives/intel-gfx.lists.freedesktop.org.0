Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB2C5338E7
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Jun 2019 21:11:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABD52892B0;
	Mon,  3 Jun 2019 19:11:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 502 seconds by postgrey-1.36 at gabe;
 Mon, 03 Jun 2019 19:11:50 UTC
Received: from smtp113.iad3b.emailsrvr.com (smtp113.iad3b.emailsrvr.com
 [146.20.161.113])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ABBB3892B0
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Jun 2019 19:11:50 +0000 (UTC)
X-Auth-ID: kenneth@whitecape.org
Received: by smtp23.relay.iad3b.emailsrvr.com (Authenticated sender:
 kenneth-AT-whitecape.org) with ESMTPSA id EEB68A0255; 
 Mon,  3 Jun 2019 15:03:26 -0400 (EDT)
X-Sender-Id: kenneth@whitecape.org
Received: from kirito.localnet (jfdmzpr05-ext.jf.intel.com [134.134.139.74])
 (using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384)
 by 0.0.0.0:465 (trex/5.7.12); Mon, 03 Jun 2019 15:03:27 -0400
From: Kenneth Graunke <kenneth@whitecape.org>
To: intel-gfx@lists.freedesktop.org,
 Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Date: Mon, 03 Jun 2019 12:03:22 -0700
Message-ID: <7362568.ZCySLXcd3F@kirito>
In-Reply-To: <20190601225845.12600-1-lionel.g.landwerlin@intel.com>
References: <20190601225845.12600-1-lionel.g.landwerlin@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/perf: fix whitelist on Gen10+
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
Content-Type: multipart/mixed; boundary="===============1909311816=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1909311816==
Content-Type: multipart/signed; boundary="nextPart3583056.Bgpxgm7DZT"; micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPart3583056.Bgpxgm7DZT
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Saturday, June 1, 2019 3:58:45 PM PDT Lionel Landwerlin wrote:
> Gen10 added an additional NOA_WRITE register (high bits) and we forgot
> to whitelist it for userspace.
> 
> Fixes: 95690a02fb5d96 ("drm/i915/perf: enable perf support on CNL")
> Signed-off-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_perf.c | 1 +
>  drivers/gpu/drm/i915/i915_reg.h  | 1 +
>  2 files changed, 2 insertions(+)

Reviewed-by: Kenneth Graunke <kenneth@whitecape.org>

--nextPart3583056.Bgpxgm7DZT
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE6OtbNAgc4e6ibv4ZW1vaBx1JzDgFAlz1bvoACgkQW1vaBx1J
zDgWpBAAoQLoJOjDPhkkFTlE6S+82Q4aG1d4jfh87UEI4hGyvSjGWnbn08kvIpIm
blp94HGyseZ8pQIGOmfgezFutkA0Yo2t/LRY4m0GADale8tEarte7bq/UsP1uTKo
8X3ooVRIwawRGSJJDd/uszApNlxEQtVJNu19XfUm7KIWZqVSUSC4eGOpZzrpW/bF
/cahvCRzHlURKzasLKzX6bXFqqnf68VwbQLBmGniFlMUOhdiXXzNkioTB11ihPDK
MBUkvOsPGKZLIhCn97LCoztE75MKZYi7USOkJb3gM7+41cmWWjD/L6Fqe4XPCQ+m
qGWrzW39YJEnJZJO4eTb1dAzHUVL927q9gDfl3Hc56c0PmfVaSipek9geYpe9+7j
PAVtkVI6bUJtNEZWSpzLk8tAbP6CEe+tZgmz808jE0JZnnZmPM3Q51wxPznL+FJm
HtZPJosx1sF6Z96G/Rgms6xIcSp6zSR43l3VTgQiZl5PFvmTJMDrqEWwEUPkTUT5
gSSsbakcQCij9Ids3RVuFGaR/Kc9DdRJPhjVTHs/fUY24yvCq4IW3z4zJ57NCqYc
RF7HZL9u9yQJEDMLHR/iMXDC/zBm9XI0jLA9q0nEJX25qBthktY/CayKaUuGPH09
+ZiK2XStyRXeWegrnMt4wJH03/+pB5a9MAHjRAj/O+yiYnu2POs=
=xunO
-----END PGP SIGNATURE-----

--nextPart3583056.Bgpxgm7DZT--




--===============1909311816==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============1909311816==--



