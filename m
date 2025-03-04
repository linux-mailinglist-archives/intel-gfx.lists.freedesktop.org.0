Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EAEBAA4E4B1
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Mar 2025 17:02:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF64F10E62D;
	Tue,  4 Mar 2025 16:02:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=metux.net header.i=info@metux.net header.b="b91wZVmU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.134])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71CBB10E2C0
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Mar 2025 16:02:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=metux.net;
 s=s1-ionos; t=1741104122; x=1741708922; i=info@metux.net;
 bh=PjiZJyuEuf8/ACqZBkxdQvi+n60spUFhl+lBEZXmhCM=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:Message-Id:In-Reply-To:
 References:MIME-Version:Content-Transfer-Encoding:cc:
 content-transfer-encoding:content-type:date:from:message-id:
 mime-version:reply-to:subject:to;
 b=b91wZVmUERXd+Hzv7lMVpHlBkeLxUcG404hbjfvJBmd32ybhCa2yKhb/lRHHo9We
 Q2etmcW/HfVyibWQ/lI1sOBRjTpRbl/l8hdMsdVixPfhJbxBTd7+ijgSoCsw3PMlL
 qBTm98cMxu0CXBDdIf/qS8V4Bey6fsbI4E+9FeqvHGKVORiUmYjvuOM919+fd906K
 v3wTicnsGd25fk2DsBvIPsjXSfladWuJIoT68/8bKIdOwWzsrsZbEwWapcd7ry9kl
 FjI5zI9tcWRseCtiJ0wU3/MiR3BpQJh3GX9PImG0lp6XmtsJCx01c5fMR7dCCaFZj
 rpls54BC+Kwkpjf37Q==
X-UI-Sender-Class: 55c96926-9e95-11ee-ae09-1f7a4046a0f6
Received: from x1.localdomain ([77.7.107.91]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MeTkC-1tFKvr3T4m-00lBNV; Tue, 04 Mar 2025 16:56:31 +0100
From: "Enrico Weigelt, metux IT consult" <info@metux.net>
To: intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com
Subject: [PATCH 07/16] gitlab CI: add pipeline for building against various
 Xserver releases
Date: Tue,  4 Mar 2025 16:58:00 +0100
Message-Id: <20250304155809.30399-8-info@metux.net>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250304155809.30399-1-info@metux.net>
References: <20250304155809.30399-1-info@metux.net>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:TdEdbqVrplfGBW2ExiZbIV6nibLdWxeA90zDJG+Eiwu+qd68uLW
 cVFUSKMfX1We82bCsC5pxVAWWTTmvWUtS82Fv+TfBcbA1bHzzjERbYhfbzzveVzy1PjDxIT
 y3rIEnl4hfSvhBpD3nCnRMJwX+A0if8b7qoEj/1ZHlIushYF8HLr3UshC+/WXilZ7RsnAoU
 fsPf9IgH7ZFAOD7IOqucw==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:HxDi+LRa/Vw=;W2ky/h4Ic6Mslozhq7YsM2Ou3OI
 hToAK6AsbTyVfd/da4JhgUZPn6vfktYSdkFSn093D6SVLLg2X3ymE+NQvZ2pzQnkySLhDdPV7
 yiADgkJvYysgwDCuWOxv2UQW88WjAjor1i/G7gCiQQcoKQTVrAq/6X+bEiXw4nTqCyUU9h89Q
 r1sAGq6EfoCZTMxo4XqnWaj4OJlgWUtK/jY9NaGcOl0mD5J8HGBhNLziD34EDivYpBAqulIzT
 2cFA33waoJ5fZmDLk1UxD1v5kGpw18nU6C49jJX0YQtGzK9LE5hUGqIMZ7sylNEiS0X05Et37
 ybFsQ4v78xyxzMthj7lpybOyc8irMWwVRZUstJ+87Q1Gm9DiF78kZexifj9j7iQiMQRmV9PEg
 YVrMa/O7TQra/kFMWdDRKarFDbPBDRgKwHEwuozN0vn9w85nGhzAJrk6hOPqUBv5sPtB6p0Py
 TH+EtvBauksVHY77hOAmjKjlsJhnK+njUaD117fjY+BlCIedsh58lQ60BjWfnPBhO+OORLQ57
 3l7RPqzlpMTT6WqRfkVLJSiuF4E8apYzigaw6WUToKK2ZUQD+A4LvgK4lWXkav3hImdfUNBL3
 G/gX8avjSyKfQACkqYM0j3q0T2HNwYr2T4y53Cf9jnhVoce9qVfEisdbVi98N/0VW0qaf824n
 24GTJzUrXcnSy268+iMX16jJplDwgQUPJgxjkNzT0kLJ/+jItFPcL5oDWo0HgPZPu4ZZEhtik
 Rdn2+5OYJb5kqFXVaDMe3ovs4MukHEJqXNGZlq6idKhtfJbSKZ1SxYceyBEPoq2hcVLZwYFp7
 28ngLZjyCbgtIg+8BA/F6JT1NshTx1at4R0/14zr67B08YCbDCEOl3wFR8siK2kwE09WMy1pv
 tJBaoi9TnN3zy57tvZ1qC/9wTJnMPFMthEIJS98CDvIJc5gZ3C51wCws744ujFLamNZ5wu9Fj
 O7krLR7CqdMzMQhLHmUiLredZkicL399vNg7oLMY+cpmbLfxVMCSHCn0aE23SoPEiFdtKIwvv
 Qt4IbVQhvc6r5vezoIABvepB53EibYU/K2zdafnZc8IxJh2WQNOufgpOyRgVhiyIgYXV56Wgy
 JWd/mKlpaN0ixR3X/kUtYPmejtbcxNGSWFEu5rKfoyf44j87rklw+/GwGXDWAQe89usG8sxVf
 j8IKCL1VfPteDf4j3fMrTht3pBIG5se4E9B89Cze5rpFaYOaY3DQ7FSS0DHUokjamc/iQRp/M
 Q6tDoB7PoYane/eJNyc8pgSgbLFKndbL+EUapm+qYMA0mL1McZbG2MyYqzSJKRA8V4UN3dYmn
 bXOLmLH5FhBO8OXlgRuetsniMrouTT5xTfIlQtBSzZ+XgcHfZO2cPDtbP2Az2u5J2aAFOoaqo
 mjZN8ACFlm43y2hg==
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

Adding a gitlab pipeline building this driver against Xserver major releas=
es
since 1.18, including current master branch, on Debian as well as FreeBSD.

Signed-off-by: Enrico Weigelt, metux IT consult <info@metux.net>
=2D--
 .gitlab-ci.yml | 5 +++++
 1 file changed, 5 insertions(+)
 create mode 100644 .gitlab-ci.yml

diff --git a/.gitlab-ci.yml b/.gitlab-ci.yml
new file mode 100644
index 00000000..5521ff67
=2D-- /dev/null
+++ b/.gitlab-ci.yml
@@ -0,0 +1,5 @@
+variables:
+    FDO_UPSTREAM_REPO:  'xorg/driver/xf86-video-intel'
+
+include:
+    - local:    '.gitlab-ci/common/xorg-driver.yml'
=2D-
2.39.5

