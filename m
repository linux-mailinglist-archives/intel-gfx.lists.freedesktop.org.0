Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DA3120323F
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jun 2020 10:39:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B081C89E98;
	Mon, 22 Jun 2020 08:39:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90CDB89E98
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Jun 2020 08:39:38 +0000 (UTC)
IronPort-SDR: owT2AMFfvxqRwRoQtcvh2WSTaFfBPXrgkpDdR3awM+b0KVndBECvyHdMmIhTYMQ2O57ml+/ODn
 pug8bwSJo9VQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9659"; a="131087300"
X-IronPort-AV: E=Sophos;i="5.75,266,1589266800"; 
 d="asc'?scan'208";a="131087300"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2020 01:39:36 -0700
IronPort-SDR: +k4BGWZTZD0NCOB/5iiSybKkeFPctD9Yz8O+pBhIJex4dqZdE6emw0hTGXrggUr4+Sq4qXSedc
 /nayrEj3yOLA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,266,1589266800"; 
 d="asc'?scan'208";a="478315825"
Received: from zhen-hp.sh.intel.com (HELO zhen-hp) ([10.239.160.147])
 by fmsmga006.fm.intel.com with ESMTP; 22 Jun 2020 01:39:34 -0700
Date: Mon, 22 Jun 2020 16:23:19 +0800
From: Zhenyu Wang <zhenyuw@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200622082319.GZ5687@zhen-hp.sh.intel.com>
References: <1592296160-3784-1-git-send-email-shaofeng.tang@intel.com>
 <159233324036.19488.6385709597388673560@build.alporthouse.com>
MIME-Version: 1.0
In-Reply-To: <159233324036.19488.6385709597388673560@build.alporthouse.com>
User-Agent: Mutt/1.10.0 (2018-05-17)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gvt: query if vgpu is active via
 GETPARAM IOCTL
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
Cc: Shaofeng Tang <shaofeng.tang@intel.com>, intel-gfx@lists.freedesktop.org
Content-Type: multipart/mixed; boundary="===============1544616171=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============1544616171==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="45kFsbCJmK9J4C/8"
Content-Disposition: inline


--45kFsbCJmK9J4C/8
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2020.06.16 19:47:20 +0100, Chris Wilson wrote:
> Quoting Shaofeng Tang (2020-06-16 09:29:20)
> > [Why]
> > Query if vgpu is active, it is useful to the user.
> > Currently, only the primary plane is usable when vgpu is active.
> > The value of vgpu active is useful for user to determine
> > how many planes can be used. also useful for user to
> > determine different behaviors according to vgpu is active or not.
>=20
> The number of planes must be queried via kms, and all such kernel
> capabilities should be declared via the appropriate interface.
>=20
> I am not saying that there is not potentially good reason to let the
> user to know it's a virtual gpu, but hardcoding api limits in the client
> based on the parameter is a bad idea.

Yeah, as I replied for internal before, guest shouldn't detect via
this kind of interface, which also doesn't reflect any gvt host capability
change. For any current gap, let's fix gvt or vgpu handling instead.

Thanks.

--45kFsbCJmK9J4C/8
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQTXuabgHDW6LPt9CICxBBozTXgYJwUCXvBqdwAKCRCxBBozTXgY
JxrBAKCdjtsCjn3RCRQRo0QbzUQ4cMzxigCeOCgwTzK999LEj2K/JiG60XfMBQc=
=TVyI
-----END PGP SIGNATURE-----

--45kFsbCJmK9J4C/8--

--===============1544616171==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1544616171==--
