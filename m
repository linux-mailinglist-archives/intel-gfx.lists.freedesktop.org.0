Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 40CE4E5F6A
	for <lists+intel-gfx@lfdr.de>; Sat, 26 Oct 2019 22:09:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01E376E137;
	Sat, 26 Oct 2019 20:09:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56DAB6E137
 for <intel-gfx@lists.freedesktop.org>; Sat, 26 Oct 2019 20:09:43 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18977420-1500050 
 for multiple; Sat, 26 Oct 2019 21:09:19 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 26 Oct 2019 21:09:17 +0100
Message-Id: <20191026200917.1780-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0.rc1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/rps: Flip interpretation of ips
 fmin/fmax to max rps
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

aXBzIHVzZXMgY2xvY2sgZGVsYXlzIGFzIG9wcG9zZWQgdG8gcnBzIGZyZXF1ZW5jeSBiaW5zLiBU
byBmaXQgdGhlCmRlbGF5cyBpbnRvIHRoZSBzYW1lIHJwcyBjYWxjdWxhdGlvbnMsIHdlIG5lZWQg
dG8gaW52ZXJ0IHRoZSBpcHMgZGVsYXlzLgoKRml4ZXM6IDNlN2FiZjgxNDE5MyAoImRybS9pOTE1
OiBFeHRyYWN0IEdUIHJlbmRlciBwb3dlciBzdGF0ZSBtYW5hZ2VtZW50IikKU2lnbmVkLW9mZi1i
eTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBBbmRpIFNoeXRp
IDxhbmRpLnNoeXRpQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9ycHMuYyB8IDggKysrKystLS0KIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDMg
ZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
cnBzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ycHMuYwppbmRleCAzMGY1NmM3
ODY0NjguLjAzMmEwYzYzODlmOSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfcnBzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcnBzLmMKQEAg
LTE4MCw4ICsxODAsOCBAQCBzdGF0aWMgdm9pZCBnZW41X3Jwc19pbml0KHN0cnVjdCBpbnRlbF9y
cHMgKnJwcykKIAlEUk1fREVCVUdfRFJJVkVSKCJmbWF4OiAlZCwgZm1pbjogJWQsIGZzdGFydDog
JWRcbiIsCiAJCQkgZm1heCwgZm1pbiwgZnN0YXJ0KTsKIAotCXJwcy0+bWluX2ZyZXEgPSAtZnN0
YXJ0OwotCXJwcy0+bWF4X2ZyZXEgPSAtZm1pbjsKKwlycHMtPm1pbl9mcmVxID0gZm1heDsKKwly
cHMtPm1heF9mcmVxID0gZm1pbjsKIAogCXJwcy0+aWRsZV9mcmVxID0gcnBzLT5taW5fZnJlcTsK
IAlycHMtPmN1cl9mcmVxID0gcnBzLT5pZGxlX2ZyZXE7CkBAIC0zMDcsNyArMzA3LDkgQEAgc3Rh
dGljIGJvb2wgZ2VuNV9ycHNfc2V0KHN0cnVjdCBpbnRlbF9ycHMgKnJwcywgdTggdmFsKQogCQly
ZXR1cm4gZmFsc2U7IC8qIHN0aWxsIGJ1c3kgd2l0aCBhbm90aGVyIGNvbW1hbmQgKi8KIAl9CiAK
LQl2YWwgPSAtdmFsOworCS8qIEludmVydCB0aGUgZnJlcXVlbmN5IGJpbiBpbnRvIGFuIGlwcyBk
ZWxheSAqLworCXZhbCA9IHJwcy0+bWF4X2ZyZXEgLSB2YWw7CisJdmFsID0gcnBzLT5taW5fZnJl
cSArIHZhbDsKIAogCXJndnN3Y3RsID0KIAkJKE1FTUNUTF9DTURfQ0hGUkVRIDw8IE1FTUNUTF9D
TURfU0hJRlQpIHwKLS0gCjIuMjQuMC5yYzEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
