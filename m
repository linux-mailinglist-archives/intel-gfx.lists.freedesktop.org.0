Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CBAEE5EBA
	for <lists+intel-gfx@lfdr.de>; Sat, 26 Oct 2019 20:52:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 972896E127;
	Sat, 26 Oct 2019 18:52:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F8E16E127
 for <intel-gfx@lists.freedesktop.org>; Sat, 26 Oct 2019 18:52:21 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18977059-1500050 
 for multiple; Sat, 26 Oct 2019 19:52:17 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 26 Oct 2019 19:52:15 +0100
Message-Id: <20191026185215.16345-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0.rc1
In-Reply-To: <20191026183522.6464-1-chris@chris-wilson.co.uk>
References: <20191026183522.6464-1-chris@chris-wilson.co.uk>
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
fCAxMCArKy0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCA4IGRlbGV0
aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKaW5kZXggMTYzNDA3NDAxMzlk
Li4xZjM5YTkyMWFmYzAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X2xyYy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCkBAIC0yNTIs
MjIgKzI1MiwxNSBAQCBzdGF0aWMgdm9pZCBtYXJrX2VpbyhzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpy
cSkKIAogc3RhdGljIHN0cnVjdCBpOTE1X3JlcXVlc3QgKmFjdGl2ZV9yZXF1ZXN0KHN0cnVjdCBp
OTE1X3JlcXVlc3QgKnJxKQogewotCWNvbnN0IHN0cnVjdCBpbnRlbF9jb250ZXh0ICogY29uc3Qg
Y2UgPSBycS0+aHdfY29udGV4dDsKIAlzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICphY3RpdmUgPSBOVUxM
OwogCXN0cnVjdCBsaXN0X2hlYWQgKmxpc3Q7CiAKLQlpZiAoIWk5MTVfcmVxdWVzdF9pc19hY3Rp
dmUocnEpKSAvKiB1bndvdW5kLCBidXQgaW5jb21wbGV0ZSEgKi8KLQkJcmV0dXJuIHJxOwotCiAJ
cmN1X3JlYWRfbG9jaygpOwogCWxpc3QgPSAmcmN1X2RlcmVmZXJlbmNlKHJxLT50aW1lbGluZSkt
PnJlcXVlc3RzOwogCWxpc3RfZm9yX2VhY2hfZW50cnlfZnJvbV9yZXZlcnNlKHJxLCBsaXN0LCBs
aW5rKSB7CiAJCWlmIChpOTE1X3JlcXVlc3RfY29tcGxldGVkKHJxKSkKIAkJCWJyZWFrOwogCi0J
CWlmIChycS0+aHdfY29udGV4dCAhPSBjZSkKLQkJCWJyZWFrOwotCiAJCWFjdGl2ZSA9IHJxOwog
CX0KIAlyY3VfcmVhZF91bmxvY2soKTsKQEAgLTMwMDAsNiArMjk5Myw3IEBAIHN0YXRpYyB2b2lk
IF9fZXhlY2xpc3RzX3Jlc2V0KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwgYm9vbCBz
dGFsbGVkKQogCS8qIENvbnRleHQgaGFzIHJlcXVlc3RzIHN0aWxsIGluLWZsaWdodDsgaXQgc2hv
dWxkIG5vdCBiZSBpZGxlISAqLwogCUdFTV9CVUdfT04oaTkxNV9hY3RpdmVfaXNfaWRsZSgmY2Ut
PmFjdGl2ZSkpOwogCWNlLT5yaW5nLT5oZWFkID0gaW50ZWxfcmluZ193cmFwKGNlLT5yaW5nLCBy
cS0+aGVhZCk7CisJR0VNX0JVR19PTihjZS0+cmluZy0+aGVhZCA9PSBjZS0+cmluZy0+dGFpbCk7
CiAKIAkvKgogCSAqIElmIHRoaXMgcmVxdWVzdCBoYXNuJ3Qgc3RhcnRlZCB5ZXQsIGUuZy4gaXQg
aXMgd2FpdGluZyBvbiBhCkBAIC0zMDQzLDcgKzMwMzcsNyBAQCBzdGF0aWMgdm9pZCBfX2V4ZWNs
aXN0c19yZXNldChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUsIGJvb2wgc3RhbGxlZCkK
IAlyZXN0b3JlX2RlZmF1bHRfc3RhdGUoY2UsIGVuZ2luZSk7CiAKIG91dF9yZXBsYXk6Ci0JR0VN
X1RSQUNFKCIlcyByZXBsYXkge2hlYWQ6JTA0eCwgdGFpbDolMDR4XG4iLAorCUdFTV9UUkFDRSgi
JXMgcmVwbGF5IHtoZWFkOiUwNHgsIHRhaWw6JTA0eH1cbiIsCiAJCSAgZW5naW5lLT5uYW1lLCBj
ZS0+cmluZy0+aGVhZCwgY2UtPnJpbmctPnRhaWwpOwogCWludGVsX3JpbmdfdXBkYXRlX3NwYWNl
KGNlLT5yaW5nKTsKIAlfX2V4ZWNsaXN0c19yZXNldF9yZWdfc3RhdGUoY2UsIGVuZ2luZSk7Ci0t
IAoyLjI0LjAucmMxCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
