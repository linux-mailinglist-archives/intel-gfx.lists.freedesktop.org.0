Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C16A313283
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Feb 2021 13:40:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BEFFA6E8A4;
	Mon,  8 Feb 2021 12:39:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ozlabs.org (bilbo.ozlabs.org [IPv6:2401:3900:2:1::2])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82AA66E8A4;
 Mon,  8 Feb 2021 12:39:57 +0000 (UTC)
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 4DZ5Fj5ZHzz9sWb;
 Mon,  8 Feb 2021 23:39:53 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=canb.auug.org.au;
 s=201702; t=1612787994;
 bh=Vj40pNH27cPPWhxImfXvQCPBcljRNPthB+e2t72DD+o=;
 h=Date:From:To:Cc:Subject:From;
 b=gOmRDRWLTmivtcAjwIxzHoL/C0mqnJVysPatAJX7MkbU2//3wiUHf5mEpzcA3MzXl
 KMAS9HX6o3PSNl7rpc8+rO14f5QXZ1BvpFO6A4wWEp2nCZoiWzZcrj7Jm/1hJTV+Zc
 HkiVGkfwA2ONvPp2UHMpBcA//KzUNU/NpevbmvMP6wwhHKfFDnI79LkWMbygGN6fF4
 U0biVDkBxHxkx4Vy/yjihy8G796riKC0XpcfHFrc6MzoN/y7stRLT1OMFsYWIqIr+8
 Lz66dMbm777vWimxDtV1NEvV0t5OeadLZUC0YyBZzTIXddwoM9Y1Bdo5YerxBJT+Q4
 fPqywQuFn7XmQ==
Date: Mon, 8 Feb 2021 23:39:51 +1100
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Daniel Vetter <daniel.vetter@ffwll.ch>, Intel Graphics
 <intel-gfx@lists.freedesktop.org>, DRI <dri-devel@lists.freedesktop.org>
Message-ID: <20210208233951.2b438d99@canb.auug.org.au>
MIME-Version: 1.0
Subject: [Intel-gfx] linux-next: build warning after merge of the drm-misc
 tree
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
 Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: multipart/mixed; boundary="===============1517262626=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1517262626==
Content-Type: multipart/signed; boundary="Sig_/1RGkhcRKW4jkWv=8QwCD5wP";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/1RGkhcRKW4jkWv=8QwCD5wP
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi all,

After merging the drm-misc tree, today's linux-next build (htmldocs)
produced this warning:

include/drm/gpu_scheduler.h:304: warning: Function parameter or member '_sc=
ore' not described in 'drm_gpu_scheduler'

Introduced by commit

  f2f12eb9c32b ("drm/scheduler: provide scheduler score externally")

--=20
Cheers,
Stephen Rothwell

--Sig_/1RGkhcRKW4jkWv=8QwCD5wP
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAmAhMRcACgkQAVBC80lX
0GzfxQgAg0msFiUtp0qMNFgOCSJ1KO/yXtAsPEhvu0uXIE/78WXKImTU7SFRQbIT
pQwPF03oxeMqqN59o0VDXgpV7iM7o8PUa9u/a/ICK9+7z6z0t+PzPIeyeIwiCF2i
SKjYhJvjX2hvAvwYfuhG/AVYQQh/+nIzdeCiJquRzDBPt3oy53kMbUh1zd4TWeZw
IadDuJAUFLqMcYjL13HaKdIDCYwg9/8JeIGwRvEFAlXCpQjxpeCbrB5wSO7RU7A3
3xfnX2MooI5hdlmZXlSW9JFWMJGfnNFpmwUcg05ZVPWmyihsyjwsEeQqh0VYiowJ
6kc8+ewqdYkEOn8+eOdeC/0Ve3lNKA==
=uovO
-----END PGP SIGNATURE-----

--Sig_/1RGkhcRKW4jkWv=8QwCD5wP--

--===============1517262626==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1517262626==--
