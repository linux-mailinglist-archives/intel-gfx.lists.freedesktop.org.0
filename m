Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2649E85E6C5
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Feb 2024 19:55:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5823A10E7B4;
	Wed, 21 Feb 2024 18:55:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=metux.net header.i=info@metux.net header.b="KJLLs9v7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C35B510E7BE
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Feb 2024 18:55:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=metux.net;
 s=s1-ionos; t=1708541751; x=1709146551; i=info@metux.net;
 bh=bWZL2bcZ4CZRBAoTUwUgIB5eFmzSmLTU14A5BglO0eg=;
 h=X-UI-Sender-Class:From:To:Subject:Date:In-Reply-To:References;
 b=KJLLs9v7vP8Nz73eIGt7PE7BLZJEvefh9KmjoNeSwlpl7qUHlBsCM7NyVUzKBuf3
 GusjCbcuifgpC5c5TaqfEio/xGA3JoNVT062Ww1EIxpgXccTXRDsbGvUCu+o25RTD
 hYF3XtC9gmWr5lY8Cvt0/bz1HzLjF1/YJ2ryZe8iEpTdBihgLFwYjO6uks4QBGUgm
 XXioB/VPAtRm5ASoO5jrWTEeE76/Vdlw5XCywurJD3bKkm7XRtVrhwj7z92V4gEAl
 fw4vP+ILiwr7d7ssEs5Hqvcr7SZrHMfVySAUi8DO7BFvLOx8IfxJTQ/P0RXSUUYXL
 FcTLIZltKfkcqBdH+w==
X-UI-Sender-Class: 55c96926-9e95-11ee-ae09-1f7a4046a0f6
Received: from orion.localdomain ([77.4.30.125]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1Mm9NA-1rCdk70HQG-00iBBF for <intel-gfx@lists.freedesktop.org>; Wed, 21 Feb
 2024 19:55:51 +0100
From: "Enrico Weigelt, metux IT consult" <info@metux.net>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 3/6] backlight: use system() instead of System()
Date: Wed, 21 Feb 2024 19:55:47 +0100
Message-Id: <20240221185550.11943-3-info@metux.net>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240221185550.11943-1-info@metux.net>
References: <20240221185550.11943-1-info@metux.net>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:Wl2GWnyE5bIedYbKVCxjPXqG1nf/t/IJ82c4OSJZzYsD0A5Z9ox
 qtCqt998YwxFw/GjQ/voVeMDFCCDssPNMt4g+LdDol0N799V4pFwiW4wRIUnpcete1tPVEg
 CfrGdaY4vlOeOr17Gdfqi52oJNGlm5L7n5TJetzBL09e4k8jLwoU9M71SnlFntM+n75SiVX
 4UO/kR3sj9FV3gTCaX6Ww==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:x0NVoimVYG0=;4v+zc9GURQAXxEko8PokXd4QDTK
 s+CQPmq+TlImq7U9IX13TRtP3996WoRqtlQu1cHHnR+BfaIoL+2sLf8HtNEBb5zSw4p35OMCK
 BiPFI8gMLDzgaDRW50DEsNGSpe7LA0QZw382bfuL2bZuOIKTUhjY8bvVXrY1jWwjduCBxFboP
 3iALQq51pkIcasy79x1r7TsVDuUAqw13Y/qCUVObwMDFPbDlXnJO1wwrwukm7Jy/BvsHOX9r7
 9MSRe9wyti6YaewwPMn4Z1CY8UnkI16jYzEuS18OV7AmZDtOaOqdr4nT/fbr4Hl48WPb65H++
 n/h+dSzU4Ou7UxJWSBRr8DZL16NGzZBGJv7dVrVhxg4fa/YbKdhjUjO6InUKfUNBNyOTt0IrC
 4AuF1ee4ywcv623D0w5J3IYcgn8E8anMzfS/PFqHs9gdVsUz5wOM9osD0bSZbmstY8Kf1abGu
 gj0vMtN24lgDJ/YUxVkabv/7H2EEdcOB1VKbxxRz8Tls601GZ/357m7t24qiJCACDp6NB7HqO
 Z4RVzrCigGBZNqzWUeiMsxHJoJ4mGJmAm+u81UQVGrgAMmapg/N+BJcOBUYofmIXKD5El69GY
 NVt9mrYjw6DoyoKO9SyasnW0rDFu0l/UWyVTXWqxGdiDosozmF8aDh3pFJl/4sZcaWyyX9Ybw
 pc3UOtti5NBPc/dX605WWJGm1/awNpkr3FuWpLuJBm7pXehEdpH2oviOK/SAtnsb5Fc4VBwl3
 hCERX2ph4KufoUBz/ttOhoPV2HTatu12j732ZZ7mvUYB5Kw4QVyHkk=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The Xserver's System() function is a special wrapper for calling a program
(xkbcomp) as an unprivileged user, when the Xserver is running as suid-roo=
t.
(which today only needed on a few platforms, eg. Solaris). Therefore it's
not suited for being called by arbitrary drivers.

In this specific context it doesn't even much sense, since it's just used
for checking whether pkexec command is present at all (and just should be
used), while the actual exec'ing of the helper is done directly by fork()
and exec() syscalls.

Thus we can safely use standard system() call instead - clearing the road
for dropping System() from Xserver's public/driver API.

Signed-off-by: Enrico Weigelt, metux IT consult <info@metux.net>
=2D--
 src/backlight.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/src/backlight.c b/src/backlight.c
index fcbb279f..f416f2a4 100644
=2D-- a/src/backlight.c
+++ b/src/backlight.c
@@ -366,7 +366,7 @@ static int __backlight_helper_init(struct backlight *b=
, char *iface)
 		return 0;

 	if ((st.st_mode & (S_IFREG | S_ISUID | S_IXUSR)) !=3D (S_IFREG | S_ISUID=
 | S_IXUSR)) {
-		if (System("pkexec --version"))
+		if (system("pkexec --version"))
 			return 0;

 		use_pkexec =3D 1;
=2D-
2.39.2

