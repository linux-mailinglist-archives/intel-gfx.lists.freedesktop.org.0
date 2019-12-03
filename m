Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BDA7010FCE4
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Dec 2019 12:53:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D86896E489;
	Tue,  3 Dec 2019 11:53:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D761D6E489
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Dec 2019 11:53:45 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19440776-1500050 
 for multiple; Tue, 03 Dec 2019 11:53:38 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 Dec 2019 11:53:39 +0000
Message-Id: <20191203115339.2943374-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191203115339.2943374-1-chris@chris-wilson.co.uk>
References: <20191203115339.2943374-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/execlists: Skip nested spinlock
 for validating pending
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

T25seSBhbG9uZyB0aGUgc3VibWlzc2lvbiBwYXRoIGNhbiB3ZSBndWFyYW50ZWUgdGhhdCB0aGUg
bG9ja2VkIHJlcXVlc3QKaXMgaW5kZWVkIGZyb20gYSBmb3JlaWduIGVuZ2luZSwgYW5kIHNvIHRo
ZSBuZXN0aW5nIG9mIGVuZ2luZS9ycSBpcwpwZXJtaXNzaWJsZS4gT24gdGhlIHN1Ym1pc3Npb24g
dGFza2xldCAocHJvY2Vzc19jc2IoKSksIHdlIG1heSBmaW5kCm91cnNlbHZlcyBjb21wZXRpbmcg
d2l0aCB0aGUgbm9ybWFsIG5lc3Rpbmcgb2YgcnEvZW5naW5lLCBpbnZhbGlkYXRpbmcKb3VyIG5l
c3RpbmcuIEFzIHdlIG9ubHkgdXNlIHRoZSBzcGlubG9jayBmb3IgZGVidWcgcHVycG9zZXMsIHNr
aXAgdGhlCmRlYnVnIGlmIHdlIGNhbm5vdCBhY3F1aXJlIHRoZSBzcGlubG9jayBmb3Igc2FmZSB2
YWxpZGF0aW9uIC0gY2F0Y2hpbmcKOTklIG9mIHRoZSBidWdzIGlzIGJldHRlciB0aGFuIGNhdXNp
bmcgYSBoYXJkIGxvY2t1cC4KClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hy
aXMtd2lsc29uLmNvLnVrPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5j
IHwgNyArKystLS0tCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9u
cygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKaW5kZXggMzdhYjk3NDJhYmU3Li5i
NDExZTRjZTY3NzEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xy
Yy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCkBAIC0xMzAwLDcg
KzEzMDAsNiBAQCBhc3NlcnRfcGVuZGluZ192YWxpZChjb25zdCBzdHJ1Y3QgaW50ZWxfZW5naW5l
X2V4ZWNsaXN0cyAqZXhlY2xpc3RzLAogCX0KIAogCWZvciAocG9ydCA9IGV4ZWNsaXN0cy0+cGVu
ZGluZzsgKHJxID0gKnBvcnQpOyBwb3J0KyspIHsKLQkJdW5zaWduZWQgbG9uZyBmbGFnczsKIAkJ
Ym9vbCBvayA9IHRydWU7CiAKIAkJR0VNX0JVR19PTigha3JlZl9yZWFkKCZycS0+ZmVuY2UucmVm
Y291bnQpKTsKQEAgLTEzMTUsOCArMTMxNCw4IEBAIGFzc2VydF9wZW5kaW5nX3ZhbGlkKGNvbnN0
IHN0cnVjdCBpbnRlbF9lbmdpbmVfZXhlY2xpc3RzICpleGVjbGlzdHMsCiAJCWNlID0gcnEtPmh3
X2NvbnRleHQ7CiAKIAkJLyogSG9sZCB0aWdodGx5IG9udG8gdGhlIGxvY2sgdG8gcHJldmVudCBj
b25jdXJyZW50IHJldGlyZXMhICovCi0JCXNwaW5fbG9ja19pcnFzYXZlX25lc3RlZCgmcnEtPmxv
Y2ssIGZsYWdzLAotCQkJCQkgU0lOR0xFX0RFUFRIX05FU1RJTkcpOworCQlpZiAoIXNwaW5fdHJ5
bG9jaygmcnEtPmxvY2spKQorCQkJY29udGludWU7CiAKIAkJaWYgKGk5MTVfcmVxdWVzdF9jb21w
bGV0ZWQocnEpKQogCQkJZ290byB1bmxvY2s7CkBAIC0xMzQ3LDcgKzEzNDYsNyBAQCBhc3NlcnRf
cGVuZGluZ192YWxpZChjb25zdCBzdHJ1Y3QgaW50ZWxfZW5naW5lX2V4ZWNsaXN0cyAqZXhlY2xp
c3RzLAogCQl9CiAKIHVubG9jazoKLQkJc3Bpbl91bmxvY2tfaXJxcmVzdG9yZSgmcnEtPmxvY2ss
IGZsYWdzKTsKKwkJc3Bpbl91bmxvY2soJnJxLT5sb2NrKTsKIAkJaWYgKCFvaykKIAkJCXJldHVy
biBmYWxzZTsKIAl9Ci0tIAoyLjI0LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
