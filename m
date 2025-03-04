Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D8EDA4E4AA
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Mar 2025 17:02:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 45E1A10E2C0;
	Tue,  4 Mar 2025 16:02:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=metux.net header.i=info@metux.net header.b="j0Q5Qo9N";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.135])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9207410E323
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Mar 2025 16:02:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=metux.net;
 s=s1-ionos; t=1741104122; x=1741708922; i=info@metux.net;
 bh=PMClv+WlpOWQnt92nIIgloM/GwBm5NGn8jiulksTyOw=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:Message-Id:In-Reply-To:
 References:MIME-Version:Content-Transfer-Encoding:cc:
 content-transfer-encoding:content-type:date:from:message-id:
 mime-version:reply-to:subject:to;
 b=j0Q5Qo9NQULz+lsl6ziz8ihIyg7aJoOMbFLnRh3mtP+r9sQdfX0AL9+M2WXuEF57
 KD/mWA2V5Hwuo1s8OejkiD+vKCvLibzs/C5xSdCmaNivPID28EYpM5l5cYhKEXbmC
 Ot5e2f89ZgKHV3ih11uNSSNwxESUso5vqrMGtMNf4VQhINDU68wyxMpNK3Ga6iENg
 fbzO5BBHVyZyJlliyEp8SfolYqyXTdeQW7D5poK0QY3hoDcEu9GDu3RZoDxzRSu8c
 R6rAnAudrfchEb7JSfK2mbP60VnLnrdYYwUUwwoNYLugI0/467hMe0VxgCaniICLz
 2cZ2555UmhrX1ZvPLg==
X-UI-Sender-Class: 55c96926-9e95-11ee-ae09-1f7a4046a0f6
Received: from x1.localdomain ([77.7.107.91]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1N63i4-1tEICv3ASW-00xN6X; Tue, 04 Mar 2025 16:56:33 +0100
From: "Enrico Weigelt, metux IT consult" <info@metux.net>
To: intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com
Subject: [PATCH 11/16] use XNFcallocarray() instead of xnfcalloc macro
Date: Tue,  4 Mar 2025 16:58:04 +0100
Message-Id: <20250304155809.30399-12-info@metux.net>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250304155809.30399-1-info@metux.net>
References: <20250304155809.30399-1-info@metux.net>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:H0Co3RSOIZTDsnO4hhDE+GCRe/B2An45WPL1KklWbH6yjRm0IXT
 mo3D46utQWsTUJ1WbF13OSwE3SHKlTGmLXwZ46/6y9qmBppdURKWe4ciC7BEiHoy5pK254y
 hin/jYHelDIHhhUuCTvrbPa7/KX/ud+A9MuMxCuiSfPHArQjB0ht2Skh2ei/h66YUiaXCLt
 WHcvf+K5tbORFcZPYdbFA==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:r7Yf5ys8nn4=;QUrJ82QWy5Yj1l1SmoKwtgBSkSa
 UfBgYH63wHbE/YYFzR5FhRIukwKoZ6Ts2JqEJsQh/28kopNGAqMEQcJglbRtXDm2/8bet0RGP
 Wt+9zMgEaN5wNUZUs7gQOOd6kyhy4QfL9P3ZefrwmavFF98Tzzf2CFa1sTIhVlNcdly1B2Unu
 ra3DWmqI8hxONhsiGNJNQHpPg4rAIzsT4aJwbJYNE/TrEi+zgqw+XaLOVI/OEBPZkjEG7UkKl
 kaoGyc3VDIDUeyuEfrkEh5cKoBgP8TMYwBEodyxAX96zGZ0I6oW6ffAFMHRDiu2ysBqLdHocl
 qI8cvcVe+CtaN3Tl2l3W2+sbI31V948FmjSfx671fJ2N7qAT8P8IpQ4TsTAdgHK12b32L4yHr
 IeE+1T4BmdPodkMwh+fAi8yP8W0wBGjnnpDGAD40ZHX7qA8KUjQ1wPrj4MVvnXWp+SaBWzRrl
 1483Ml3DW3mC7lPJ8YoTg2JjjORSIcrNXNvn7aBjT+g9INOP5uiqgDgQrKQrWtwhkziVP9RTS
 NIY+bNkEt1cte5Rz2Kj+H4BAMKzklfaimHUXh7dUNJnw4wRGXgXvvue4qQMDBx2kYo/vijcBf
 w/DKIiWfyNijUxxe6AZ1VCIPMmWziwNH6/2a7MhPwaF49PuE4w3kdW89SYWcLzlYm/MvF3WKU
 ZQAqKL6Kt1FfdqaSvbPXqvFw7zO7NriVZvRbiD9d3nA8ePw+laHrd9Il+CHxM1sMAMTSyqkIw
 wFwVwbbQJ1s47YsSqhqTUeF7r4o+D5JNEhlHB7+fLJVDODzeMdaobDAY+yws3ZZxjJYK6Bsa1
 bFBQ3Y71DEIBf99ts6Tf8VZjJiajrihy0BZSt/PrHG0PY0oVrSHLojG1Fbsnw7Hq26T9xguka
 yBrenn3uwqysN2jgaF0I4hPq4IAEBthR/IMPnUdIGRKlzvsSiYHV8kCazTouB1N3mYPdK/viW
 56buM+OJyrhb3MyajQmmuo57XhvvteL7HzeEZUN8cdJxXSMl0zzGw0DEY1jpZ1xs6kR7Dpzdf
 uLZEiLiW9FXg+1ywL2gBLWrCjQFHlu3NsHskhEA4fSAKKu4t0soQQGeLbagpbT7mbgStHBaDf
 ta2hv3N+grxvcfMc+CSbO7dObHwS6TpwWa7IdRSu4EfOVcVUdHyiIpEibm3glXwoY6ngz4lrN
 Ja/zhh+x9aWEQs2v0w8uqn9V63cfYmx7/LrcaczLNIblTZLH72oT9tIngBVKIihQEUPj0q2Qg
 KjGBRdf2IlJeMA+u/GPcfUCk45/QH3jzoysxIufz+t02S3M5MGX/4MEsgCzDcCqMuMHyivUxT
 teUMk4xQTkBGIWg2L25/6Ppuma5aqIMrb1EjxsQlbphnhwytsHetBcKwo7zcEdZxDdtoccftJ
 lBKU0dBHOFSA2SBA==
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

xnfcalloc is just an alias for XNFcallocarray() that doesn't seem to serve
any practical purpose, so it can go away once all drivers stopped using it=
.

Signed-off-by: Enrico Weigelt, metux IT consult <info@metux.net>
=2D--
 src/legacy/i810/i810_driver.c | 4 ++--
 src/legacy/i810/i810_xaa.c    | 4 ++--
 src/uxa/intel_driver.c        | 2 +-
 3 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/src/legacy/i810/i810_driver.c b/src/legacy/i810/i810_driver.c
index 778b1a41..e24d3f8b 100644
=2D-- a/src/legacy/i810/i810_driver.c
+++ b/src/legacy/i810/i810_driver.c
@@ -155,7 +155,7 @@ I810GetRec(ScrnInfoPtr scrn)
    if (((uintptr_t)scrn->driverPrivate & 3) =3D=3D 0)
       return TRUE;

-   scrn->driverPrivate =3D xnfcalloc(sizeof(I810Rec), 1);
+   scrn->driverPrivate =3D XNFcallocarray(sizeof(I810Rec), 1);
    return TRUE;
 }

@@ -503,7 +503,7 @@ I810PreInit(ScrnInfoPtr scrn, int flags)
 	 pI810->MaxClock =3D 86000;
       }
    }
-   clockRanges =3D xnfcalloc(sizeof(ClockRange), 1);
+   clockRanges =3D XNFcallocarray(sizeof(ClockRange), 1);
    clockRanges->next =3D NULL;
    /* 9.4MHz appears to be the smallest that works. */
    clockRanges->minClock =3D 9500;
diff --git a/src/legacy/i810/i810_xaa.c b/src/legacy/i810/i810_xaa.c
index ea03441b..1e0a8527 100644
=2D-- a/src/legacy/i810/i810_xaa.c
+++ b/src/legacy/i810/i810_xaa.c
@@ -284,7 +284,7 @@ I810AccelInit(ScreenPtr pScreen)

       pI810->NumScanlineColorExpandBuffers =3D nr_buffers;
       pI810->ScanlineColorExpandBuffers =3D (unsigned char **)
-	    xnfcalloc(nr_buffers, sizeof(unsigned char *));
+	    XNFcallocarray(nr_buffers, sizeof(unsigned char *));

       for (i =3D 0; i < nr_buffers; i++, ptr +=3D width)
 	 pI810->ScanlineColorExpandBuffers[i] =3D ptr;
@@ -295,7 +295,7 @@ I810AccelInit(ScreenPtr pScreen)
 							  | 0);

       infoPtr->ScanlineColorExpandBuffers =3D (unsigned char **)
-	    xnfcalloc(1, sizeof(unsigned char *));
+	    XNFcallocarray(1, sizeof(unsigned char *));
       infoPtr->NumScanlineColorExpandBuffers =3D 1;

       infoPtr->ScanlineColorExpandBuffers[0] =3D
diff --git a/src/uxa/intel_driver.c b/src/uxa/intel_driver.c
index 79105b89..24783492 100644
=2D-- a/src/uxa/intel_driver.c
+++ b/src/uxa/intel_driver.c
@@ -460,7 +460,7 @@ static Bool I830PreInit(ScrnInfoPtr scrn, int flags)
 		return TRUE;

 	if (((uintptr_t)scrn->driverPrivate) & 3) {
-		intel =3D xnfcalloc(sizeof(*intel), 1);
+		intel =3D XNFcallocarray(sizeof(*intel), 1);
 		if (intel =3D=3D NULL)
 			return FALSE;

=2D-
2.39.5

