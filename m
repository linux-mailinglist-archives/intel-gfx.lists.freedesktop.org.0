Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0A1085E6CA
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Feb 2024 19:56:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5CE010E7C3;
	Wed, 21 Feb 2024 18:56:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=metux.net header.i=info@metux.net header.b="X40FP711";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.130])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 87D8A10E7B5
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Feb 2024 18:55:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=metux.net;
 s=s1-ionos; t=1708541751; x=1709146551; i=info@metux.net;
 bh=wgnxml5mGhyNoEMaEXcmhelQmgJzpY/BgYrx+3ELbII=;
 h=X-UI-Sender-Class:From:To:Subject:Date:In-Reply-To:References;
 b=X40FP711uNYkaTzQpE7Jc8wO4LJPCpmRcVAQ05T5Gv1QKcr93ySEb+cqDNL7dCm7
 pONefcqh9AHYL28Y6X8Cp6qLzBuwqxTfP8GVe7GvXbV4uu/68Fbej+YGcu3kmyDz+
 wZ92Tc2Y2+crOwThlop1+9rY+oljDSo0BOM/IOx2h6T+yc7b0ulp+uKHtPYPkF79h
 An63bHyPuq7e0VLDyGDdVkPb06tdEtq6pqVbf6POsN/rJdwD/XXuUPgKzkBH8ZtHJ
 bzhOZ93IvIgYP7ItNaKSjiVatKzVcK77WRmnfS1/zlKQtfd1RFoRQ+S6zv0D8LX5K
 zDyq4VozWfLJcaRoCQ==
X-UI-Sender-Class: 55c96926-9e95-11ee-ae09-1f7a4046a0f6
Received: from orion.localdomain ([77.4.30.125]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MQ8OG-1rGof03thY-00M5w5 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Feb
 2024 19:55:51 +0100
From: "Enrico Weigelt, metux IT consult" <info@metux.net>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 2/6] sna: use GCPtr instead of GC *
Date: Wed, 21 Feb 2024 19:55:46 +0100
Message-Id: <20240221185550.11943-2-info@metux.net>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240221185550.11943-1-info@metux.net>
References: <20240221185550.11943-1-info@metux.net>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:8rYLYnLnBmNgInqplB5+Sh1xO9RGTl1CbChQKxqZ8rBNQiY9uxL
 NQf1itTonyEIEnNkHBWJqa1wneUjBPL9IHv428RA77or/OdZiBLuFZEkB6V5H98tSfAwlTd
 a4ObiPB/wrYPOBJiulGZqRskp0+ff7ZBbiuhMM09XenJo7vaHn7UDbjdBaFg3f/nPculo0M
 0kj24eY1xLW+FYWkFa1sA==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:Syy1vf6d4ps=;Ua6y/YDoM+xFqMALFRr3mWbOefI
 XNa8wnkcctKYUDIBm74fWZVcUqXEkAdg1nzn1m1HkTQN15RgkCIbniKGuZ/3sFW7EEsDYGh+c
 wE3pQlQ7kDMYSHWQCZsDPsdust5w+7p0zCLRvwXJ1tnmTEjvtvRaErPxDNMt1iBA1s4alhaT6
 MKf8jrT5yIpjX796CHdeJuxdV0eKXzQnPYzq1JIqJWPOt1ijFqUM83cy8qaqFUstBzpkw69KC
 7UJ7K3DqewoNxT79Dsf45XevXwYDFYo+YGAXnI07y1eUtxCMCMrWfSs2b7NQxZy1Y3/nDW/VC
 IUW2yY7Y6DDmAhiusa78ac+XDgcep6j3oH6l+JjNJImZObSZokcUb71X+10YWfxmTiwOopR+B
 lzkuMONQ5YZgWnBd7yOTosk9bnLemardn/fUli8IQ1tDvFqC1VBeNV9PJDCQTtYKVMSkAvMxo
 F31QMphvV2A8+sJJX5tlrOm5j0e/wNIdMlmkg7qmangBeq3rrqTI3OwqUQQW88QOteW+pa4Mt
 xBdxPpO5yZNdij5hpKhmllesGqFc2Gc+uXaGJ/pBUM1Or00Sb8e0sxOfRupFOYu42qllGs2pC
 yBRM+0ssOacgfl8QxkAumDPOpAg78OP9u9x4/IPV90hsqfFMgOLvXWsd63VXJ4QdgB2ud8PMX
 sddHQr0jroIkbzaMfftIIfYYmS1ZakUagf7S9GpWSYeSsGzu+PEg2YpJGfGmcJUisO+5u5Ivb
 1eMxrmnEZI3cX73D/5VYecM9+Vels92ERBCxJQ8/p5FjqwAs+jUae8=
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

Xserver includes have explicit pointer types for quite all kind of structs
(at least those used by drivers), which are used all over the Xserver.
Thus it's much cleaner to use those everywhere.

This commit also clears the road to fix a horrible nightmare of hacks just
needed to circumvent naming clashes between Xserver and Xlib (affecting al=
l
DDXes that are painting on another Xserver): we can simply rename Xserver'=
s
own "GC" type to "GCRec" (the usual naming convention here) and so no trou=
ble
with Xlib's "GC" type anymore. Once this has landed, we're free to do that
without breaking this driver.

Signed-off-by: Enrico Weigelt, metux IT consult <info@metux.net>
=2D--
 src/sna/sna_accel.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/src/sna/sna_accel.c b/src/sna/sna_accel.c
index 89b82afa..90a61ab3 100644
=2D-- a/src/sna/sna_accel.c
+++ b/src/sna/sna_accel.c
@@ -14300,7 +14300,7 @@ static void
 sna_poly_fill_rect_stippled_n_box__imm(struct sna *sna,
 				       struct kgem_bo *bo,
 				       uint32_t br00, uint32_t br13,
-				       const GC *gc,
+				       const GCPtr gc,
 				       const BoxRec *box,
 				       const DDXPointRec *origin)
 {
@@ -14412,7 +14412,7 @@ sna_poly_fill_rect_stippled_n_box(struct sna *sna,
 				  struct kgem_bo *bo,
 				  struct kgem_bo **tile,
 				  uint32_t br00, uint32_t br13,
-				  const GC *gc,
+				  const GCPtr gc,
 				  const BoxRec *box,
 				  const DDXPointRec *origin)
 {
=2D-
2.39.2

