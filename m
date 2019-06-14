Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 69140453A2
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 06:41:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 479F0892FE;
	Fri, 14 Jun 2019 04:41:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ozlabs.org (ozlabs.org [IPv6:2401:3900:2:1::2])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AFC1B8924F;
 Fri, 14 Jun 2019 04:41:38 +0000 (UTC)
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 45Q7H15S2fz9s4Y;
 Fri, 14 Jun 2019 14:41:33 +1000 (AEST)
Date: Fri, 14 Jun 2019 14:41:33 +1000
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Daniel Vetter <daniel.vetter@ffwll.ch>, Intel Graphics
 <intel-gfx@lists.freedesktop.org>, DRI <dri-devel@lists.freedesktop.org>,
 Dave Airlie <airlied@linux.ie>
Message-ID: <20190614144133.5dbea6bf@canb.auug.org.au>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=canb.auug.org.au; s=201702; t=1560487295;
 bh=/d+ryYV/vaMZn5qaMRIajjQqgkaOkU1+4KD1BOAynSs=;
 h=Date:From:To:Cc:Subject:From;
 b=ebM/DX4zLGPWz7/mr0RvODiffTm/dcL/MPUPUpk+LC6wNRIk3kjJGJoglIScrpqCy
 r/M+e4hgy/ZIawLiYi53HZ/Xur/igR5L8pyMLV6InoUHvp00VivhbnvCImLZpANVXQ
 9zhff4W4bqkCVjZwGcEsZ7CQZVFQO8e7BLU41UIo8CzYTmsoMHxjugddxnpjrbMvoD
 twVFzcCycM2XKD7PKoSKN6ibJe90uACbnVbXwBw8o/cIWqhX0p7Z6JubFO7Bhm3zgU
 1tx0JNTyFDC02/I1l3oRKGgwz/N4sqp+s6zp/IG8SU+u6CrBDtOVzGrTlALeynp3IU
 pScU0mZe71oWw==
Subject: [Intel-gfx] linux-next: build failure after merge of the drm-misc
 tree
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
Cc: Sean Paul <seanpaul@chromium.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Harry Wentland <harry.wentland@amd.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Nicholas Kazlauskas <nicholas.kazlauskas@amd.com>
Content-Type: multipart/mixed; boundary="===============2009641653=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============2009641653==
Content-Type: multipart/signed; micalg=pgp-sha256;
 boundary="Sig_//+.8RdugmHQfla=VfC_BGU/"; protocol="application/pgp-signature"

--Sig_//+.8RdugmHQfla=VfC_BGU/
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi all,

After merging the drm-misc tree, today's linux-next build (x86_64
allmodconfig) failed like this:

drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:4031:18: error:=
 initialization of 'int (*)(struct drm_connector *, struct drm_atomic_state=
 *)' from incompatible pointer type 'int (*)(struct drm_connector *, struct=
 drm_connector_state *)' [-Werror=3Dincompatible-pointer-types]
  .atomic_check =3D amdgpu_dm_connector_atomic_check,
                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:4031:18: note: =
(near initialization for 'amdgpu_dm_connector_helper_funcs.atomic_check')

Caused by commit

  6f3b62781bbd ("drm: Convert connector_helper_funcs->atomic_check to accep=
t drm_atomic_state")

interacting with commit

  88694af9e4d1 ("drm/amd/display: Expose HDR output metadata for supported =
connectors")

from the drm tree.

I added the following merge fix patch:

From: Stephen Rothwell <sfr@canb.auug.org.au>
Date: Fri, 14 Jun 2019 14:27:12 +1000
Subject: [PATCH] fixup for "drm: Convert connector_helper_funcs->atomic_che=
ck
 to accept drm_atomic_state"

Signed-off-by: Stephen Rothwell <sfr@canb.auug.org.au>
---
 drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c b/drivers/gp=
u/drm/amd/display/amdgpu_dm/amdgpu_dm.c
index 413bf22e9585..b3a083c9a11c 100644
--- a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
+++ b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
@@ -3976,9 +3976,10 @@ is_hdr_metadata_different(const struct drm_connector=
_state *old_state,
=20
 static int
 amdgpu_dm_connector_atomic_check(struct drm_connector *conn,
-				 struct drm_connector_state *new_con_state)
+				 struct drm_atomic_state *state)
 {
-	struct drm_atomic_state *state =3D new_con_state->state;
+	struct drm_connector_state *new_con_state =3D
+		drm_atomic_get_new_connector_state(state, conn);
 	struct drm_connector_state *old_con_state =3D
 		drm_atomic_get_old_connector_state(state, conn);
 	struct drm_crtc *crtc =3D new_con_state->crtc;
--=20
2.20.1

--=20
Cheers,
Stephen Rothwell

--Sig_//+.8RdugmHQfla=VfC_BGU/
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAl0DJX0ACgkQAVBC80lX
0GxcLAgAljvrK6Ifl9wqiaYaz9OxA/w0ZH1f0ia1PUmQSyjwkPD5cYLtWrpvIjpy
b9CuAwupRZuY8mjiygi/S0PMdUUEarl3/l2C2daY5BM5US23Vtt5g9g1LEmzbmru
6L0Ya+tmjHgq7K8hQBNnRShoZhG5k1C+Mx02WFQ+EacdaRdo6lmMRclMihGbeOGs
JmBE+Q8M0xN8XLuhqWF4sm69DXCKMmojWDiYmhfGyd9XbhYHENIVFiyWHGSRlc3R
6zsyH+QENQIEo1/5c+UnAKRilOho8au0+aLfRxQh0Dg21Q5ytv4ii4DHu9n/R3VM
KuEb7sBzmVu0AYkQnultJTy2cm6Nbg==
=IVWq
-----END PGP SIGNATURE-----

--Sig_//+.8RdugmHQfla=VfC_BGU/--

--===============2009641653==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============2009641653==--
