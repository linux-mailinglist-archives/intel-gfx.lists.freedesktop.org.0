Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4694A3C7647
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Jul 2021 20:11:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 463196E107;
	Tue, 13 Jul 2021 18:11:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 478 seconds by postgrey-1.36 at gabe;
 Tue, 13 Jul 2021 18:11:46 UTC
Received: from smtp114.iad3b.emailsrvr.com (smtp114.iad3b.emailsrvr.com
 [146.20.161.114])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C18836E107
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Jul 2021 18:11:46 +0000 (UTC)
X-Auth-ID: kenneth@whitecape.org
Received: by smtp7.relay.iad3b.emailsrvr.com (Authenticated sender:
 kenneth-AT-whitecape.org) with ESMTPSA id 2078A6012C; 
 Tue, 13 Jul 2021 14:03:46 -0400 (EDT)
From: Kenneth Graunke <kenneth@whitecape.org>
To: intel-gfx@lists.freedesktop.org, Matthew Auld <matthew.auld@intel.com>
Date: Tue, 13 Jul 2021 11:03:42 -0700
Message-ID: <2903006.BRdxQiUG6I@mizzik>
In-Reply-To: <20210705135310.1502437-3-matthew.auld@intel.com>
References: <20210705135310.1502437-1-matthew.auld@intel.com>
 <20210705135310.1502437-3-matthew.auld@intel.com>
MIME-Version: 1.0
X-Classification-ID: 54060470-d477-4b4a-b8c6-8f9d1305d835-1-1
Subject: Re: [Intel-gfx] [PATCH v3 3/5] drm/i915/uapi: reject caching ioctls
 for discrete
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
Cc: Thomas =?ISO-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>,
 dri-devel@lists.freedesktop.org, Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: multipart/mixed; boundary="===============0377958504=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0377958504==
Content-Type: multipart/signed; boundary="nextPart2341861.n7pOrN7pQ0"; micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPart2341861.n7pOrN7pQ0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; protected-headers="v1"
From: Kenneth Graunke <kenneth@whitecape.org>
To: intel-gfx@lists.freedesktop.org, Matthew Auld <matthew.auld@intel.com>
Cc: dri-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>, Thomas =?ISO-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, Jordan Justen <jordan.l.justen@intel.com>, Jason Ekstrand <jason@jlekstrand.net>, Daniel Vetter <daniel.vetter@ffwll.ch>, Ramalingam C <ramalingam.c@intel.com>
Subject: Re: [PATCH v3 3/5] drm/i915/uapi: reject caching ioctls for discrete
Date: Tue, 13 Jul 2021 11:03:42 -0700
Message-ID: <2903006.BRdxQiUG6I@mizzik>
In-Reply-To: <20210705135310.1502437-3-matthew.auld@intel.com>
References: <20210705135310.1502437-1-matthew.auld@intel.com> <20210705135310.1502437-3-matthew.auld@intel.com>

On Monday, July 5, 2021 6:53:08 AM PDT Matthew Auld wrote:
> It's a noop on DG1, and in the future when need to support other devices
> which let us control the coherency, then it should be an immutable
> creation time property for the BO. This will likely be controlled
> through a new gem_create_ext extension.
>=20
> v2: add some kernel doc for the discrete changes, and document the
>     implicit rules
>=20
> Suggested-by: Daniel Vetter <daniel@ffwll.ch>
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Thomas Hellstr=F6m <thomas.hellstrom@linux.intel.com>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> Cc: Jordan Justen <jordan.l.justen@intel.com>
> Cc: Kenneth Graunke <kenneth@whitecape.org>
> Cc: Jason Ekstrand <jason@jlekstrand.net>
> Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
> Cc: Ramalingam C <ramalingam.c@intel.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_domain.c |  6 +++++
>  include/uapi/drm/i915_drm.h                | 29 +++++++++++++++++++++-
>  2 files changed, 34 insertions(+), 1 deletion(-)

This caching ioctl patch is:

Reviewed-by: Kenneth Graunke <kenneth@whitecape.org>

--nextPart2341861.n7pOrN7pQ0
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE6OtbNAgc4e6ibv4ZW1vaBx1JzDgFAmDt1X4ACgkQW1vaBx1J
zDhedw/8CIgFbIvRYudUYl/JxnHch1b5l4X7NUoL2SzmdNERl7+Mr0ut0LuaKzv+
mCvCWwB1Oe+/MoWmtlLKGY7vXnbrYVx4fbfH03duRRXJXEhBih/S9APRIsdoIM4v
q/5XcS+npHCwAKRMkrO0gpny0zFnGdw6LnPz9YAXl5/YJGsfbBjgG7kPrXGg/l9H
WuI1AtqNVa/+uoLGrIBqHHpGUe2+rhwxOKFk2tquKAPR+xX9qmw7DmqP8xjQ91/u
ssneUnka6jf8cRsioJ36HwurXYWEFSy06HJvx3NZM+G6hOAKwXofUFdsQKw36xAb
+Eb9gIpOSrleP0+GedkNXqH4ncCaFIh0MKFh0KhmOqXrY68myhOflLhVPqzo738i
kJOrOBxkYxJtZ3K3YqpWseZwPUWdDXdD+6jvYGHiZfIaI3cWBX7hwEnXQpDyY9ip
TsjIunLYFitiHVoZSwCBiuaYP/hCQGe6OCSwhYAO5IYeXX5Pwp4pmonAybOVSF9y
hgvTbSakNI7CGkPXf+bXu6mTCtlCqa8Psxu3DfjRUyIKDg3yFxcp8xpikFortcns
K2cv/OGJC+FTSqNb1y+BYf2EsbbBElwT/LEv5woR47qDL/ygwZOk6IwCdD3RSc8r
l421E9slwjm8dUqHfWuWsLqC3MKySmMkzdm6ag4AxQQdlnZWq2I=
=/FUK
-----END PGP SIGNATURE-----

--nextPart2341861.n7pOrN7pQ0--




--===============0377958504==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0377958504==--



