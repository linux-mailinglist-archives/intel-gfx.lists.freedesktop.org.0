Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AF182A7428
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Nov 2020 01:58:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03C9D6E864;
	Thu,  5 Nov 2020 00:58:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ozlabs.org (bilbo.ozlabs.org [IPv6:2401:3900:2:1::2])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 23B616E09A;
 Thu,  5 Nov 2020 00:58:12 +0000 (UTC)
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 4CRQ9r6jfDz9sTK;
 Thu,  5 Nov 2020 11:58:08 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=canb.auug.org.au;
 s=201702; t=1604537890;
 bh=27nvI50yUte+Q88fSY3JDzpkApvknTaK+OWR6Ij0tNU=;
 h=Date:From:To:Cc:Subject:From;
 b=KzaBpJM4Jc++XSbk5UXuDiD2KdZo9moB8JXVl0iTSxvEizpgm5NwlkYEQv7gUH39L
 lA0gtoEDcLk5kccvsXASr4OoBSaPwfq+IfrVpjaVSyTn4pL0EuAN1kfRSGSkJuQC7K
 DUAT1pAsyJrLPDfRnHcpNvaABmB/2LT3RGqem3UvhyPO7ZaCsGEprOCV/S0YRd9pgt
 PmMP4lOM00yP9HfYH8q9oZ53GmCbydM3dp2kOl7bMx2XN5smF0q9EuW5wPJsOT7Xk3
 68y5QbHzy3eNkk4EguqX7hKTe3LZncpjtZ3B91vKIS9vlST0BHzVzrsXRhEDLZ6pXZ
 2IdzlnRBCIv+Q==
Date: Thu, 5 Nov 2020 11:58:08 +1100
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Rob Clark <robdclark@gmail.com>, Sean Paul <seanpaul@chromium.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>, Intel Graphics
 <intel-gfx@lists.freedesktop.org>, DRI <dri-devel@lists.freedesktop.org>
Message-ID: <20201105115808.3aee29f1@canb.auug.org.au>
MIME-Version: 1.0
Subject: [Intel-gfx] linux-next: manual merge of the drm-msm tree with the
 drm-misc tree
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
Cc: Rob Clark <robdclark@chromium.org>, Stephen Boyd <swboyd@chromium.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Maxime Ripard <maxime@cerno.tech>
Content-Type: multipart/mixed; boundary="===============1354527394=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1354527394==
Content-Type: multipart/signed; boundary="Sig_/+UpkO/lwJvjogdGfigDwaWZ";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/+UpkO/lwJvjogdGfigDwaWZ
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi all,

Today's linux-next merge of the drm-msm tree got a conflict in:

  drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c

between commit:

  29b77ad7b9ca ("drm/atomic: Pass the full state to CRTC atomic_check")

from the drm-misc tree and commit:

  91693cbc13c2 ("drm/msm/dpu: Add newline to printks")

from the drm-msm tree.

I fixed it up (see below) and can carry the fix as necessary. This
is now fixed as far as linux-next is concerned, but any non trivial
conflicts should be mentioned to your upstream maintainer when your tree
is submitted for merging.  You may also want to consider cooperating
with the maintainer of the conflicting tree to minimise any particularly
complex conflicts.

--=20
Cheers,
Stephen Rothwell

diff --cc drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c
index e55be2922c2f,d4662e8184cc..000000000000
--- a/drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c
+++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_crtc.c
@@@ -844,12 -838,12 +844,12 @@@ static int dpu_crtc_atomic_check(struc
  		goto end;
  	}
 =20
 -	mode =3D &state->adjusted_mode;
 +	mode =3D &crtc_state->adjusted_mode;
- 	DPU_DEBUG("%s: check", dpu_crtc->name);
+ 	DPU_DEBUG("%s: check\n", dpu_crtc->name);
 =20
  	/* force a full mode set if active state changed */
 -	if (state->active_changed)
 -		state->mode_changed =3D true;
 +	if (crtc_state->active_changed)
 +		crtc_state->mode_changed =3D true;
 =20
  	memset(pipe_staged, 0, sizeof(pipe_staged));
 =20

--Sig_/+UpkO/lwJvjogdGfigDwaWZ
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAl+jTiAACgkQAVBC80lX
0GxkpQf/d4XQPifyB/OFigkbH0lYY1T6msn/1Sr9SQkcgIZI/uzZRM1dA825vlYV
AzqHQjCl0cJoa+Cj/KTr9npA4LEKy7FBjndFRqq8ioVo9I990U/WAKvFfD0FG75r
AO+U9c8RER+VodfRHefvMx7zne1QFxaYy0Kcq7Jqg5Fkm/rxrDJ4qk+ubdMVn2VE
yT3ey4/14qt3VOLJBFyNDrAIgZ4v0/ukaA/WFC4ORmKaqnym18plR82daOKLwCjY
8xFCqV4J1npC58AVc25lGddre7tv8qKR8FLw4qRV7kcGaa24DxCe8PIiDX749bYG
bx9dbI2thlv2MZJMENqX8Mud1Kq39A==
=diS3
-----END PGP SIGNATURE-----

--Sig_/+UpkO/lwJvjogdGfigDwaWZ--

--===============1354527394==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1354527394==--
