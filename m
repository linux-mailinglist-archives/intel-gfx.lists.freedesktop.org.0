Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ED901733F
	for <lists+intel-gfx@lfdr.de>; Wed,  8 May 2019 10:09:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACEBD895E2;
	Wed,  8 May 2019 08:09:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A658E89565
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 May 2019 08:09:14 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16485903-1500050 
 for multiple; Wed, 08 May 2019 09:07:07 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 May 2019 09:06:27 +0100
Message-Id: <20190508080704.24223-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190508080704.24223-1-chris@chris-wilson.co.uk>
References: <20190508080704.24223-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 03/40] drm/i915: Pass i915_sched_node around
 internally
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

VG8gc2ltcGxpZnkgdGhlIG5leHQgcGF0Y2gsIHVwZGF0ZSBidW1wX3ByaW9yaXR5IGFuZCBzY2hl
ZHVsZSB0byBhY2NlcHQKdGhlIGludGVybmFsIGk5MTVfc2NoZWRfbmRvZSBkaXJlY3RseSBhbmQg
bm90IGV4cGVjdCBhIHJlcXVlc3QgcG9pbnRlci4KCmFkZC9yZW1vdmU6IDAvMCBncm93L3Nocmlu
azogMi8xIHVwL2Rvd246IDgvLTE1ICgtNykKRnVuY3Rpb24gICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgb2xkICAgICBuZXcgICBkZWx0YQppOTE1X3NjaGVkdWxlX2J1bXBfcHJp
b3JpdHkgICAgICAgICAgICAgICAgICAxMDkgICAgIDExMyAgICAgICs0Cmk5MTVfc2NoZWR1bGUg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA1MCAgICAgIDU0ICAgICAgKzQKX19pOTE1
X3NjaGVkdWxlICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgOTIyICAgICA5MDcgICAgIC0x
NQoKdjI6IEFkb3B0IG5vZGUgZm9yIHRoZSBvbGQgcnEgbG9jYWwsIHNpbmNlIGl0IG5vIGxvbmdl
ciBpcyBhIHJlcXVlc3QgYnV0CnRoZSBvcmlnaW4gbm9kZS4KClNpZ25lZC1vZmYtYnk6IENocmlz
IFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfc2NoZWR1bGVyLmMgfCAzNiArKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0KIDEg
ZmlsZSBjaGFuZ2VkLCAxOSBpbnNlcnRpb25zKCspLCAxNyBkZWxldGlvbnMoLSkKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3NjaGVkdWxlci5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9zY2hlZHVsZXIuYwppbmRleCBiNzQ4OGMzMWUzZTkuLmYzMmQwZWU2ZDU4
YyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9zY2hlZHVsZXIuYworKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3NjaGVkdWxlci5jCkBAIC0xODYsNyArMTg2LDcg
QEAgc3RhdGljIHZvaWQga2lja19zdWJtaXNzaW9uKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVu
Z2luZSwgaW50IHByaW8pCiAJdGFza2xldF9oaV9zY2hlZHVsZSgmZW5naW5lLT5leGVjbGlzdHMu
dGFza2xldCk7CiB9CiAKLXN0YXRpYyB2b2lkIF9faTkxNV9zY2hlZHVsZShzdHJ1Y3QgaTkxNV9y
ZXF1ZXN0ICpycSwKK3N0YXRpYyB2b2lkIF9faTkxNV9zY2hlZHVsZShzdHJ1Y3QgaTkxNV9zY2hl
ZF9ub2RlICpub2RlLAogCQkJICAgIGNvbnN0IHN0cnVjdCBpOTE1X3NjaGVkX2F0dHIgKmF0dHIp
CiB7CiAJc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lOwpAQCAtMjAwLDEzICsyMDAsMTMg
QEAgc3RhdGljIHZvaWQgX19pOTE1X3NjaGVkdWxlKHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxLAog
CWxvY2tkZXBfYXNzZXJ0X2hlbGQoJnNjaGVkdWxlX2xvY2spOwogCUdFTV9CVUdfT04ocHJpbyA9
PSBJOTE1X1BSSU9SSVRZX0lOVkFMSUQpOwogCi0JaWYgKGk5MTVfcmVxdWVzdF9jb21wbGV0ZWQo
cnEpKQorCWlmIChub2RlX3NpZ25hbGVkKG5vZGUpKQogCQlyZXR1cm47CiAKLQlpZiAocHJpbyA8
PSBSRUFEX09OQ0UocnEtPnNjaGVkLmF0dHIucHJpb3JpdHkpKQorCWlmIChwcmlvIDw9IFJFQURf
T05DRShub2RlLT5hdHRyLnByaW9yaXR5KSkKIAkJcmV0dXJuOwogCi0Jc3RhY2suc2lnbmFsZXIg
PSAmcnEtPnNjaGVkOworCXN0YWNrLnNpZ25hbGVyID0gbm9kZTsKIAlsaXN0X2FkZCgmc3RhY2su
ZGZzX2xpbmssICZkZnMpOwogCiAJLyoKQEAgLTI1Nyw5ICsyNTcsOSBAQCBzdGF0aWMgdm9pZCBf
X2k5MTVfc2NoZWR1bGUoc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEsCiAJICogZXhlY2xpc3RzX3N1
Ym1pdF9yZXF1ZXN0KCkpLCB3ZSBjYW4gc2V0IG91ciBvd24gcHJpb3JpdHkgYW5kIHNraXAKIAkg
KiBhY3F1aXJpbmcgdGhlIGVuZ2luZSBsb2Nrcy4KIAkgKi8KLQlpZiAocnEtPnNjaGVkLmF0dHIu
cHJpb3JpdHkgPT0gSTkxNV9QUklPUklUWV9JTlZBTElEKSB7Ci0JCUdFTV9CVUdfT04oIWxpc3Rf
ZW1wdHkoJnJxLT5zY2hlZC5saW5rKSk7Ci0JCXJxLT5zY2hlZC5hdHRyID0gKmF0dHI7CisJaWYg
KG5vZGUtPmF0dHIucHJpb3JpdHkgPT0gSTkxNV9QUklPUklUWV9JTlZBTElEKSB7CisJCUdFTV9C
VUdfT04oIWxpc3RfZW1wdHkoJm5vZGUtPmxpbmspKTsKKwkJbm9kZS0+YXR0ciA9ICphdHRyOwog
CiAJCWlmIChzdGFjay5kZnNfbGluay5uZXh0ID09IHN0YWNrLmRmc19saW5rLnByZXYpCiAJCQly
ZXR1cm47CkBAIC0yNjgsMTUgKzI2OCwxNCBAQCBzdGF0aWMgdm9pZCBfX2k5MTVfc2NoZWR1bGUo
c3RydWN0IGk5MTVfcmVxdWVzdCAqcnEsCiAJfQogCiAJbWVtc2V0KCZjYWNoZSwgMCwgc2l6ZW9m
KGNhY2hlKSk7Ci0JZW5naW5lID0gcnEtPmVuZ2luZTsKKwllbmdpbmUgPSBub2RlX3RvX3JlcXVl
c3Qobm9kZSktPmVuZ2luZTsKIAlzcGluX2xvY2soJmVuZ2luZS0+dGltZWxpbmUubG9jayk7CiAK
IAkvKiBGaWZvIGFuZCBkZXB0aC1maXJzdCByZXBsYWNlbWVudCBlbnN1cmUgb3VyIGRlcHMgZXhl
Y3V0ZSBiZWZvcmUgdXMgKi8KIAlsaXN0X2Zvcl9lYWNoX2VudHJ5X3NhZmVfcmV2ZXJzZShkZXAs
IHAsICZkZnMsIGRmc19saW5rKSB7Ci0JCXN0cnVjdCBpOTE1X3NjaGVkX25vZGUgKm5vZGUgPSBk
ZXAtPnNpZ25hbGVyOwotCiAJCUlOSVRfTElTVF9IRUFEKCZkZXAtPmRmc19saW5rKTsKIAorCQlu
b2RlID0gZGVwLT5zaWduYWxlcjsKIAkJZW5naW5lID0gc2NoZWRfbG9ja19lbmdpbmUobm9kZSwg
ZW5naW5lLCAmY2FjaGUpOwogCQlsb2NrZGVwX2Fzc2VydF9oZWxkKCZlbmdpbmUtPnRpbWVsaW5l
LmxvY2spOwogCkBAIC0zMTksMTMgKzMxOCwyMCBAQCBzdGF0aWMgdm9pZCBfX2k5MTVfc2NoZWR1
bGUoc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEsCiB2b2lkIGk5MTVfc2NoZWR1bGUoc3RydWN0IGk5
MTVfcmVxdWVzdCAqcnEsIGNvbnN0IHN0cnVjdCBpOTE1X3NjaGVkX2F0dHIgKmF0dHIpCiB7CiAJ
c3Bpbl9sb2NrX2lycSgmc2NoZWR1bGVfbG9jayk7Ci0JX19pOTE1X3NjaGVkdWxlKHJxLCBhdHRy
KTsKKwlfX2k5MTVfc2NoZWR1bGUoJnJxLT5zY2hlZCwgYXR0cik7CiAJc3Bpbl91bmxvY2tfaXJx
KCZzY2hlZHVsZV9sb2NrKTsKIH0KIAorc3RhdGljIHZvaWQgX19idW1wX3ByaW9yaXR5KHN0cnVj
dCBpOTE1X3NjaGVkX25vZGUgKm5vZGUsIHVuc2lnbmVkIGludCBidW1wKQoreworCXN0cnVjdCBp
OTE1X3NjaGVkX2F0dHIgYXR0ciA9IG5vZGUtPmF0dHI7CisKKwlhdHRyLnByaW9yaXR5IHw9IGJ1
bXA7CisJX19pOTE1X3NjaGVkdWxlKG5vZGUsICZhdHRyKTsKK30KKwogdm9pZCBpOTE1X3NjaGVk
dWxlX2J1bXBfcHJpb3JpdHkoc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEsIHVuc2lnbmVkIGludCBi
dW1wKQogewotCXN0cnVjdCBpOTE1X3NjaGVkX2F0dHIgYXR0cjsKIAl1bnNpZ25lZCBsb25nIGZs
YWdzOwogCiAJR0VNX0JVR19PTihidW1wICYgfkk5MTVfUFJJT1JJVFlfTUFTSyk7CkBAIC0zMzQs
MTEgKzM0MCw3IEBAIHZvaWQgaTkxNV9zY2hlZHVsZV9idW1wX3ByaW9yaXR5KHN0cnVjdCBpOTE1
X3JlcXVlc3QgKnJxLCB1bnNpZ25lZCBpbnQgYnVtcCkKIAkJcmV0dXJuOwogCiAJc3Bpbl9sb2Nr
X2lycXNhdmUoJnNjaGVkdWxlX2xvY2ssIGZsYWdzKTsKLQotCWF0dHIgPSBycS0+c2NoZWQuYXR0
cjsKLQlhdHRyLnByaW9yaXR5IHw9IGJ1bXA7Ci0JX19pOTE1X3NjaGVkdWxlKHJxLCAmYXR0cik7
Ci0KKwlfX2J1bXBfcHJpb3JpdHkoJnJxLT5zY2hlZCwgYnVtcCk7CiAJc3Bpbl91bmxvY2tfaXJx
cmVzdG9yZSgmc2NoZWR1bGVfbG9jaywgZmxhZ3MpOwogfQogCi0tIAoyLjIwLjEKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
