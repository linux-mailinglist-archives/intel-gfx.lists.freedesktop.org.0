Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 24A50A1360
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Aug 2019 10:12:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9B1B6E060;
	Thu, 29 Aug 2019 08:12:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 288BA6E029
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Aug 2019 08:12:04 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18299893-1500050 
 for multiple; Thu, 29 Aug 2019 09:11:59 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 29 Aug 2019 09:11:47 +0100
Message-Id: <20190829081150.10271-34-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190829081150.10271-1-chris@chris-wilson.co.uk>
References: <20190829081150.10271-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 33/36] drm/i915/overlay: Drop struct_mutex guard
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

VGhlIG92ZXJsYXkgdXNlcyB0aGUgbW9kZXNldCBtdXRleCB0byBjb250cm9sIGl0c2VsZiBhbmQg
b25seSByZXF1aXJlZAp0aGUgc3RydWN0X211dGV4IGZvciByZXF1ZXN0cywgd2hpY2ggaXMgbm93
IG9ic29sZXRlLgoKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxz
b24uY28udWs+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmMgfCAgNyArLS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX292ZXJs
YXkuYyB8IDEzIC0tLS0tLS0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jl
c2V0LmMgICAgICAgIHwgIDQgLS0tLQogMyBmaWxlcyBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwg
MjMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXkuYwppbmRleCAyMjY3YmQ5M2YxNGIuLjUyZTIyM2MzMzMyMSAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKQEAgLTU3MDcsMTMgKzU3MDcsOCBA
QCB2b2lkIGhzd19kaXNhYmxlX2lwcyhjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0
Y19zdGF0ZSkKIAogc3RhdGljIHZvaWQgaW50ZWxfY3J0Y19kcG1zX292ZXJsYXlfZGlzYWJsZShz
dHJ1Y3QgaW50ZWxfY3J0YyAqaW50ZWxfY3J0YykKIHsKLQlpZiAoaW50ZWxfY3J0Yy0+b3Zlcmxh
eSkgewotCQlzdHJ1Y3QgZHJtX2RldmljZSAqZGV2ID0gaW50ZWxfY3J0Yy0+YmFzZS5kZXY7Ci0K
LQkJbXV0ZXhfbG9jaygmZGV2LT5zdHJ1Y3RfbXV0ZXgpOworCWlmIChpbnRlbF9jcnRjLT5vdmVy
bGF5KQogCQkodm9pZCkgaW50ZWxfb3ZlcmxheV9zd2l0Y2hfb2ZmKGludGVsX2NydGMtPm92ZXJs
YXkpOwotCQltdXRleF91bmxvY2soJmRldi0+c3RydWN0X211dGV4KTsKLQl9CiAKIAkvKiBMZXQg
dXNlcnNwYWNlIHN3aXRjaCB0aGUgb3ZlcmxheSBvbiBhZ2Fpbi4gSW4gbW9zdCBjYXNlcyB1c2Vy
c3BhY2UKIAkgKiBoYXMgdG8gcmVjb21wdXRlIHdoZXJlIHRvIHB1dCBpdCBhbnl3YXkuCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX292ZXJsYXkuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfb3ZlcmxheS5jCmluZGV4IDU0NGU5NTMz
NDJlYS4uNmJkYzljZGYyOTdjIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX292ZXJsYXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX292ZXJsYXkuYwpAQCAtNDM5LDggKzQzOSw2IEBAIHN0YXRpYyBpbnQgaW50ZWxfb3Zlcmxh
eV9yZWxlYXNlX29sZF92aWQoc3RydWN0IGludGVsX292ZXJsYXkgKm92ZXJsYXkpCiAJc3RydWN0
IGk5MTVfcmVxdWVzdCAqcnE7CiAJdTMyICpjczsKIAotCWxvY2tkZXBfYXNzZXJ0X2hlbGQoJmRl
dl9wcml2LT5kcm0uc3RydWN0X211dGV4KTsKLQogCS8qCiAJICogT25seSB3YWl0IGlmIHRoZXJl
IGlzIGFjdHVhbGx5IGFuIG9sZCBmcmFtZSB0byByZWxlYXNlIHRvCiAJICogZ3VhcmFudGVlIGZv
cndhcmQgcHJvZ3Jlc3MuCkBAIC03NTEsNyArNzQ5LDYgQEAgc3RhdGljIGludCBpbnRlbF9vdmVy
bGF5X2RvX3B1dF9pbWFnZShzdHJ1Y3QgaW50ZWxfb3ZlcmxheSAqb3ZlcmxheSwKIAlzdHJ1Y3Qg
aTkxNV92bWEgKnZtYTsKIAlpbnQgcmV0LCB0bXBfd2lkdGg7CiAKLQlsb2NrZGVwX2Fzc2VydF9o
ZWxkKCZkZXZfcHJpdi0+ZHJtLnN0cnVjdF9tdXRleCk7CiAJV0FSTl9PTighZHJtX21vZGVzZXRf
aXNfbG9ja2VkKCZkZXZfcHJpdi0+ZHJtLm1vZGVfY29uZmlnLmNvbm5lY3Rpb25fbXV0ZXgpKTsK
IAogCXJldCA9IGludGVsX292ZXJsYXlfcmVsZWFzZV9vbGRfdmlkKG92ZXJsYXkpOwpAQCAtODUy
LDcgKzg0OSw2IEBAIGludCBpbnRlbF9vdmVybGF5X3N3aXRjaF9vZmYoc3RydWN0IGludGVsX292
ZXJsYXkgKm92ZXJsYXkpCiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gb3Zl
cmxheS0+aTkxNTsKIAlpbnQgcmV0OwogCi0JbG9ja2RlcF9hc3NlcnRfaGVsZCgmZGV2X3ByaXYt
PmRybS5zdHJ1Y3RfbXV0ZXgpOwogCVdBUk5fT04oIWRybV9tb2Rlc2V0X2lzX2xvY2tlZCgmZGV2
X3ByaXYtPmRybS5tb2RlX2NvbmZpZy5jb25uZWN0aW9uX211dGV4KSk7CiAKIAlyZXQgPSBpbnRl
bF9vdmVybGF5X3JlY292ZXJfZnJvbV9pbnRlcnJ1cHQob3ZlcmxheSk7CkBAIC0xMDY4LDExICsx
MDY0LDcgQEAgaW50IGludGVsX292ZXJsYXlfcHV0X2ltYWdlX2lvY3RsKHN0cnVjdCBkcm1fZGV2
aWNlICpkZXYsIHZvaWQgKmRhdGEsCiAKIAlpZiAoIShwYXJhbXMtPmZsYWdzICYgSTkxNV9PVkVS
TEFZX0VOQUJMRSkpIHsKIAkJZHJtX21vZGVzZXRfbG9ja19hbGwoZGV2KTsKLQkJbXV0ZXhfbG9j
aygmZGV2LT5zdHJ1Y3RfbXV0ZXgpOwotCiAJCXJldCA9IGludGVsX292ZXJsYXlfc3dpdGNoX29m
ZihvdmVybGF5KTsKLQotCQltdXRleF91bmxvY2soJmRldi0+c3RydWN0X211dGV4KTsKIAkJZHJt
X21vZGVzZXRfdW5sb2NrX2FsbChkZXYpOwogCiAJCXJldHVybiByZXQ7CkBAIC0xMDg4LDcgKzEw
ODAsNiBAQCBpbnQgaW50ZWxfb3ZlcmxheV9wdXRfaW1hZ2VfaW9jdGwoc3RydWN0IGRybV9kZXZp
Y2UgKmRldiwgdm9pZCAqZGF0YSwKIAkJcmV0dXJuIC1FTk9FTlQ7CiAKIAlkcm1fbW9kZXNldF9s
b2NrX2FsbChkZXYpOwotCW11dGV4X2xvY2soJmRldi0+c3RydWN0X211dGV4KTsKIAogCWlmIChp
OTE1X2dlbV9vYmplY3RfaXNfdGlsZWQobmV3X2JvKSkgewogCQlEUk1fREVCVUdfS01TKCJidWZm
ZXIgdXNlZCBmb3Igb3ZlcmxheSBpbWFnZSBjYW4gbm90IGJlIHRpbGVkXG4iKTsKQEAgLTExNTIs
MTQgKzExNDMsMTIgQEAgaW50IGludGVsX292ZXJsYXlfcHV0X2ltYWdlX2lvY3RsKHN0cnVjdCBk
cm1fZGV2aWNlICpkZXYsIHZvaWQgKmRhdGEsCiAJaWYgKHJldCAhPSAwKQogCQlnb3RvIG91dF91
bmxvY2s7CiAKLQltdXRleF91bmxvY2soJmRldi0+c3RydWN0X211dGV4KTsKIAlkcm1fbW9kZXNl
dF91bmxvY2tfYWxsKGRldik7CiAJaTkxNV9nZW1fb2JqZWN0X3B1dChuZXdfYm8pOwogCiAJcmV0
dXJuIDA7CiAKIG91dF91bmxvY2s6Ci0JbXV0ZXhfdW5sb2NrKCZkZXYtPnN0cnVjdF9tdXRleCk7
CiAJZHJtX21vZGVzZXRfdW5sb2NrX2FsbChkZXYpOwogCWk5MTVfZ2VtX29iamVjdF9wdXQobmV3
X2JvKTsKIApAQCAtMTIzMyw3ICsxMjIyLDYgQEAgaW50IGludGVsX292ZXJsYXlfYXR0cnNfaW9j
dGwoc3RydWN0IGRybV9kZXZpY2UgKmRldiwgdm9pZCAqZGF0YSwKIAl9CiAKIAlkcm1fbW9kZXNl
dF9sb2NrX2FsbChkZXYpOwotCW11dGV4X2xvY2soJmRldi0+c3RydWN0X211dGV4KTsKIAogCXJl
dCA9IC1FSU5WQUw7CiAJaWYgKCEoYXR0cnMtPmZsYWdzICYgSTkxNV9PVkVSTEFZX1VQREFURV9B
VFRSUykpIHsKQEAgLTEyOTAsNyArMTI3OCw2IEBAIGludCBpbnRlbF9vdmVybGF5X2F0dHJzX2lv
Y3RsKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHZvaWQgKmRhdGEsCiAKIAlyZXQgPSAwOwogb3V0
X3VubG9jazoKLQltdXRleF91bmxvY2soJmRldi0+c3RydWN0X211dGV4KTsKIAlkcm1fbW9kZXNl
dF91bmxvY2tfYWxsKGRldik7CiAKIAlyZXR1cm4gcmV0OwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVzZXQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX3Jlc2V0LmMKaW5kZXggZmViYWIzNjhkOGNmLi4yY2QxZGUyZWVjODAgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jlc2V0LmMKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfcmVzZXQuYwpAQCAtMTI1MywxMCArMTI1Myw2IEBAIGludCBpbnRl
bF9ndF90ZXJtaW5hbGx5X3dlZGdlZChzdHJ1Y3QgaW50ZWxfZ3QgKmd0KQogCWlmICghdGVzdF9i
aXQoSTkxNV9SRVNFVF9CQUNLT0ZGLCAmZ3QtPnJlc2V0LmZsYWdzKSkKIAkJcmV0dXJuIC1FSU87
CiAKLQkvKiBYWFggaW50ZWxfcmVzZXRfZmluaXNoKCkgc3RpbGwgdGFrZXMgc3RydWN0X211dGV4
ISEhICovCi0JaWYgKG11dGV4X2lzX2xvY2tlZCgmZ3QtPmk5MTUtPmRybS5zdHJ1Y3RfbXV0ZXgp
KQotCQlyZXR1cm4gLUVBR0FJTjsKLQogCWlmICh3YWl0X2V2ZW50X2ludGVycnVwdGlibGUoZ3Qt
PnJlc2V0LnF1ZXVlLAogCQkJCSAgICAgIXRlc3RfYml0KEk5MTVfUkVTRVRfQkFDS09GRiwKIAkJ
CQkJICAgICAgICZndC0+cmVzZXQuZmxhZ3MpKSkKLS0gCjIuMjMuMAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
