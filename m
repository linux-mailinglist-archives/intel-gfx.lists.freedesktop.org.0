Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D89564572
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jul 2019 12:54:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7086089A88;
	Wed, 10 Jul 2019 10:54:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E439089A88
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jul 2019 10:54:21 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17197251-1500050 
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jul 2019 11:54:19 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 10 Jul 2019 11:54:18 +0100
Message-Id: <20190710105418.22908-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] drm/i915/perf: add missing delay for OA muxes
 configuration
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogTGlvbmVsIExhbmR3ZXJsaW4gPGxpb25lbC5nLmxhbmR3ZXJsaW5AaW50ZWwuY29tPgoK
VGhpcyB3YXMgZHJvcHBlZCBmcm9tIHRoZSBvcmlnaW5hbCBwYXRjaCBzZXJpZXMsIHdlIHdlcmVu
J3Qgc3VyZQp3aGV0aGVyIGl0IHdhcyBuZWVkZWQgYXQgdGhlIHRpbWUuIE1vcmUgcmVjZW50IHRl
c3RzIHNob3cgaXQncwpkZWZpbml0ZWx5IG5lZWRlZCB0byBoYXZlIGFjdXJhdGUgcGVyZm9ybWFu
Y2UgZGF0YS4KClNpZ25lZC1vZmYtYnk6IExpb25lbCBMYW5kd2VybGluIDxsaW9uZWwuZy5sYW5k
d2VybGluQGludGVsLmNvbT4KRml4ZXM6IDE5ZjgxZGYyODU5ZWIxICgiZHJtL2k5MTUvcGVyZjog
QWRkIE9BIHVuaXQgc3VwcG9ydCBmb3IgR2VuIDgrIikKQWNrZWQtYnk6IENocmlzIFdpbHNvbiA8
Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpbaWNrbGU6IGNvbWJpbmUgZHVwbGljYXRlIGNvZGUg
YW5kIGNvbW1lbnRzXQpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdp
bHNvbi5jby51az4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYyB8IDQ4ICsr
KysrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMjcgaW5zZXJ0
aW9ucygrKSwgMjEgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9wZXJmLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYwppbmRleCAy
Nzg0MmU3YmNmZWQuLjc2MTVhMDc3MDdiZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9wZXJmLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMKQEAg
LTE1NjksMjggKzE1NjksMTAgQEAgc3RhdGljIHZvaWQgY29uZmlnX29hX3JlZ3Moc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogCX0KIH0KIAotc3RhdGljIGludCBoc3dfZW5hYmxl
X21ldHJpY19zZXQoc3RydWN0IGk5MTVfcGVyZl9zdHJlYW0gKnN0cmVhbSkKK3N0YXRpYyB2b2lk
IGRlbGF5X29hX3JlZ3Modm9pZCkKIHsKLQlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYgPSBzdHJlYW0tPmRldl9wcml2OwotCWNvbnN0IHN0cnVjdCBpOTE1X29hX2NvbmZpZyAqb2Ff
Y29uZmlnID0gc3RyZWFtLT5vYV9jb25maWc7Ci0KLQkvKiBQUk06Ci0JICoKLQkgKiBPQSB1bml0
IGlzIHVzaW5nIOKAnGNyY2xr4oCdIGZvciBpdHMgZnVuY3Rpb25hbGl0eS4gV2hlbiB0cnVuawot
CSAqIGxldmVsIGNsb2NrIGdhdGluZyB0YWtlcyBwbGFjZSwgT0EgY2xvY2sgd291bGQgYmUgZ2F0
ZWQsCi0JICogdW5hYmxlIHRvIGNvdW50IHRoZSBldmVudHMgZnJvbSBub24tcmVuZGVyIGNsb2Nr
IGRvbWFpbi4KLQkgKiBSZW5kZXIgY2xvY2sgZ2F0aW5nIG11c3QgYmUgZGlzYWJsZWQgd2hlbiBP
QSBpcyBlbmFibGVkIHRvCi0JICogY291bnQgdGhlIGV2ZW50cyBmcm9tIG5vbi1yZW5kZXIgZG9t
YWluLiBVbml0IGxldmVsIGNsb2NrCi0JICogZ2F0aW5nIGZvciBSQ1Mgc2hvdWxkIGFsc28gYmUg
ZGlzYWJsZWQuCi0JICovCi0JSTkxNV9XUklURShHRU43X01JU0NDUENUTCwgKEk5MTVfUkVBRChH
RU43X01JU0NDUENUTCkgJgotCQkJCSAgICB+R0VON19ET1BfQ0xPQ0tfR0FURV9FTkFCTEUpKTsK
LQlJOTE1X1dSSVRFKEdFTjZfVUNHQ1RMMSwgKEk5MTVfUkVBRChHRU42X1VDR0NUTDEpIHwKLQkJ
CQkgIEdFTjZfQ1NVTklUX0NMT0NLX0dBVEVfRElTQUJMRSkpOwotCi0JY29uZmlnX29hX3JlZ3Mo
ZGV2X3ByaXYsIG9hX2NvbmZpZy0+bXV4X3JlZ3MsIG9hX2NvbmZpZy0+bXV4X3JlZ3NfbGVuKTsK
LQotCS8qIEl0IGFwcGFyZW50bHkgdGFrZXMgYSBmYWlybHkgbG9uZyB0aW1lIGZvciBhIG5ldyBN
VVgKKwkvKgorCSAqIEl0IGFwcGFyZW50bHkgdGFrZXMgYSBmYWlybHkgbG9uZyB0aW1lIGZvciBh
IG5ldyBNVVgKIAkgKiBjb25maWd1cmF0aW9uIHRvIGJlIGJlIGFwcGxpZWQgYWZ0ZXIgdGhlc2Ug
cmVnaXN0ZXIgd3JpdGVzLgogCSAqIFRoaXMgZGVsYXkgZHVyYXRpb24gd2FzIGRlcml2ZWQgZW1w
aXJpY2FsbHkgYmFzZWQgb24gdGhlCiAJICogcmVuZGVyX2Jhc2ljIGNvbmZpZyBidXQgaG9wZWZ1
bGx5IGl0IGNvdmVycyB0aGUgbWF4aW11bQpAQCAtMTYxMiw2ICsxNTk0LDI5IEBAIHN0YXRpYyBp
bnQgaHN3X2VuYWJsZV9tZXRyaWNfc2V0KHN0cnVjdCBpOTE1X3BlcmZfc3RyZWFtICpzdHJlYW0p
CiAJICogYSBkZWxheSBhdCB0aGlzIGxvY2F0aW9uIHdvdWxkIG1pdGlnYXRlIGFueSBpbnZhbGlk
IHJlcG9ydHMuCiAJICovCiAJdXNsZWVwX3JhbmdlKDE1MDAwLCAyMDAwMCk7Cit9CisKK3N0YXRp
YyBpbnQgaHN3X2VuYWJsZV9tZXRyaWNfc2V0KHN0cnVjdCBpOTE1X3BlcmZfc3RyZWFtICpzdHJl
YW0pCit7CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gc3RyZWFtLT5kZXZf
cHJpdjsKKwljb25zdCBzdHJ1Y3QgaTkxNV9vYV9jb25maWcgKm9hX2NvbmZpZyA9IHN0cmVhbS0+
b2FfY29uZmlnOworCisJLyogUFJNOgorCSAqCisJICogT0EgdW5pdCBpcyB1c2luZyDigJxjcmNs
a+KAnSBmb3IgaXRzIGZ1bmN0aW9uYWxpdHkuIFdoZW4gdHJ1bmsKKwkgKiBsZXZlbCBjbG9jayBn
YXRpbmcgdGFrZXMgcGxhY2UsIE9BIGNsb2NrIHdvdWxkIGJlIGdhdGVkLAorCSAqIHVuYWJsZSB0
byBjb3VudCB0aGUgZXZlbnRzIGZyb20gbm9uLXJlbmRlciBjbG9jayBkb21haW4uCisJICogUmVu
ZGVyIGNsb2NrIGdhdGluZyBtdXN0IGJlIGRpc2FibGVkIHdoZW4gT0EgaXMgZW5hYmxlZCB0bwor
CSAqIGNvdW50IHRoZSBldmVudHMgZnJvbSBub24tcmVuZGVyIGRvbWFpbi4gVW5pdCBsZXZlbCBj
bG9jaworCSAqIGdhdGluZyBmb3IgUkNTIHNob3VsZCBhbHNvIGJlIGRpc2FibGVkLgorCSAqLwor
CUk5MTVfV1JJVEUoR0VON19NSVNDQ1BDVEwsIChJOTE1X1JFQUQoR0VON19NSVNDQ1BDVEwpICYK
KwkJCQkgICAgfkdFTjdfRE9QX0NMT0NLX0dBVEVfRU5BQkxFKSk7CisJSTkxNV9XUklURShHRU42
X1VDR0NUTDEsIChJOTE1X1JFQUQoR0VONl9VQ0dDVEwxKSB8CisJCQkJICBHRU42X0NTVU5JVF9D
TE9DS19HQVRFX0RJU0FCTEUpKTsKKworCWNvbmZpZ19vYV9yZWdzKGRldl9wcml2LCBvYV9jb25m
aWctPm11eF9yZWdzLCBvYV9jb25maWctPm11eF9yZWdzX2xlbik7CisJZGVsYXlfYWZ0ZXJfbXV4
KCk7CiAKIAljb25maWdfb2FfcmVncyhkZXZfcHJpdiwgb2FfY29uZmlnLT5iX2NvdW50ZXJfcmVn
cywKIAkJICAgICAgIG9hX2NvbmZpZy0+Yl9jb3VudGVyX3JlZ3NfbGVuKTsKQEAgLTE4MzcsNiAr
MTg0Miw3IEBAIHN0YXRpYyBpbnQgZ2VuOF9lbmFibGVfbWV0cmljX3NldChzdHJ1Y3QgaTkxNV9w
ZXJmX3N0cmVhbSAqc3RyZWFtKQogCQlyZXR1cm4gcmV0OwogCiAJY29uZmlnX29hX3JlZ3MoZGV2
X3ByaXYsIG9hX2NvbmZpZy0+bXV4X3JlZ3MsIG9hX2NvbmZpZy0+bXV4X3JlZ3NfbGVuKTsKKwlk
ZWxheV9hZnRlcl9tdXgoKTsKIAogCWNvbmZpZ19vYV9yZWdzKGRldl9wcml2LCBvYV9jb25maWct
PmJfY291bnRlcl9yZWdzLAogCQkgICAgICAgb2FfY29uZmlnLT5iX2NvdW50ZXJfcmVnc19sZW4p
OwotLSAKMi4yMi4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
