Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 89388A4E4A9
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Mar 2025 17:02:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A47E10E62A;
	Tue,  4 Mar 2025 16:02:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=metux.net header.i=info@metux.net header.b="caiogm0k";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 307 seconds by postgrey-1.36 at gabe;
 Tue, 04 Mar 2025 16:01:59 UTC
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.133])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41AE810E323
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Mar 2025 16:01:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=metux.net;
 s=s1-ionos; t=1741104117; x=1741708917; i=info@metux.net;
 bh=EspdX0h7TCDrE5+8KgLDPh53rrmhqNZVGUVIG1244J4=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:Message-Id:In-Reply-To:
 References:MIME-Version:Content-Transfer-Encoding:cc:
 content-transfer-encoding:content-type:date:from:message-id:
 mime-version:reply-to:subject:to;
 b=caiogm0kL5K5oc0lu3wFhjoQkgJTo6zDuC6TZ8B8ZEUG4S3yLaXYKg0xcYhHstE7
 HR7qw79O9bOPL6t4KppCADi+tltCbxOWHN0BszWz5swPQ4j8fShBrFCuYfckrmyJO
 ODk+EDuLYNq6pP6ezPp2ZNRbfP0i1SCrk9GQqNW5NDVjdLhrUTeTWlF2kVmI5Efk3
 eyNcKZEHa+rY/y5pSsgOAyhLBkhiqeNfhqPgZ7q0I2zm5G3miJR/PaslygwuoIWTZ
 d4POc99tX4V1snp55G9bQEYK0fVqvsx1ZK0dbTh6wB3+QgG3kap1N3aiFalh0Vmt4
 D9TbFl41pV3t8X2mvA==
X-UI-Sender-Class: 55c96926-9e95-11ee-ae09-1f7a4046a0f6
Received: from x1.localdomain ([77.7.107.91]) by mrelayeu.kundenserver.de
 (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MbAYi-1tIdmr41Zg-00hHkA; Tue, 04 Mar 2025 16:56:42 +0100
From: "Enrico Weigelt, metux IT consult" <info@metux.net>
To: intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com
Subject: [PATCH 16/16] use xf86NameCmp() instead of xf86nameCompare()
Date: Tue,  4 Mar 2025 16:58:09 +0100
Message-Id: <20250304155809.30399-17-info@metux.net>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250304155809.30399-1-info@metux.net>
References: <20250304155809.30399-1-info@metux.net>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:bcqysGTZ3rgDU3gZvF/EDVfYfbAorR2TLqkXJdko2+Ifv5Rjuo4
 XAULK4fC/rmJGhpoYbNczbRuRe/G+MR6zSNIFfTX5X5rACZyhvpwqZNUQUk3qkiYFFnurtX
 CCXQNaozyoIczyKan7NCPzwo9Dj8B7yYe9AAPRPsgjEpULFMyR+chU7pT+pKbII2CTDHcev
 cO3El2H14KoGwdyxTvhSw==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:ldtQXBJpzvg=;o1P8w4CzbN8tRIUaekbsARryS3q
 QEz5EcZRL0BzCbYxj89cY0wqiTR4QbJzNMjzP6ULislfAeyij55lrKeRHVmqHpjGh7rxgIb17
 497jBM/gX7FJ5uoV1jRgsg3yKA+A56MfvJvzrBy0STYNyQvTL1CUgeksMnYwaHy5ZJBdnVsFy
 Pv6lsbhbGUDXK20TTrs2QfaO3nhr2hpGBo4uU9lzj92ZZQP1GQ+gDT+pLN8MjXvAzILgck/8I
 Cnz/dpkKVS37utqvKXlU/D629Ru3RFtNXkUldGeIqX2f5+PTohefTxRGTbln1FSnzOnJBht2R
 pTwgXh7RKQs11rrPGOIZq+9SzlG2niUon8FXO/LFvhlUPVE5zHdMxJpitPICj9QJq3itJdFFf
 0Lvl7EQxkRA183X8a0Upi4/AImFbAAo3rMOkIgAJ2IwIXONwPxJaa3DNcM+XTvXySrPTVb1VK
 GrO1ioO3zaUeyPZPyn5ctg1BNTd6ctMeKhQCiXlQ2IVKprvEOw+VnlrOmIpgkZB/ClXN+T48e
 72Stxd2ZWxXs3I/N4I0GAI5rpr2nBrT24XckZ2r887TnTl7EqjtCSNu90/nMdCXYx+HWaCtfN
 gtZ0VPyKphen3PigKDoQUgStawe9MlYecfb5R+Bh072zHDPTaBWN/ngPN4R11sPZKSURnRaLv
 k/1UwmDC555xQdHgTf6PXhPpAvkGHyqQZ4KorH2NB+qg49iqFmqvmOjKoDFSeYzrFEIOi2/jg
 QbtoWsAT0KvgdVDcmtjbQpo/4NZqp2eNBEMpCK/A+zeRsNffWF0jDq7f4Hti+sea0vGmZKEa0
 hhX1XlXV4l70AjdR4JyVEXngumbeUiHOs778ABQRQGrWtU9ggIcqkLDKhtHFbRIRQJIQhhAQK
 nEMAmtGQg8wSrxmfXvcSBkFUTyeuw/8sPmkH5O+CMqRiQrQjw5xEj8d/Fr1d0e0mocJBU6ju3
 sgmy0uigwkMOi3C3atd+QEWrl72AcwEtfpSy8xS1dvEPmggs4ly4WN0w7hcIvXDbE0hDnkWC2
 MVLc266ojRiZ9Yzs+3b2L46BovORnA7y4Hw8+NZkNG7I845KqTF5qpZS6znVhnSEeIlshSY8S
 O4jKo1he5LszlkupSYzLwPtz+GQuALa+qnXo2+sRZfhGagmqGGmLuprymOr22CqDzzKDzeQsR
 T6aywHGf5SRhEob2rCUGTA6dfN/jLlyRZq0WzrfVAV8vs/37Spb+RpktsBCiH0xmGbBiqic1Y
 FoJdIDhPAFazMVb4v6I6E1tlYI12aZymcXrJv9brNDQ/glOOY11R9+TCcWrAfVM8qMa5v1P0u
 1TXcCDuwXon+W8b4YIpJGGHBcY0JG2PFMRG0//rYbZdsyuyIk920a1/FPkaOThp9ZUn+9CFZE
 6rIRffDyVozUjz6w==
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

This driver is the only one still using xf86nameCompare() and so
blocking it's removal from Xserver module ABI.

Signed-off-by: Enrico Weigelt, metux IT consult <info@metux.net>
=2D--
 src/intel_module.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/src/intel_module.c b/src/intel_module.c
index 7ea0f5d3..f90b3cea 100644
=2D-- a/src/intel_module.c
+++ b/src/intel_module.c
@@ -654,7 +654,7 @@ static XF86ConfDevicePtr
 _xf86findDriver(const char *ident, XF86ConfDevicePtr p)
 {
 	while (p) {
-		if (p->dev_driver && xf86nameCompare(ident, p->dev_driver) =3D=3D 0)
+		if (p->dev_driver && xf86NameCmp(ident, p->dev_driver) =3D=3D 0)
 			return p;

 		p =3D p->list.next;
=2D-
2.39.5

