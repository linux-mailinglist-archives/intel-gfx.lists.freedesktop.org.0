Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E1FF6861C
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jul 2019 11:15:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C08D7897E3;
	Mon, 15 Jul 2019 09:15:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0FA4897E3
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Jul 2019 09:15:24 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Jul 2019 02:14:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,493,1557212400"; 
 d="asc'?scan'208";a="161029987"
Received: from zhen-hp.sh.intel.com (HELO zhen-hp) ([10.239.13.116])
 by orsmga008.jf.intel.com with ESMTP; 15 Jul 2019 02:14:57 -0700
Date: Mon, 15 Jul 2019 17:11:54 +0800
From: Zhenyu Wang <zhenyuw@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20190715091154.GH16681@zhen-hp.sh.intel.com>
References: <20190715080946.15593-1-chris@chris-wilson.co.uk>
 <20190715080946.15593-5-chris@chris-wilson.co.uk>
MIME-Version: 1.0
In-Reply-To: <20190715080946.15593-5-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.10.0 (2018-05-17)
Subject: Re: [Intel-gfx] [PATCH 05/24] drm/i915/selftests: Ignore
 self-preemption suppression under gvt
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
Reply-To: Zhenyu Wang <zhenyuw@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Content-Type: multipart/mixed; boundary="===============0133586563=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============0133586563==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="XIiC+We3v3zHqZ6Z"
Content-Disposition: inline


--XIiC+We3v3zHqZ6Z
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2019.07.15 09:09:27 +0100, Chris Wilson wrote:
> GVT forces single port submission of individual requests. We do not
> enjoy the context amalgamation that the test depends upon for setting up
> the test (where port 0 has a large number of requests with a priority
> change somewhere in the middle). Under single request submission of gvt
> it is quite able for the preemption event to occur while another context
> is active and so there be a real need to act upon that preemption.
>=20
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Zhenyu Wang <zhenyuw@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/gt/selftest_lrc.c | 3 +++
>  1 file changed, 3 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i91=
5/gt/selftest_lrc.c
> index bde0164551b1..071e21c0ac15 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> @@ -854,6 +854,9 @@ static int live_suppress_self_preempt(void *arg)
>  	if (USES_GUC_SUBMISSION(i915))
>  		return 0; /* presume black blox */
> =20
> +	if (intel_vgpu_active(i915))
> +		return 0; /* GVT forces single port & request submission */
> +
>  	mutex_lock(&i915->drm.struct_mutex);
>  	wakeref =3D intel_runtime_pm_get(&i915->runtime_pm);
> =20

Acked-by: Zhenyu Wang <zhenyuw@linux.intel.com>

--=20
Open Source Technology Center, Intel ltd.

$gpg --keyserver wwwkeys.pgp.net --recv-keys 4D781827

--XIiC+We3v3zHqZ6Z
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQTXuabgHDW6LPt9CICxBBozTXgYJwUCXSxDWQAKCRCxBBozTXgY
J+LIAJ9EModii4juNE0PBa2D27sL5I8kXACfV7jxvTzLxX3jmQwTZ2jEN6OUE+c=
=CtsK
-----END PGP SIGNATURE-----

--XIiC+We3v3zHqZ6Z--

--===============0133586563==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============0133586563==--
