Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E1A24B3EBC
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Feb 2022 01:54:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D51D110E156;
	Mon, 14 Feb 2022 00:54:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from gandalf.ozlabs.org (gandalf.ozlabs.org [150.107.74.76])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F83210E156;
 Mon, 14 Feb 2022 00:54:36 +0000 (UTC)
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 4Jxm2Z6F4Nz4xcZ;
 Mon, 14 Feb 2022 11:54:30 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canb.auug.org.au;
 s=201702; t=1644800072;
 bh=ocDwSD7bCblHT7UKg4UyZyYXJz6H2kFovkRwt8OFd6s=;
 h=Date:From:To:Cc:Subject:From;
 b=Q7AkeKwVpZQQLpsEbGTIVpiDpbCCUwinB6K84h7PA9E30i5ZdghjXzGEPhOv6LOr8
 Ksk7VcEabKszu7um9/05w4C3sZ+ELh/Bs/Lk5LsY8hzt3OZuusFmrofH6+5sdi8xPa
 44PklDXSdL4yxjAsB34rZhIzS5rALd/XIOzOH6y/1IKFfKCZvj+DJozcyIW1rTVEPO
 xGaBOEtFumjN6+4S67iTryE+lLkANbIpGEc5fOO3TwSQIs2ybgsSr8TlqHQIdM17hp
 fytwLo6ZDioSx4Pz3C9DI6oKgNNC8zrjMpxFugSoPpncGAhPhYshcKEkSiVEQN6xeV
 vGWo0vHBkzpXQ==
Date: Mon, 14 Feb 2022 11:54:29 +1100
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Daniel Vetter
 <daniel.vetter@ffwll.ch>, Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Intel Graphics
 <intel-gfx@lists.freedesktop.org>, DRI <dri-devel@lists.freedesktop.org>
Message-ID: <20220214115429.16613f3a@canb.auug.org.au>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="Sig_/eURzRz08=q3T+0BGJrhPfB8";
 protocol="application/pgp-signature"; micalg=pgp-sha256
Subject: [Intel-gfx] linux-next: manual merge of the drm-intel-gt tree with
 the drm-intel tree
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--Sig_/eURzRz08=q3T+0BGJrhPfB8
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi all,

The ongoing merge conflicts between the drm-intel tree and the
drm-intel-gt tree are just a mess, so I am removing the drm-intel-gt
tree from linux-next until you all can come up with a better way of
doing conflicting development.

--=20
Cheers,
Stephen Rothwell

--Sig_/eURzRz08=q3T+0BGJrhPfB8
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAmIJqEUACgkQAVBC80lX
0GwfJQgAiBwRMOvQL4nvcgvQ1I8bX8G+hJle/DiDdRxFid0bhV6v18na6V6oou7K
s7jgoofbAedlX3bum2KhJdSKotXcirH8BGne2981f6f8r+xQIcmacI8lPlM54JXj
Kv7Vm3cWf+/xDz6aOXEWmyV5YNBF6PjZO3x9z71MGcGMyHTFY+MtfPx2X5eQuquG
2osq7t/bAPhqKo4FNhQNUoFHGpV6e32FvHT+GJRYtY5aGfp8For9/IfWpndDrz/q
znZka0mrJD1OnLcHe4GDgbVrurmdKiJKP7IJ6F7ucIvusfMuOs3iZrVGLWOHTyWw
cqhV1xQSkDGgK6vhpuriK6Xk9Oxrig==
=5nDl
-----END PGP SIGNATURE-----

--Sig_/eURzRz08=q3T+0BGJrhPfB8--
