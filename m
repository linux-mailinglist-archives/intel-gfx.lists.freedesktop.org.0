Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B87853CF489
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Jul 2021 08:32:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D07C289F73;
	Tue, 20 Jul 2021 06:32:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ozlabs.org (ozlabs.org [IPv6:2401:3900:2:1::2])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB17889F73;
 Tue, 20 Jul 2021 06:32:22 +0000 (UTC)
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 4GTTQn5dDwz9sX1;
 Tue, 20 Jul 2021 16:32:16 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=canb.auug.org.au;
 s=201702; t=1626762740;
 bh=KzjgF2y5aBYeBDObwr2SaY7dstWwB7n9nlqKcUb/nHc=;
 h=Date:From:To:Cc:Subject:From;
 b=R6W9LU1fBtB+fjh9QKteMVQDrpLvKZpWZkzXEveFkr+ieFvm140gTTRUDROpT15zp
 66vQhkIx5PNwkyReOlWDHveSymOL2sxOYPHj2d0BIRQLE7Jk2j3vkhPIdlecPtJDwp
 2lEqJ2meWzv6N5kXC3u8n8LTFC4L3RzsT8Jhnc2rGlHXQoOxJkekSeCvvkA2PraLsl
 +SXX1ZpymQCFlhwo7BBC9PngG2tEbqXxAtSnOrA1yAgSxQlFUAUA4aCnHmRb9xVtgu
 2dBZLLag2pRCPnCyXDesxNKmOQbHQzAV5uAOVdIwIzXOhp4uf+xS4IVnTTyaoIUB4G
 4nmPlJyM+zATA==
Date: Tue, 20 Jul 2021 16:32:16 +1000
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Daniel Vetter <daniel.vetter@ffwll.ch>, Jani Nikula
 <jani.nikula@linux.intel.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Intel Graphics <intel-gfx@lists.freedesktop.org>, DRI
 <dri-devel@lists.freedesktop.org>
Message-ID: <20210720163216.2b639d0d@canb.auug.org.au>
MIME-Version: 1.0
Subject: [Intel-gfx] linux-next: build warning after merge of the
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
Cc: Linux Next Mailing List <linux-next@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: multipart/mixed; boundary="===============1709953741=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1709953741==
Content-Type: multipart/signed; boundary="Sig_/sgTT+lRhMW2dTzwoUP1m3pV";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/sgTT+lRhMW2dTzwoUP1m3pV
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi all,

After merging the drm-intel-fixes tree, today's linux-next build
(htmldocs) produced this warning:

drivers/gpu/drm/i915/i915_cmd_parser.c:1436: warning: Excess function param=
eter 'jump_whitelist' description in 'intel_engine_cmd_parser'
drivers/gpu/drm/i915/i915_cmd_parser.c:1436: warning: Excess function param=
eter 'shadow_map' description in 'intel_engine_cmd_parser'
drivers/gpu/drm/i915/i915_cmd_parser.c:1436: warning: Excess function param=
eter 'batch_map' description in 'intel_engine_cmd_parser'
drivers/gpu/drm/i915/i915_cmd_parser.c:1436: warning: Function parameter or=
 member 'trampoline' not described in 'intel_engine_cmd_parser'
drivers/gpu/drm/i915/i915_cmd_parser.c:1436: warning: Excess function param=
eter 'jump_whitelist' description in 'intel_engine_cmd_parser'
drivers/gpu/drm/i915/i915_cmd_parser.c:1436: warning: Excess function param=
eter 'shadow_map' description in 'intel_engine_cmd_parser'
drivers/gpu/drm/i915/i915_cmd_parser.c:1436: warning: Excess function param=
eter 'batch_map' description in 'intel_engine_cmd_parser'

Introduced by commit

  c9d9fdbc108a ("drm/i915: Revert "drm/i915/gem: Asynchronous cmdparser"")

--=20
Cheers,
Stephen Rothwell

--Sig_/sgTT+lRhMW2dTzwoUP1m3pV
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAmD2bfAACgkQAVBC80lX
0GzpewgAlFCUL4HwCtTIOPN7HMd1F3qrv5hX0xWcZ1wcaCD3x0Zcx148curbt7mR
OpCi1tNkPxLeqsjq9zcnnRwVokcxST2RXZNy3wWVdYYoOOaa/DO6lqZwzlNRThR7
6RKUn7bckFx1HKQAs+PLxHaXConfxaKhYf7b9u15199WGm2CLJ6JVHSvy1e8b4kU
m89OleovF8GepmH6t2gh0fWtKnm/9zFdknOIpbrI1QbUt5rbbPOA6WjpbVRzrUXA
8dHUE7V3l4FSAufBeOZ0+erP7Da8e68+q+f8suvpH5MpJvq+rquIVvCRF1GJ6ED5
dJ0ejKB2opUePOBNMddOaRMHSpq2qg==
=j8Ep
-----END PGP SIGNATURE-----

--Sig_/sgTT+lRhMW2dTzwoUP1m3pV--

--===============1709953741==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1709953741==--
