Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1F2E163C1
	for <lists+intel-gfx@lfdr.de>; Tue,  7 May 2019 14:30:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5390689AA7;
	Tue,  7 May 2019 12:29:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DFC189AA7
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 May 2019 12:29:57 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16476703-1500050 
 for <intel-gfx@lists.freedesktop.org>; Tue, 07 May 2019 13:29:55 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  7 May 2019 13:29:54 +0100
Message-Id: <20190507122954.6299-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] drm/i915/execlists: Don't apply priority boost for
 resets
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

RG8gbm90IHRyZWF0IHJlc2V0IGFzIGEgbm9ybWFsIHByZWVtcHRpb24gZXZlbnQgYW5kIGF2b2lk
IGdpdmluZyB0aGUKZ3VpbHR5IHJlcXVlc3QgYSBwcmlvcml0eSBib29zdCBmb3Igc2ltcGx5IGJl
aW5nIGFjdGl2ZSBhdCB0aGUgdGltZSBvZgpyZXNldC4KClNpZ25lZC1vZmYtYnk6IENocmlzIFdp
bHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpSZXZpZXdlZC1ieTogVHZydGtvIFVyc3Vs
aW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9scmMuYyB8IDE2ICsrKysrKysrKy0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA5IGlu
c2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfbHJjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMu
YwppbmRleCA1NTgwYjZmMWFhMGMuLmU2YWUyMDI5MmYyYyAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfbHJjLmMKQEAgLTM3MSwxMSArMzcxLDExIEBAIHN0YXRpYyB2b2lkIHVud2luZF93YV90
YWlsKHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxKQogfQogCiBzdGF0aWMgc3RydWN0IGk5MTVfcmVx
dWVzdCAqCi1fX3Vud2luZF9pbmNvbXBsZXRlX3JlcXVlc3RzKHN0cnVjdCBpbnRlbF9lbmdpbmVf
Y3MgKmVuZ2luZSkKK19fdW53aW5kX2luY29tcGxldGVfcmVxdWVzdHMoc3RydWN0IGludGVsX2Vu
Z2luZV9jcyAqZW5naW5lLCBpbnQgYm9vc3QpCiB7CiAJc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEs
ICpybiwgKmFjdGl2ZSA9IE5VTEw7CiAJc3RydWN0IGxpc3RfaGVhZCAqdW5pbml0aWFsaXplZF92
YXIocGwpOwotCWludCBwcmlvID0gSTkxNV9QUklPUklUWV9JTlZBTElEIHwgQUNUSVZFX1BSSU9S
SVRZOworCWludCBwcmlvID0gSTkxNV9QUklPUklUWV9JTlZBTElEIHwgYm9vc3Q7CiAKIAlsb2Nr
ZGVwX2Fzc2VydF9oZWxkKCZlbmdpbmUtPnRpbWVsaW5lLmxvY2spOwogCkBAIC00MTksOCArNDE5
LDkgQEAgX191bndpbmRfaW5jb21wbGV0ZV9yZXF1ZXN0cyhzdHJ1Y3QgaW50ZWxfZW5naW5lX2Nz
ICplbmdpbmUpCiAJICogaW4gdGhlIHByaW9yaXR5IHF1ZXVlLCBidXQgdGhleSB3aWxsIG5vdCBn
YWluIGltbWVkaWF0ZSBhY2Nlc3MgdG8KIAkgKiB0aGUgR1BVLgogCSAqLwotCWlmICh+cHJpbyAm
IEFDVElWRV9QUklPUklUWSAmJiBfX2k5MTVfcmVxdWVzdF9oYXNfc3RhcnRlZChhY3RpdmUpKSB7
Ci0JCXByaW8gfD0gQUNUSVZFX1BSSU9SSVRZOworCWlmICh+cHJpbyAmIGJvb3N0ICYmIF9faTkx
NV9yZXF1ZXN0X2hhc19zdGFydGVkKGFjdGl2ZSkpIHsKKwkJcHJpbyB8PSBib29zdDsKKwkJR0VN
X0JVR19PTihhY3RpdmUtPnNjaGVkLmF0dHIucHJpb3JpdHkgPj0gcHJpbyk7CiAJCWFjdGl2ZS0+
c2NoZWQuYXR0ci5wcmlvcml0eSA9IHByaW87CiAJCWxpc3RfbW92ZV90YWlsKCZhY3RpdmUtPnNj
aGVkLmxpbmssCiAJCQkgICAgICAgaTkxNV9zY2hlZF9sb29rdXBfcHJpb2xpc3QoZW5naW5lLCBw
cmlvKSk7CkBAIC00MzUsNyArNDM2LDcgQEAgZXhlY2xpc3RzX3Vud2luZF9pbmNvbXBsZXRlX3Jl
cXVlc3RzKHN0cnVjdCBpbnRlbF9lbmdpbmVfZXhlY2xpc3RzICpleGVjbGlzdHMpCiAJc3RydWN0
IGludGVsX2VuZ2luZV9jcyAqZW5naW5lID0KIAkJY29udGFpbmVyX29mKGV4ZWNsaXN0cywgdHlw
ZW9mKCplbmdpbmUpLCBleGVjbGlzdHMpOwogCi0JcmV0dXJuIF9fdW53aW5kX2luY29tcGxldGVf
cmVxdWVzdHMoZW5naW5lKTsKKwlyZXR1cm4gX191bndpbmRfaW5jb21wbGV0ZV9yZXF1ZXN0cyhl
bmdpbmUsIDApOwogfQogCiBzdGF0aWMgaW5saW5lIHZvaWQKQEAgLTY1Niw3ICs2NTcsOCBAQCBz
dGF0aWMgdm9pZCBjb21wbGV0ZV9wcmVlbXB0X2NvbnRleHQoc3RydWN0IGludGVsX2VuZ2luZV9l
eGVjbGlzdHMgKmV4ZWNsaXN0cykKIAlleGVjbGlzdHNfY2FuY2VsX3BvcnRfcmVxdWVzdHMoZXhl
Y2xpc3RzKTsKIAlfX3Vud2luZF9pbmNvbXBsZXRlX3JlcXVlc3RzKGNvbnRhaW5lcl9vZihleGVj
bGlzdHMsCiAJCQkJCQkgIHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MsCi0JCQkJCQkgIGV4ZWNsaXN0
cykpOworCQkJCQkJICBleGVjbGlzdHMpLAorCQkJCSAgICAgQUNUSVZFX1BSSU9SSVRZKTsKIH0K
IAogc3RhdGljIHZvaWQgZXhlY2xpc3RzX2RlcXVldWUoc3RydWN0IGludGVsX2VuZ2luZV9jcyAq
ZW5naW5lKQpAQCAtMTkwOSw3ICsxOTExLDcgQEAgc3RhdGljIHZvaWQgX19leGVjbGlzdHNfcmVz
ZXQoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLCBib29sIHN0YWxsZWQpCiAJZXhlY2xp
c3RzX2NhbmNlbF9wb3J0X3JlcXVlc3RzKGV4ZWNsaXN0cyk7CiAKIAkvKiBQdXNoIGJhY2sgYW55
IGluY29tcGxldGUgcmVxdWVzdHMgZm9yIHJlcGxheSBhZnRlciB0aGUgcmVzZXQuICovCi0JcnEg
PSBfX3Vud2luZF9pbmNvbXBsZXRlX3JlcXVlc3RzKGVuZ2luZSk7CisJcnEgPSBfX3Vud2luZF9p
bmNvbXBsZXRlX3JlcXVlc3RzKGVuZ2luZSwgMCk7CiAJaWYgKCFycSkKIAkJZ290byBvdXRfcmVw
bGF5OwogCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
