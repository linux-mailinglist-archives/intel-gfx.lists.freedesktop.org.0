Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DD3912FB72
	for <lists+intel-gfx@lfdr.de>; Thu, 30 May 2019 14:13:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE42B6E32B;
	Thu, 30 May 2019 12:13:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 544B86E32B
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 May 2019 12:13:25 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16734330-1500050 
 for multiple; Thu, 30 May 2019 13:13:14 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 30 May 2019 13:13:11 +0100
Message-Id: <20190530121311.6794-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Always enable mmio debugging for CI
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
Cc: Mika Kuoppala <mika.kuoppala@intel.com>, matthew.auld@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlIGRlZmF1bHQgYmVoYXZpb3VyIGlzIHRvIHBlcmlvZGljYWxseSBjaGVjayBmb3IgYSBtbWlv
IGFjY2VzcyBlcnJvciwKYW5kIG9uY2UgZGV0ZWN0ZWQgZW5hYmxlIG1taW8gYWNjZXNzIGNoZWNr
aW5nLiBIb3dldmVyIHRoaXMgaXMgdXNlbGVzcwppZiB0aGUgZXJyb3Igb25seSBvY2N1cnMgb25j
ZS4KClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVr
PgpDYzogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBpbnRlbC5jb20+Ci0tLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvS2NvbmZpZy5kZWJ1ZyB8IDEyICsrKysrKysrKysrKwogZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9wYXJhbXMuaCB8ICA4ICsrKysrKystCiAyIGZpbGVzIGNoYW5nZWQs
IDE5IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9LY29uZmlnLmRlYnVnIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvS2NvbmZpZy5k
ZWJ1ZwppbmRleCAwNGI2ODZkMmMyZDAuLjUzYzVmOGNkOWExZSAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvS2NvbmZpZy5kZWJ1ZworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9L
Y29uZmlnLmRlYnVnCkBAIC0zMiw2ICszMiw3IEBAIGNvbmZpZyBEUk1fSTkxNV9ERUJVRwogCXNl
bGVjdCBEUk1fSTkxNV9TV19GRU5DRV9ERUJVR19PQkpFQ1RTCiAJc2VsZWN0IERSTV9JOTE1X1NF
TEZURVNUCiAJc2VsZWN0IERSTV9JOTE1X0RFQlVHX1JVTlRJTUVfUE0KKwlzZWxlY3QgRFJNX0k5
MTVfREVCVUdfTU1JTwogICAgICAgICBkZWZhdWx0IG4KICAgICAgICAgaGVscAogICAgICAgICAg
IENob29zZSB0aGlzIG9wdGlvbiB0byB0dXJuIG9uIGV4dHJhIGRyaXZlciBkZWJ1Z2dpbmcgdGhh
dCBtYXkgYWZmZWN0CkBAIC00MSw2ICs0MiwxNyBAQCBjb25maWcgRFJNX0k5MTVfREVCVUcKIAog
ICAgICAgICAgIElmIGluIGRvdWJ0LCBzYXkgIk4iLgogCitjb25maWcgRFJNX0k5MTVfREVCVUdf
TU1JTworICAgICAgICBib29sICJBbHdheXMgaW5zZXJ0IGV4dHJhIGNoZWNrcyBhcm91bmQgbW1p
byBhY2Nlc3MiCisgICAgICAgIGRlZmF1bHQgbgorICAgICAgICBoZWxwCisJICBBbHdheXMgZW5h
YmxlcyB0aGUgZXh0cmEgc2FuaXR5IGNoZWNrcyAoZXh0cmEgcmVnaXN0ZXIgcmVhZHMpCisJICBh
cm91bmQgZXZlcnkgbW1pbyAocmVnaXN0ZXIpIGFjY2VzcyB0aGF0IHdpbGwgc2xvdyB0aGUgc3lz
dGVtIGRvd24uCisKKyAgICAgICAgICBSZWNvbW1lbmRlZCBmb3IgZHJpdmVyIGRldmVsb3BlcnMg
b25seS4KKworICAgICAgICAgIElmIGluIGRvdWJ0LCBzYXkgIk4iLgorCiBjb25maWcgRFJNX0k5
MTVfREVCVUdfR0VNCiAgICAgICAgIGJvb2wgIkluc2VydCBleHRyYSBjaGVja3MgaW50byB0aGUg
R0VNIGludGVybmFscyIKICAgICAgICAgZGVmYXVsdCBuCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3BhcmFtcy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wYXJh
bXMuaAppbmRleCAzZjE0ZTk4ODFhMGQuLjg5MDE4YmIyZDA1OSAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9wYXJhbXMuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3BhcmFtcy5oCkBAIC0zMyw2ICszMywxMiBAQCBzdHJ1Y3QgZHJtX3ByaW50ZXI7CiAjZGVm
aW5lIEVOQUJMRV9HVUNfU1VCTUlTU0lPTgkJQklUKDApCiAjZGVmaW5lIEVOQUJMRV9HVUNfTE9B
RF9IVUMJCUJJVCgxKQogCisjaWYgSVNfRU5BQkxFRChDT05GSUdfRFJNX0k5MTVfREVCVUdfTU1J
TykKKyNkZWZpbmUgTU1JT19ERUJVR19ERkwgLTEKKyNlbHNlCisjZGVmaW5lIE1NSU9fREVCVUdf
REZMIDAKKyNlbmRpZgorCiAvKgogICogSW52b2tlIHBhcmFtLCBhIGZ1bmN0aW9uLWxpa2UgbWFj
cm8sIGZvciBlYWNoIGk5MTUgcGFyYW0sIHdpdGggYXJndW1lbnRzOgogICoKQEAgLTU5LDcgKzY1
LDcgQEAgc3RydWN0IGRybV9wcmludGVyOwogCXBhcmFtKGNoYXIgKiwgZ3VjX2Zpcm13YXJlX3Bh
dGgsIE5VTEwpIFwKIAlwYXJhbShjaGFyICosIGh1Y19maXJtd2FyZV9wYXRoLCBOVUxMKSBcCiAJ
cGFyYW0oY2hhciAqLCBkbWNfZmlybXdhcmVfcGF0aCwgTlVMTCkgXAotCXBhcmFtKGludCwgbW1p
b19kZWJ1ZywgMCkgXAorCXBhcmFtKGludCwgbW1pb19kZWJ1ZywgTU1JT19ERUJVR19ERkwpIFwK
IAlwYXJhbShpbnQsIGVkcF92c3dpbmcsIDApIFwKIAlwYXJhbShpbnQsIHJlc2V0LCAyKSBcCiAJ
cGFyYW0odW5zaWduZWQgaW50LCBpbmplY3RfbG9hZF9mYWlsdXJlLCAwKSBcCi0tIAoyLjIwLjEK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
