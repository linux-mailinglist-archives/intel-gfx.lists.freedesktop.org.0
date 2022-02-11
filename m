Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 60FE04B1BE6
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Feb 2022 03:06:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B94110E9B0;
	Fri, 11 Feb 2022 02:06:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from gandalf.ozlabs.org (gandalf.ozlabs.org [150.107.74.76])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96F0B10E9A6;
 Fri, 11 Feb 2022 02:06:32 +0000 (UTC)
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 4Jvxmx3R5xz4xRB;
 Fri, 11 Feb 2022 13:06:24 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canb.auug.org.au;
 s=201702; t=1644545187;
 bh=41ADKpDhvwyAZMddYDgXJPz5v6qbPxB/ugfUN4tyqPY=;
 h=Date:From:To:Cc:Subject:From;
 b=UJW2EGP2gLjAh/cRmfLgwqpw8uDQuFU/YD2O0G/D7rZjQ1WxozYtv/kbL3fNn1uEI
 9X5S71wRvgTEI06My5CPP9546gXgwSUV21RiZPXdUdc2CoL30VN/XJ66sYY/YWb1D7
 m1w+SHNMs45frFiYfkXCSs3JcaFyw5eJu4ZB6bZiuKkp+vIHftlJOircnOhlqhbuXB
 PCnkoDWiGNXHzQRH09DK79aXdNoNfeKspBbfi5cc0qWy9oCcIa3Tgn7f2hv522LCHr
 +IUcKfZmCR0Tgh6fBd3pEESjf9LWTs5PE5/KbnaXYE931xOP4wE5waq6EN3S9UONsb
 UyenXucDeN8KA==
Date: Fri, 11 Feb 2022 13:06:23 +1100
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Daniel Vetter <daniel.vetter@ffwll.ch>, Jani Nikula
 <jani.nikula@linux.intel.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Intel Graphics <intel-gfx@lists.freedesktop.org>, DRI
 <dri-devel@lists.freedesktop.org>, Dave Airlie <airlied@linux.ie>
Message-ID: <20220211130623.7cb860aa@canb.auug.org.au>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="Sig_/j4imPgn6DGpQHHJIoh5bmez";
 protocol="application/pgp-signature"; micalg=pgp-sha256
Subject: [Intel-gfx] linux-next: manual merge of the drm-intel tree with the
 drm tree
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
Cc: Jani Nikula <jani.nikula@intel.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Christian =?UTF-8?B?S8O2?= =?UTF-8?B?bmln?= <christian.koenig@amd.com>,
 Arunpravin <Arunpravin.PaneerSelvam@amd.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--Sig_/j4imPgn6DGpQHHJIoh5bmez
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi all,

Today's linux-next merge of the drm-intel tree got a conflict in:

  drivers/gpu/drm/i915/i915_module.c

between commit:

  6387a3c4b0c4 ("drm: move the buddy allocator from i915 into common drm")

from the drm tree and commit:

  24524e3f43cf ("drm/i915: move the DRIVER_* macros to i915_driver.[ch]")

from the drm-intel tree.

I fixed it up (see below) and can carry the fix as necessary. This
is now fixed as far as linux-next is concerned, but any non trivial
conflicts should be mentioned to your upstream maintainer when your tree
is submitted for merging.  You may also want to consider cooperating
with the maintainer of the conflicting tree to minimise any particularly
complex conflicts.

--=20
Cheers,
Stephen Rothwell

diff --cc drivers/gpu/drm/i915/i915_module.c
index 8451822637f0,5d6fdf37fb5a..000000000000
--- a/drivers/gpu/drm/i915/i915_module.c
+++ b/drivers/gpu/drm/i915/i915_module.c
@@@ -9,6 -9,8 +9,7 @@@
  #include "gem/i915_gem_context.h"
  #include "gem/i915_gem_object.h"
  #include "i915_active.h"
 -#include "i915_buddy.h"
+ #include "i915_driver.h"
  #include "i915_params.h"
  #include "i915_pci.h"
  #include "i915_perf.h"

--Sig_/j4imPgn6DGpQHHJIoh5bmez
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAmIFxJ8ACgkQAVBC80lX
0Gwl9wgAkS+R5m4vZdQSOT5buQhA9ewL+7ldHjHps/dIAd34h78CLE1DYkjKFKm+
6RcCKONnjNtXpOjWq0pNCwE4rv0TezHci5wDKspow9yXQ7heqGk+508KLiyJrYAK
rKB884EyrdPe5kN5e1T3G/YzVtYhInusN37jhGMDksTvegNo3Txtdr4vhMtkImY0
0TpnY3lgK8RkMoGCitAvYRp4D90Sgltjt9GDw5y0vs9fx8JwhU/LkP2J9iOws5bE
UsffZqZZfb3a7gle3ahQOhsHTj9wwE+GpcW7ehWtwSoX05qPoAq6ItA5wUDBTSeh
RJ0JAYo12wD7vsILwIFJHf1c2bH98g==
=z61v
-----END PGP SIGNATURE-----

--Sig_/j4imPgn6DGpQHHJIoh5bmez--
