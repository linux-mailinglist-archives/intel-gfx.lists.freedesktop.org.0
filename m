Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C4A244C9A6D
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Mar 2022 02:31:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8057E10E63E;
	Wed,  2 Mar 2022 01:31:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from gandalf.ozlabs.org (gandalf.ozlabs.org [150.107.74.76])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A410910E63E
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Mar 2022 01:31:36 +0000 (UTC)
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 4K7c5q44W8z4xcq;
 Wed,  2 Mar 2022 12:31:27 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canb.auug.org.au;
 s=201702; t=1646184689;
 bh=AvxIclA+HfdtF6uRf9ReUyXIXfyCHwRpdXWQn0y/1Iw=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=sxkcZ2xh/RJo6wV2bcrx94cmsk3Yx1Z8BEbYrfX+lRd8lcHQ3bPZcoNLUYjPgonUa
 IjYal6WhTHU+q3xm8JCSUsJ4JjjDlqQZLkmLduVxoaVgmgCK8i6hxv5fogKeVCZrfx
 e1tnWvlcWbdgnqyZ9xC7F/INBMbW5/HfEkSwVMkBjUZCTK8qJmkjOlLWBxg8QEOud4
 WvlQlGer9RnbB9+0QdWn0ia77P3Cr/xe9EzoM/f3GIFEuuZFBdgcQw2o3w1RnRj9Kl
 jLTLuuqsVIxCC5YN4fBl9mW/QQGPMUKnMpsWt17h4uwmgihyqult7cnJrG6VVcaajR
 UhrPUSgBp4BVA==
Date: Wed, 2 Mar 2022 12:31:26 +1100
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Daniel Vetter <daniel.vetter@ffwll.ch>, Intel Graphics
 <intel-gfx@lists.freedesktop.org>, DRI <dri-devel@lists.freedesktop.org>
Message-ID: <20220302123126.65bcbc82@canb.auug.org.au>
In-Reply-To: <20220120142639.02c54ae9@canb.auug.org.au>
References: <20211117134926.1d339d71@canb.auug.org.au>
 <20220120142639.02c54ae9@canb.auug.org.au>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="Sig_/vMoEJP4dGQ_c=PVNw9nf/n2";
 protocol="application/pgp-signature"; micalg=pgp-sha256
Subject: Re: [Intel-gfx] linux-next: build warning after merge of the
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
Cc: Andrey Grodzovsky <andrey.grodzovsky@amd.com>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--Sig_/vMoEJP4dGQ_c=PVNw9nf/n2
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi all,

On Thu, 20 Jan 2022 14:26:39 +1100 Stephen Rothwell <sfr@canb.auug.org.au> =
wrote:
>
> On Wed, 17 Nov 2021 13:49:26 +1100 Stephen Rothwell <sfr@canb.auug.org.au=
> wrote:
> >=20
> > After merging the drm-misc tree, today's linux-next build (htmldocs)
> > produced this warning:
> >=20
> > include/drm/gpu_scheduler.h:316: warning: Function parameter or member =
'work' not described in 'drm_sched_job'
> >=20
> > Introduced by commit
> >=20
> >   542cff7893a3 ("drm/sched: Avoid lockdep spalt on killing a processes"=
) =20
>=20
> I am still seeing this warning.

I am still seeing this warning.

--=20
Cheers,
Stephen Rothwell

--Sig_/vMoEJP4dGQ_c=PVNw9nf/n2
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAmIeyO4ACgkQAVBC80lX
0Gx+ygf/U77Kq82vqHGRevDhByIucjbzp7gjA4KTD9HMV6uB7l37GEj5jXu/LC84
KypgkQv8xxmX4ZNmwAZ3Yi591KGJx56QeEZCnXbprkXlHWq3gRPkDIlhMC6vXlNx
uspG1ZL9Z2miNhb15n8MmyUTQ7sTYYXsvdOUFwYL/WdFC/Hc0ouS1dBBfe/nOAqi
d92adK6DOWSB31N6XBEAAms//XgzULph/+QjK8NRujQqYNUmVQndOeGq/E+cwU7u
iq+Bcf5s1sWiHQ/7LWCd5ZklhYlQTdorqLSB7b/0A1ls+rxH6NmnOcyas98sr06+
GeMSeIjC9qxw3QUIDOYIcylU9FbYGw==
=Yq//
-----END PGP SIGNATURE-----

--Sig_/vMoEJP4dGQ_c=PVNw9nf/n2--
