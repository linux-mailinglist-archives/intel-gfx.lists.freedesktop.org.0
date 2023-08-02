Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2199976C405
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Aug 2023 06:17:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 559DA10E490;
	Wed,  2 Aug 2023 04:17:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from gandalf.ozlabs.org (mail.ozlabs.org
 [IPv6:2404:9400:2221:ea00::3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 271CE10E490;
 Wed,  2 Aug 2023 04:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canb.auug.org.au;
 s=201702; t=1690949848;
 bh=69JA6VXWUTgRLsz7PxBrqQSG1C41fIAroKeeuYqPBqc=;
 h=Date:From:To:Cc:Subject:From;
 b=Ix4GB1iGSA5v2hQt51sg4ZZSd1w6BysdUfinwzuEvhYXjLteFn3ME6HJnO3HIv98z
 IzfDcEegzXSlU4gJyPhevVsmfZydi7MQzcsU9Ek81kKLZp9CdQUtx/3QKiFg71d8+T
 3LookLThfbLkPnvWW5vCuG6pPsFE6apRHdN+Xi2uCmEJg6q3U+GA+fHTDfEWnC5gxl
 40YN418ZrHzfC2iuI7Q21+mIJAF6GgmpTFlp7nsRXWXCLX4V8UKHkk8cBBXjc8FgWP
 xVAxROqm+PmRBGdS+ZRD4mDsH4m2Gi8WD+63mnxF+bVeguw7L+Y2cgZjqx3DC/f5ZH
 9Dl9euqbTnLbg==
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits)
 server-digest SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 4RFzGH2GFtz4yMF;
 Wed,  2 Aug 2023 14:17:26 +1000 (AEST)
Date: Wed, 2 Aug 2023 14:17:24 +1000
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <20230802141724.0edce253@canb.auug.org.au>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="Sig_/uw.=bM5hs7oyf8sUtMa/5lE";
 protocol="application/pgp-signature"; micalg=pgp-sha256
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
Cc: Intel Graphics <intel-gfx@lists.freedesktop.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Douglas Anderson <dianders@chromium.org>,
 DRI <dri-devel@lists.freedesktop.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--Sig_/uw.=bM5hs7oyf8sUtMa/5lE
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi all,

After merging the drm-misc tree, today's linux-next build (htmldocs)
produced this warning:

Documentation/gpu/todo.rst:469: ERROR: Unexpected indentation.

Introduced by commit

  d2aacaf07395 ("drm/panel: Check for already prepared/enabled in drm_panel=
")

--=20
Cheers,
Stephen Rothwell

--Sig_/uw.=bM5hs7oyf8sUtMa/5lE
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEyBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAmTJ2NUACgkQAVBC80lX
0Gz79wf46U98cGjZLm5WmRE/ttBYM4yp713DtPACxadrudWtjCksTlQXOTIlkwt4
WpWXBDGhNaI5belvGhQV4zF/4vTisKpat5ofUMqpkP31uy/e5jPNEV53OmOMAaP3
Q1QBMYlIlTiFuoVLhBfNzoi1Yj9VyFAUkv8gvxqR6SJ4WJ0OFZNZQ/cDhL957NPt
c3NHjyXmJ60E0j3Fxkv57/+8T6IukyYqagpJz4deKPpCJycIUH7/9jJgnGJ0O9y6
cheIXy9CYBeodZNH+WdY+VhG0LFMW4gN5YUDwLrWpYM4PVGDSppWEN+jVpBINE30
a7sZLV28Ru7eIrNkRZqYm5awxn/q
=hhRa
-----END PGP SIGNATURE-----

--Sig_/uw.=bM5hs7oyf8sUtMa/5lE--
