Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9683B0016
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Sep 2019 17:31:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4810D6E2B6;
	Wed, 11 Sep 2019 15:31:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 555 seconds by postgrey-1.36 at gabe;
 Wed, 11 Sep 2019 15:31:45 UTC
Received: from smtp65.ord1c.emailsrvr.com (smtp65.ord1c.emailsrvr.com
 [108.166.43.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A366A6E2B6
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Sep 2019 15:31:45 +0000 (UTC)
X-Auth-ID: kenneth@whitecape.org
Received: by smtp9.relay.ord1c.emailsrvr.com (Authenticated sender:
 kenneth-AT-whitecape.org) with ESMTPSA id 2EEE0201BF; 
 Wed, 11 Sep 2019 11:22:29 -0400 (EDT)
X-Sender-Id: kenneth@whitecape.org
Received: from kirito.localnet (50-39-175-242.bvtn.or.frontiernet.net
 [50.39.175.242])
 (using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384)
 by 0.0.0.0:465 (trex/5.7.12); Wed, 11 Sep 2019 11:22:29 -0400
From: Kenneth Graunke <kenneth@whitecape.org>
To: Chris Wilson <chris@chris-wilson.co.uk>
Date: Wed, 11 Sep 2019 08:22:25 -0700
Message-ID: <3816138.rDuRQ1uMTf@kirito>
In-Reply-To: <156818885157.30942.4507661070241185214@skylake-alporthouse-com>
References: <20190911014801.26821-1-kenneth@whitecape.org>
 <156818774231.30942.7445180961814616857@skylake-alporthouse-com>
 <156818885157.30942.4507661070241185214@skylake-alporthouse-com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Whitelist COMMON_SLICE_CHICKEN2
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: multipart/mixed; boundary="===============0984184775=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0984184775==
Content-Type: multipart/signed; boundary="nextPart35641786.atX6LS8WpZ"; micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPart35641786.atX6LS8WpZ
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday, September 11, 2019 1:00:51 AM PDT Chris Wilson wrote:
> Quoting Chris Wilson (2019-09-11 08:42:22)
> > Quoting Kenneth Graunke (2019-09-11 02:48:01)
> > > This allows userspace to use "legacy" mode for push constants, where
> > > they are committed at 3DPRIMITIVE or flush time, rather than being
> > > committed at 3DSTATE_BINDING_TABLE_POINTERS_XS time.  Gen6-8 and Gen11
> > > both use the "legacy" behavior - only Gen9 works in the "new" way.
> > > 
> > > Conflating push constants with binding tables is painful for userspace,
> > > we would like to be able to avoid doing so.
> > > 
> > > Signed-off-by: Kenneth Graunke <kenneth@whitecape.org>
> > > Cc: stable@vger.kernel.org
> > Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
> 
> Pushed. Do you also want to do this for icl?
> -Chris

Thanks!  I don't think it's necessary for ICL, the bit seems to be gone
and it appears to perform the legacy behavior all the time.

--Ken

--nextPart35641786.atX6LS8WpZ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIyBAABCAAdFiEE6OtbNAgc4e6ibv4ZW1vaBx1JzDgFAl15ETEACgkQW1vaBx1J
zDhv2g/3bBK+NKU04efJqAm4MnSXSJzGrPiinoM+loK7Rod/ogp+pObUodrfkU96
zopTmQIYg4woMltcr3I64Tts0BgGVeRXcYdsPMtSuYvsIwb3QFQiYBrAUbui/nO3
ngtOCPjMQrTZWOjwrkNHEp1qJ20Drg7K54uHU15W1Qb4yFNx0aAR2WKGICG7EAGA
WMSuAsGflpOIHlcLzW+lrXx7tbugeUyiTmuBFAo/1WlOAsWPFhxu7S96b96Tyx4E
5ILsUGNRurSNd5lyRDM77w0Z1hhF+s5lr7wX+oIoLdcMw/bxMmBJVmwbHiobP4Cb
nt21g8BJWGdTGvo5EV8YVapHhY8Bof9xwptPDfE7C0/KpY5p+kpYk95HbsHw/vol
ky64SE+HFqEqJmYer5okpZyv44Lz+kCfEq94yYbjILjZoc23umBrU/kig4kfmckR
mUBn8xnGwoZf0EUrY11xTDN+qqxgMkb/vYTI+laNx8bgTaS19ENdy/e4JMJtNE2j
BEtBXjnp2VDN57HHX6nv7yttmc9IQNTYlxRm7jKPOabg2pVzk3SRXjOl5639gfyp
5Qa0wdbxVMOHpTUgQqiNAJ1TqN9/p8fah+EuqikoWvU3KZIvD8V3QtlBqUSDEodC
WYNSj212EiI4CsHWOV2JHdNrMIP6LPFCNXf8VE2o7q2XePtnUw==
=RnZG
-----END PGP SIGNATURE-----

--nextPart35641786.atX6LS8WpZ--




--===============0984184775==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============0984184775==--



