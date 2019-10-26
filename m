Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B906CE5999
	for <lists+intel-gfx@lfdr.de>; Sat, 26 Oct 2019 12:30:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFF446EC06;
	Sat, 26 Oct 2019 10:30:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4CF16EC06
 for <intel-gfx@lists.freedesktop.org>; Sat, 26 Oct 2019 10:30:20 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18973734-1500050 
 for multiple; Sat, 26 Oct 2019 11:30:14 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 26 Oct 2019 11:30:12 +0100
Message-Id: <20191026103012.18838-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0.rc1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/execlists: Skip over foreign requests
 on the context timeline
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

V2hlbiBzZWFyY2hpbmcgZm9yIHRoZSBsYXN0IGFjdGl2ZSByZXF1ZXN0IG9uIG91ciB0aW1lbGlu
ZSwgd2Ugb25seSBjYXJlCmFib3V0IHRoZSByZXF1ZXN0cyBtYXRjaGluZyB0aGUgY3VycmVudCBj
b250ZXh0LiAoVGhlIGNvbnRleHQncyB0aW1lbGluZQptYXkgaGF2ZSBiYXJyaWVyIGVudHJpZXMg
ZnJvbSB0aGUga2VybmVsX2NvbnRleHQgZm9yIGV4YW1wbGUuKSBKdXN0IHNraXAKdGhlc2UgZm9y
ZWlnbiByZXF1ZXN0cyBzbyB3ZSByZXBsYXkgb3VyIG93biByaW5nLgoKU2lnbmVkLW9mZi1ieTog
Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci0tLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgfCA1ICsrKy0tCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNl
cnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX2xyYy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMK
aW5kZXggMTYzNDA3NDAxMzlkLi45OTc4Mzc1ZGI5NzYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2xyYy5jCkBAIC0yNjUsOCArMjY1LDkgQEAgc3RhdGljIHN0cnVjdCBpOTE1X3JlcXVlc3Qg
KmFjdGl2ZV9yZXF1ZXN0KHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxKQogCQlpZiAoaTkxNV9yZXF1
ZXN0X2NvbXBsZXRlZChycSkpCiAJCQlicmVhazsKIAorCQkvKiBJZ25vcmUgZm9yZWlnbiByZXF1
ZXN0cyB3aGVuIHJld2luZGluZyB0aGlzIGNvbnRleHQgKi8KIAkJaWYgKHJxLT5od19jb250ZXh0
ICE9IGNlKQotCQkJYnJlYWs7CisJCQljb250aW51ZTsKIAogCQlhY3RpdmUgPSBycTsKIAl9CkBA
IC0zMDQzLDcgKzMwNDQsNyBAQCBzdGF0aWMgdm9pZCBfX2V4ZWNsaXN0c19yZXNldChzdHJ1Y3Qg
aW50ZWxfZW5naW5lX2NzICplbmdpbmUsIGJvb2wgc3RhbGxlZCkKIAlyZXN0b3JlX2RlZmF1bHRf
c3RhdGUoY2UsIGVuZ2luZSk7CiAKIG91dF9yZXBsYXk6Ci0JR0VNX1RSQUNFKCIlcyByZXBsYXkg
e2hlYWQ6JTA0eCwgdGFpbDolMDR4XG4iLAorCUdFTV9UUkFDRSgiJXMgcmVwbGF5IHtoZWFkOiUw
NHgsIHRhaWw6JTA0eH1cbiIsCiAJCSAgZW5naW5lLT5uYW1lLCBjZS0+cmluZy0+aGVhZCwgY2Ut
PnJpbmctPnRhaWwpOwogCWludGVsX3JpbmdfdXBkYXRlX3NwYWNlKGNlLT5yaW5nKTsKIAlfX2V4
ZWNsaXN0c19yZXNldF9yZWdfc3RhdGUoY2UsIGVuZ2luZSk7Ci0tIAoyLjI0LjAucmMxCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
