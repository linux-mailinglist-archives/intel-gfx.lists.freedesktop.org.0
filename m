Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BAB651D932C
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2020 11:19:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9AC3E6E53E;
	Tue, 19 May 2020 09:19:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 815D56E530;
 Tue, 19 May 2020 09:19:06 +0000 (UTC)
IronPort-SDR: UAX3U+Yoi4vu08gctyjYWbKDfkEvydVrSuRbxn/xShImBmrmpVb12FMvwFzNhDFZ8YKDd1YO7D
 6Lv0CvDqgNoQ==
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2020 02:18:52 -0700
IronPort-SDR: eLPJ7emkIjiGp5tvpgx2vYXt/WlHCVeI92gARiXcJIbFd985uSG4b3hmQ33/TUb4eoAoOhpFyj
 NJi9cBfLPYoQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,409,1583222400"; 
 d="asc'?scan'208";a="264246035"
Received: from zhen-hp.sh.intel.com (HELO zhen-hp) ([10.239.160.147])
 by orsmga003.jf.intel.com with ESMTP; 19 May 2020 02:18:49 -0700
Date: Tue, 19 May 2020 17:03:49 +0800
From: Zhenyu Wang <zhenyuw@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200519090349.GH12464@zhen-hp.sh.intel.com>
References: <20200518150336.15265-1-aishwaryarj100@gmail.com>
 <158983565244.7442.10004490488930800145@build.alporthouse.com>
MIME-Version: 1.0
In-Reply-To: <158983565244.7442.10004490488930800145@build.alporthouse.com>
User-Agent: Mutt/1.10.0 (2018-05-17)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gvt: Use ARRAY_SIZE for vgpu_types
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
Reply-To: Zhenyu Wang <zhenyuw@linux.intel.com>
Cc: David Airlie <airlied@linux.ie>, intel-gvt-dev@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 intel-gfx@lists.freedesktop.org,
 Aishwarya Ramakrishnan <aishwaryarj100@gmail.com>
Content-Type: multipart/mixed; boundary="===============0557973472=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============0557973472==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="XaUbO9McV5wPQijU"
Content-Disposition: inline


--XaUbO9McV5wPQijU
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2020.05.18 22:00:52 +0100, Chris Wilson wrote:
> Quoting Aishwarya Ramakrishnan (2020-05-18 16:03:36)
> > Prefer ARRAY_SIZE instead of using sizeof
> >=20
> > Fixes coccicheck warning: Use ARRAY_SIZE
> >=20
> > Signed-off-by: Aishwarya Ramakrishnan <aishwaryarj100@gmail.com>
> Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>

Applied, thanks!

--=20
Open Source Technology Center, Intel ltd.

$gpg --keyserver wwwkeys.pgp.net --recv-keys 4D781827

--XaUbO9McV5wPQijU
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQTXuabgHDW6LPt9CICxBBozTXgYJwUCXsOg9QAKCRCxBBozTXgY
J77kAJwPrZXYQuwdV7vDYpOyws1dsMYDawCglf/k9lLHmCPNlRV4qCUW+TyrJMc=
=L3VK
-----END PGP SIGNATURE-----

--XaUbO9McV5wPQijU--

--===============0557973472==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0557973472==--
