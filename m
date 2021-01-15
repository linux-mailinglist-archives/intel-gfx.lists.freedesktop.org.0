Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D5852F6FED
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Jan 2021 02:23:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7776C6E14D;
	Fri, 15 Jan 2021 01:23:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ozlabs.org (bilbo.ozlabs.org [IPv6:2401:3900:2:1::2])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E00186E14D;
 Fri, 15 Jan 2021 01:23:17 +0000 (UTC)
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 4DH3N04yNjz9sVr;
 Fri, 15 Jan 2021 12:23:11 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=canb.auug.org.au;
 s=201702; t=1610673794;
 bh=HuR/UqsyYV6V2u8mtzj/Ev7wCFWabBAH4XNDWYxTz6A=;
 h=Date:From:To:Cc:Subject:From;
 b=Ee+XO8v5HN+j72pKq6l6bqD93UKVTfLr+C9twDIrMFrBPj8rU9yo51mQv4lS7Zl3Q
 RrihKh0wbRhJbjXge1mpqc3KM0gboWpb2AAznpn00ntXyYDx42ikRo9zSFNc3AtClU
 Iet8U61KPV/xfMhbySBlg2b7B7ov4Dars1J9OGw9Xnkc2IYiqXFMECl5UIMFaT1d/m
 J7KEbm7uSbMU/N8GZenMIZKR1igONxvW1cL4PW16wjcQhbxxHqiqNFUcemqJ9LgrD9
 PlTRUb4b+OzavmU8WDJ1LLetru5wp3QHWRuOa+viWVN2QI+uxib65wyEkP2UV1K+j3
 gRrpSGEA3gFPA==
Date: Fri, 15 Jan 2021 12:23:10 +1100
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Daniel Vetter <daniel.vetter@ffwll.ch>, Intel Graphics
 <intel-gfx@lists.freedesktop.org>, DRI <dri-devel@lists.freedesktop.org>
Message-ID: <20210115122310.7dd6bb11@canb.auug.org.au>
MIME-Version: 1.0
Subject: [Intel-gfx] linux-next: build warnings after merge of the drm-misc
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
Cc: Nirmoy Das <nirmoy.das@amd.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Darren Salt <devspam@moreofthesa.me.uk>,
 Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>
Content-Type: multipart/mixed; boundary="===============0421715835=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0421715835==
Content-Type: multipart/signed; boundary="Sig_/Vpa+x8VRDC3FcD559.RaF=y";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/Vpa+x8VRDC3FcD559.RaF=y
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi all,

After merging the drm-misc tree, today's linux-next build (x86_64
allmodconfig) produced this warning:

drivers/gpu/drm/amd/amdgpu/amdgpu_display.c: In function 'amdgpu_display_us=
er_framebuffer_create':
drivers/gpu/drm/amd/amdgpu/amdgpu_display.c:929:24: warning: unused variabl=
e 'adev' [-Wunused-variable]
  929 |  struct amdgpu_device *adev =3D drm_to_adev(dev);
      |                        ^~~~

Introduced by commit

  8f66090b7bb7 ("drm/amdgpu: Remove references to struct drm_device.pdev")

drivers/gpu/drm/amd/amdgpu/amdgpu_device.c: In function 'amdgpu_device_resi=
ze_fb_bar':
drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:1109:6: warning: unused variable=
 'space_needed' [-Wunused-variable]
 1109 |  u64 space_needed =3D roundup_pow_of_two(adev->gmc.real_vram_size);
      |      ^~~~~~~~~~~~

Introduced by commit

  453f617a30aa ("drm/amdgpu: Resize BAR0 to the maximum available size, eve=
n if it doesn't cover VRAM")

--=20
Cheers,
Stephen Rothwell

--Sig_/Vpa+x8VRDC3FcD559.RaF=y
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAmAA7n4ACgkQAVBC80lX
0GwDEwf/fmr7nK+fiyHfcFlaNUOW7oDnJ8N3XqSam65tbF5eqAFACd79w+UrHr3l
nRofuChmVJ1cXGKC0HegELL7XakKuqinfxuqOle4k0lqkN+ZRlMlUo99TQDfEY+J
WSXhCkLYf6jSwUtpg1WEmCc81ljhcJy3HonWN/UqlFdC9oSDg5MvTQMfakXl0/SO
kaGp/Gjw7+w99zb8gZhofC+jcow6Uq7qftXn4vRsrL4pUAjbQu/dq4YtExewXBQs
qAIX3yKN2sSTz6opGWFnPH+grzf8MAgfIO61vWfHsbfxt0WAwsA+KmnQAhwU7sxJ
ZpGvaBUlk25Ub7Kv6JJVDyHtTdc0Xg==
=Hkir
-----END PGP SIGNATURE-----

--Sig_/Vpa+x8VRDC3FcD559.RaF=y--

--===============0421715835==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0421715835==--
