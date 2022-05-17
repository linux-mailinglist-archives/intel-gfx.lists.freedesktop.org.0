Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E2895296AE
	for <lists+intel-gfx@lfdr.de>; Tue, 17 May 2022 03:26:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6232110E059;
	Tue, 17 May 2022 01:26:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from gandalf.ozlabs.org (mail.ozlabs.org
 [IPv6:2404:9400:2221:ea00::3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F15A10E059;
 Tue, 17 May 2022 01:26:11 +0000 (UTC)
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 4L2JNY3nGxz4xXg;
 Tue, 17 May 2022 11:26:04 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canb.auug.org.au;
 s=201702; t=1652750767;
 bh=tkYVY8vY6gNXvhNcIMOR3JtLqVvtFEVE1/mN6wPOWUk=;
 h=Date:From:To:Cc:Subject:From;
 b=ZZgzEDLQnaf6r4fxEK2XvXqQ9ILLumgcUyDX9pffXKhjln/3/aaj90oI3dRgDBxzW
 c5wEPkPDRhP8maNZ+ddWJWAiHp1rXv+/sSGttzZi2NzSBcZGG1w3axvTKTGoD8vvVY
 K2Z2vtcjeqVloNTt0ncz3YJ6uAtmMmJ49DSDUzNftop/FbivS/WA//rpy9HvPIrOKu
 UBynFeylLQeoufORqJbWAZaT/SdE46o+qcLVE1RSNkNl2cN9DoRBK/vqgTwZ2TvVIH
 ClbERCLO7pnDZCUNcCRPl5FiGbhyyID2jeRMGlEVmuzfTeOMxnuPPThI8OpbRaCGZT
 3TmIiw7pyvH+A==
Date: Tue, 17 May 2022 11:26:00 +1000
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Dave Airlie <airlied@linux.ie>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Jani Nikula <jani.nikula@linux.intel.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Message-ID: <20220517112600.7d8d63b3@canb.auug.org.au>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="Sig_/71OL0cAFBGAD+j4wVZ5FF=6";
 protocol="application/pgp-signature"; micalg=pgp-sha256
Subject: [Intel-gfx] linux-next: manual merge of the drm tree with the
 drm-intel-fixes tree
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
Cc: Intel Graphics <intel-gfx@lists.freedesktop.org>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 DRI <dri-devel@lists.freedesktop.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--Sig_/71OL0cAFBGAD+j4wVZ5FF=6
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi all,

Today's linux-next merge of the drm tree got a conflict in:

  drivers/gpu/drm/i915/i915_reg.h

between commit:

  54395a33718a ("drm/i915/dmc: Add MMIO range restrictions")

from the drm-intel-fixes tree and commit:

  9c67d9e84c7d ("drm/i915/dmc: split out dmc registers to a separate file")

from the drm tree.

I fixed it up (I used the latter version of this file and applied the
following patch) and can carry the fix as necessary. This is now fixed
as far as linux-next is concerned, but any non trivial conflicts should
be mentioned to your upstream maintainer when your tree is submitted for
merging.  You may also want to consider cooperating with the maintainer
of the conflicting tree to minimise any particularly complex conflicts.

From: Stephen Rothwell <sfr@canb.auug.org.au>
Date: Tue, 17 May 2022 11:19:42 +1000
Subject: [PATCH] fi up for "drm/i915/dmc: Add MMIO range restrictions"

Signed-off-by: Stephen Rothwell <sfr@canb.auug.org.au>
---
 drivers/gpu/drm/i915/display/intel_dmc_regs.h | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc_regs.h b/drivers/gpu/dr=
m/i915/display/intel_dmc_regs.h
index d65e698832eb..7853827988d4 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
@@ -17,6 +17,22 @@
 #define DMC_LAST_WRITE_VALUE	0xc003b400
 #define DMC_MMIO_START_RANGE	0x80000
 #define DMC_MMIO_END_RANGE	0x8FFFF
+#define DMC_V1_MMIO_START_RANGE	0x80000
+#define TGL_MAIN_MMIO_START	0x8F000
+#define TGL_MAIN_MMIO_END	0x8FFFF
+#define _TGL_PIPEA_MMIO_START	0x92000
+#define _TGL_PIPEA_MMIO_END	0x93FFF
+#define _TGL_PIPEB_MMIO_START	0x96000
+#define _TGL_PIPEB_MMIO_END	0x97FFF
+#define ADLP_PIPE_MMIO_START	0x5F000
+#define ADLP_PIPE_MMIO_END	0x5FFFF
+
+#define TGL_PIPE_MMIO_START(dmc_id)	_PICK_EVEN(((dmc_id) - 1), _TGL_PIPEA_=
MMIO_START,\
+						_TGL_PIPEB_MMIO_START)
+
+#define TGL_PIPE_MMIO_END(dmc_id)	_PICK_EVEN(((dmc_id) - 1), _TGL_PIPEA_MM=
IO_END,\
+						_TGL_PIPEB_MMIO_END)
+
 #define SKL_DMC_DC3_DC5_COUNT	_MMIO(0x80030)
 #define SKL_DMC_DC5_DC6_COUNT	_MMIO(0x8002C)
 #define BXT_DMC_DC3_DC5_COUNT	_MMIO(0x80038)
--=20
2.35.1

--=20
Cheers,
Stephen Rothwell

--Sig_/71OL0cAFBGAD+j4wVZ5FF=6
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAmKC+agACgkQAVBC80lX
0GzKtwf+LSwY5OtuMW6tK+yxiDnG2ucVOlHcikXV0ch51Xi4IGTCtw1uqL3mbGY1
DYzhbJCDfR0zlV4Xh5AVmr9VRG8OHILN2I756HHlk9DO41GJNborf7XDrRZq+qiC
LwXk5NXIOY0G5jqoPLWdbEpgHl4k4+UsVwgK/cdXVYfHUGxCzoTbtgqqDWUO0hZF
a1fH/hv1AbkfQOA13OSL+zqqg6N0iynToEM6d3NPhZJ0Smq+uNfayT+Krkp1sYId
+pES0iewe5qwnbeExW9EQB29v/gFCMjkJcXP2WDP/HYD0KUdtJJK7qMsUdH19XCa
2LieLtxlv7wUjQ8gNcWv8WFV18HD8w==
=rdvW
-----END PGP SIGNATURE-----

--Sig_/71OL0cAFBGAD+j4wVZ5FF=6--
