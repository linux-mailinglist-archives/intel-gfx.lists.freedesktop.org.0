Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5945785FA9E
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Feb 2024 15:01:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F4CB10E94A;
	Thu, 22 Feb 2024 14:01:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=metux.net header.i=info@metux.net header.b="CXTHvs+S";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.187])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6876510E77A
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Feb 2024 15:12:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=metux.net;
 s=s1-ionos; t=1708528327; x=1709133127; i=info@metux.net;
 bh=wgnxml5mGhyNoEMaEXcmhelQmgJzpY/BgYrx+3ELbII=;
 h=X-UI-Sender-Class:From:To:Subject:Date:In-Reply-To:References;
 b=CXTHvs+SlgMTHrccKDmkgaynelHVOiKjxHrBQrAJYLAL4l4HlIPiQnvSPk4ZpgoW
 w5nP/dR6sw6L/eQDb3XVlIsASP6/Nz4mqY0c/VdaXmFQGwLwGTQCrvw1Ivt1IBNxG
 xoX0CpcEXF/PjwI86w8D6SBELY/sPWGfHJLGdJ8QCLNHet09qeorZkp5cFjavlZrR
 TArYLa18MamZSHr/P8KtFj9ZT9pxxi7408Ubc5b1DE65FS6FjUl0oIx6m1v1xW1Cb
 /W45XHOo5Q7ZH2OC2JBNR0Jkx4UZSvm+RbwlqXOVuColdfmhLWLYDCaf/vrN51saU
 tfghFdolJlXJy6kayg==
X-UI-Sender-Class: 55c96926-9e95-11ee-ae09-1f7a4046a0f6
Received: from orion.localdomain ([77.4.30.125]) by mrelayeu.kundenserver.de
 (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MxDgm-1qk0dU2igC-00xcan for <intel-gfx@lists.freedesktop.org>; Wed, 21 Feb
 2024 16:07:04 +0100
From: "Enrico Weigelt, metux IT consult" <info@metux.net>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 2/3] sna: use GCPtr instead of GC *
Date: Wed, 21 Feb 2024 16:06:55 +0100
Message-Id: <20240221150656.30539-3-info@metux.net>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240221150656.30539-1-info@metux.net>
References: <20240221150656.30539-1-info@metux.net>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:U5Q0oXL0lCxWK5VpYCryns59jo1aiWksjpXMYPkZWpggkOYCbfl
 mvqAredW0K8a7Zekl3t2HRvzlncs38IqSDa4L1LF2x67NKNq74bvtLnSWUOr3ewZU2QlwhE
 baDXKZdGYW6R3T/ZK0KIRz64Lhx/ulaKvsEirfl9nQN8p296Ri272r7o2pjBz8Ty1pMnZDk
 pdtDVpPMG6SRlkirncgsg==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:aObE7MGx1IQ=;DlaP+NV0YMfCy+r6oxOYKOuMDnC
 IrXrVyBGhRxrCFepH6CQ/aTLWrwue9/S4s7FR/kiiEqYqZrdi8T+hEmKnchha39a1aLcl29pb
 rbGZuNuCmn5/INjCmm/VGb8xVdHzaoMaTG3OsDMouo6bgiP4CZRwDLZNoS8TMeMRDMkhw7YYD
 MNNEdsvzXM/e3XrS6evxKdoJXV3Qv05ZA9ITs89EC2SyDw9CMuCGrREDQWbM2ru2vqt0RoL4R
 IRJ/phf9KW28McebphRVG8snPuiw8ztE0/e3FQXPNEdgPJ1OyvQmMvZ+Ot8aHpL0wAO6Wn4Jl
 jOXOzTNeyNfZcrW9FO/dg8g38wzq60NX5Vn/h8gZe3Mmerd/uCCGH8eal8dpQ6wOVIpqX5X6W
 hRPwAg93qlWB28g20bwJPbU5vIAk6SNf7fJha8Yu+reCrtApEE1l8Ly0a20oqPkvyZr6ZkOhr
 DmfdDbseSjG7UbXYY8q4WRf3Qgyf9w56dNYoedbI+KGY6MV3WFbMc38fZErg6ijleSpYncOOR
 XDKQ1NNWXvp01YnnZXTkJouCZli7NqRIDeGs91IABlEwR73jXUnyeo+S/lGIZRl8pi19GHWK0
 E98An/sjCYMKAJbjtzZhQRBMjJ89KrRajRs83J7DjN6zbtOX6ucu+tchTr0x2LbkpzWOVq51f
 Yrn7wLBUzYET6OzvtjSUFBxO6G2AeUdgkJ4zXEws7NCxB1KWkTv4Vip5vZQ36OiexLFjzNLHW
 arxWd/IDtJSvmh3T1rFhJWZ9dwB7flp6+ZQzENhTqGXX2b2QelREVk=
X-Mailman-Approved-At: Thu, 22 Feb 2024 14:01:06 +0000
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

