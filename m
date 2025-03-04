Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6F65A4E4BA
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Mar 2025 17:02:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4235210E638;
	Tue,  4 Mar 2025 16:02:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=metux.net header.i=info@metux.net header.b="dI4OXNu8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.133])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0A7510E62E
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Mar 2025 16:02:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=metux.net;
 s=s1-ionos; t=1741104125; x=1741708925; i=info@metux.net;
 bh=bR0IXSNJZLIIcGsMXk8jAPZ/JnE7101SkcIprGe6n14=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:Message-Id:In-Reply-To:
 References:MIME-Version:Content-Transfer-Encoding:cc:
 content-transfer-encoding:content-type:date:from:message-id:
 mime-version:reply-to:subject:to;
 b=dI4OXNu848uUe6UqfD7+yBhE0Z+kxm0toN80BAx6ACqd30SWMpg4jio8tJoOOwI8
 1+swDI/tsr3BdyafJdpfb2qcx0e8iZ3QBChimGvx4AAgKMIidYhdzkls3Xe55hptn
 k7TmNFjADGUEjcSMvxpEdpBCSk813RHZp1RqEGsKjvu1KOKuVq4t6d0CCnMiB82SG
 hCfm9/ATT2Ls1tRbvWl8EDM+4s1MDNL/bUTFfSdPncmOtVIrvxqT1R1/nsE21MmbC
 EGVj3Fd/K7OkSZwgFD1EXt3NGRlYn+2QMPWZ/JjPBaeNTvCa3ziZSTzeCjrofgOAs
 3CqnDoSUSpVsEZrFsw==
X-UI-Sender-Class: 55c96926-9e95-11ee-ae09-1f7a4046a0f6
Received: from x1.localdomain ([77.7.107.91]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1Mv3Ds-1syu0o2Ywy-013wgL; Tue, 04 Mar 2025 16:56:35 +0100
From: "Enrico Weigelt, metux IT consult" <info@metux.net>
To: intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com
Subject: [PATCH 13/16] meson.build: increase required version
Date: Tue,  4 Mar 2025 16:58:06 +0100
Message-Id: <20250304155809.30399-14-info@metux.net>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250304155809.30399-1-info@metux.net>
References: <20250304155809.30399-1-info@metux.net>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:EAwotnE58s/21inW9dALDZc+4Mt7EzeDQlqz5AF4+XW4cqHhJqQ
 LfohZKRLXB9kK7kp/UCvEths38vHnoMkD6Ad6KM2QLGt7AQKgFd8kBEGdPOWcQGxA4ItUL7
 LkgUlUzNQPRTFhnffmqpC3hJOR2kLEz0B3ldZZ38ZGwbSYVbygAL2a8G4NsQBZE5adiUXGQ
 6Dc/oJGrRzs4kRtOJoJ6g==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:GIrHQXfUh7w=;JI0EsI4IA32VmoTHCzLAgsl078C
 TseTEl+/fiTN/jpIRB1BVn6Ba9O6QkukgipQy4bziuUKrXZdx8HXUrlhY+wVzagF3xT7+9OzO
 RxQc1FFN38KqgRhBKia4vQJRB+s3m+Jt+fhmSi0eZSmnWw9KcWSGGUwWaljRXbQRv4q7oFhUC
 itcuQOB/4cSA8Qg0ZhtyNMhZ1zXChYdNGwJvKNhGN9gHT02LwsmKN4oGFz6/5yNYlgo1zoBlU
 QpaP8AerBsxV6Er7B8cH667EJ1yhTsKiX2cOfL2Coz8HP20m0ecG0i0pQvLymDHc5mhOnpnjx
 Jw7Jj6fs4JHLZzRqmyjeos5ic1U7uRF72D3F9B5h3eiIN4PG8wozikf+59eS0Hle3mN/j5/LB
 iYWD3YsxVq+kUlESKjRfxUqQwazAQe3SXx/xNZYlkGvuy4yx0ek525PlP4lFKh+0T0+xeudlg
 UAjI7II+yGTaFa6yVEpAxT6VP08AGL2p2pvn8gsWbIx1wafxM711z+iaZ3fLWq6FdjNkfLXQE
 arXzUFl8nUv0DPrvx+FqsjPCqhXSifkR1AH9Dp6A52w71EY7SZET71nOshcJ1d0lzI3OMm/Yx
 /qT00ve9GEgpSPRBzJrZXH6ZnZDlgB8O88j/ApAGLm2EIP01kGfMs8juTLmXokAmEoh6m7/rg
 pGl9KW8Lzs3w31p4UVtsaJLZ7u9wC3H+CBtTFWQn3g9aun217SdQLIrf5T791DLB5izHnMl/9
 anvnsPcUg7wUDjI9+AZ2aYRL1Ddzlu80+tGKOFTuhuMipSSA+ELzBnJ9JPMUOhZ+ddZq7pnzr
 coa37ai4kiokeu2txC7VPhuTME2ezlkJHRsHVY7YAotR5n7bxIF6cw8XdQxoXfovUKJw0WvQ0
 BgGqezYom/54l7GFFtrKdFKp1hQuj5vHBQAURNiwC5NQocwQeRn2FmeX7ueb9FPxcFxWJ7mBb
 EktEQ2f7FFVJCCx7SRPWH5vWSUAt4bwnjUlx6mvK5okZxGQxRJWEaIR2IwhYUU8rCEpp8Y9al
 a0RoONFwxtfsL3b6kaWukuB79hcXyp7wROPxdJt0selek+4M+q34oodaICXPlt2hSkDJXJK5D
 yUcDQThxuBFQdQULYrzXVhnK9RoYXADHsAqH52WkMzHdnxJ9CG5StbRR4VMeujTiqXmE7O2Av
 dcvPdu4uAbLqLSeGZ/ZVBU2Ty9FytMNF1ol2ycA8SrIsUC+H88ARzccOKwWA+QQ6jxNJRv2fg
 Fy/WG1bZGAGUXOsrU7gApSbgTLesfXB7gQ/JGRdTazG74afCp/w0QYu8rLzBIXtZ78ly/bVB0
 7dS9j1IA6nBPx7EqyzP/ykjplpVGzKwVDw5TaDb23gUs7MQa/0JTkb3v/gnpCXaaaU7Z6D8D/
 wS5smnjGmXa6cxcw==
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

tools/meson.build:45: WARNING: Project targets '>0.40.0' but uses feature =
introduced in '0.41.0': capture arg in configure_file.
377tools/meson.build:45: WARNING: Project targets '>0.40.0' but uses featu=
re introduced in '0.50.0': install arg in configure_file.

Signed-off-by: Enrico Weigelt, metux IT consult <info@metux.net>
=2D--
 meson.build | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meson.build b/meson.build
index 227ca2eb..fa861401 100644
=2D-- a/meson.build
+++ b/meson.build
@@ -5,7 +5,7 @@ project('xf86-video-intel', 'c',
 	  'c_std=3Dgnu99',
 	],
 	license : 'MIT',
-	meson_version : '>0.40.0')
+	meson_version : '>=3D0.50.0')

 config =3D configuration_data()

=2D-
2.39.5

