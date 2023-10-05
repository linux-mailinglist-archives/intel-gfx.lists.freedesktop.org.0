Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E54B97B9A95
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Oct 2023 06:01:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDE4C10E3D0;
	Thu,  5 Oct 2023 04:01:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from gandalf.ozlabs.org (gandalf.ozlabs.org [150.107.74.76])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE80410E3D0
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Oct 2023 04:01:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canb.auug.org.au;
 s=201702; t=1696478498;
 bh=8hwLjXwET4o8Ewk9EJoup9Fux12qGBp+CzVvTVah41A=;
 h=Date:From:To:Cc:Subject:From;
 b=usACGtcVBIG5QV5n0kiT9UsPv1aFYz/MakQMgBcU/hsYJ9pBBUvipZ23LKijKCE10
 Y3bcaxywqiimfp6hEpcmWaIurqndE+94UI8apJwmseyJNrbyv+/gwdX5OXApWsNMzZ
 Y1bsJuf4kUi2N2TMMAdfPVBeOysGty4qsPqp0dddfarRGeEgS+1rpSV0M+5EZQZqUh
 cEGe8jFotzwhGjIfzkZOzSNjeXYUzpOrNletEcLBe8m1PBdgqpzFLL0WpQLnfXu66I
 ZEhHzWQAD2Xi3/vbh5+E1XhTFWKqZJFFSENDlkZoQiMirafwVNXgZz18fWhCQueZ+F
 65aKYerik5Ytg==
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits)
 server-digest SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 4S1HtV42t5z4xF2;
 Thu,  5 Oct 2023 15:01:38 +1100 (AEDT)
Date: Thu, 5 Oct 2023 15:01:37 +1100
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Daniel Vetter <daniel.vetter@ffwll.ch>, Intel Graphics
 <intel-gfx@lists.freedesktop.org>, DRI <dri-devel@lists.freedesktop.org>
Message-ID: <20231005150137.7fd88e0b@canb.auug.org.au>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="Sig_/C0eruhIm2Bsg/K9zqghPzZ6";
 protocol="application/pgp-signature"; micalg=pgp-sha256
Subject: [Intel-gfx] linux-next: build warning after merge of the
 drm-misc-fixes tree
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
 Danilo Krummrich <dakr@redhat.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--Sig_/C0eruhIm2Bsg/K9zqghPzZ6
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi all,

After merging the drm-misc-fixes tree, today's linux-next build (htmldocs)
produced this warning:

include/uapi/drm/nouveau_drm.h:49: warning: Cannot understand  * @NOUVEAU_G=
ETPARAM_EXEC_PUSH_MAX
 on line 49 - I thought it was a doc line

Introduced by commit

  d59e75eef52d ("drm/nouveau: exec: report max pushs through getparam")

--=20
Cheers,
Stephen Rothwell

--Sig_/C0eruhIm2Bsg/K9zqghPzZ6
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAmUeNSEACgkQAVBC80lX
0Gwo8wf/bkcPs2VTv8jFW7ZltypmPhFXK2vqas8Ep7Blb4k3Fwx+QpE+sEe54fWn
YM8M583OMpLCB5Ys7kgJNm2lxzis1gizQGltnDmjzf/KqZGMrmERXwbpTIg+WLrT
4sc1qgC9dhHDnffXDbGY+yO3jtHWNYKhN2BMQh1JLExeC/ac63L6dEVI7/VWXvIM
lLCm2DT4sDlaawB3LzIMCsyH1i8iPGwPXffTnKYjIrOr1HhznUy2jN1vWVxnGtm+
dRoxvnNdosFYJbLKFPE6M+uRWWZdxZoMY0YFPUHmxjmCFZlQV2w7Gz4M6IR9Uk5I
EG+Y9ON3HDJRynWFev6D5xexw10ZCg==
=1USU
-----END PGP SIGNATURE-----

--Sig_/C0eruhIm2Bsg/K9zqghPzZ6--
