Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D9B5F3A06D
	for <lists+intel-gfx@lfdr.de>; Sat,  8 Jun 2019 17:27:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B906B8929B;
	Sat,  8 Jun 2019 15:27:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp.domeneshop.no (smtp.domeneshop.no
 [IPv6:2a01:5b40:0:3005::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC4A28924C;
 Sat,  8 Jun 2019 15:27:06 +0000 (UTC)
Received: from 211.81-166-168.customer.lyse.net ([81.166.168.211]:54332
 helo=localhost.localdomain)
 by smtp.domeneshop.no with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_CBC_SHA1:128)
 (Exim 4.84_2) (envelope-from <noralf@tronnes.org>)
 id 1hZdFI-0000t2-S6; Sat, 08 Jun 2019 17:27:04 +0200
From: =?UTF-8?q?Noralf=20Tr=C3=B8nnes?= <noralf@tronnes.org>
To: dri-devel@lists.freedesktop.org
Date: Sat,  8 Jun 2019 17:26:57 +0200
Message-Id: <20190608152657.36613-6-noralf@tronnes.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190608152657.36613-1-noralf@tronnes.org>
References: <20190608152657.36613-1-noralf@tronnes.org>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=tronnes.org; s=ds201810; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From;
 bh=E4yGGk97Bdffz48glS3OcGzeTcrtaer+0t64qLZWfPE=; 
 b=PPk83FauEftRXpr4+yaPf2CZkRTusXt4iPA5ZcD6sUlA45O/+F/2IRzJo3rFudrcrpLj2Tt0zDmJlHppYm3xXP6ikDeAFIikxUcUEuQkPcLks3SdeedMTTH7t5VpXYKpOmFwobGt4BXFtuiOyqQ1E7BLN2GaCKZuZMGHJ+XSKpylCRgxxcUB49lt6AC/jY6+uCqEfDiV5vUllRLt8AsMeOLzL+a4uiYHfuIJpc+OX/f5PmfkRmmXUkKuUvmSnbFakq4QsJT9OKQkjcvYxliX+oYVG7XcQ7aKNEZtzW6WoQwRd7v9SX9sSAtX1M/dqKeqgEcqwv5fBfoFScN/4ZI7aw==;
Subject: [Intel-gfx] [PATCH v8 5/5] drm/todo: Add bootsplash entry
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Cc: Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 intel-gfx@lists.freedesktop.org,
 =?UTF-8?q?Noralf=20Tr=C3=B8nnes?= <noralf@tronnes.org>, sam@ravnborg.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RWFzZSBlbnRyeSBmb3IgYW55b25lIHdhbnRpbmcgdG8gcGljayB1cCB0aGUgYm9vdHNwbGFzaCB3
b3JrIGJ5IHByb3ZpZGluZwphIGNvdXBsZSBvZiBwb2ludGVycy4KCnYyOiBBZGQgU2FtIGFzIGNv
bnRhY3QgKFNhbSkKClNpZ25lZC1vZmYtYnk6IE5vcmFsZiBUcsO4bm5lcyA8bm9yYWxmQHRyb25u
ZXMub3JnPgpSZXZpZXdlZC1ieTogUGF1bCBLb2NpYWxrb3dza2kgPHBhdWwua29jaWFsa293c2tp
QGJvb3RsaW4uY29tPgpSZXZpZXdlZC1ieTogU2FtIFJhdm5ib3JnIDxzYW1AcmF2bmJvcmcub3Jn
PgotLS0KIERvY3VtZW50YXRpb24vZ3B1L3RvZG8ucnN0IHwgMTUgKysrKysrKysrKysrKysrCiAx
IGZpbGUgY2hhbmdlZCwgMTUgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRp
b24vZ3B1L3RvZG8ucnN0IGIvRG9jdW1lbnRhdGlvbi9ncHUvdG9kby5yc3QKaW5kZXggYWI5NmJh
MDYwMGE5Li5iNGE3NmMyNzAzZTUgMTAwNjQ0Ci0tLSBhL0RvY3VtZW50YXRpb24vZ3B1L3RvZG8u
cnN0CisrKyBiL0RvY3VtZW50YXRpb24vZ3B1L3RvZG8ucnN0CkBAIC00ODQsNSArNDg0LDIwIEBA
IGk5MTUKICAgZGV2aWNlX2xpbmtfYWRkIHRvIG1vZGVsIHRoZSBkZXBlbmRlbmN5IGJldHdlZW4g
aTkxNSBhbmQgc25kX2hhZC4gU2VlCiAgIGh0dHBzOi8vZHJpLmZyZWVkZXNrdG9wLm9yZy9kb2Nz
L2RybS9kcml2ZXItYXBpL2RldmljZV9saW5rLmh0bWwKIAorQm9vdHNwbGFzaAorPT09PT09PT09
PQorCitUaGVyZSBpcyBzdXBwb3J0IGluIHBsYWNlIG5vdyBmb3Igd3JpdGluZyBpbnRlcm5hbCBE
Uk0gY2xpZW50cyBtYWtpbmcgaXQKK3Bvc3NpYmxlIHRvIHBpY2sgdXAgdGhlIGJvb3RzcGxhc2gg
d29yayB0aGF0IHdhcyByZWplY3RlZCBiZWNhdXNlIGl0IHdhcyB3cml0dGVuCitmb3IgZmJkZXYu
CisKKy0gW3Y2LDgvOF0gZHJtL2NsaWVudDogSGFjazogQWRkIGJvb3RzcGxhc2ggZXhhbXBsZQor
ICBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvcGF0Y2gvMzA2NTc5LworCistIFtS
RkMgUEFUQ0ggdjIgMDAvMTNdIEtlcm5lbCBiYXNlZCBib290c3BsYXNoCisgIGh0dHBzOi8vbGtt
bC5vcmcvbGttbC8yMDE3LzEyLzEzLzc2NAorCitDb250YWN0OiBTYW0gUmF2bmJvcmcKKwogT3V0
c2lkZSBEUk0KID09PT09PT09PT09Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
