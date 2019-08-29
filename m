Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F801A1AC1
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Aug 2019 15:05:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D42876E0DC;
	Thu, 29 Aug 2019 13:05:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3C43898F3;
 Thu, 29 Aug 2019 13:05:38 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18304447-1500050 
 for multiple; Thu, 29 Aug 2019 14:05:27 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: igt-dev@lists.freedesktop.org
Date: Thu, 29 Aug 2019 14:05:23 +0100
Message-Id: <20190829130525.28555-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190829130525.28555-1-chris@chris-wilson.co.uk>
References: <20190829130525.28555-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 2/4] igt/kms_draw_crc: Test for a working
 GPU first
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlIGRyYXctbWV0aG9kLWJsdCBzdWJ0ZXN0cyByZXF1aXJlIGEgd29ya2luZyBHUFUsIHNvIGNy
ZWF0ZSBhIHN1YnRlc3QKZ3JvdXAgZm9yIHRoZSBkcmF3LW1ldGhvZHMsIGFuZCBza2lwIHRoZSBC
TFQgZ3JvdXAgdXNpbmcKIGlndF9yZXF1aXJlX2dlbSgpIGluIGl0cyBmaXh0dXJlLgoKU2lnbmVk
LW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci0tLQogdGVz
dHMva21zX2RyYXdfY3JjLmMgfCAyNiArKysrKysrKysrKysrKysrKystLS0tLS0tLQogMSBmaWxl
IGNoYW5nZWQsIDE4IGluc2VydGlvbnMoKyksIDggZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEv
dGVzdHMva21zX2RyYXdfY3JjLmMgYi90ZXN0cy9rbXNfZHJhd19jcmMuYwppbmRleCBlYTE0ZGI5
YTAuLmM5OTM4MzNlOCAxMDA2NDQKLS0tIGEvdGVzdHMva21zX2RyYXdfY3JjLmMKKysrIGIvdGVz
dHMva21zX2RyYXdfY3JjLmMKQEAgLTMyNSwxNCArMzI1LDI0IEBAIGlndF9tYWluCiAKIAlmb3Ig
KGZvcm1hdF9pZHggPSAwOyBmb3JtYXRfaWR4IDwgTl9GT1JNQVRTOyBmb3JtYXRfaWR4KyspIHsK
IAlmb3IgKG1ldGhvZCA9IDA7IG1ldGhvZCA8IElHVF9EUkFXX01FVEhPRF9DT1VOVDsgbWV0aG9k
KyspIHsKLQlmb3IgKHRpbGluZ19pZHggPSAwOyB0aWxpbmdfaWR4IDwgTl9USUxJTkdfTUVUSE9E
UzsgdGlsaW5nX2lkeCsrKSB7Ci0JCWlndF9zdWJ0ZXN0X2YoImRyYXctbWV0aG9kLSVzLSVzLSVz
IiwKLQkJCSAgICAgIGZvcm1hdF9zdHIoZm9ybWF0X2lkeCksCi0JCQkgICAgICBpZ3RfZHJhd19n
ZXRfbWV0aG9kX25hbWUobWV0aG9kKSwKLQkJCSAgICAgIHRpbGluZ19zdHIodGlsaW5nX2lkeCkp
Ci0JCQlkcmF3X21ldGhvZF9zdWJ0ZXN0KG1ldGhvZCwgZm9ybWF0X2lkeCwKLQkJCQkJICAgIHRp
bGluZ3NbdGlsaW5nX2lkeF0pOwotCX0gfSB9CisJaWd0X3N1YnRlc3RfZ3JvdXAgeworCQlpZ3Rf
Zml4dHVyZSB7CisJCQlpZiAobWV0aG9kID09IElHVF9EUkFXX0JMVCkKKwkJCQlpZ3RfcmVxdWly
ZV9nZW0oZHJtX2ZkKTsKKwkJfQorCisJCWZvciAodGlsaW5nX2lkeCA9IDA7CisJCSAgICAgdGls
aW5nX2lkeCA8IE5fVElMSU5HX01FVEhPRFM7CisJCSAgICAgdGlsaW5nX2lkeCsrKSB7CisJCQlp
Z3Rfc3VidGVzdF9mKCJkcmF3LW1ldGhvZC0lcy0lcy0lcyIsCisJCQkJICAgICAgZm9ybWF0X3N0
cihmb3JtYXRfaWR4KSwKKwkJCQkgICAgICBpZ3RfZHJhd19nZXRfbWV0aG9kX25hbWUobWV0aG9k
KSwKKwkJCQkgICAgICB0aWxpbmdfc3RyKHRpbGluZ19pZHgpKQorCQkJCWRyYXdfbWV0aG9kX3N1
YnRlc3QobWV0aG9kLAorCQkJCQkJICAgIGZvcm1hdF9pZHgsCisJCQkJCQkgICAgdGlsaW5nc1t0
aWxpbmdfaWR4XSk7CisJCX0KKwl9fX0KIAogCWlndF9zdWJ0ZXN0KCJmaWxsLWZiIikKIAkJZmls
bF9mYl9zdWJ0ZXN0KCk7Ci0tIAoyLjIzLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
