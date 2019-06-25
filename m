Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C2E5B54F8F
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jun 2019 15:02:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 927446E103;
	Tue, 25 Jun 2019 13:02:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 651AD6E103
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jun 2019 13:02:31 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17018181-1500050 
 for multiple; Tue, 25 Jun 2019 14:01:36 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Jun 2019 14:01:25 +0100
Message-Id: <20190625130128.11009-17-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190625130128.11009-1-chris@chris-wilson.co.uk>
References: <20190625130128.11009-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 17/20] drm/i915/gt: Add some debug tracing for
 context pinning
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

QWRkIHRoZSBjb250ZXh0IHBpbi91bnBpbiBldmVudHMgdG8gdGhlIHRyYWNlIGZvciBwb3N0LW1v
cnRlbSBkZWJ1Z2dpbmcuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlz
LXdpbHNvbi5jby51az4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyAg
ICAgICAgfCA1ICsrKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yaW5nYnVmZmVy
LmMgfCAzICsrKwogMiBmaWxlcyBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX2xyYy5jCmluZGV4IDJiYzI1ZTNmODNlNi4uY2UxYWJhMzYwNGIzIDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYworKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwpAQCAtMTUwOSw2ICsxNTA5LDggQEAgc3RhdGlj
IHZvaWQgZXhlY2xpc3RzX2NvbnRleHRfZGVzdHJveShzdHJ1Y3Qga3JlZiAqa3JlZikKIAogc3Rh
dGljIHZvaWQgZXhlY2xpc3RzX2NvbnRleHRfdW5waW4oc3RydWN0IGludGVsX2NvbnRleHQgKmNl
KQogeworCUdFTV9UUkFDRSgiJXMgY29udGV4dDolbGx4IHVucGluXG4iLAorCQkgIGNlLT5lbmdp
bmUtPm5hbWUsIGNlLT5yaW5nLT50aW1lbGluZS0+ZmVuY2VfY29udGV4dCk7CiAJaTkxNV9nZW1f
Y29udGV4dF91bnBpbl9od19pZChjZS0+Z2VtX2NvbnRleHQpOwogCWk5MTVfZ2VtX29iamVjdF91
bnBpbl9tYXAoY2UtPnN0YXRlLT5vYmopOwogfQpAQCAtMTU2Nyw2ICsxNTY5LDkgQEAgX19leGVj
bGlzdHNfY29udGV4dF9waW4oc3RydWN0IGludGVsX2NvbnRleHQgKmNlLAogCWNlLT5scmNfZGVz
YyA9IGxyY19kZXNjcmlwdG9yKGNlLCBlbmdpbmUpOwogCWNlLT5scmNfcmVnX3N0YXRlID0gdmFk
ZHIgKyBMUkNfU1RBVEVfUE4gKiBQQUdFX1NJWkU7CiAJX19leGVjbGlzdHNfdXBkYXRlX3JlZ19z
dGF0ZShjZSwgZW5naW5lKTsKKwlHRU1fVFJBQ0UoIiVzIGNvbnRleHQ6JWxseCBwaW4gcmluZzp7
aGVhZDolMDR4LCB0YWlsOiUwNHh9XG4iLAorCQkgIGVuZ2luZS0+bmFtZSwgY2UtPnJpbmctPnRp
bWVsaW5lLT5mZW5jZV9jb250ZXh0LAorCQkgIGNlLT5yaW5nLT5oZWFkLCBjZS0+cmluZy0+dGFp
bCk7CiAKIAlyZXR1cm4gMDsKIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfcmluZ2J1ZmZlci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmluZ2J1
ZmZlci5jCmluZGV4IGYwOTQ0MDZkY2M1Ni4uODFmOWIwNDIyZTZhIDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yaW5nYnVmZmVyLmMKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfcmluZ2J1ZmZlci5jCkBAIC0xMTk3LDYgKzExOTcsNyBAQCBpbnQg
aW50ZWxfcmluZ19waW4oc3RydWN0IGludGVsX3JpbmcgKnJpbmcpCiAJR0VNX0JVR19PTihyaW5n
LT52YWRkcik7CiAJcmluZy0+dmFkZHIgPSBhZGRyOwogCisJR0VNX1RSQUNFKCJyaW5nOiVsbHgg
cGluXG4iLCByaW5nLT50aW1lbGluZS0+ZmVuY2VfY29udGV4dCk7CiAJcmV0dXJuIDA7CiAKIGVy
cl9yaW5nOgpAQCAtMTIyMyw2ICsxMjI0LDggQEAgdm9pZCBpbnRlbF9yaW5nX3VucGluKHN0cnVj
dCBpbnRlbF9yaW5nICpyaW5nKQogCWlmICghYXRvbWljX2RlY19hbmRfdGVzdCgmcmluZy0+cGlu
X2NvdW50KSkKIAkJcmV0dXJuOwogCisJR0VNX1RSQUNFKCJyaW5nOiVsbHggdW5waW5cbiIsIHJp
bmctPnRpbWVsaW5lLT5mZW5jZV9jb250ZXh0KTsKKwogCS8qIERpc2NhcmQgYW55IHVudXNlZCBi
eXRlcyBiZXlvbmQgdGhhdCBzdWJtaXR0ZWQgdG8gaHcuICovCiAJaW50ZWxfcmluZ19yZXNldChy
aW5nLCByaW5nLT50YWlsKTsKIAotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
