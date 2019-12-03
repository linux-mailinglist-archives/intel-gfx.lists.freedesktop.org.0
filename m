Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AA5CC10FB7C
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Dec 2019 11:13:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06FC86E46B;
	Tue,  3 Dec 2019 10:13:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3E1589E9B
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Dec 2019 10:13:55 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19439181-1500050 
 for multiple; Tue, 03 Dec 2019 10:13:46 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 Dec 2019 10:13:46 +0000
Message-Id: <20191203101347.2836057-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/gem: Take runtime-pm wakeref prior
 to unbinding
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

U29tZSBtYWNoaW5lcyByZXF1aXJlIEFDUEkgZm9yIHJ1bnRpbWUgcmVzdW1lLCBhbmQgQUNQSSBp
cyBxdWl0ZSBrbWFsbG9jCmhhcHB5LiBXZSBjYW5ub3QgaGFuZGxlIGttYWxsb2MgZnJvbSBpbnNp
ZGUgdGhlIHZtLT5tdXRleCwgYXMgdGhleSBhcmUKdXNlZCBieSB0aGUgc2hyaW5rZXIsIGFuZCBz
byB3ZSBtdXN0IGVuc3VyZSB0aGUgZ2xvYmFsIHJ1bnRpbWUtcG0gaXMKYXdha2UgcHJpb3IgdG8g
dW5iaW5kaW5nIHRvIGF2b2lkIHRoZSBwb3RlbnRpYWwgaW52ZXJzaW9uLgoKPDQ+IFs1Ny4xMjE3
NDhdID09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PQo8ND4gWzU3LjEyMTc1MF0gV0FSTklORzogcG9zc2libGUgY2lyY3VsYXIgbG9ja2luZyBkZXBl
bmRlbmN5IGRldGVjdGVkCjw0PiBbNTcuMTIxNzUzXSA1LjQuMC1yYzgtQ0ktQ0lfRFJNXzc0NjYr
ICMxIFRhaW50ZWQ6IEcgICAgIFUKPDQ+IFs1Ny4xMjE3NTRdIC0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo8ND4gWzU3LjEyMTc1Nl0gaTkxNV9w
bV9ycG0vMTEwNSBpcyB0cnlpbmcgdG8gYWNxdWlyZSBsb2NrOgo8ND4gWzU3LjEyMTc1OF0gZmZm
ZmZmZmY4MjI2M2E0MCAoZnNfcmVjbGFpbSl7Ky4rLn0sIGF0OiBmc19yZWNsYWltX2FjcXVpcmUu
cGFydC4xMTcrMHgwLzB4MzAKPDQ+IFs1Ny4xMjE3NjZdCmJ1dCB0YXNrIGlzIGFscmVhZHkgaG9s
ZGluZyBsb2NrOgo8ND4gWzU3LjEyMTc2OF0gZmZmZjg4ODQ3NWE1OTNjMCAoJnZtLT5tdXRleCl7
Ky4rLn0sIGF0OiBpOTE1X3ZtYV91bmJpbmQrMHgyMS8weDUwIFtpOTE1XQo8ND4gWzU3LjEyMTg2
OF0Kd2hpY2ggbG9jayBhbHJlYWR5IGRlcGVuZHMgb24gdGhlIG5ldyBsb2NrLgoKPDQ+IFs1Ny4x
MjE4NjldCnRoZSBleGlzdGluZyBkZXBlbmRlbmN5IGNoYWluIChpbiByZXZlcnNlIG9yZGVyKSBp
czoKPDQ+IFs1Ny4xMjE4NzFdCi0+ICMxICgmdm0tPm11dGV4KXsrLisufToKPDQ+IFs1Ny4xMjE5
NTFdICAgICAgICBpOTE1X2dlbV9zaHJpbmtlcl90YWludHNfbXV0ZXgrMHhhMi8weGQwIFtpOTE1
XQo8ND4gWzU3LjEyMjAyOF0gICAgICAgIGk5MTVfYWRkcmVzc19zcGFjZV9pbml0KzB4YTkvMHgx
NzAgW2k5MTVdCjw0PiBbNTcuMTIyMTA0XSAgICAgICAgaTkxNV9nZ3R0X2luaXRfaHcrMHg0Ny8w
eDEzMCBbaTkxNV0KPDQ+IFs1Ny4xMjIxNTBdICAgICAgICBpOTE1X2RyaXZlcl9wcm9iZSsweGJi
NC8weDE1ZjAgW2k5MTVdCjw0PiBbNTcuMTIyMTk3XSAgICAgICAgaTkxNV9wY2lfcHJvYmUrMHg0
My8weDFjMCBbaTkxNV0KPDQ+IFs1Ny4xMjIyMDJdICAgICAgICBwY2lfZGV2aWNlX3Byb2JlKzB4
OWUvMHgxMjAKPDQ+IFs1Ny4xMjIyMDZdICAgICAgICByZWFsbHlfcHJvYmUrMHhlYS8weDQyMAo8
ND4gWzU3LjEyMjIwOV0gICAgICAgIGRyaXZlcl9wcm9iZV9kZXZpY2UrMHgxMGIvMHgxMjAKPDQ+
IFs1Ny4xMjIyMTJdICAgICAgICBkZXZpY2VfZHJpdmVyX2F0dGFjaCsweDRhLzB4NTAKPDQ+IFs1
Ny4xMjIyMTRdICAgICAgICBfX2RyaXZlcl9hdHRhY2grMHg5Ny8weDEzMAo8ND4gWzU3LjEyMjIx
N10gICAgICAgIGJ1c19mb3JfZWFjaF9kZXYrMHg3NC8weGMwCjw0PiBbNTcuMTIyMjIwXSAgICAg
ICAgYnVzX2FkZF9kcml2ZXIrMHgxNDIvMHgyMjAKPDQ+IFs1Ny4xMjIyMjJdICAgICAgICBkcml2
ZXJfcmVnaXN0ZXIrMHg1Ni8weGYwCjw0PiBbNTcuMTIyMjI2XSAgICAgICAgZG9fb25lX2luaXRj
YWxsKzB4NTgvMHgyZmYKPDQ+IFs1Ny4xMjIyMzBdICAgICAgICBkb19pbml0X21vZHVsZSsweDU2
LzB4MWY4Cjw0PiBbNTcuMTIyMjMzXSAgICAgICAgbG9hZF9tb2R1bGUrMHgyNDNlLzB4MjlmMAo8
ND4gWzU3LjEyMjIzNl0gICAgICAgIF9fZG9fc3lzX2Zpbml0X21vZHVsZSsweGU5LzB4MTEwCjw0
PiBbNTcuMTIyMjM5XSAgICAgICAgZG9fc3lzY2FsbF82NCsweDRmLzB4MjEwCjw0PiBbNTcuMTIy
MjQyXSAgICAgICAgZW50cnlfU1lTQ0FMTF82NF9hZnRlcl9od2ZyYW1lKzB4NDkvMHhiZQo8ND4g
WzU3LjEyMjI0NF0KLT4gIzAgKGZzX3JlY2xhaW0peysuKy59Ogo8ND4gWzU3LjEyMjI0OV0gICAg
ICAgIF9fbG9ja19hY3F1aXJlKzB4MTMyOC8weDE1ZDAKPDQ+IFs1Ny4xMjIyNTFdICAgICAgICBs
b2NrX2FjcXVpcmUrMHhhNy8weDFjMAo8ND4gWzU3LjEyMjI1NF0gICAgICAgIGZzX3JlY2xhaW1f
YWNxdWlyZS5wYXJ0LjExNysweDI0LzB4MzAKPDQ+IFs1Ny4xMjIyNTddICAgICAgICBfX2ttYWxs
b2MrMHg0OC8weDMyMAo8ND4gWzU3LjEyMjI2MV0gICAgICAgIGFjcGlfbnNfaW50ZXJuYWxpemVf
bmFtZSsweDQ0LzB4OWIKPDQ+IFs1Ny4xMjIyNjRdICAgICAgICBhY3BpX25zX2dldF9ub2RlX3Vu
bG9ja2VkKzB4NmIvMHhkMwo8ND4gWzU3LjEyMjI2N10gICAgICAgIGFjcGlfbnNfZ2V0X25vZGUr
MHgzYi8weDUwCjw0PiBbNTcuMTIyMjcxXSAgICAgICAgYWNwaV9nZXRfaGFuZGxlKzB4OGEvMHhi
NAo8ND4gWzU3LjEyMjI3NF0gICAgICAgIGFjcGlfaGFzX21ldGhvZCsweDFjLzB4NDAKPDQ+IFs1
Ny4xMjIyNzhdICAgICAgICBhY3BpX3BjaV9zZXRfcG93ZXJfc3RhdGUrMHg0MC8weGUwCjw0PiBb
NTcuMTIyMjgxXSAgICAgICAgcGNpX3BsYXRmb3JtX3Bvd2VyX3RyYW5zaXRpb24rMHgzZS8weDkw
Cjw0PiBbNTcuMTIyMjg0XSAgICAgICAgcGNpX3NldF9wb3dlcl9zdGF0ZSsweDgzLzB4ZjAKPDQ+
IFs1Ny4xMjIyODddICAgICAgICBwY2lfcmVzdG9yZV9zdGFuZGFyZF9jb25maWcrMHgyMi8weDQw
Cjw0PiBbNTcuMTIyMjg5XSAgICAgICAgcGNpX3BtX3J1bnRpbWVfcmVzdW1lKzB4MjMvMHhjMAo8
ND4gWzU3LjEyMjI5M10gICAgICAgIF9fcnBtX2NhbGxiYWNrKzB4YjEvMHgxMTAKPDQ+IFs1Ny4x
MjIyOTZdICAgICAgICBycG1fY2FsbGJhY2srMHgxYS8weDcwCjw0PiBbNTcuMTIyMjk5XSAgICAg
ICAgcnBtX3Jlc3VtZSsweDUwZS8weDc5MAo8ND4gWzU3LjEyMjMwMl0gICAgICAgIF9fcG1fcnVu
dGltZV9yZXN1bWUrMHg0Mi8weDgwCjw0PiBbNTcuMTIyMzU3XSAgICAgICAgX19pbnRlbF9ydW50
aW1lX3BtX2dldCsweDE1LzB4NjAgW2k5MTVdCjw0PiBbNTcuMTIyNDM1XSAgICAgICAgZ2d0dF91
bmJpbmRfdm1hKzB4MjQvMHg2MCBbaTkxNV0KPDQ+IFs1Ny4xMjI1MTRdICAgICAgICBfX2k5MTVf
dm1hX3VuYmluZC5wYXJ0LjM5KzB4YjUvMHg1MDAgW2k5MTVdCjw0PiBbNTcuMTIyNTkzXSAgICAg
ICAgaTkxNV92bWFfdW5iaW5kKzB4MmQvMHg1MCBbaTkxNV0KPDQ+IFs1Ny4xMjI2NjhdICAgICAg
ICBpOTE1X2dlbV9vYmplY3RfdW5iaW5kKzB4MTFjLzB4MjYwIFtpOTE1XQo8ND4gWzU3LjEyMjc0
MF0gICAgICAgIGk5MTVfZ2VtX29iamVjdF9zZXRfY2FjaGVfbGV2ZWwrMHgzMi8weDkwIFtpOTE1
XQo8ND4gWzU3LjEyMjgxMF0gICAgICAgIGk5MTVfZ2VtX3NldF9jYWNoaW5nX2lvY3RsKzB4MWY3
LzB4MmYwIFtpOTE1XQo8ND4gWzU3LjEyMjgxNV0gICAgICAgIGRybV9pb2N0bF9rZXJuZWwrMHhh
Ny8weGYwCjw0PiBbNTcuMTIyODE4XSAgICAgICAgZHJtX2lvY3RsKzB4MmUxLzB4MzkwCjw0PiBb
NTcuMTIyODIyXSAgICAgICAgZG9fdmZzX2lvY3RsKzB4YTAvMHg2ZjAKPDQ+IFs1Ny4xMjI4MjVd
ICAgICAgICBrc3lzX2lvY3RsKzB4MzUvMHg2MAo8ND4gWzU3LjEyMjgyOF0gICAgICAgIF9feDY0
X3N5c19pb2N0bCsweDExLzB4MjAKPDQ+IFs1Ny4xMjI4MzBdICAgICAgICBkb19zeXNjYWxsXzY0
KzB4NGYvMHgyMTAKPDQ+IFs1Ny4xMjI4MzNdICAgICAgICBlbnRyeV9TWVNDQUxMXzY0X2FmdGVy
X2h3ZnJhbWUrMHg0OS8weGJlCgpDbG9zZXM6IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9y
Zy9kcm0vaW50ZWwvaXNzdWVzLzcxMQpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlz
QGNocmlzLXdpbHNvbi5jby51az4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5j
IHwgMTcgKysrKysrKysrKysrKysrKy0KIDEgZmlsZSBjaGFuZ2VkLCAxNiBpbnNlcnRpb25zKCsp
LCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9n
ZW0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMKaW5kZXggNjEzOTViMDM0NDNl
Li5mN2I1ZmUwZjU0MjQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2Vt
LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYwpAQCAtMTE5LDEwICsxMTks
MjMgQEAgaTkxNV9nZW1fZ2V0X2FwZXJ0dXJlX2lvY3RsKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYs
IHZvaWQgKmRhdGEsCiBpbnQgaTkxNV9nZW1fb2JqZWN0X3VuYmluZChzdHJ1Y3QgZHJtX2k5MTVf
Z2VtX29iamVjdCAqb2JqLAogCQkJICAgdW5zaWduZWQgbG9uZyBmbGFncykKIHsKLQlzdHJ1Y3Qg
aTkxNV92bWEgKnZtYTsKKwlzdHJ1Y3QgaW50ZWxfcnVudGltZV9wbSAqcnBtID0gJnRvX2k5MTUo
b2JqLT5iYXNlLmRldiktPnJ1bnRpbWVfcG07CiAJTElTVF9IRUFEKHN0aWxsX2luX2xpc3QpOwor
CWludGVsX3dha2VyZWZfdCB3YWtlcmVmOworCXN0cnVjdCBpOTE1X3ZtYSAqdm1hOwogCWludCBy
ZXQgPSAwOwogCisJaWYgKCFhdG9taWNfcmVhZCgmb2JqLT5iaW5kX2NvdW50KSkKKwkJcmV0dXJu
IDA7CisKKwkvKgorCSAqIEFzIHNvbWUgbWFjaGluZXMgdXNlIEFDUEkgdG8gaGFuZGxlIHJ1bnRp
bWUtcmVzdW1lIGNhbGxiYWNrcywgYW5kCisJICogQUNQSSBpcyBxdWl0ZSBrbWFsbG9jIGhhcHB5
LCB3ZSBjYW5ub3QgcmVzdW1lIGJlbmVhdGggdGhlIHZtLT5tdXRleAorCSAqIGFzIHRoZXkgYXJl
IHJlcXVpcmVkIGJ5IHRoZSBzaHJpbmtlci4gRXJnbywgd2Ugd2FrZSB0aGUgZGV2aWNlIHVwCisJ
ICogZmlyc3QganVzdCBpbiBjYXNlLgorCSAqLworCXdha2VyZWYgPSBpbnRlbF9ydW50aW1lX3Bt
X2dldChycG0pOworCiAJc3Bpbl9sb2NrKCZvYmotPnZtYS5sb2NrKTsKIAl3aGlsZSAoIXJldCAm
JiAodm1hID0gbGlzdF9maXJzdF9lbnRyeV9vcl9udWxsKCZvYmotPnZtYS5saXN0LAogCQkJCQkJ
ICAgICAgIHN0cnVjdCBpOTE1X3ZtYSwKQEAgLTE0Niw2ICsxNTksOCBAQCBpbnQgaTkxNV9nZW1f
b2JqZWN0X3VuYmluZChzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLAogCWxpc3Rfc3Bs
aWNlKCZzdGlsbF9pbl9saXN0LCAmb2JqLT52bWEubGlzdCk7CiAJc3Bpbl91bmxvY2soJm9iai0+
dm1hLmxvY2spOwogCisJaW50ZWxfcnVudGltZV9wbV9wdXQocnBtLCB3YWtlcmVmKTsKKwogCXJl
dHVybiByZXQ7CiB9CiAKLS0gCjIuMjQuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
