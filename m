Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 85E9883B4FF
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jan 2024 23:51:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5CFCD10EA80;
	Wed, 24 Jan 2024 22:51:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 532 seconds by postgrey-1.36 at gabe;
 Wed, 24 Jan 2024 22:51:48 UTC
Received: from smtp69.ord1d.emailsrvr.com (smtp69.ord1d.emailsrvr.com
 [184.106.54.69])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A780110EA80
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jan 2024 22:51:48 +0000 (UTC)
X-Auth-ID: kenneth@whitecape.org
Received: by smtp17.relay.ord1d.emailsrvr.com (Authenticated sender:
 kenneth-AT-whitecape.org) with ESMTPSA id 5B01D20106; 
 Wed, 24 Jan 2024 17:42:45 -0500 (EST)
From: Kenneth Graunke <kenneth@whitecape.org>
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Intel graphics driver community testing & development
 <intel-gfx@lists.freedesktop.org>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Subject: Re: [RFC PATCH] drm/i915: Add GETPARAM for GuC submission version
Date: Wed, 24 Jan 2024 14:42:44 -0800
Message-ID: <10805260.2PROs4QQOl@mizzik>
In-Reply-To: <f04e6301-c41e-4293-96a7-6d1fa8f8304d@linux.intel.com>
References: <20240124081915.68953-1-joonas.lahtinen@linux.intel.com>
 <f04e6301-c41e-4293-96a7-6d1fa8f8304d@linux.intel.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart2304557.8Id3yPepKx";
 micalg="pgp-sha256"; protocol="application/pgp-signature"
X-Classification-ID: 2f26a919-d872-450d-82e9-65d623572ae4-1-1
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
Cc: Paulo Zanoni <paulo.r.zanoni@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@intel.com>, Jani Nikula <jani.nikula@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--nextPart2304557.8Id3yPepKx
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Kenneth Graunke <kenneth@whitecape.org>
Date: Wed, 24 Jan 2024 14:42:44 -0800
Message-ID: <10805260.2PROs4QQOl@mizzik>
In-Reply-To: <f04e6301-c41e-4293-96a7-6d1fa8f8304d@linux.intel.com>
MIME-Version: 1.0

On Wednesday, January 24, 2024 12:55:56 AM PST Tvrtko Ursulin wrote:
> 
> On 24/01/2024 08:19, Joonas Lahtinen wrote:
> > Add reporting of the GuC submissio/VF interface version via GETPARAM
> > properties. Mesa intends to use this information to check for old
> > firmware versions with known bugs before enabling features like async
> > compute.
> 
> There was 
> https://patchwork.freedesktop.org/patch/560704/?series=124592&rev=1 
> which does everything in one go so would be my preference.

Joonas's patch posted here is:

Reviewed-by: Kenneth Graunke <kenneth@whitecape.org>

I'm fine with the approach that Tvrtko linked as well, querying all
three in one ioctl makes some sense.  That particular patch looked like
it needed some (trivial) cleaning up before landing, though.  Either
approach works for me.

I agree with John, the submission version should be fine for us.

Thanks a lot for taking care of this.

--nextPart2304557.8Id3yPepKx
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE6OtbNAgc4e6ibv4ZW1vaBx1JzDgFAmWxkmQACgkQW1vaBx1J
zDifmA/9HlK7GnNQAK4Q6MmBJsbTqtIX23G4XsH9tbe7Gy9ksPq6uD+4P3KsQUhD
UVHXWQRk/AUYAUOumWSutydVDhlirRIzeOfhGCuS9VmESgi2iptvgBKTvYkqjxmF
Q9uyGE7km17bWP2MM3G6CmOv8ZQkShMKFlyh6dayyzFkRqKVAhbXm6TCuLoRpE1h
PBA4ByA2qlm2VQFZzqyqwpeX04yy4mYcUkBK+SpTijDgwzRLHgW/Rx0ej66+c1J1
SRE6a/feoC1I/csoiZfbA/thUvvMoajTtenW7kZpKhfF4UeHg67V3Tqu/MbHpx0j
+M0muZTJx7GPPa8HbrZe7kojzXatQRszQ38ByVwRa/1/tALQmuQu6bDX7LLbJ6tK
GFZrfsB8XzxVwCQVIa6Yg0LyssiRjjspf8YT37tQPWLQxO5rJw6EGJBXBgoSlris
/woPEkXWSZqdK3CACOtenf4WAw76imqyL6Eheh2/grJYZwxurVjBxsATLglwRIo+
cId55BSn8DSvzYd+vP8mSnHOfjriLsyF0Vo65ZnZ3eLbT8mVp9G0X46W9G8aSjes
fovBjJtVZntCmaQQLE5Z0Jn7L4YsLW+HtQ92BmfEGSL0wT+4qOLCCKzu0/nxb0fF
s3DMOt6HAlEMa0St4IMSkiW5dGAAQEYvP6J1JvbbVl3hl5+a8vc=
=DAVI
-----END PGP SIGNATURE-----

--nextPart2304557.8Id3yPepKx--



