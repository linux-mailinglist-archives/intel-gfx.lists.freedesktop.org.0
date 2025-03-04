Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A93BA4E4B0
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Mar 2025 17:02:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8834810E62E;
	Tue,  4 Mar 2025 16:02:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=metux.net header.i=info@metux.net header.b="02p/pp6c";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.134])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4898E10E62D
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Mar 2025 16:02:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=metux.net;
 s=s1-ionos; t=1741104125; x=1741708925; i=info@metux.net;
 bh=KdZuWN9Fp65+jiAwqR607ECfZ0trNaC2EeK2Rsd0PNk=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:Message-Id:In-Reply-To:
 References:MIME-Version:Content-Transfer-Encoding:cc:
 content-transfer-encoding:content-type:date:from:message-id:
 mime-version:reply-to:subject:to;
 b=02p/pp6cRhi1T9LD3XU9sPJMWHSTqhh5XRJQZjhlYOP8jqvgKjVoGoiARZEiK1Ie
 6T6xA/ByZ6um15KhpXKDDd3FKxACjhtgc9tpTyd4/UYlo685M3RevABZWc1b6pGXY
 FPDMofqU87Phxq9IgCsQjSRaHeJg/7SRyf8dSETsiGbgrck1tPBw5SEsi5xQAZvaK
 aza6ZpyS3Y/rtzgTRIZxHr96rR4zKRaGCLtR069sJ6chOYuC/+AedeYupVyiBkHeT
 GEHvQ1IO81DEN38k7yH4JcWqHgEXaivRyI5Qb0qAppEjiJbOH9wjjE9NuBVGrP3vM
 0NTIO/y61mklx1PgOA==
X-UI-Sender-Class: 55c96926-9e95-11ee-ae09-1f7a4046a0f6
Received: from x1.localdomain ([77.7.107.91]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MYNaE-1tkaoq0eqw-00Pfyl; Tue, 04 Mar 2025 16:56:34 +0100
From: "Enrico Weigelt, metux IT consult" <info@metux.net>
To: intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com
Subject: [PATCH 12/16] sna: use xserver's bswap_32()
Date: Tue,  4 Mar 2025 16:58:05 +0100
Message-Id: <20250304155809.30399-13-info@metux.net>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250304155809.30399-1-info@metux.net>
References: <20250304155809.30399-1-info@metux.net>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:c2pjBM+W3XKFVwr4oR8RJoF00ls/JRq6tsCX5M4WcUMrZESjDHp
 ghTkk4JzPsWlhG5r8OGmSlG/51rSXb8A3zvrEF4RSVb62+k5nIr153t+mVRhSO90L6owDjA
 4eDn8zMTz/sV6UXmkb+iOktAYWrk58o6pi6w4QBmRxR8Jyt4gktMuCfezZPpsaxeT7RJMdl
 pfY6P3LxRwuEukQ0fLslg==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:SUFXpOHsiWs=;rEig1tMkiZnpGdm6E/p03Ms3kA1
 QYAJd1JPUF/Ijj0wUXaFNJlFKNadoSjAIWlCaNS2fAG3zdmQ547pkeees8sbsUq4JJ6QtNf2d
 bK4/GR9UPtQ3BSDVaMPeYwuiEbKLjm63Mw+xwj6ScLN/t2CeKsIqmTQahxZeYZMKIk/oRVoy0
 E1ETQYr3EUs7a9xqjL3NncZBeih1Xqt28XbHHBUEp7FJ+srw8ujdUQLdbVn6Y6n1h8KngikH+
 o9sgD25lO7FHNgoO06BSUIsbCMaHd1hMAIjCyAZFb8oBccQxdx7PvOUWG0T10uaNA152UuJvb
 VEG24c5RTPcP0kYz2zVsERA9XlmdILd9IrqwERdRLTF1UWiw4ahnzCy2SLALwpejs8VYbpZui
 8OavN2pg8/aTH3JNc+lUoqtBgC3PSsGHdyXDwbT1pYdAE1/ITI8zUonv/GndkzCzY/5HO6UpR
 hcUHvc2fKbtCXM3LEA2g/Fn+aeSJ1EwDYcs2/1neEDsRvSFLFwbG95LNONAdfstpqk2K2T+fg
 18TTvdjtzHnZAMEHKcsPhEdwqoOfvzoqJYM7NYSV32FUn02RzIWX8/D2TE7L+hs5UdmCW95jF
 t7irScm/dmCmp8uuiRHsaBVSZq9EcuxAMo9jdd9bMsXGJNOOeycYvH7L3+5E0Z0oS3+s2DOEq
 BitkjY+HYguVELTyG0V6BZ21x1lJbJN2LILyMkHvj69SwFzgZ/b1oeOyseiOUAV1DAWxho7pG
 t7paDKhkjRFNMAEgXZu/On3SL1BkdbzA91UFGu9bscQU6UCMq88MXd6OMRCoJO218/Gsq83Xw
 FDHEQqyhm7DwJUIhiKYZSL5MHzx15/8YLJRJTUlq92T1S2WaveBzk/qQRkMzUIym1ql/WyvcQ
 iDsa1izJzX2dNsm+eNQ6b73wDCEsXD+0EsidJBhZphwauFVRwocZxTlnxPFWr3CgcyJHYx8Nh
 eE0+hpJQQvaKPiOU2gWt0ja4vF15SblowvXkvxIy6vKboCjkPBahonRKfHBHWbIF0KdYXqzhE
 H9tOgmeibp1TtAfzIK56uAz0YGz2M+uANIbt4PmzOW3KkUH46QvpAlC+vbJGubxxyXwTfcorr
 bRuINI1pUD5HVPsgpHAj/xHy0z2uQJFUQlXAYG99/lyDvFDUwH+zo8HniG8wTt6FtBm8ESKEE
 sot1Kg3dhkV8ObpzYU4M3trR70lYlT/QIhFHmjTRZgPz+F6KFLPTaQKBDqumiTOB9RykAdSp6
 zDyd2ZX6NDUfQrlB1qhdG1sOHHZVETNpNJO9OTRFByzwHorgav7/GuZ3y+MVapXWDhPGwAvUM
 /WYDOLOKbGSnEEjAGRE7c6oNFUiuE/yBXYbKnmx3eK8GbPmU+iA79IMk3qaEhiW8+plmIzeJ3
 qp6ASiOA9EChUGIg==
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

Some (non-BSD) platforms don't have <byteswap.h>, so better use the
Xserver's bswap_32() implementation here.

Signed-off-by: Enrico Weigelt, metux IT consult <info@metux.net>
=2D--
 src/sna/sna_video.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/src/sna/sna_video.c b/src/sna/sna_video.c
index b7aa6624..9217a42f 100644
=2D-- a/src/sna/sna_video.c
+++ b/src/sna/sna_video.c
@@ -68,7 +68,8 @@
 #define bswap_32 bswap32
 #endif
 #else
-#include <byteswap.h>
+/* use Xserver's implementation */
+#include "misc.h"
 #endif

 #ifdef SNA_XVMC
=2D-
2.39.5

