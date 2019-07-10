Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 390A464186
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jul 2019 08:45:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 197E1899BC;
	Wed, 10 Jul 2019 06:45:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D31A899F0
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jul 2019 06:45:17 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17193822-1500050 
 for multiple; Wed, 10 Jul 2019 07:45:05 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 10 Jul 2019 07:44:49 +0100
Message-Id: <20190710064454.682-9-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190710064454.682-1-chris@chris-wilson.co.uk>
References: <20190710064454.682-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 09/14] drm/i915/gt: Convert timeline tracking to
 spinlock
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

Q29udmVydCB0aGUgbGlzdCBtYW5pcHVsYXRpb24gb2YgYWN0aXZlIHRvIHVzZSBzcGlubG9ja3Mg
c28gdGhhdCB3ZSBjYW4KcGVyZm9ybSB0aGUgdXBkYXRlcyBmcm9tIHVuZGVybmVhdGggYSBxdWlj
ayBpbnRlcnJ1cHQgY2FsbGJhY2suCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlz
QGNocmlzLXdpbHNvbi5jby51az4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9n
dF90eXBlcy5oIHwgIDIgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jlc2V0LmMg
ICAgfCAxMyArKysrKysrKysrLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF90aW1l
bGluZS5jIHwgMTIgKysrKystLS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5j
ICAgICAgICAgIHwgMjAgKysrKysrKysrKy0tLS0tLS0tLS0KIDQgZmlsZXMgY2hhbmdlZCwgMjYg
aW5zZXJ0aW9ucygrKSwgMjEgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfdHlwZXMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2d0X3R5cGVzLmgKaW5kZXggMzU2M2NlOTcwMTAyLi4wOTllNWEwNjU3ZDIgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3R5cGVzLmgKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfdHlwZXMuaApAQCAtMjYsNyArMjYsNyBAQCBzdHJ1
Y3QgaW50ZWxfZ3QgewogCXN0cnVjdCBpOTE1X2dndHQgKmdndHQ7CiAKIAlzdHJ1Y3QgaW50ZWxf
Z3RfdGltZWxpbmVzIHsKLQkJc3RydWN0IG11dGV4IG11dGV4OyAvKiBwcm90ZWN0cyBsaXN0ICov
CisJCXNwaW5sb2NrX3QgbG9jazsgLyogcHJvdGVjdHMgYWN0aXZlX2xpc3QgKi8KIAkJc3RydWN0
IGxpc3RfaGVhZCBhY3RpdmVfbGlzdDsKIAogCQkvKiBQYWNrIG11bHRpcGxlIHRpbWVsaW5lcycg
c2Vxbm9zIGludG8gdGhlIHNhbWUgcGFnZSAqLwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfcmVzZXQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jl
c2V0LmMKaW5kZXggYWRmZGI5MDg1ODdmLi43MjAwMmMwZjk2OTggMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jlc2V0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfcmVzZXQuYwpAQCAtODU4LDYgKzg1OCw3IEBAIHZvaWQgaTkxNV9nZW1fc2V0
X3dlZGdlZChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKIHN0YXRpYyBib29sIF9faTkx
NV9nZW1fdW5zZXRfd2VkZ2VkKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQogewogCXN0
cnVjdCBpOTE1X2dwdV9lcnJvciAqZXJyb3IgPSAmaTkxNS0+Z3B1X2Vycm9yOworCXN0cnVjdCBp
bnRlbF9ndF90aW1lbGluZXMgKnRpbWVsaW5lcyA9ICZpOTE1LT5ndC50aW1lbGluZXM7CiAJc3Ry
dWN0IGludGVsX3RpbWVsaW5lICp0bDsKIAogCWlmICghdGVzdF9iaXQoSTkxNV9XRURHRUQsICZl
cnJvci0+ZmxhZ3MpKQpAQCAtODc4LDE0ICs4NzksMTYgQEAgc3RhdGljIGJvb2wgX19pOTE1X2dl
bV91bnNldF93ZWRnZWQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCiAJICoKIAkgKiBO
byBtb3JlIGNhbiBiZSBzdWJtaXR0ZWQgdW50aWwgd2UgcmVzZXQgdGhlIHdlZGdlZCBiaXQuCiAJ
ICovCi0JbXV0ZXhfbG9jaygmaTkxNS0+Z3QudGltZWxpbmVzLm11dGV4KTsKLQlsaXN0X2Zvcl9l
YWNoX2VudHJ5KHRsLCAmaTkxNS0+Z3QudGltZWxpbmVzLmFjdGl2ZV9saXN0LCBsaW5rKSB7CisJ
c3Bpbl9sb2NrKCZ0aW1lbGluZXMtPmxvY2spOworCWxpc3RfZm9yX2VhY2hfZW50cnkodGwsICZ0
aW1lbGluZXMtPmFjdGl2ZV9saXN0LCBsaW5rKSB7CiAJCXN0cnVjdCBpOTE1X3JlcXVlc3QgKnJx
OwogCiAJCXJxID0gaTkxNV9hY3RpdmVfcmVxdWVzdF9nZXRfdW5sb2NrZWQoJnRsLT5sYXN0X3Jl
cXVlc3QpOwogCQlpZiAoIXJxKQogCQkJY29udGludWU7CiAKKwkJc3Bpbl91bmxvY2soJnRpbWVs
aW5lcy0+bG9jayk7CisKIAkJLyoKIAkJICogQWxsIGludGVybmFsIGRlcGVuZGVuY2llcyAoaTkx
NV9yZXF1ZXN0cykgd2lsbCBoYXZlCiAJCSAqIGJlZW4gZmx1c2hlZCBieSB0aGUgc2V0LXdlZGdl
LCBidXQgd2UgbWF5IGJlIHN0dWNrIHdhaXRpbmcKQEAgLTg5NSw4ICs4OTgsMTIgQEAgc3RhdGlj
IGJvb2wgX19pOTE1X2dlbV91bnNldF93ZWRnZWQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5
MTUpCiAJCSAqLwogCQlkbWFfZmVuY2VfZGVmYXVsdF93YWl0KCZycS0+ZmVuY2UsIGZhbHNlLCBN
QVhfU0NIRURVTEVfVElNRU9VVCk7CiAJCWk5MTVfcmVxdWVzdF9wdXQocnEpOworCisJCS8qIFJl
c3RhcnQgaXRlcmF0aW9uIGFmdGVyIGRyb3BpbmcgbG9jayAqLworCQlzcGluX2xvY2soJnRpbWVs
aW5lcy0+bG9jayk7CisJCXRsID0gbGlzdF9lbnRyeSgmdGltZWxpbmVzLT5hY3RpdmVfbGlzdCwg
dHlwZW9mKCp0bCksIGxpbmspOwogCX0KLQltdXRleF91bmxvY2soJmk5MTUtPmd0LnRpbWVsaW5l
cy5tdXRleCk7CisJc3Bpbl91bmxvY2soJnRpbWVsaW5lcy0+bG9jayk7CiAKIAlpbnRlbF9ndF9z
YW5pdGl6ZSgmaTkxNS0+Z3QsIGZhbHNlKTsKIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfdGltZWxpbmUuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X3RpbWVsaW5lLmMKaW5kZXggNGFmMGI5ODAxZDkxLi4zNTVkZmM1MmM4MDQgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3RpbWVsaW5lLmMKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfdGltZWxpbmUuYwpAQCAtMjY2LDcgKzI2Niw3IEBAIHN0YXRp
YyB2b2lkIHRpbWVsaW5lc19pbml0KHN0cnVjdCBpbnRlbF9ndCAqZ3QpCiB7CiAJc3RydWN0IGlu
dGVsX2d0X3RpbWVsaW5lcyAqdGltZWxpbmVzID0gJmd0LT50aW1lbGluZXM7CiAKLQltdXRleF9p
bml0KCZ0aW1lbGluZXMtPm11dGV4KTsKKwlzcGluX2xvY2tfaW5pdCgmdGltZWxpbmVzLT5sb2Nr
KTsKIAlJTklUX0xJU1RfSEVBRCgmdGltZWxpbmVzLT5hY3RpdmVfbGlzdCk7CiAKIAlzcGluX2xv
Y2tfaW5pdCgmdGltZWxpbmVzLT5od3NwX2xvY2spOwpAQCAtMzQ1LDkgKzM0NSw5IEBAIHZvaWQg
aW50ZWxfdGltZWxpbmVfZW50ZXIoc3RydWN0IGludGVsX3RpbWVsaW5lICp0bCkKIAkJcmV0dXJu
OwogCUdFTV9CVUdfT04oIXRsLT5hY3RpdmVfY291bnQpOyAvKiBvdmVyZmxvdz8gKi8KIAotCW11
dGV4X2xvY2soJnRpbWVsaW5lcy0+bXV0ZXgpOworCXNwaW5fbG9jaygmdGltZWxpbmVzLT5sb2Nr
KTsKIAlsaXN0X2FkZCgmdGwtPmxpbmssICZ0aW1lbGluZXMtPmFjdGl2ZV9saXN0KTsKLQltdXRl
eF91bmxvY2soJnRpbWVsaW5lcy0+bXV0ZXgpOworCXNwaW5fdW5sb2NrKCZ0aW1lbGluZXMtPmxv
Y2spOwogfQogCiB2b2lkIGludGVsX3RpbWVsaW5lX2V4aXQoc3RydWN0IGludGVsX3RpbWVsaW5l
ICp0bCkKQEAgLTM1OCw5ICszNTgsOSBAQCB2b2lkIGludGVsX3RpbWVsaW5lX2V4aXQoc3RydWN0
IGludGVsX3RpbWVsaW5lICp0bCkKIAlpZiAoLS10bC0+YWN0aXZlX2NvdW50KQogCQlyZXR1cm47
CiAKLQltdXRleF9sb2NrKCZ0aW1lbGluZXMtPm11dGV4KTsKKwlzcGluX2xvY2soJnRpbWVsaW5l
cy0+bG9jayk7CiAJbGlzdF9kZWwoJnRsLT5saW5rKTsKLQltdXRleF91bmxvY2soJnRpbWVsaW5l
cy0+bXV0ZXgpOworCXNwaW5fdW5sb2NrKCZ0aW1lbGluZXMtPmxvY2spOwogCiAJLyoKIAkgKiBT
aW5jZSB0aGlzIHRpbWVsaW5lIGlzIGlkbGUsIGFsbCBiYXJpZXJzIHVwb24gd2hpY2ggd2Ugd2Vy
ZSB3YWl0aW5nCkBAIC01NDgsOCArNTQ4LDYgQEAgc3RhdGljIHZvaWQgdGltZWxpbmVzX2Zpbmko
c3RydWN0IGludGVsX2d0ICpndCkKIAogCUdFTV9CVUdfT04oIWxpc3RfZW1wdHkoJnRpbWVsaW5l
cy0+YWN0aXZlX2xpc3QpKTsKIAlHRU1fQlVHX09OKCFsaXN0X2VtcHR5KCZ0aW1lbGluZXMtPmh3
c3BfZnJlZV9saXN0KSk7Ci0KLQltdXRleF9kZXN0cm95KCZ0aW1lbGluZXMtPm11dGV4KTsKIH0K
IAogdm9pZCBpbnRlbF90aW1lbGluZXNfZmluaShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkx
NSkKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jCmluZGV4IDdhZGU0MmI4ZWM5OS4uYjZmM2JhYTc0ZGE0
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMKQEAgLTkwOSwyMCArOTA5LDIwIEBAIHN0YXRpYyBp
bnQgd2FpdF9mb3JfZW5naW5lcyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKIAogc3Rh
dGljIGxvbmcKIHdhaXRfZm9yX3RpbWVsaW5lcyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkx
NSwKLQkJICAgdW5zaWduZWQgaW50IGZsYWdzLCBsb25nIHRpbWVvdXQpCisJCSAgIHVuc2lnbmVk
IGludCB3YWl0LCBsb25nIHRpbWVvdXQpCiB7Ci0Jc3RydWN0IGludGVsX2d0X3RpbWVsaW5lcyAq
Z3QgPSAmaTkxNS0+Z3QudGltZWxpbmVzOworCXN0cnVjdCBpbnRlbF9ndF90aW1lbGluZXMgKnRp
bWVsaW5lcyA9ICZpOTE1LT5ndC50aW1lbGluZXM7CiAJc3RydWN0IGludGVsX3RpbWVsaW5lICp0
bDsKIAotCW11dGV4X2xvY2soJmd0LT5tdXRleCk7Ci0JbGlzdF9mb3JfZWFjaF9lbnRyeSh0bCwg
Jmd0LT5hY3RpdmVfbGlzdCwgbGluaykgeworCXNwaW5fbG9jaygmdGltZWxpbmVzLT5sb2NrKTsK
KwlsaXN0X2Zvcl9lYWNoX2VudHJ5KHRsLCAmdGltZWxpbmVzLT5hY3RpdmVfbGlzdCwgbGluaykg
ewogCQlzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycTsKIAogCQlycSA9IGk5MTVfYWN0aXZlX3JlcXVl
c3RfZ2V0X3VubG9ja2VkKCZ0bC0+bGFzdF9yZXF1ZXN0KTsKIAkJaWYgKCFycSkKIAkJCWNvbnRp
bnVlOwogCi0JCW11dGV4X3VubG9jaygmZ3QtPm11dGV4KTsKKwkJc3Bpbl91bmxvY2soJnRpbWVs
aW5lcy0+bG9jayk7CiAKIAkJLyoKIAkJICogIlJhY2UtdG8taWRsZSIuCkBAIC05MzMsMTkgKzkz
MywxOSBAQCB3YWl0X2Zvcl90aW1lbGluZXMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUs
CiAJCSAqIHdhbnQgdG8gY29tcGxldGUgYXMgcXVpY2tseSBhcyBwb3NzaWJsZSB0byBhdm9pZCBw
cm9sb25nZWQKIAkJICogc3RhbGxzLCBzbyBhbGxvdyB0aGUgZ3B1IHRvIGJvb3N0IHRvIG1heGlt
dW0gY2xvY2tzLgogCQkgKi8KLQkJaWYgKGZsYWdzICYgSTkxNV9XQUlUX0ZPUl9JRExFX0JPT1NU
KQorCQlpZiAod2FpdCAmIEk5MTVfV0FJVF9GT1JfSURMRV9CT09TVCkKIAkJCWdlbjZfcnBzX2Jv
b3N0KHJxKTsKIAotCQl0aW1lb3V0ID0gaTkxNV9yZXF1ZXN0X3dhaXQocnEsIGZsYWdzLCB0aW1l
b3V0KTsKKwkJdGltZW91dCA9IGk5MTVfcmVxdWVzdF93YWl0KHJxLCB3YWl0LCB0aW1lb3V0KTsK
IAkJaTkxNV9yZXF1ZXN0X3B1dChycSk7CiAJCWlmICh0aW1lb3V0IDwgMCkKIAkJCXJldHVybiB0
aW1lb3V0OwogCiAJCS8qIHJlc3RhcnQgYWZ0ZXIgcmVhY3F1aXJpbmcgdGhlIGxvY2sgKi8KLQkJ
bXV0ZXhfbG9jaygmZ3QtPm11dGV4KTsKLQkJdGwgPSBsaXN0X2VudHJ5KCZndC0+YWN0aXZlX2xp
c3QsIHR5cGVvZigqdGwpLCBsaW5rKTsKKwkJc3Bpbl9sb2NrKCZ0aW1lbGluZXMtPmxvY2spOwor
CQl0bCA9IGxpc3RfZW50cnkoJnRpbWVsaW5lcy0+YWN0aXZlX2xpc3QsIHR5cGVvZigqdGwpLCBs
aW5rKTsKIAl9Ci0JbXV0ZXhfdW5sb2NrKCZndC0+bXV0ZXgpOworCXNwaW5fdW5sb2NrKCZ0aW1l
bGluZXMtPmxvY2spOwogCiAJcmV0dXJuIHRpbWVvdXQ7CiB9Ci0tIAoyLjIyLjAKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
