Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 81A6F6A8EC
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jul 2019 14:51:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F19476E118;
	Tue, 16 Jul 2019 12:51:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 680586E118
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jul 2019 12:51:16 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17342693-1500050 
 for multiple; Tue, 16 Jul 2019 13:49:31 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 16 Jul 2019 13:49:28 +0100
Message-Id: <20190716124931.5870-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190716124931.5870-1-chris@chris-wilson.co.uk>
References: <20190716124931.5870-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/5] drm/i915/gt: Push engine stopping into
 reset-prepare
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

UHVzaCB0aGUgZW5naW5lIHN0b3AgaW50byB0aGUgYmFjayByZXNldF9wcmVwYXJlICh3aGVyZSBp
dCBhbHJlYWR5IHdhcyEpClRoaXMgYWxsb3dzIHVzIHRvIGF2b2lkIGRhbmdlcm91c2x5IHNldHRp
bmcgdGhlIFJJTkcgcmVnaXN0ZXJzIHRvIDAgZm9yCmxvZ2ljYWwgY29udGV4dHMuIElmIHdlIGNs
ZWFyIHRoZSByZWdpc3RlciBvbiBhIGxpdmUgY29udGV4dCwgdGhvc2UKaW52YWxpZCByZWdpc3Rl
ciB2YWx1ZXMgYXJlIHJlY29yZGVkIGluIHRoZSBsb2dpY2FsIGNvbnRleHQgc3RhdGUgYW5kCnJl
cGxheWVkICh3aXRoIGhpbGFyaW91cyByZXN1bHRzKS4KClNpZ25lZC1vZmYtYnk6IENocmlzIFdp
bHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX2xyYy5jICAgICAgICB8IDE2ICsrKysrLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfcmVzZXQuYyAgICAgIHwgNTggLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmluZ2J1ZmZlci5jIHwgNDAgKysrKysrKysrKysrKyst
CiAzIGZpbGVzIGNoYW5nZWQsIDUzIGluc2VydGlvbnMoKyksIDYxIGRlbGV0aW9ucygtKQoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKaW5kZXggOWUwOTkyNDk4MDg3Li45Yjg3YTJmYzE4
NmMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCkBAIC0yMTczLDExICsyMTczLDIz
IEBAIHN0YXRpYyB2b2lkIGV4ZWNsaXN0c19yZXNldF9wcmVwYXJlKHN0cnVjdCBpbnRlbF9lbmdp
bmVfY3MgKmVuZ2luZSkKIAlfX3Rhc2tsZXRfZGlzYWJsZV9zeW5jX29uY2UoJmV4ZWNsaXN0cy0+
dGFza2xldCk7CiAJR0VNX0JVR19PTighcmVzZXRfaW5fcHJvZ3Jlc3MoZXhlY2xpc3RzKSk7CiAK
LQlpbnRlbF9lbmdpbmVfc3RvcF9jcyhlbmdpbmUpOwotCiAJLyogQW5kIGZsdXNoIGFueSBjdXJy
ZW50IGRpcmVjdCBzdWJtaXNzaW9uLiAqLwogCXNwaW5fbG9ja19pcnFzYXZlKCZlbmdpbmUtPmFj
dGl2ZS5sb2NrLCBmbGFncyk7CiAJc3Bpbl91bmxvY2tfaXJxcmVzdG9yZSgmZW5naW5lLT5hY3Rp
dmUubG9jaywgZmxhZ3MpOworCisJLyoKKwkgKiBXZSBzdG9wIGVuZ2luZXMsIG90aGVyd2lzZSB3
ZSBtaWdodCBnZXQgZmFpbGVkIHJlc2V0IGFuZCBhCisJICogZGVhZCBncHUgKG9uIGVsaykuIEFs
c28gYXMgbW9kZXJuIGdwdSBhcyBrYmwgY2FuIHN1ZmZlcgorCSAqIGZyb20gc3lzdGVtIGhhbmcg
aWYgYmF0Y2hidWZmZXIgaXMgcHJvZ3Jlc3Npbmcgd2hlbgorCSAqIHRoZSByZXNldCBpcyBpc3N1
ZWQsIHJlZ2FyZGxlc3Mgb2YgUkVBRFlfVE9fUkVTRVQgYWNrLgorCSAqIFRodXMgYXNzdW1lIGl0
IGlzIGJlc3QgdG8gc3RvcCBlbmdpbmVzIG9uIGFsbCBnZW5zCisJICogd2hlcmUgd2UgaGF2ZSBh
IGdwdSByZXNldC4KKwkgKgorCSAqIFdhS0JMVkVDU1NlbWFwaG9yZVdhaXRQb2xsOmtibCAob24g
QUxMX0VOR0lORVMpCisJICoKKwkgKiBGSVhNRTogV2EgZm9yIG1vcmUgbW9kZXJuIGdlbnMgbmVl
ZHMgdG8gYmUgdmFsaWRhdGVkCisJICovCisJaW50ZWxfZW5naW5lX3N0b3BfY3MoZW5naW5lKTsK
IH0KIAogc3RhdGljIHZvaWQgcmVzZXRfY3NiX3BvaW50ZXJzKHN0cnVjdCBpbnRlbF9lbmdpbmVf
Y3MgKmVuZ2luZSkKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jl
c2V0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yZXNldC5jCmluZGV4IDdkZGVk
ZmIxNmFhMi4uNTVlMmRkY2JkMjE1IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9yZXNldC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jlc2V0
LmMKQEAgLTEzNSw0NyArMTM1LDYgQEAgdm9pZCBfX2k5MTVfcmVxdWVzdF9yZXNldChzdHJ1Y3Qg
aTkxNV9yZXF1ZXN0ICpycSwgYm9vbCBndWlsdHkpCiAJfQogfQogCi1zdGF0aWMgdm9pZCBnZW4z
X3N0b3BfZW5naW5lKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKLXsKLQlzdHJ1Y3Qg
aW50ZWxfdW5jb3JlICp1bmNvcmUgPSBlbmdpbmUtPnVuY29yZTsKLQljb25zdCB1MzIgYmFzZSA9
IGVuZ2luZS0+bW1pb19iYXNlOwotCi0JR0VNX1RSQUNFKCIlc1xuIiwgZW5naW5lLT5uYW1lKTsK
LQotCWlmIChpbnRlbF9lbmdpbmVfc3RvcF9jcyhlbmdpbmUpKQotCQlHRU1fVFJBQ0UoIiVzOiB0
aW1lZCBvdXQgb24gU1RPUF9SSU5HXG4iLCBlbmdpbmUtPm5hbWUpOwotCi0JaW50ZWxfdW5jb3Jl
X3dyaXRlX2Z3KHVuY29yZSwKLQkJCSAgICAgIFJJTkdfSEVBRChiYXNlKSwKLQkJCSAgICAgIGlu
dGVsX3VuY29yZV9yZWFkX2Z3KHVuY29yZSwgUklOR19UQUlMKGJhc2UpKSk7Ci0JaW50ZWxfdW5j
b3JlX3Bvc3RpbmdfcmVhZF9mdyh1bmNvcmUsIFJJTkdfSEVBRChiYXNlKSk7IC8qIHBhcmFub2lh
ICovCi0KLQlpbnRlbF91bmNvcmVfd3JpdGVfZncodW5jb3JlLCBSSU5HX0hFQUQoYmFzZSksIDAp
OwotCWludGVsX3VuY29yZV93cml0ZV9mdyh1bmNvcmUsIFJJTkdfVEFJTChiYXNlKSwgMCk7Ci0J
aW50ZWxfdW5jb3JlX3Bvc3RpbmdfcmVhZF9mdyh1bmNvcmUsIFJJTkdfVEFJTChiYXNlKSk7Ci0K
LQkvKiBUaGUgcmluZyBtdXN0IGJlIGVtcHR5IGJlZm9yZSBpdCBpcyBkaXNhYmxlZCAqLwotCWlu
dGVsX3VuY29yZV93cml0ZV9mdyh1bmNvcmUsIFJJTkdfQ1RMKGJhc2UpLCAwKTsKLQotCS8qIENo
ZWNrIGFjdHMgYXMgYSBwb3N0ICovCi0JaWYgKGludGVsX3VuY29yZV9yZWFkX2Z3KHVuY29yZSwg
UklOR19IRUFEKGJhc2UpKSkKLQkJR0VNX1RSQUNFKCIlczogcmluZyBoZWFkIFsleF0gbm90IHBh
cmtlZFxuIiwKLQkJCSAgZW5naW5lLT5uYW1lLAotCQkJICBpbnRlbF91bmNvcmVfcmVhZF9mdyh1
bmNvcmUsIFJJTkdfSEVBRChiYXNlKSkpOwotfQotCi1zdGF0aWMgdm9pZCBzdG9wX2VuZ2luZXMo
c3RydWN0IGludGVsX2d0ICpndCwgaW50ZWxfZW5naW5lX21hc2tfdCBlbmdpbmVfbWFzaykKLXsK
LQlzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmU7Ci0JaW50ZWxfZW5naW5lX21hc2tfdCB0
bXA7Ci0KLQlpZiAoSU5URUxfR0VOKGd0LT5pOTE1KSA8IDMpCi0JCXJldHVybjsKLQotCWZvcl9l
YWNoX2VuZ2luZV9tYXNrZWQoZW5naW5lLCBndC0+aTkxNSwgZW5naW5lX21hc2ssIHRtcCkKLQkJ
Z2VuM19zdG9wX2VuZ2luZShlbmdpbmUpOwotfQotCiBzdGF0aWMgYm9vbCBpOTE1X2luX3Jlc2V0
KHN0cnVjdCBwY2lfZGV2ICpwZGV2KQogewogCXU4IGdkcnN0OwpAQCAtNjA3LDIzICs1NjYsNiBA
QCBpbnQgX19pbnRlbF9ndF9yZXNldChzdHJ1Y3QgaW50ZWxfZ3QgKmd0LCBpbnRlbF9lbmdpbmVf
bWFza190IGVuZ2luZV9tYXNrKQogCSAqLwogCWludGVsX3VuY29yZV9mb3JjZXdha2VfZ2V0KGd0
LT51bmNvcmUsIEZPUkNFV0FLRV9BTEwpOwogCWZvciAocmV0cnkgPSAwOyByZXQgPT0gLUVUSU1F
RE9VVCAmJiByZXRyeSA8IHJldHJpZXM7IHJldHJ5KyspIHsKLQkJLyoKLQkJICogV2Ugc3RvcCBl
bmdpbmVzLCBvdGhlcndpc2Ugd2UgbWlnaHQgZ2V0IGZhaWxlZCByZXNldCBhbmQgYQotCQkgKiBk
ZWFkIGdwdSAob24gZWxrKS4gQWxzbyBhcyBtb2Rlcm4gZ3B1IGFzIGtibCBjYW4gc3VmZmVyCi0J
CSAqIGZyb20gc3lzdGVtIGhhbmcgaWYgYmF0Y2hidWZmZXIgaXMgcHJvZ3Jlc3Npbmcgd2hlbgot
CQkgKiB0aGUgcmVzZXQgaXMgaXNzdWVkLCByZWdhcmRsZXNzIG9mIFJFQURZX1RPX1JFU0VUIGFj
ay4KLQkJICogVGh1cyBhc3N1bWUgaXQgaXMgYmVzdCB0byBzdG9wIGVuZ2luZXMgb24gYWxsIGdl
bnMKLQkJICogd2hlcmUgd2UgaGF2ZSBhIGdwdSByZXNldC4KLQkJICoKLQkJICogV2FLQkxWRUNT
U2VtYXBob3JlV2FpdFBvbGw6a2JsIChvbiBBTExfRU5HSU5FUykKLQkJICoKLQkJICogV2FNZWRp
YVJlc2V0TWFpblJpbmdDbGVhbnVwOmN0ZyxlbGsgKHByZXN1bWFibHkpCi0JCSAqCi0JCSAqIEZJ
WE1FOiBXYSBmb3IgbW9yZSBtb2Rlcm4gZ2VucyBuZWVkcyB0byBiZSB2YWxpZGF0ZWQKLQkJICov
Ci0JCWlmIChyZXRyeSkKLQkJCXN0b3BfZW5naW5lcyhndCwgZW5naW5lX21hc2spOwotCiAJCUdF
TV9UUkFDRSgiZW5naW5lX21hc2s9JXhcbiIsIGVuZ2luZV9tYXNrKTsKIAkJcHJlZW1wdF9kaXNh
YmxlKCk7CiAJCXJldCA9IHJlc2V0KGd0LCBlbmdpbmVfbWFzaywgcmV0cnkpOwpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmluZ2J1ZmZlci5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmluZ2J1ZmZlci5jCmluZGV4IGYxZTU3MWZhMmU2ZC4uMjEz
ZGYxNDRiZTE1IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yaW5n
YnVmZmVyLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmluZ2J1ZmZlci5j
CkBAIC03MzksNyArNzM5LDQ1IEBAIHN0YXRpYyBpbnQgeGNzX3Jlc3VtZShzdHJ1Y3QgaW50ZWxf
ZW5naW5lX2NzICplbmdpbmUpCiAKIHN0YXRpYyB2b2lkIHJlc2V0X3ByZXBhcmUoc3RydWN0IGlu
dGVsX2VuZ2luZV9jcyAqZW5naW5lKQogewotCWludGVsX2VuZ2luZV9zdG9wX2NzKGVuZ2luZSk7
CisJc3RydWN0IGludGVsX3VuY29yZSAqdW5jb3JlID0gZW5naW5lLT51bmNvcmU7CisJY29uc3Qg
dTMyIGJhc2UgPSBlbmdpbmUtPm1taW9fYmFzZTsKKworCS8qCisJICogV2Ugc3RvcCBlbmdpbmVz
LCBvdGhlcndpc2Ugd2UgbWlnaHQgZ2V0IGZhaWxlZCByZXNldCBhbmQgYQorCSAqIGRlYWQgZ3B1
IChvbiBlbGspLiBBbHNvIGFzIG1vZGVybiBncHUgYXMga2JsIGNhbiBzdWZmZXIKKwkgKiBmcm9t
IHN5c3RlbSBoYW5nIGlmIGJhdGNoYnVmZmVyIGlzIHByb2dyZXNzaW5nIHdoZW4KKwkgKiB0aGUg
cmVzZXQgaXMgaXNzdWVkLCByZWdhcmRsZXNzIG9mIFJFQURZX1RPX1JFU0VUIGFjay4KKwkgKiBU
aHVzIGFzc3VtZSBpdCBpcyBiZXN0IHRvIHN0b3AgZW5naW5lcyBvbiBhbGwgZ2VucworCSAqIHdo
ZXJlIHdlIGhhdmUgYSBncHUgcmVzZXQuCisJICoKKwkgKiBXYUtCTFZFQ1NTZW1hcGhvcmVXYWl0
UG9sbDprYmwgKG9uIEFMTF9FTkdJTkVTKQorCSAqCisJICogV2FNZWRpYVJlc2V0TWFpblJpbmdD
bGVhbnVwOmN0ZyxlbGsgKHByZXN1bWFibHkpCisJICoKKwkgKiBGSVhNRTogV2EgZm9yIG1vcmUg
bW9kZXJuIGdlbnMgbmVlZHMgdG8gYmUgdmFsaWRhdGVkCisJICovCisJR0VNX1RSQUNFKCIlc1xu
IiwgZW5naW5lLT5uYW1lKTsKKworCWlmIChpbnRlbF9lbmdpbmVfc3RvcF9jcyhlbmdpbmUpKQor
CQlHRU1fVFJBQ0UoIiVzOiB0aW1lZCBvdXQgb24gU1RPUF9SSU5HXG4iLCBlbmdpbmUtPm5hbWUp
OworCisJaW50ZWxfdW5jb3JlX3dyaXRlX2Z3KHVuY29yZSwKKwkJCSAgICAgIFJJTkdfSEVBRChi
YXNlKSwKKwkJCSAgICAgIGludGVsX3VuY29yZV9yZWFkX2Z3KHVuY29yZSwgUklOR19UQUlMKGJh
c2UpKSk7CisJaW50ZWxfdW5jb3JlX3Bvc3RpbmdfcmVhZF9mdyh1bmNvcmUsIFJJTkdfSEVBRChi
YXNlKSk7IC8qIHBhcmFub2lhICovCisKKwlpbnRlbF91bmNvcmVfd3JpdGVfZncodW5jb3JlLCBS
SU5HX0hFQUQoYmFzZSksIDApOworCWludGVsX3VuY29yZV93cml0ZV9mdyh1bmNvcmUsIFJJTkdf
VEFJTChiYXNlKSwgMCk7CisJaW50ZWxfdW5jb3JlX3Bvc3RpbmdfcmVhZF9mdyh1bmNvcmUsIFJJ
TkdfVEFJTChiYXNlKSk7CisKKwkvKiBUaGUgcmluZyBtdXN0IGJlIGVtcHR5IGJlZm9yZSBpdCBp
cyBkaXNhYmxlZCAqLworCWludGVsX3VuY29yZV93cml0ZV9mdyh1bmNvcmUsIFJJTkdfQ1RMKGJh
c2UpLCAwKTsKKworCS8qIENoZWNrIGFjdHMgYXMgYSBwb3N0ICovCisJaWYgKGludGVsX3VuY29y
ZV9yZWFkX2Z3KHVuY29yZSwgUklOR19IRUFEKGJhc2UpKSkKKwkJR0VNX1RSQUNFKCIlczogcmlu
ZyBoZWFkIFsleF0gbm90IHBhcmtlZFxuIiwKKwkJCSAgZW5naW5lLT5uYW1lLAorCQkJICBpbnRl
bF91bmNvcmVfcmVhZF9mdyh1bmNvcmUsIFJJTkdfSEVBRChiYXNlKSkpOwogfQogCiBzdGF0aWMg
dm9pZCByZXNldF9yaW5nKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwgYm9vbCBzdGFs
bGVkKQotLSAKMi4yMi4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
