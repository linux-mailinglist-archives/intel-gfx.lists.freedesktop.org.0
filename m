Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9E6EE2D70
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2019 11:34:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBC116E1B6;
	Thu, 24 Oct 2019 09:34:45 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B0256E1B6
 for <Intel-gfx@lists.freedesktop.org>; Thu, 24 Oct 2019 09:34:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Oct 2019 02:34:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,224,1569308400"; d="scan'208";a="197053309"
Received: from mdlugoke-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.251.81.75])
 by fmsmga008.fm.intel.com with ESMTP; 24 Oct 2019 02:34:42 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Thu, 24 Oct 2019 10:34:40 +0100
Message-Id: <20191024093440.32280-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Convert PAT setup to uncore mmio
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCk9uZSBtb3Jl
IHRoaW5nIHdoaWNoIHJlbGllZCBvbiBpbXBsaWNpdCBkZXZfcHJpdiBjYW4gYmUgY292bmVydGVk
IHRvIHVzZQp0aGUgbmV3IG1taW8gYWNjZXNzb3JzLgoKU2lnbmVkLW9mZi1ieTogVHZydGtvIFVy
c3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2dlbV9ndHQuYyB8IDk4ICsrKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0tCiAxIGZp
bGUgY2hhbmdlZCwgNTkgaW5zZXJ0aW9ucygrKSwgMzkgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2dlbV9ndHQuYwppbmRleCAzMTQ4ZDU5NDZiNjMuLjNkM2E4ZGIxOGEwNyAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMKQEAgLTI5MjIsMzUgKzI5MjIsNTEgQEAgc3Rh
dGljIGludCBnZ3R0X3Byb2JlX2NvbW1vbihzdHJ1Y3QgaTkxNV9nZ3R0ICpnZ3R0LCB1NjQgc2l6
ZSkKIAlyZXR1cm4gMDsKIH0KIAotc3RhdGljIHZvaWQgdGdsX3NldHVwX3ByaXZhdGVfcHBhdChz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCitzdGF0aWMgdm9pZCB0Z2xfc2V0dXBf
cHJpdmF0ZV9wcGF0KHN0cnVjdCBpbnRlbF91bmNvcmUgKnVuY29yZSkKIHsKIAkvKiBUR0wgZG9l
c24ndCBzdXBwb3J0IExMQyBvciBBR0Ugc2V0dGluZ3MgKi8KLQlJOTE1X1dSSVRFKEdFTjEyX1BB
VF9JTkRFWCgwKSwgR0VOOF9QUEFUX1dCKTsKLQlJOTE1X1dSSVRFKEdFTjEyX1BBVF9JTkRFWCgx
KSwgR0VOOF9QUEFUX1dDKTsKLQlJOTE1X1dSSVRFKEdFTjEyX1BBVF9JTkRFWCgyKSwgR0VOOF9Q
UEFUX1dUKTsKLQlJOTE1X1dSSVRFKEdFTjEyX1BBVF9JTkRFWCgzKSwgR0VOOF9QUEFUX1VDKTsK
LQlJOTE1X1dSSVRFKEdFTjEyX1BBVF9JTkRFWCg0KSwgR0VOOF9QUEFUX1dCKTsKLQlJOTE1X1dS
SVRFKEdFTjEyX1BBVF9JTkRFWCg1KSwgR0VOOF9QUEFUX1dCKTsKLQlJOTE1X1dSSVRFKEdFTjEy
X1BBVF9JTkRFWCg2KSwgR0VOOF9QUEFUX1dCKTsKLQlJOTE1X1dSSVRFKEdFTjEyX1BBVF9JTkRF
WCg3KSwgR0VOOF9QUEFUX1dCKTsKLX0KLQotc3RhdGljIHZvaWQgY25sX3NldHVwX3ByaXZhdGVf
cHBhdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCi17Ci0JSTkxNV9XUklURShH
RU4xMF9QQVRfSU5ERVgoMCksIEdFTjhfUFBBVF9XQiB8IEdFTjhfUFBBVF9MTEMpOwotCUk5MTVf
V1JJVEUoR0VOMTBfUEFUX0lOREVYKDEpLCBHRU44X1BQQVRfV0MgfCBHRU44X1BQQVRfTExDRUxM
Qyk7Ci0JSTkxNV9XUklURShHRU4xMF9QQVRfSU5ERVgoMiksIEdFTjhfUFBBVF9XVCB8IEdFTjhf
UFBBVF9MTENFTExDKTsKLQlJOTE1X1dSSVRFKEdFTjEwX1BBVF9JTkRFWCgzKSwgR0VOOF9QUEFU
X1VDKTsKLQlJOTE1X1dSSVRFKEdFTjEwX1BBVF9JTkRFWCg0KSwgR0VOOF9QUEFUX1dCIHwgR0VO
OF9QUEFUX0xMQ0VMTEMgfCBHRU44X1BQQVRfQUdFKDApKTsKLQlJOTE1X1dSSVRFKEdFTjEwX1BB
VF9JTkRFWCg1KSwgR0VOOF9QUEFUX1dCIHwgR0VOOF9QUEFUX0xMQ0VMTEMgfCBHRU44X1BQQVRf
QUdFKDEpKTsKLQlJOTE1X1dSSVRFKEdFTjEwX1BBVF9JTkRFWCg2KSwgR0VOOF9QUEFUX1dCIHwg
R0VOOF9QUEFUX0xMQ0VMTEMgfCBHRU44X1BQQVRfQUdFKDIpKTsKLQlJOTE1X1dSSVRFKEdFTjEw
X1BBVF9JTkRFWCg3KSwgR0VOOF9QUEFUX1dCIHwgR0VOOF9QUEFUX0xMQ0VMTEMgfCBHRU44X1BQ
QVRfQUdFKDMpKTsKKwlpbnRlbF91bmNvcmVfd3JpdGUodW5jb3JlLCBHRU4xMl9QQVRfSU5ERVgo
MCksIEdFTjhfUFBBVF9XQik7CisJaW50ZWxfdW5jb3JlX3dyaXRlKHVuY29yZSwgR0VOMTJfUEFU
X0lOREVYKDEpLCBHRU44X1BQQVRfV0MpOworCWludGVsX3VuY29yZV93cml0ZSh1bmNvcmUsIEdF
TjEyX1BBVF9JTkRFWCgyKSwgR0VOOF9QUEFUX1dUKTsKKwlpbnRlbF91bmNvcmVfd3JpdGUodW5j
b3JlLCBHRU4xMl9QQVRfSU5ERVgoMyksIEdFTjhfUFBBVF9VQyk7CisJaW50ZWxfdW5jb3JlX3dy
aXRlKHVuY29yZSwgR0VOMTJfUEFUX0lOREVYKDQpLCBHRU44X1BQQVRfV0IpOworCWludGVsX3Vu
Y29yZV93cml0ZSh1bmNvcmUsIEdFTjEyX1BBVF9JTkRFWCg1KSwgR0VOOF9QUEFUX1dCKTsKKwlp
bnRlbF91bmNvcmVfd3JpdGUodW5jb3JlLCBHRU4xMl9QQVRfSU5ERVgoNiksIEdFTjhfUFBBVF9X
Qik7CisJaW50ZWxfdW5jb3JlX3dyaXRlKHVuY29yZSwgR0VOMTJfUEFUX0lOREVYKDcpLCBHRU44
X1BQQVRfV0IpOworfQorCitzdGF0aWMgdm9pZCBjbmxfc2V0dXBfcHJpdmF0ZV9wcGF0KHN0cnVj
dCBpbnRlbF91bmNvcmUgKnVuY29yZSkKK3sKKwlpbnRlbF91bmNvcmVfd3JpdGUodW5jb3JlLAor
CQkJICAgR0VOMTBfUEFUX0lOREVYKDApLAorCQkJICAgR0VOOF9QUEFUX1dCIHwgR0VOOF9QUEFU
X0xMQyk7CisJaW50ZWxfdW5jb3JlX3dyaXRlKHVuY29yZSwKKwkJCSAgIEdFTjEwX1BBVF9JTkRF
WCgxKSwKKwkJCSAgIEdFTjhfUFBBVF9XQyB8IEdFTjhfUFBBVF9MTENFTExDKTsKKwlpbnRlbF91
bmNvcmVfd3JpdGUodW5jb3JlLAorCQkJICAgR0VOMTBfUEFUX0lOREVYKDIpLAorCQkJICAgR0VO
OF9QUEFUX1dUIHwgR0VOOF9QUEFUX0xMQ0VMTEMpOworCWludGVsX3VuY29yZV93cml0ZSh1bmNv
cmUsCisJCQkgICBHRU4xMF9QQVRfSU5ERVgoMyksCisJCQkgICBHRU44X1BQQVRfVUMpOworCWlu
dGVsX3VuY29yZV93cml0ZSh1bmNvcmUsCisJCQkgICBHRU4xMF9QQVRfSU5ERVgoNCksCisJCQkg
ICBHRU44X1BQQVRfV0IgfCBHRU44X1BQQVRfTExDRUxMQyB8IEdFTjhfUFBBVF9BR0UoMCkpOwor
CWludGVsX3VuY29yZV93cml0ZSh1bmNvcmUsCisJCQkgICBHRU4xMF9QQVRfSU5ERVgoNSksCisJ
CQkgICBHRU44X1BQQVRfV0IgfCBHRU44X1BQQVRfTExDRUxMQyB8IEdFTjhfUFBBVF9BR0UoMSkp
OworCWludGVsX3VuY29yZV93cml0ZSh1bmNvcmUsCisJCQkgICBHRU4xMF9QQVRfSU5ERVgoNiks
CisJCQkgICBHRU44X1BQQVRfV0IgfCBHRU44X1BQQVRfTExDRUxMQyB8IEdFTjhfUFBBVF9BR0Uo
MikpOworCWludGVsX3VuY29yZV93cml0ZSh1bmNvcmUsCisJCQkgICBHRU4xMF9QQVRfSU5ERVgo
NyksCisJCQkgICBHRU44X1BQQVRfV0IgfCBHRU44X1BQQVRfTExDRUxMQyB8IEdFTjhfUFBBVF9B
R0UoMykpOwogfQogCiAvKiBUaGUgR0dUVCBhbmQgUFBHVFQgbmVlZCBhIHByaXZhdGUgUFBBVCBz
ZXR1cCBpbiBvcmRlciB0byBoYW5kbGUgY2FjaGVhYmlsaXR5CiAgKiBiaXRzLiBXaGVuIHVzaW5n
IGFkdmFuY2VkIGNvbnRleHRzIGVhY2ggY29udGV4dCBzdG9yZXMgaXRzIG93biBQQVQsIGJ1dAog
ICogd3JpdGluZyB0aGlzIGRhdGEgc2hvdWxkbid0IGJlIGhhcm1mdWwgZXZlbiBpbiB0aG9zZSBj
YXNlcy4gKi8KLXN0YXRpYyB2b2lkIGJkd19zZXR1cF9wcml2YXRlX3BwYXQoc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmRldl9wcml2KQorc3RhdGljIHZvaWQgYmR3X3NldHVwX3ByaXZhdGVfcHBh
dChzdHJ1Y3QgaW50ZWxfdW5jb3JlICp1bmNvcmUpCiB7CiAJdTY0IHBhdDsKIApAQCAtMjk2Mywx
MSArMjk3OSwxMSBAQCBzdGF0aWMgdm9pZCBiZHdfc2V0dXBfcHJpdmF0ZV9wcGF0KHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAkgICAgICBHRU44X1BQQVQoNiwgR0VOOF9QUEFU
X1dCIHwgR0VOOF9QUEFUX0xMQ0VMTEMgfCBHRU44X1BQQVRfQUdFKDIpKSB8CiAJICAgICAgR0VO
OF9QUEFUKDcsIEdFTjhfUFBBVF9XQiB8IEdFTjhfUFBBVF9MTENFTExDIHwgR0VOOF9QUEFUX0FH
RSgzKSk7CiAKLQlJOTE1X1dSSVRFKEdFTjhfUFJJVkFURV9QQVRfTE8sIGxvd2VyXzMyX2JpdHMo
cGF0KSk7Ci0JSTkxNV9XUklURShHRU44X1BSSVZBVEVfUEFUX0hJLCB1cHBlcl8zMl9iaXRzKHBh
dCkpOworCWludGVsX3VuY29yZV93cml0ZSh1bmNvcmUsIEdFTjhfUFJJVkFURV9QQVRfTE8sIGxv
d2VyXzMyX2JpdHMocGF0KSk7CisJaW50ZWxfdW5jb3JlX3dyaXRlKHVuY29yZSwgR0VOOF9QUklW
QVRFX1BBVF9ISSwgdXBwZXJfMzJfYml0cyhwYXQpKTsKIH0KIAotc3RhdGljIHZvaWQgY2h2X3Nl
dHVwX3ByaXZhdGVfcHBhdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCitzdGF0
aWMgdm9pZCBjaHZfc2V0dXBfcHJpdmF0ZV9wcGF0KHN0cnVjdCBpbnRlbF91bmNvcmUgKnVuY29y
ZSkKIHsKIAl1NjQgcGF0OwogCkBAIC0yOTk5LDggKzMwMTUsOCBAQCBzdGF0aWMgdm9pZCBjaHZf
c2V0dXBfcHJpdmF0ZV9wcGF0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAkg
ICAgICBHRU44X1BQQVQoNiwgQ0hWX1BQQVRfU05PT1ApIHwKIAkgICAgICBHRU44X1BQQVQoNywg
Q0hWX1BQQVRfU05PT1ApOwogCi0JSTkxNV9XUklURShHRU44X1BSSVZBVEVfUEFUX0xPLCBsb3dl
cl8zMl9iaXRzKHBhdCkpOwotCUk5MTVfV1JJVEUoR0VOOF9QUklWQVRFX1BBVF9ISSwgdXBwZXJf
MzJfYml0cyhwYXQpKTsKKwlpbnRlbF91bmNvcmVfd3JpdGUodW5jb3JlLCBHRU44X1BSSVZBVEVf
UEFUX0xPLCBsb3dlcl8zMl9iaXRzKHBhdCkpOworCWludGVsX3VuY29yZV93cml0ZSh1bmNvcmUs
IEdFTjhfUFJJVkFURV9QQVRfSEksIHVwcGVyXzMyX2JpdHMocGF0KSk7CiB9CiAKIHN0YXRpYyB2
b2lkIGdlbjZfZ21jaF9yZW1vdmUoc3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSAqdm0pCkBAIC0z
MDExLDE4ICszMDI3LDIwIEBAIHN0YXRpYyB2b2lkIGdlbjZfZ21jaF9yZW1vdmUoc3RydWN0IGk5
MTVfYWRkcmVzc19zcGFjZSAqdm0pCiAJY2xlYW51cF9zY3JhdGNoX3BhZ2Uodm0pOwogfQogCi1z
dGF0aWMgdm9pZCBzZXR1cF9wcml2YXRlX3BhdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2
X3ByaXYpCitzdGF0aWMgdm9pZCBzZXR1cF9wcml2YXRlX3BhdChzdHJ1Y3QgaW50ZWxfdW5jb3Jl
ICp1bmNvcmUpCiB7Ci0JR0VNX0JVR19PTihJTlRFTF9HRU4oZGV2X3ByaXYpIDwgOCk7CisJc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB1bmNvcmUtPmk5MTU7CiAKLQlpZiAoSU5URUxf
R0VOKGRldl9wcml2KSA+PSAxMikKLQkJdGdsX3NldHVwX3ByaXZhdGVfcHBhdChkZXZfcHJpdik7
Ci0JZWxzZSBpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMCkKLQkJY25sX3NldHVwX3ByaXZh
dGVfcHBhdChkZXZfcHJpdik7Ci0JZWxzZSBpZiAoSVNfQ0hFUlJZVklFVyhkZXZfcHJpdikgfHwg
SVNfR0VOOV9MUChkZXZfcHJpdikpCi0JCWNodl9zZXR1cF9wcml2YXRlX3BwYXQoZGV2X3ByaXYp
OworCUdFTV9CVUdfT04oSU5URUxfR0VOKGk5MTUpIDwgOCk7CisKKwlpZiAoSU5URUxfR0VOKGk5
MTUpID49IDEyKQorCQl0Z2xfc2V0dXBfcHJpdmF0ZV9wcGF0KHVuY29yZSk7CisJZWxzZSBpZiAo
SU5URUxfR0VOKGk5MTUpID49IDEwKQorCQljbmxfc2V0dXBfcHJpdmF0ZV9wcGF0KHVuY29yZSk7
CisJZWxzZSBpZiAoSVNfQ0hFUlJZVklFVyhpOTE1KSB8fCBJU19HRU45X0xQKGk5MTUpKQorCQlj
aHZfc2V0dXBfcHJpdmF0ZV9wcGF0KHVuY29yZSk7CiAJZWxzZQotCQliZHdfc2V0dXBfcHJpdmF0
ZV9wcGF0KGRldl9wcml2KTsKKwkJYmR3X3NldHVwX3ByaXZhdGVfcHBhdCh1bmNvcmUpOwogfQog
CiBzdGF0aWMgaW50IGdlbjhfZ21jaF9wcm9iZShzdHJ1Y3QgaTkxNV9nZ3R0ICpnZ3R0KQpAQCAt
MzA3OCw3ICszMDk2LDcgQEAgc3RhdGljIGludCBnZW44X2dtY2hfcHJvYmUoc3RydWN0IGk5MTVf
Z2d0dCAqZ2d0dCkKIAogCWdndHQtPnZtLnB0ZV9lbmNvZGUgPSBnZW44X3B0ZV9lbmNvZGU7CiAK
LQlzZXR1cF9wcml2YXRlX3BhdChkZXZfcHJpdik7CisJc2V0dXBfcHJpdmF0ZV9wYXQoZ2d0dC0+
dm0uZ3QtPnVuY29yZSk7CiAKIAlyZXR1cm4gZ2d0dF9wcm9iZV9jb21tb24oZ2d0dCwgc2l6ZSk7
CiB9CkBAIC0zMzgyLDEwICszNDAwLDEyIEBAIHN0YXRpYyB2b2lkIGdndHRfcmVzdG9yZV9tYXBw
aW5ncyhzdHJ1Y3QgaTkxNV9nZ3R0ICpnZ3R0KQogCiB2b2lkIGk5MTVfZ2VtX3Jlc3RvcmVfZ3R0
X21hcHBpbmdzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQogewotCWdndHRfcmVzdG9y
ZV9tYXBwaW5ncygmaTkxNS0+Z2d0dCk7CisJc3RydWN0IGk5MTVfZ2d0dCAqZ2d0dCA9ICZpOTE1
LT5nZ3R0OworCisJZ2d0dF9yZXN0b3JlX21hcHBpbmdzKGdndHQpOwogCiAJaWYgKElOVEVMX0dF
TihpOTE1KSA+PSA4KQotCQlzZXR1cF9wcml2YXRlX3BhdChpOTE1KTsKKwkJc2V0dXBfcHJpdmF0
ZV9wYXQoZ2d0dC0+dm0uZ3QtPnVuY29yZSk7CiB9CiAKIHN0YXRpYyBzdHJ1Y3Qgc2NhdHRlcmxp
c3QgKgotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
