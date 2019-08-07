Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D525851C3
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Aug 2019 19:12:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E7A36E74A;
	Wed,  7 Aug 2019 17:12:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74D556E742
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Aug 2019 17:12:04 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Aug 2019 09:58:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,358,1559545200"; d="scan'208";a="177020463"
Received: from jssummer-desk.jf.intel.com ([10.165.21.197])
 by orsmga003.jf.intel.com with ESMTP; 07 Aug 2019 09:58:32 -0700
From: Stuart Summers <stuart.summers@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Aug 2019 09:58:28 -0700
Message-Id: <20190807165832.26324-6-stuart.summers@intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a983
In-Reply-To: <20190807165832.26324-1-stuart.summers@intel.com>
References: <20190807165832.26324-1-stuart.summers@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/9] drm/i915: Add function to set subslices
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

QWRkIGEgbmV3IGZ1bmN0aW9uIHRvIHNldCBhIHJhbmdlIG9mIHN1YnNsaWNlcyBmb3IgYQpzcGVj
aWZpZWQgc2xpY2UgYmFzZWQgb24gYSBnaXZlbiBtYXNrLgoKdjI6IFVzZSBsb2NhbCB2YXJpYWJs
ZSBmb3Igc3Vic2xpY2VfbWFzayBvbiBIU1cgYW5kCiAgICBjbGVhbiB1cCBhIGZldyBvdGhlciBz
dWJzbGljZV9tYXNrIGxvY2FsIHZhcmlhYmxlCiAgICBjaGFuZ2VzCgpTaWduZWQtb2ZmLWJ5OiBT
dHVhcnQgU3VtbWVycyA8c3R1YXJ0LnN1bW1lcnNAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX3NzZXUuYyAgICAgfCAxMCArKysrCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9zc2V1LmggICAgIHwgIDMgKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX2RldmljZV9pbmZvLmMgfCA1OSArKysrKysrKysrKysrLS0tLS0tLS0tLS0KIDMgZmlsZXMg
Y2hhbmdlZCwgNDYgaW5zZXJ0aW9ucygrKSwgMjYgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfc3NldS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfc3NldS5jCmluZGV4IDcxYWJmMGM5YTQ2Yi4uNjA3YzE0NDcyODdjIDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9zc2V1LmMKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfc3NldS5jCkBAIC0zMCw2ICszMCwxNiBAQCBpbnRlbF9z
c2V1X3N1YnNsaWNlX3RvdGFsKGNvbnN0IHN0cnVjdCBzc2V1X2Rldl9pbmZvICpzc2V1KQogCXJl
dHVybiB0b3RhbDsKIH0KIAordm9pZCBpbnRlbF9zc2V1X3NldF9zdWJzbGljZXMoc3RydWN0IHNz
ZXVfZGV2X2luZm8gKnNzZXUsIGludCBzbGljZSwKKwkJCSAgICAgIHUzMiBzc19tYXNrKQorewor
CWludCBpLCBvZmZzZXQgPSBzbGljZSAqIHNzZXUtPnNzX3N0cmlkZTsKKworCWZvciAoaSA9IDA7
IGkgPCBzc2V1LT5zc19zdHJpZGU7IGkrKykKKwkJc3NldS0+c3Vic2xpY2VfbWFza1tvZmZzZXQg
KyBpXSA9CisJCQkoc3NfbWFzayA+PiAoQklUU19QRVJfQllURSAqIGkpKSAmIDB4ZmY7Cit9CisK
IHVuc2lnbmVkIGludAogaW50ZWxfc3NldV9zdWJzbGljZXNfcGVyX3NsaWNlKGNvbnN0IHN0cnVj
dCBzc2V1X2Rldl9pbmZvICpzc2V1LCB1OCBzbGljZSkKIHsKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX3NzZXUuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX3NzZXUuaAppbmRleCBmZTIyZDViMThlNjcuLjIyNjFkNGU3ZDk4YiAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfc3NldS5oCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX3NzZXUuaApAQCAtNzUsNiArNzUsOSBAQCBpbnRlbF9zc2V1X3N1YnNs
aWNlX3RvdGFsKGNvbnN0IHN0cnVjdCBzc2V1X2Rldl9pbmZvICpzc2V1KTsKIHVuc2lnbmVkIGlu
dAogaW50ZWxfc3NldV9zdWJzbGljZXNfcGVyX3NsaWNlKGNvbnN0IHN0cnVjdCBzc2V1X2Rldl9p
bmZvICpzc2V1LCB1OCBzbGljZSk7CiAKK3ZvaWQgaW50ZWxfc3NldV9zZXRfc3Vic2xpY2VzKHN0
cnVjdCBzc2V1X2Rldl9pbmZvICpzc2V1LCBpbnQgc2xpY2UsCisJCQkgICAgICB1MzIgc3NfbWFz
ayk7CisKIHUzMiBpbnRlbF9zc2V1X21ha2VfcnBjcyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
aTkxNSwKIAkJCSBjb25zdCBzdHJ1Y3QgaW50ZWxfc3NldSAqcmVxX3NzZXUpOwogCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uYwppbmRleCA3ZGU3YjdiNTQwY2IuLjIzMjA2
MTNhNTFhYyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2lu
Zm8uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5jCkBAIC0y
MDYsNyArMjA2LDEwIEBAIHN0YXRpYyB2b2lkIGdlbjExX3NzZXVfaW5mb19pbml0KHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAkJCWludCBzczsKIAogCQkJc3NldS0+c2xpY2Vf
bWFzayB8PSBCSVQocyk7Ci0JCQlzc2V1LT5zdWJzbGljZV9tYXNrW3NdID0gKHNzX2VuID4+IHNz
X2lkeCkgJiBzc19lbl9tYXNrOworCisJCQlpbnRlbF9zc2V1X3NldF9zdWJzbGljZXMoc3NldSwg
cywgKHNzX2VuID4+IHNzX2lkeCkgJgorCQkJCQkJCSAgc3NfZW5fbWFzayk7CisKIAkJCWZvciAo
c3MgPSAwOyBzcyA8IHNzZXUtPm1heF9zdWJzbGljZXM7IHNzKyspIHsKIAkJCQlpZiAoc3NldS0+
c3Vic2xpY2VfbWFza1tzXSAmIEJJVChzcykpCiAJCQkJCXNzZXVfc2V0X2V1cyhzc2V1LCBzLCBz
cywgZXVfZW4pOwpAQCAtMjM1LDE4ICsyMzgsNiBAQCBzdGF0aWMgdm9pZCBnZW4xMF9zc2V1X2lu
Zm9faW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJc3NldS0+c2xpY2Vf
bWFzayA9IChmdXNlMiAmIEdFTjEwX0YyX1NfRU5BX01BU0spID4+CiAJCQkgICAgR0VOMTBfRjJf
U19FTkFfU0hJRlQ7CiAKLQlzdWJzbGljZV9tYXNrID0gKDEgPDwgNCkgLSAxOwotCXN1YnNsaWNl
X21hc2sgJj0gfigoZnVzZTIgJiBHRU4xMF9GMl9TU19ESVNfTUFTSykgPj4KLQkJCSAgIEdFTjEw
X0YyX1NTX0RJU19TSElGVCk7Ci0KLQkvKgotCSAqIFNsaWNlMCBjYW4gaGF2ZSB1cCB0byAzIHN1
YnNsaWNlcywgYnV0IHRoZXJlIGFyZSBvbmx5IDIgaW4KLQkgKiBzbGljZTEvMi4KLQkgKi8KLQlz
c2V1LT5zdWJzbGljZV9tYXNrWzBdID0gc3Vic2xpY2VfbWFzazsKLQlmb3IgKHMgPSAxOyBzIDwg
c3NldS0+bWF4X3NsaWNlczsgcysrKQotCQlzc2V1LT5zdWJzbGljZV9tYXNrW3NdID0gc3Vic2xp
Y2VfbWFzayAmIDB4MzsKLQogCS8qIFNsaWNlMCAqLwogCWV1X2VuID0gfkk5MTVfUkVBRChHRU44
X0VVX0RJU0FCTEUwKTsKIAlmb3IgKHNzID0gMDsgc3MgPCBzc2V1LT5tYXhfc3Vic2xpY2VzOyBz
cysrKQpAQCAtMjcwLDE0ICsyNjEsMjUgQEAgc3RhdGljIHZvaWQgZ2VuMTBfc3NldV9pbmZvX2lu
aXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCWV1X2VuID0gfkk5MTVfUkVB
RChHRU4xMF9FVV9ESVNBQkxFMyk7CiAJc3NldV9zZXRfZXVzKHNzZXUsIDUsIDEsIGV1X2VuICYg
ZXVfbWFzayk7CiAKLQkvKiBEbyBhIHNlY29uZCBwYXNzIHdoZXJlIHdlIG1hcmsgdGhlIHN1YnNs
aWNlcyBkaXNhYmxlZCBpZiBhbGwgdGhlaXIKLQkgKiBldXMgYXJlIG9mZi4KLQkgKi8KKwlzdWJz
bGljZV9tYXNrID0gKDEgPDwgNCkgLSAxOworCXN1YnNsaWNlX21hc2sgJj0gfigoZnVzZTIgJiBH
RU4xMF9GMl9TU19ESVNfTUFTSykgPj4KKwkJCSAgIEdFTjEwX0YyX1NTX0RJU19TSElGVCk7CisK
IAlmb3IgKHMgPSAwOyBzIDwgc3NldS0+bWF4X3NsaWNlczsgcysrKSB7CisJCXUzMiBzdWJzbGlj
ZV9tYXNrX3dpdGhfZXVzID0gc3Vic2xpY2VfbWFzazsKKwogCQlmb3IgKHNzID0gMDsgc3MgPCBz
c2V1LT5tYXhfc3Vic2xpY2VzOyBzcysrKSB7CiAJCQlpZiAoc3NldV9nZXRfZXVzKHNzZXUsIHMs
IHNzKSA9PSAwKQotCQkJCXNzZXUtPnN1YnNsaWNlX21hc2tbc10gJj0gfkJJVChzcyk7CisJCQkJ
c3Vic2xpY2VfbWFza193aXRoX2V1cyAmPSB+QklUKHNzKTsKIAkJfQorCisJCS8qCisJCSAqIFNs
aWNlMCBjYW4gaGF2ZSB1cCB0byAzIHN1YnNsaWNlcywgYnV0IHRoZXJlIGFyZSBvbmx5IDIgaW4K
KwkJICogc2xpY2UxLzIuCisJCSAqLworCQlpbnRlbF9zc2V1X3NldF9zdWJzbGljZXMoc3NldSwg
cywgcyA9PSAwID8KKwkJCQkJCSAgc3Vic2xpY2VfbWFza193aXRoX2V1cyA6CisJCQkJCQkgIHN1
YnNsaWNlX21hc2tfd2l0aF9ldXMgJiAweDMpOwogCX0KIAogCXNzZXUtPmV1X3RvdGFsID0gY29t
cHV0ZV9ldV90b3RhbChzc2V1KTsKQEAgLTMwMyw2ICszMDUsNyBAQCBzdGF0aWMgdm9pZCBjaGVy
cnl2aWV3X3NzZXVfaW5mb19pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikK
IHsKIAlzdHJ1Y3Qgc3NldV9kZXZfaW5mbyAqc3NldSA9ICZSVU5USU1FX0lORk8oZGV2X3ByaXYp
LT5zc2V1OwogCXUzMiBmdXNlOworCXU4IHN1YnNsaWNlX21hc2sgPSAwOwogCiAJZnVzZSA9IEk5
MTVfUkVBRChDSFZfRlVTRV9HVCk7CiAKQEAgLTMxNiw3ICszMTksNyBAQCBzdGF0aWMgdm9pZCBj
aGVycnl2aWV3X3NzZXVfaW5mb19pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJp
dikKIAkJCSgoKGZ1c2UgJiBDSFZfRkdUX0VVX0RJU19TUzBfUjFfTUFTSykgPj4KIAkJCSAgQ0hW
X0ZHVF9FVV9ESVNfU1MwX1IxX1NISUZUKSA8PCA0KTsKIAotCQlzc2V1LT5zdWJzbGljZV9tYXNr
WzBdIHw9IEJJVCgwKTsKKwkJc3Vic2xpY2VfbWFzayB8PSBCSVQoMCk7CiAJCXNzZXVfc2V0X2V1
cyhzc2V1LCAwLCAwLCB+ZGlzYWJsZWRfbWFzayk7CiAJfQogCkBAIC0zMjcsMTAgKzMzMCwxMiBA
QCBzdGF0aWMgdm9pZCBjaGVycnl2aWV3X3NzZXVfaW5mb19pbml0KHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdikKIAkJCSgoKGZ1c2UgJiBDSFZfRkdUX0VVX0RJU19TUzFfUjFfTUFT
SykgPj4KIAkJCSAgQ0hWX0ZHVF9FVV9ESVNfU1MxX1IxX1NISUZUKSA8PCA0KTsKIAotCQlzc2V1
LT5zdWJzbGljZV9tYXNrWzBdIHw9IEJJVCgxKTsKKwkJc3Vic2xpY2VfbWFzayB8PSBCSVQoMSk7
CiAJCXNzZXVfc2V0X2V1cyhzc2V1LCAwLCAxLCB+ZGlzYWJsZWRfbWFzayk7CiAJfQogCisJaW50
ZWxfc3NldV9zZXRfc3Vic2xpY2VzKHNzZXUsIDAsIHN1YnNsaWNlX21hc2spOworCiAJc3NldS0+
ZXVfdG90YWwgPSBjb21wdXRlX2V1X3RvdGFsKHNzZXUpOwogCiAJLyoKQEAgLTM4Myw3ICszODgs
NyBAQCBzdGF0aWMgdm9pZCBnZW45X3NzZXVfaW5mb19pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdikKIAkJCS8qIHNraXAgZGlzYWJsZWQgc2xpY2UgKi8KIAkJCWNvbnRpbnVl
OwogCi0JCXNzZXUtPnN1YnNsaWNlX21hc2tbc10gPSBzdWJzbGljZV9tYXNrOworCQlpbnRlbF9z
c2V1X3NldF9zdWJzbGljZXMoc3NldSwgcywgc3Vic2xpY2VfbWFzayk7CiAKIAkJZXVfZGlzYWJs
ZSA9IEk5MTVfUkVBRChHRU45X0VVX0RJU0FCTEUocykpOwogCQlmb3IgKHNzID0gMDsgc3MgPCBz
c2V1LT5tYXhfc3Vic2xpY2VzOyBzcysrKSB7CkBAIC00OTAsNyArNDk1LDcgQEAgc3RhdGljIHZv
aWQgYnJvYWR3ZWxsX3NzZXVfaW5mb19pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdikKIAkJCS8qIHNraXAgZGlzYWJsZWQgc2xpY2UgKi8KIAkJCWNvbnRpbnVlOwogCi0JCXNz
ZXUtPnN1YnNsaWNlX21hc2tbc10gPSBzdWJzbGljZV9tYXNrOworCQlpbnRlbF9zc2V1X3NldF9z
dWJzbGljZXMoc3NldSwgcywgc3Vic2xpY2VfbWFzayk7CiAKIAkJZm9yIChzcyA9IDA7IHNzIDwg
c3NldS0+bWF4X3N1YnNsaWNlczsgc3MrKykgewogCQkJdTggZXVfZGlzYWJsZWRfbWFzazsKQEAg
LTU0MCw2ICs1NDUsNyBAQCBzdGF0aWMgdm9pZCBoYXN3ZWxsX3NzZXVfaW5mb19pbml0KHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIHsKIAlzdHJ1Y3Qgc3NldV9kZXZfaW5mbyAq
c3NldSA9ICZSVU5USU1FX0lORk8oZGV2X3ByaXYpLT5zc2V1OwogCXUzMiBmdXNlMTsKKwl1OCBz
dWJzbGljZV9tYXNrID0gMDsKIAlpbnQgcywgc3M7CiAKIAkvKgpAQCAtNTUyLDE2ICs1NTgsMTUg
QEAgc3RhdGljIHZvaWQgaGFzd2VsbF9zc2V1X2luZm9faW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqZGV2X3ByaXYpCiAJCS8qIGZhbGwgdGhyb3VnaCAqLwogCWNhc2UgMToKIAkJc3NldS0+
c2xpY2VfbWFzayA9IEJJVCgwKTsKLQkJc3NldS0+c3Vic2xpY2VfbWFza1swXSA9IEJJVCgwKTsK
KwkJc3Vic2xpY2VfbWFzayA9IEJJVCgwKTsKIAkJYnJlYWs7CiAJY2FzZSAyOgogCQlzc2V1LT5z
bGljZV9tYXNrID0gQklUKDApOwotCQlzc2V1LT5zdWJzbGljZV9tYXNrWzBdID0gQklUKDApIHwg
QklUKDEpOworCQlzdWJzbGljZV9tYXNrID0gQklUKDApIHwgQklUKDEpOwogCQlicmVhazsKIAlj
YXNlIDM6CiAJCXNzZXUtPnNsaWNlX21hc2sgPSBCSVQoMCkgfCBCSVQoMSk7Ci0JCXNzZXUtPnN1
YnNsaWNlX21hc2tbMF0gPSBCSVQoMCkgfCBCSVQoMSk7Ci0JCXNzZXUtPnN1YnNsaWNlX21hc2tb
MV0gPSBCSVQoMCkgfCBCSVQoMSk7CisJCXN1YnNsaWNlX21hc2sgPSBCSVQoMCkgfCBCSVQoMSk7
CiAJCWJyZWFrOwogCX0KIApAQCAtNTgzLDEwICs1ODgsMTIgQEAgc3RhdGljIHZvaWQgaGFzd2Vs
bF9zc2V1X2luZm9faW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJfQog
CiAJaW50ZWxfc3NldV9zZXRfaW5mbyhzc2V1LCBod2VpZ2h0OChzc2V1LT5zbGljZV9tYXNrKSwK
LQkJCSAgICBod2VpZ2h0OChzc2V1LT5zdWJzbGljZV9tYXNrWzBdKSwKKwkJCSAgICBod2VpZ2h0
OChzdWJzbGljZV9tYXNrKSwKIAkJCSAgICBzc2V1LT5ldV9wZXJfc3Vic2xpY2UpOwogCiAJZm9y
IChzID0gMDsgcyA8IHNzZXUtPm1heF9zbGljZXM7IHMrKykgeworCQlpbnRlbF9zc2V1X3NldF9z
dWJzbGljZXMoc3NldSwgcywgc3Vic2xpY2VfbWFzayk7CisKIAkJZm9yIChzcyA9IDA7IHNzIDwg
c3NldS0+bWF4X3N1YnNsaWNlczsgc3MrKykgewogCQkJc3NldV9zZXRfZXVzKHNzZXUsIHMsIHNz
LAogCQkJCSAgICAgKDFVTCA8PCBzc2V1LT5ldV9wZXJfc3Vic2xpY2UpIC0gMSk7Ci0tIAoyLjIx
LjAuNS5nYWViNTgyYTk4MwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
