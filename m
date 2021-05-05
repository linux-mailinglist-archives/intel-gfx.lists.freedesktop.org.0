Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E193D373ED2
	for <lists+intel-gfx@lfdr.de>; Wed,  5 May 2021 17:46:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 451CE6E0AC;
	Wed,  5 May 2021 15:46:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 653 seconds by postgrey-1.36 at gabe;
 Wed, 05 May 2021 15:46:46 UTC
Received: from smtp70.iad3a.emailsrvr.com (smtp70.iad3a.emailsrvr.com
 [173.203.187.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7DD2B6E0AC
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 May 2021 15:46:45 +0000 (UTC)
X-Auth-ID: kenneth@whitecape.org
Received: by smtp33.relay.iad3a.emailsrvr.com (Authenticated sender:
 kenneth-AT-whitecape.org) with ESMTPSA id EBC5C54DF; 
 Wed,  5 May 2021 11:35:50 -0400 (EDT)
From: Kenneth Graunke <kenneth@whitecape.org>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>, Daniel Vetter <daniel@ffwll.ch>,
 =?ISO-8859-1?Q?Andr=E9?= Almeida <andrealmeid@collabora.com>
Date: Wed, 05 May 2021 08:35:46 -0700
Message-ID: <4570916.7zo566DRWU@mizzik>
In-Reply-To: <e99599bf-f503-3227-8361-afcd3d2a098f@collabora.com>
References: <e99599bf-f503-3227-8361-afcd3d2a098f@collabora.com>
MIME-Version: 1.0
X-Classification-ID: 3ad83565-0b7a-44f9-a737-8695edb5ecfb-1-1
Subject: Re: [Intel-gfx] Enabling sample_c optimization for Broadwell GPUs
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
Cc: intel-gfx@lists.freedesktop.org, kernel@collabora.com,
 dri-devel@lists.freedesktop.org
Content-Type: multipart/mixed; boundary="===============1945278633=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1945278633==
Content-Type: multipart/signed; boundary="nextPart4240184.CW8T6EejXm"; micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPart4240184.CW8T6EejXm
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; protected-headers="v1"
From: Kenneth Graunke <kenneth@whitecape.org>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>, Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Jani Nikula <jani.nikula@linux.intel.com>, Daniel Vetter <daniel@ffwll.ch>, =?ISO-8859-1?Q?Andr=E9?= Almeida <andrealmeid@collabora.com>
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, kernel@collabora.com
Subject: Re: Enabling sample_c optimization for Broadwell GPUs
Date: Wed, 05 May 2021 08:35:46 -0700
Message-ID: <4570916.7zo566DRWU@mizzik>
In-Reply-To: <e99599bf-f503-3227-8361-afcd3d2a098f@collabora.com>
References: <e99599bf-f503-3227-8361-afcd3d2a098f@collabora.com>

Hello,

Yes, that bit only exists on Haswell.  On Haswell, sample_c operations
were processed at 1 pixel/clock unless you set that bit, in which case
they get processed at 4 pixels/clock.  The downside is that it breaks
some obscure media feature that apparently no one used.

Broadwell and later alway process sample_c operations at the fast speed,
and there is no bit to control it.  I would say that downstream patch is
incorrect.

=2D-Ken

On Tuesday, May 4, 2021 4:07:14 PM PDT Andr=E9 Almeida wrote:
> Hi there,
>=20
> While browsing an old downstream kernel, I found a patch[0] that enables=
=20
> sample_c optimizations at Broadwell GPUs. The message from the upstream=20
> commit that enables it for Haswell[1] (and presumably where the code=20
> at[0] was copied from) states that "[..] later platforms remove this=20
> bit, and apparently always enable the optimization".
>=20
> Could you confirm that Broadwell and following architectures enable this=
=20
> optimization by default (and thus, patch[0] is a no-op), or should I=20
> upstream it?
>=20
> Thanks,
> 	Andr=E9
>=20
> [0]=20
> https://github.com/ValveSoftware/steamos_kernel/commit/198990f13e1d942986=
4c177d9441a6559771c5e2
>=20
> [1]=20
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit=
/?id=3D944115934436b1ff6cf773a9e9123858ea9ef3da
>=20


--nextPart4240184.CW8T6EejXm
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE6OtbNAgc4e6ibv4ZW1vaBx1JzDgFAmCSu1IACgkQW1vaBx1J
zDiaxhAAnyQOIlWC26OaVTTSf3tfi6ARhp/6rGqx39tIIc4mJ5xlzVYhoJDc5WYl
vmsrHGawyBDbE/DilzaYMQCODSHJYsYGq5C7zsHCyBfQwsFI74IDKtkEycmqH30B
BYDuXTb5P+Aq4OwKwplQfwb9zux1BE0wnN4Auk+w1Q5fN1pi0mDOh/3V5mqYJdpo
q1/JIudzNUMXqmap4fBfAfXyjKAC00ATL4Kq+FaFZmgKXafxBsuzpF8BOl6DXqT+
uImef23cSnWUO+juHTySmRPcY8ienGGP2JmE/Hs8SKRAsyRpVvBWsweJ1QVe99jm
K2+0hZDN8Eoi46BpXxeSBB8fUaaU1/+GfaBvVQ8koTV9r4ZKxSh1luoA5CyQF0OS
qwUo9w0EnD6VxvGKqQVUR3ShRMx08GZ8kQLa/bUVDlgCYe9at4aKV/3DwVMXKTQz
7jwrkYslzIyOAPOZ48icnrmCAAQqflzGyyfm04jf5T9AxvuGN8BXaWLVyIfyfp8W
uJJKkzpMKRFDMh//24bdA20I4J5IEDnW10ivUS+GxSdBWIVOaSH+RkuABy7IoKIM
TAheY+HzAI9RbExu9Up9xUDombU1TkhbSKELBquhHYheDz8jX/jXattpoqdbdfgw
NKvscu28TO4OLQGj18kKAa2yM1wjJtXpsmGIDkZDxM+PR86vMYY=
=7u/K
-----END PGP SIGNATURE-----

--nextPart4240184.CW8T6EejXm--




--===============1945278633==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1945278633==--



