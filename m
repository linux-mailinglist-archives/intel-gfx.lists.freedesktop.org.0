Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D39E322D89
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2019 10:02:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD5D68922E;
	Mon, 20 May 2019 08:02:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D79C8922E
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 May 2019 08:02:05 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16610864-1500050 
 for multiple; Mon, 20 May 2019 09:01:33 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 May 2019 09:01:04 +0100
Message-Id: <20190520080127.18255-10-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190520080127.18255-1-chris@chris-wilson.co.uk>
References: <20190520080127.18255-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 10/33] drm/i915: Allow specification of parallel
 execbuf
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

VGhlcmUgaXMgYSBkZXNpcmUgdG8gc3BsaXQgYSB0YXNrIG9udG8gdHdvIGVuZ2luZXMgYW5kIGhh
dmUgdGhlbSBydW4gYXQKdGhlIHNhbWUgdGltZSwgZS5nLiBzY2FubGluZSBpbnRlcmxlYXZpbmcg
dG8gc3ByZWFkIHRoZSB3b3JrbG9hZCBldmVubHkuClRocm91Z2ggdGhlIHVzZSBvZiB0aGUgb3V0
LWZlbmNlIGZyb20gdGhlIGZpcnN0IGV4ZWNidWYsIHdlIGNhbgpjb29yZGluYXRlIHNlY29uZGFy
eSBleGVjYnVmIHRvIG9ubHkgYmVjb21lIHJlYWR5IHNpbXVsdGFuZW91c2x5IHdpdGgKdGhlIGZp
cnN0LCBzbyB0aGF0IHdpdGggYWxsIHRoaW5ncyBpZGxlIHRoZSBzZWNvbmQgZXhlY2J1ZnMgYXJl
IGV4ZWN1dGVkCmluIHBhcmFsbGVsIHdpdGggdGhlIGZpcnN0LiBUaGUga2V5IGRpZmZlcmVuY2Ug
aGVyZSBiZXR3ZWVuIHRoZSBuZXcKRVhFQ19GRU5DRV9TVUJNSVQgYW5kIHRoZSBleGlzdGluZyBF
WEVDX0ZFTkNFX0lOIGlzIHRoYXQgdGhlIGluLWZlbmNlCndhaXRzIGZvciB0aGUgY29tcGxldGlv
biBvZiB0aGUgZmlyc3QgcmVxdWVzdCAoc28gdGhhdCBhbGwgb2YgaXRzCnJlbmRlcmluZyByZXN1
bHRzIGFyZSB2aXNpYmxlIHRvIHRoZSBzZWNvbmQgZXhlY2J1ZiwgdGhlIG1vcmUgY29tbW9uCnVz
ZXJzcGFjZSBmZW5jZSByZXF1aXJlbWVudCkuCgpTaW5jZSB3ZSBvbmx5IGhhdmUgYSBzaW5nbGUg
aW5wdXQgZmVuY2Ugc2xvdCwgdXNlcnNwYWNlIGNhbm5vdCBtaXggYW4KaW4tZmVuY2UgYW5kIGEg
c3VibWl0LWZlbmNlLiBJdCBoYXMgdG8gdXNlIG9uZSBvciB0aGUgb3RoZXIhIFRoaXMgaXMgbm90
CnN1Y2ggYSBoYXJzaCByZXF1aXJlbWVudCwgc2luY2UgYnkgdmlydHVlIG9mIHRoZSBzdWJtaXQt
ZmVuY2UsIHRoZQpzZWNvbmRhcnkgZXhlY2J1ZiBpbmhlcml0IGFsbCBvZiB0aGUgZGVwZW5kZW5j
aWVzIGZyb20gdGhlIGZpcnN0CnJlcXVlc3QsIGFuZCBmb3IgdGhlIGFwcGxpY2F0aW9uIHRoZSBk
ZXBlbmRlbmNpZXMgc2hvdWxkIGJlIGNvbW1vbgpiZXR3ZWVuIHRoZSBwcmltYXJ5IGFuZCBzZWNv
bmRhcnkgZXhlY2J1Zi4KClN1Z2dlc3RlZC1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1
bGluQGludGVsLmNvbT4KVGVzdGNhc2U6IGlndC9nZW1fZXhlY19mZW5jZS9wYXJhbGxlbApTaWdu
ZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KQ2M6IFR2
cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+ClJldmlld2VkLWJ5OiBUdnJ0
a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZHJ2LmMgICAgICAgICAgICB8ICAxICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZ2VtX2V4ZWNidWZmZXIuYyB8IDI1ICsrKysrKysrKysrKysrKysrKysrKy0KIGluY2x1
ZGUvdWFwaS9kcm0vaTkxNV9kcm0uaCAgICAgICAgICAgICAgICB8IDE3ICsrKysrKysrKysrKysr
LQogMyBmaWxlcyBjaGFuZ2VkLCA0MSBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2Rydi5jCmluZGV4IDUwNjFjYjMyODU2Yi4uODNkMmViOWU3NGNiIDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZHJ2LmMKQEAgLTQ0Myw2ICs0NDMsNyBAQCBzdGF0aWMgaW50IGk5MTVf
Z2V0cGFyYW1faW9jdGwoc3RydWN0IGRybV9kZXZpY2UgKmRldiwgdm9pZCAqZGF0YSwKIAljYXNl
IEk5MTVfUEFSQU1fSEFTX0VYRUNfQ0FQVFVSRToKIAljYXNlIEk5MTVfUEFSQU1fSEFTX0VYRUNf
QkFUQ0hfRklSU1Q6CiAJY2FzZSBJOTE1X1BBUkFNX0hBU19FWEVDX0ZFTkNFX0FSUkFZOgorCWNh
c2UgSTkxNV9QQVJBTV9IQVNfRVhFQ19TVUJNSVRfRkVOQ0U6CiAJCS8qIEZvciB0aGUgdGltZSBi
ZWluZyBhbGwgb2YgdGhlc2UgYXJlIGFsd2F5cyB0cnVlOwogCQkgKiBpZiBzb21lIHN1cHBvcnRl
ZCBoYXJkd2FyZSBkb2VzIG5vdCBoYXZlIG9uZSBvZiB0aGVzZQogCQkgKiBmZWF0dXJlcyB0aGlz
IHZhbHVlIG5lZWRzIHRvIGJlIHByb3ZpZGVkIGZyb20KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZ2VtX2V4ZWNidWZmZXIuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZ2VtX2V4ZWNidWZmZXIuYwppbmRleCBkNmM1MjIwYWRkZDAuLjdjZTI1YjU0YzU3YiAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZXhlY2J1ZmZlci5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2V4ZWNidWZmZXIuYwpAQCAtMjMxOCw2ICsy
MzE4LDcgQEAgaTkxNV9nZW1fZG9fZXhlY2J1ZmZlcihzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LAog
ewogCXN0cnVjdCBpOTE1X2V4ZWNidWZmZXIgZWI7CiAJc3RydWN0IGRtYV9mZW5jZSAqaW5fZmVu
Y2UgPSBOVUxMOworCXN0cnVjdCBkbWFfZmVuY2UgKmV4ZWNfZmVuY2UgPSBOVUxMOwogCXN0cnVj
dCBzeW5jX2ZpbGUgKm91dF9mZW5jZSA9IE5VTEw7CiAJaW50IG91dF9mZW5jZV9mZCA9IC0xOwog
CWludCBlcnI7CkBAIC0yMzYwLDExICsyMzYxLDI0IEBAIGk5MTVfZ2VtX2RvX2V4ZWNidWZmZXIo
c3RydWN0IGRybV9kZXZpY2UgKmRldiwKIAkJCXJldHVybiAtRUlOVkFMOwogCX0KIAorCWlmIChh
cmdzLT5mbGFncyAmIEk5MTVfRVhFQ19GRU5DRV9TVUJNSVQpIHsKKwkJaWYgKGluX2ZlbmNlKSB7
CisJCQllcnIgPSAtRUlOVkFMOworCQkJZ290byBlcnJfaW5fZmVuY2U7CisJCX0KKworCQlleGVj
X2ZlbmNlID0gc3luY19maWxlX2dldF9mZW5jZShsb3dlcl8zMl9iaXRzKGFyZ3MtPnJzdmQyKSk7
CisJCWlmICghZXhlY19mZW5jZSkgeworCQkJZXJyID0gLUVJTlZBTDsKKwkJCWdvdG8gZXJyX2lu
X2ZlbmNlOworCQl9CisJfQorCiAJaWYgKGFyZ3MtPmZsYWdzICYgSTkxNV9FWEVDX0ZFTkNFX09V
VCkgewogCQlvdXRfZmVuY2VfZmQgPSBnZXRfdW51c2VkX2ZkX2ZsYWdzKE9fQ0xPRVhFQyk7CiAJ
CWlmIChvdXRfZmVuY2VfZmQgPCAwKSB7CiAJCQllcnIgPSBvdXRfZmVuY2VfZmQ7Ci0JCQlnb3Rv
IGVycl9pbl9mZW5jZTsKKwkJCWdvdG8gZXJyX2V4ZWNfZmVuY2U7CiAJCX0KIAl9CiAKQEAgLTI0
OTQsNiArMjUwOCwxMyBAQCBpOTE1X2dlbV9kb19leGVjYnVmZmVyKHN0cnVjdCBkcm1fZGV2aWNl
ICpkZXYsCiAJCQlnb3RvIGVycl9yZXF1ZXN0OwogCX0KIAorCWlmIChleGVjX2ZlbmNlKSB7CisJ
CWVyciA9IGk5MTVfcmVxdWVzdF9hd2FpdF9leGVjdXRpb24oZWIucmVxdWVzdCwgZXhlY19mZW5j
ZSwKKwkJCQkJCSAgIGViLmVuZ2luZS0+Ym9uZF9leGVjdXRlKTsKKwkJaWYgKGVyciA8IDApCisJ
CQlnb3RvIGVycl9yZXF1ZXN0OworCX0KKwogCWlmIChmZW5jZXMpIHsKIAkJZXJyID0gYXdhaXRf
ZmVuY2VfYXJyYXkoJmViLCBmZW5jZXMpOwogCQlpZiAoZXJyKQpAQCAtMjU1NSw2ICsyNTc2LDgg
QEAgaTkxNV9nZW1fZG9fZXhlY2J1ZmZlcihzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LAogZXJyX291
dF9mZW5jZToKIAlpZiAob3V0X2ZlbmNlX2ZkICE9IC0xKQogCQlwdXRfdW51c2VkX2ZkKG91dF9m
ZW5jZV9mZCk7CitlcnJfZXhlY19mZW5jZToKKwlkbWFfZmVuY2VfcHV0KGV4ZWNfZmVuY2UpOwog
ZXJyX2luX2ZlbmNlOgogCWRtYV9mZW5jZV9wdXQoaW5fZmVuY2UpOwogCXJldHVybiBlcnI7CmRp
ZmYgLS1naXQgYS9pbmNsdWRlL3VhcGkvZHJtL2k5MTVfZHJtLmggYi9pbmNsdWRlL3VhcGkvZHJt
L2k5MTVfZHJtLmgKaW5kZXggZTJkYTkwMjdiY2RmLi5iZGIwMGVjMWY4YmUgMTAwNjQ0Ci0tLSBh
L2luY2x1ZGUvdWFwaS9kcm0vaTkxNV9kcm0uaAorKysgYi9pbmNsdWRlL3VhcGkvZHJtL2k5MTVf
ZHJtLmgKQEAgLTYwNCw2ICs2MDQsMTIgQEAgdHlwZWRlZiBzdHJ1Y3QgZHJtX2k5MTVfaXJxX3dh
aXQgewogICovCiAjZGVmaW5lIEk5MTVfUEFSQU1fTU1BUF9HVFRfQ09IRVJFTlQJNTIKIAorLyoK
KyAqIFF1ZXJ5IHdoZXRoZXIgRFJNX0k5MTVfR0VNX0VYRUNCVUZGRVIyIHN1cHBvcnRzIGNvb3Jk
aW5hdGlvbiBvZiBwYXJhbGxlbAorICogZXhlY3V0aW9uIHRocm91Z2ggdXNlIG9mIGV4cGxpY2l0
IGZlbmNlIHN1cHBvcnQuCisgKiBTZWUgSTkxNV9FWEVDX0ZFTkNFX09VVCBhbmQgSTkxNV9FWEVD
X0ZFTkNFX1NVQk1JVC4KKyAqLworI2RlZmluZSBJOTE1X1BBUkFNX0hBU19FWEVDX1NVQk1JVF9G
RU5DRSA1MwogLyogTXVzdCBiZSBrZXB0IGNvbXBhY3QgLS0gbm8gaG9sZXMgYW5kIHdlbGwgZG9j
dW1lbnRlZCAqLwogCiB0eXBlZGVmIHN0cnVjdCBkcm1faTkxNV9nZXRwYXJhbSB7CkBAIC0xMTI2
LDcgKzExMzIsMTYgQEAgc3RydWN0IGRybV9pOTE1X2dlbV9leGVjYnVmZmVyMiB7CiAgKi8KICNk
ZWZpbmUgSTkxNV9FWEVDX0ZFTkNFX0FSUkFZICAgKDE8PDE5KQogCi0jZGVmaW5lIF9fSTkxNV9F
WEVDX1VOS05PV05fRkxBR1MgKC0oSTkxNV9FWEVDX0ZFTkNFX0FSUkFZPDwxKSkKKy8qCisgKiBT
ZXR0aW5nIEk5MTVfRVhFQ19GRU5DRV9TVUJNSVQgaW1wbGllcyB0aGF0IGxvd2VyXzMyX2JpdHMo
cnN2ZDIpIHJlcHJlc2VudAorICogYSBzeW5jX2ZpbGUgZmQgdG8gd2FpdCB1cG9uIChpbiBhIG5v
bmJsb2NraW5nIG1hbm5lcikgcHJpb3IgdG8gZXhlY3V0aW5nCisgKiB0aGUgYmF0Y2guCisgKgor
ICogUmV0dXJucyAtRUlOVkFMIGlmIHRoZSBzeW5jX2ZpbGUgZmQgY2Fubm90IGJlIGZvdW5kLgor
ICovCisjZGVmaW5lIEk5MTVfRVhFQ19GRU5DRV9TVUJNSVQJCSgxIDw8IDIwKQorCisjZGVmaW5l
IF9fSTkxNV9FWEVDX1VOS05PV05fRkxBR1MgKC0oSTkxNV9FWEVDX0ZFTkNFX1NVQk1JVCA8PCAx
KSkKIAogI2RlZmluZSBJOTE1X0VYRUNfQ09OVEVYVF9JRF9NQVNLCSgweGZmZmZmZmZmKQogI2Rl
ZmluZSBpOTE1X2V4ZWNidWZmZXIyX3NldF9jb250ZXh0X2lkKGViMiwgY29udGV4dCkgXAotLSAK
Mi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
