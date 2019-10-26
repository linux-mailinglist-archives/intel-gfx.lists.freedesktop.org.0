Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DCC5E5EAB
	for <lists+intel-gfx@lfdr.de>; Sat, 26 Oct 2019 20:35:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42D956E125;
	Sat, 26 Oct 2019 18:35:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A55816E125
 for <intel-gfx@lists.freedesktop.org>; Sat, 26 Oct 2019 18:35:30 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18977001-1500050 
 for multiple; Sat, 26 Oct 2019 19:35:24 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 26 Oct 2019 19:35:22 +0100
Message-Id: <20191026183522.6464-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0.rc1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/execlists: Simply walk back along
 request timeline on reset
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

VGhlIHJlcXVlc3QncyB0aW1lbGluZSB3aWxsIG9ubHkgY29udGFpbiByZXF1ZXN0cyBmcm9tIHRo
aXMgY29udGV4dCwgaW4Kb3JkZXIgb2YgZXhlY3V0aW9uLiBUaGVyZWZvcmUsIHdlIGNhbiBzaW1w
bHkgbG9vayBiYWNrIGFsb25nIHRoaXMKdGltZWxpbmUgdG8gZmluZCB0aGUgY3VycmVudGx5IGV4
ZWN1dGluZyByZXF1ZXN0LgoKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJp
cy13aWxzb24uY28udWs+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMg
fCAxMiArKysrKy0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDcgZGVs
ZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJj
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwppbmRleCAxNjM0MDc0MDEz
OWQuLmJkYWRiNDE2NjNjMSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfbHJjLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKQEAgLTI1
MiwxMiArMjUyLDExIEBAIHN0YXRpYyB2b2lkIG1hcmtfZWlvKHN0cnVjdCBpOTE1X3JlcXVlc3Qg
KnJxKQogCiBzdGF0aWMgc3RydWN0IGk5MTVfcmVxdWVzdCAqYWN0aXZlX3JlcXVlc3Qoc3RydWN0
IGk5MTVfcmVxdWVzdCAqcnEpCiB7Ci0JY29uc3Qgc3RydWN0IGludGVsX2NvbnRleHQgKiBjb25z
dCBjZSA9IHJxLT5od19jb250ZXh0OwogCXN0cnVjdCBpOTE1X3JlcXVlc3QgKmFjdGl2ZSA9IE5V
TEw7CiAJc3RydWN0IGxpc3RfaGVhZCAqbGlzdDsKIAotCWlmICghaTkxNV9yZXF1ZXN0X2lzX2Fj
dGl2ZShycSkpIC8qIHVud291bmQsIGJ1dCBpbmNvbXBsZXRlISAqLwotCQlyZXR1cm4gcnE7CisJ
aWYgKCFpOTE1X3JlcXVlc3RfaXNfYWN0aXZlKHJxKSkKKwkJcmV0dXJuIE5VTEw7CiAKIAlyY3Vf
cmVhZF9sb2NrKCk7CiAJbGlzdCA9ICZyY3VfZGVyZWZlcmVuY2UocnEtPnRpbWVsaW5lKS0+cmVx
dWVzdHM7CkBAIC0yNjUsOSArMjY0LDcgQEAgc3RhdGljIHN0cnVjdCBpOTE1X3JlcXVlc3QgKmFj
dGl2ZV9yZXF1ZXN0KHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxKQogCQlpZiAoaTkxNV9yZXF1ZXN0
X2NvbXBsZXRlZChycSkpCiAJCQlicmVhazsKIAotCQlpZiAocnEtPmh3X2NvbnRleHQgIT0gY2Up
Ci0JCQlicmVhazsKLQorCQlHRU1fQlVHX09OKCFpOTE1X3JlcXVlc3RfaXNfYWN0aXZlKHJxKSk7
CiAJCWFjdGl2ZSA9IHJxOwogCX0KIAlyY3VfcmVhZF91bmxvY2soKTsKQEAgLTMwMDAsNiArMjk5
Nyw3IEBAIHN0YXRpYyB2b2lkIF9fZXhlY2xpc3RzX3Jlc2V0KHN0cnVjdCBpbnRlbF9lbmdpbmVf
Y3MgKmVuZ2luZSwgYm9vbCBzdGFsbGVkKQogCS8qIENvbnRleHQgaGFzIHJlcXVlc3RzIHN0aWxs
IGluLWZsaWdodDsgaXQgc2hvdWxkIG5vdCBiZSBpZGxlISAqLwogCUdFTV9CVUdfT04oaTkxNV9h
Y3RpdmVfaXNfaWRsZSgmY2UtPmFjdGl2ZSkpOwogCWNlLT5yaW5nLT5oZWFkID0gaW50ZWxfcmlu
Z193cmFwKGNlLT5yaW5nLCBycS0+aGVhZCk7CisJR0VNX0JVR19PTihjZS0+cmluZy0+aGVhZCA9
PSBjZS0+cmluZy0+dGFpbCk7CiAKIAkvKgogCSAqIElmIHRoaXMgcmVxdWVzdCBoYXNuJ3Qgc3Rh
cnRlZCB5ZXQsIGUuZy4gaXQgaXMgd2FpdGluZyBvbiBhCkBAIC0zMDQzLDcgKzMwNDEsNyBAQCBz
dGF0aWMgdm9pZCBfX2V4ZWNsaXN0c19yZXNldChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdp
bmUsIGJvb2wgc3RhbGxlZCkKIAlyZXN0b3JlX2RlZmF1bHRfc3RhdGUoY2UsIGVuZ2luZSk7CiAK
IG91dF9yZXBsYXk6Ci0JR0VNX1RSQUNFKCIlcyByZXBsYXkge2hlYWQ6JTA0eCwgdGFpbDolMDR4
XG4iLAorCUdFTV9UUkFDRSgiJXMgcmVwbGF5IHtoZWFkOiUwNHgsIHRhaWw6JTA0eH1cbiIsCiAJ
CSAgZW5naW5lLT5uYW1lLCBjZS0+cmluZy0+aGVhZCwgY2UtPnJpbmctPnRhaWwpOwogCWludGVs
X3JpbmdfdXBkYXRlX3NwYWNlKGNlLT5yaW5nKTsKIAlfX2V4ZWNsaXN0c19yZXNldF9yZWdfc3Rh
dGUoY2UsIGVuZ2luZSk7Ci0tIAoyLjI0LjAucmMxCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
