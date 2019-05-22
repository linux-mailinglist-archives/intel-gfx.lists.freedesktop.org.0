Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EBEB7260A7
	for <lists+intel-gfx@lfdr.de>; Wed, 22 May 2019 11:47:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4226D89873;
	Wed, 22 May 2019 09:47:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 48E6989873;
 Wed, 22 May 2019 09:47:07 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 May 2019 02:47:06 -0700
X-ExtLoop1: 1
Received: from rosetta.fi.intel.com ([10.237.72.186])
 by orsmga004.jf.intel.com with ESMTP; 22 May 2019 02:47:04 -0700
Received: by rosetta.fi.intel.com (Postfix, from userid 1000)
 id DF8B0840167; Wed, 22 May 2019 12:46:53 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 22 May 2019 12:46:52 +0300
Message-Id: <20190522094652.17269-1-mika.kuoppala@linux.intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <155851788398.23981.2076407745257565334@skylake-alporthouse-com>
References: <155851788398.23981.2076407745257565334@skylake-alporthouse-com>
Subject: [Intel-gfx] [PATCH i-g-t] lib/dummyload: Cleanup access to spin obj
 array
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
Cc: igt-dev@lists.freedesktop.org
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SW5zdGVhZCBvZiByZWx5aW5nIGEgc3RhdGljIG9iaiBhcnJheSBpbnNpZGUgaWd0X3NwaW5fdCwK
YWNjZXNzIGl0IHdpdGggcHJvcGVyIGluZGV4aW5nLgoKdjI6IElHVF9TUElOX0JBVENICnYzOiBp
bmRlbnQKCkNjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KU2lnbmVk
LW9mZi1ieTogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+ClJl
dmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0tCiBs
aWIvaWd0X2R1bW15bG9hZC5jICAgICAgICAgICAgfCAxMyArKysrKystLS0tLS0tCiBsaWIvaWd0
X2R1bW15bG9hZC5oICAgICAgICAgICAgfCAgMSArCiB0ZXN0cy9pOTE1L2dlbV9leGVjX3NjaGVk
dWxlLmMgfCAyMyArKysrKysrKysrKysrLS0tLS0tLS0tLQogdGVzdHMvaTkxNS9nZW1fc29mdHBp
bi5jICAgICAgIHwgIDIgKy0KIHRlc3RzL2k5MTUvZ2VtX3NwaW5fYmF0Y2guYyAgICB8ICA0ICsr
LS0KIHRlc3RzL2k5MTUvaTkxNV9oYW5nbWFuLmMgICAgICB8ICAyICstCiA2IGZpbGVzIGNoYW5n
ZWQsIDI0IGluc2VydGlvbnMoKyksIDIxIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2xpYi9p
Z3RfZHVtbXlsb2FkLmMgYi9saWIvaWd0X2R1bW15bG9hZC5jCmluZGV4IDE1ZDY0ZmFkLi5lNmUz
NjZjYiAxMDA2NDQKLS0tIGEvbGliL2lndF9kdW1teWxvYWQuYworKysgYi9saWIvaWd0X2R1bW15
bG9hZC5jCkBAIC03Miw3ICs3Miw3IEBAIGVtaXRfcmVjdXJzaXZlX2JhdGNoKGlndF9zcGluX3Qg
KnNwaW4sCiAJCSAgICAgaW50IGZkLCBjb25zdCBzdHJ1Y3QgaWd0X3NwaW5fZmFjdG9yeSAqb3B0
cykKIHsKICNkZWZpbmUgU0NSQVRDSCAwCi0jZGVmaW5lIEJBVENIIDEKKyNkZWZpbmUgQkFUQ0gg
SUdUX1NQSU5fQkFUQ0gKIAljb25zdCBpbnQgZ2VuID0gaW50ZWxfZ2VuKGludGVsX2dldF9kcm1f
ZGV2aWQoZmQpKTsKIAlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX3JlbG9jYXRpb25fZW50cnkgcmVsb2Nz
WzJdLCAqcjsKIAlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX2V4ZWNidWZmZXIyICpleGVjYnVmOwpAQCAt
MjYxLDEyICsyNjEsMTEgQEAgZW1pdF9yZWN1cnNpdmVfYmF0Y2goaWd0X3NwaW5fdCAqc3BpbiwK
IAlpZ3RfYXNzZXJ0X2x0KGNzIC0gYmF0Y2gsIEJBVENIX1NJWkUgLyBzaXplb2YoKmNzKSk7CiAK
IAkvKiBNYWtlIGl0IGVhc2llciBmb3IgY2FsbGVycyB0byByZXN1Ym1pdC4gKi8KLQotCW9ialtC
QVRDSF0ucmVsb2NhdGlvbl9jb3VudCA9IDA7Ci0Jb2JqW0JBVENIXS5yZWxvY3NfcHRyID0gMDsK
LQotCW9ialtTQ1JBVENIXS5mbGFncyA9IEVYRUNfT0JKRUNUX1BJTk5FRDsKLQlvYmpbQkFUQ0hd
LmZsYWdzID0gRVhFQ19PQkpFQ1RfUElOTkVEOworCWZvciAoaSA9IDA7IGkgPCBBUlJBWV9TSVpF
KHNwaW4tPm9iaik7IGkrKykgeworCQlzcGluLT5vYmpbaV0ucmVsb2NhdGlvbl9jb3VudCA9IDA7
CisJCXNwaW4tPm9ialtpXS5yZWxvY3NfcHRyID0gMDsKKwkJc3Bpbi0+b2JqW2ldLmZsYWdzID0g
RVhFQ19PQkpFQ1RfUElOTkVEOworCX0KIAogCXNwaW4tPmNtZF9wcmVjb25kaXRpb24gPSAqc3Bp
bi0+Y29uZGl0aW9uOwogCmRpZmYgLS1naXQgYS9saWIvaWd0X2R1bW15bG9hZC5oIGIvbGliL2ln
dF9kdW1teWxvYWQuaAppbmRleCA2MWE5ZjJmYy4uYmIzNjE4NDIgMTAwNjQ0Ci0tLSBhL2xpYi9p
Z3RfZHVtbXlsb2FkLmgKKysrIGIvbGliL2lndF9kdW1teWxvYWQuaApAQCAtNDIsNiArNDIsNyBA
QCB0eXBlZGVmIHN0cnVjdCBpZ3Rfc3BpbiB7CiAKIAlpbnQgb3V0X2ZlbmNlOwogCXN0cnVjdCBk
cm1faTkxNV9nZW1fZXhlY19vYmplY3QyIG9ialsyXTsKKyNkZWZpbmUgSUdUX1NQSU5fQkFUQ0gg
ICAxCiAJc3RydWN0IGRybV9pOTE1X2dlbV9leGVjYnVmZmVyMiBleGVjYnVmOwogCXVpbnQzMl90
IHBvbGxfaGFuZGxlOwogCXVpbnQzMl90ICpwb2xsOwpkaWZmIC0tZ2l0IGEvdGVzdHMvaTkxNS9n
ZW1fZXhlY19zY2hlZHVsZS5jIGIvdGVzdHMvaTkxNS9nZW1fZXhlY19zY2hlZHVsZS5jCmluZGV4
IGMwNDM4NTEzLi43YjQxODYyMiAxMDA2NDQKLS0tIGEvdGVzdHMvaTkxNS9nZW1fZXhlY19zY2hl
ZHVsZS5jCisrKyBiL3Rlc3RzL2k5MTUvZ2VtX2V4ZWNfc2NoZWR1bGUuYwpAQCAtMjM0LDcgKzIz
NCw3IEBAIHN0YXRpYyB2b2lkIGluZGVwZW5kZW50KGludCBmZCwgdW5zaWduZWQgaW50IGVuZ2lu
ZSkKIAkJfSBlbHNlIHsKIAkJCXN0cnVjdCBkcm1faTkxNV9nZW1fZXhlY2J1ZmZlcjIgZWIgPSB7
CiAJCQkJLmJ1ZmZlcl9jb3VudCA9IDEsCi0JCQkJLmJ1ZmZlcnNfcHRyID0gdG9fdXNlcl9wb2lu
dGVyKCZzcGluLT5vYmpbMV0pLAorCQkJCS5idWZmZXJzX3B0ciA9IHRvX3VzZXJfcG9pbnRlcigm
c3Bpbi0+b2JqW0lHVF9TUElOX0JBVENIXSksCiAJCQkJLmZsYWdzID0gb3RoZXIsCiAJCQl9Owog
CQkJZ2VtX2V4ZWNidWYoZmQsICZlYik7CkBAIC01MzcsNyArNTM3LDggQEAgc3RhdGljIHZvaWQg
c2VtYXBob3JlX3Jlc29sdmUoaW50IGk5MTUpCiAKIAkJLyogVGhlbiBjYW5jZWwgdGhlIHNwaW5u
ZXIgKi8KIAkJKmNzKysgPSBNSV9TVE9SRV9EV09SRF9JTU07Ci0JCSpjcysrID0gc3Bpbi0+b2Jq
WzFdLm9mZnNldCArIG9mZnNldF9pbl9wYWdlKHNwaW4tPmNvbmRpdGlvbik7CisJCSpjcysrID0g
c3Bpbi0+b2JqW0lHVF9TUElOX0JBVENIXS5vZmZzZXQgKworCQkJb2Zmc2V0X2luX3BhZ2Uoc3Bp
bi0+Y29uZGl0aW9uKTsKIAkJKmNzKysgPSAwOwogCQkqY3MrKyA9IE1JX0JBVENIX0JVRkZFUl9F
TkQ7CiAKQEAgLTU0OCw3ICs1NDksNyBAQCBzdGF0aWMgdm9pZCBzZW1hcGhvcmVfcmVzb2x2ZShp
bnQgaTkxNSkKIAogCQkvKiBGaXJzdCB1cCBpcyBvdXIgc3Bpbm5pbmcgc2VtYXBob3JlICovCiAJ
CW1lbXNldChvYmosIDAsIHNpemVvZihvYmopKTsKLQkJb2JqWzBdID0gc3Bpbi0+b2JqWzFdOwor
CQlvYmpbMF0gPSBzcGluLT5vYmpbSUdUX1NQSU5fQkFUQ0hdOwogCQlvYmpbMV0uaGFuZGxlID0g
c2VtYXBob3JlOwogCQlvYmpbMV0ub2Zmc2V0ID0gU0VNQVBIT1JFX0FERFI7CiAJCW9ialsxXS5m
bGFncyA9IEVYRUNfT0JKRUNUX1BJTk5FRDsKQEAgLTU2Miw3ICs1NjMsNyBAQCBzdGF0aWMgdm9p
ZCBzZW1hcGhvcmVfcmVzb2x2ZShpbnQgaTkxNSkKIAkJbWVtc2V0KG9iaiwgMCwgc2l6ZW9mKG9i
aikpOwogCQlvYmpbMF0uaGFuZGxlID0gaGFuZGxlOwogCQlvYmpbMF0uZmxhZ3MgPSBFWEVDX09C
SkVDVF9XUklURTsgLyogYWx3YXlzIGFmdGVyIHNlbWFwaG9yZSAqLwotCQlvYmpbMV0gPSBzcGlu
LT5vYmpbMV07CisJCW9ialsxXSA9IHNwaW4tPm9ialtJR1RfU1BJTl9CQVRDSF07CiAJCWViLmJ1
ZmZlcl9jb3VudCA9IDI7CiAJCWViLnJzdmQxID0gMDsKIAkJZ2VtX2V4ZWNidWYoaTkxNSwgJmVi
KTsKQEAgLTYzOCwxMSArNjM5LDEzIEBAIHN0YXRpYyB2b2lkIHNlbWFwaG9yZV9ub3NraXAoaW50
IGk5MTUpCiAJCS8qIENhbmNlbCB0aGUgZm9sbG93aW5nIHNwaW5uZXIgKi8KIAkJKmNzKysgPSBN
SV9TVE9SRV9EV09SRF9JTU07CiAJCWlmIChnZW4gPj0gOCkgewotCQkJKmNzKysgPSBzcGluLT5v
YmpbMV0ub2Zmc2V0ICsgb2Zmc2V0X2luX3BhZ2Uoc3Bpbi0+Y29uZGl0aW9uKTsKKwkJCSpjcysr
ID0gc3Bpbi0+b2JqW0lHVF9TUElOX0JBVENIXS5vZmZzZXQgKworCQkJCW9mZnNldF9pbl9wYWdl
KHNwaW4tPmNvbmRpdGlvbik7CiAJCQkqY3MrKyA9IDA7CiAJCX0gZWxzZSB7CiAJCQkqY3MrKyA9
IDA7Ci0JCQkqY3MrKyA9IHNwaW4tPm9ialsxXS5vZmZzZXQgKyBvZmZzZXRfaW5fcGFnZShzcGlu
LT5jb25kaXRpb24pOworCQkJKmNzKysgPSBzcGluLT5vYmpbSUdUX1NQSU5fQkFUQ0hdLm9mZnNl
dCArCisJCQkJb2Zmc2V0X2luX3BhZ2Uoc3Bpbi0+Y29uZGl0aW9uKTsKIAkJfQogCQkqY3MrKyA9
IE1JX0JBVENIX0JVRkZFUl9FTkQ7CiAKQEAgLTY1MSw5ICs2NTQsOSBAQCBzdGF0aWMgdm9pZCBz
ZW1hcGhvcmVfbm9za2lwKGludCBpOTE1KQogCiAJCS8qIHBvcnQwOiBpbXBsaWNpdCBzZW1hcGhv
cmUgZnJvbSBlbmdpbmUgKi8KIAkJbWVtc2V0KG9iaiwgMCwgc2l6ZW9mKG9iaikpOwotCQlvYmpb
MF0gPSBjaGFpbi0+b2JqWzFdOworCQlvYmpbMF0gPSBjaGFpbi0+b2JqW0lHVF9TUElOX0JBVENI
XTsKIAkJb2JqWzBdLmZsYWdzIHw9IEVYRUNfT0JKRUNUX1dSSVRFOwotCQlvYmpbMV0gPSBzcGlu
LT5vYmpbMV07CisJCW9ialsxXSA9IHNwaW4tPm9ialtJR1RfU1BJTl9CQVRDSF07CiAJCW9ialsy
XS5oYW5kbGUgPSBoYW5kbGU7CiAJCW1lbXNldCgmZWIsIDAsIHNpemVvZihlYikpOwogCQllYi5i
dWZmZXJfY291bnQgPSAzOwpAQCAtNjY2LDcgKzY2OSw3IEBAIHN0YXRpYyB2b2lkIHNlbWFwaG9y
ZV9ub3NraXAoaW50IGk5MTUpCiAJCW1lbXNldChvYmosIDAsIHNpemVvZihvYmopKTsKIAkJb2Jq
WzBdLmhhbmRsZSA9IGhhbmRsZTsKIAkJb2JqWzBdLmZsYWdzID0gRVhFQ19PQkpFQ1RfV1JJVEU7
Ci0JCW9ialsxXSA9IHNwaW4tPm9ialsxXTsKKwkJb2JqWzFdID0gc3Bpbi0+b2JqW0lHVF9TUElO
X0JBVENIXTsKIAkJbWVtc2V0KCZlYiwgMCwgc2l6ZW9mKGViKSk7CiAJCWViLmJ1ZmZlcl9jb3Vu
dCA9IDI7CiAJCWViLmJ1ZmZlcnNfcHRyID0gdG9fdXNlcl9wb2ludGVyKG9iaik7CkBAIC04NDIs
NyArODQ1LDcgQEAgc3RhdGljIGlndF9zcGluX3QgKl9fbm9pc2UoaW50IGZkLCB1aW50MzJfdCBj
dHgsIGludCBwcmlvLCBpZ3Rfc3Bpbl90ICpzcGluKQogCQl9IGVsc2UgewogCQkJc3RydWN0IGRy
bV9pOTE1X2dlbV9leGVjYnVmZmVyMiBlYiA9IHsKIAkJCQkuYnVmZmVyX2NvdW50ID0gMSwKLQkJ
CQkuYnVmZmVyc19wdHIgPSB0b191c2VyX3BvaW50ZXIoJnNwaW4tPm9ialsxXSksCisJCQkJLmJ1
ZmZlcnNfcHRyID0gdG9fdXNlcl9wb2ludGVyKCZzcGluLT5vYmpbSUdUX1NQSU5fQkFUQ0hdKSwK
IAkJCQkucnN2ZDEgPSBjdHgsCiAJCQkJLmZsYWdzID0gb3RoZXIsCiAJCQl9OwpkaWZmIC0tZ2l0
IGEvdGVzdHMvaTkxNS9nZW1fc29mdHBpbi5jIGIvdGVzdHMvaTkxNS9nZW1fc29mdHBpbi5jCmlu
ZGV4IDMzNjAwOGI4Li40MjY1MGUwNCAxMDA2NDQKLS0tIGEvdGVzdHMvaTkxNS9nZW1fc29mdHBp
bi5jCisrKyBiL3Rlc3RzL2k5MTUvZ2VtX3NvZnRwaW4uYwpAQCAtMzYwLDcgKzM2MCw3IEBAIHN0
YXRpYyB2b2lkIHRlc3RfZXZpY3RfaGFuZyhpbnQgZmQpCiAJZXhlY2J1Zi5idWZmZXJfY291bnQg
PSAxOwogCiAJaGFuZyA9IGlndF9oYW5nX2N0eChmZCwgMCwgMCwgMCk7Ci0JZXhwZWN0ZWQgPSBo
YW5nLnNwaW4tPm9ialsxXS5vZmZzZXQ7CisJZXhwZWN0ZWQgPSBoYW5nLnNwaW4tPm9ialtJR1Rf
U1BJTl9CQVRDSF0ub2Zmc2V0OwogCiAJLyogUmVwbGFjZSB0aGUgaHVuZyBiYXRjaCB3aXRoIG91
cnNlbHZlcywgZm9yY2luZyBhbiBldmljdGlvbiAqLwogCW9iamVjdC5vZmZzZXQgPSBleHBlY3Rl
ZDsKZGlmZiAtLWdpdCBhL3Rlc3RzL2k5MTUvZ2VtX3NwaW5fYmF0Y2guYyBiL3Rlc3RzL2k5MTUv
Z2VtX3NwaW5fYmF0Y2guYwppbmRleCBhOTI2NzJiOC4uM2I0ZjkwNzMgMTAwNjQ0Ci0tLSBhL3Rl
c3RzL2k5MTUvZ2VtX3NwaW5fYmF0Y2guYworKysgYi90ZXN0cy9pOTE1L2dlbV9zcGluX2JhdGNo
LmMKQEAgLTc5LDcgKzc5LDcgQEAgc3RhdGljIHZvaWQgc3Bpbl9yZXN1Ym1pdChpbnQgZmQsIHVu
c2lnbmVkIGludCBlbmdpbmUsIHVuc2lnbmVkIGludCBmbGFncykKIAogCXN0cnVjdCBkcm1faTkx
NV9nZW1fZXhlY2J1ZmZlcjIgZWIgPSB7CiAJCS5idWZmZXJfY291bnQgPSAxLAotCQkuYnVmZmVy
c19wdHIgPSB0b191c2VyX3BvaW50ZXIoJnNwaW4tPm9ialsxXSksCisJCS5idWZmZXJzX3B0ciA9
IHRvX3VzZXJfcG9pbnRlcigmc3Bpbi0+b2JqW0lHVF9TUElOX0JBVENIXSksCiAJCS5yc3ZkMSA9
IGN0eDEsCiAJfTsKIApAQCAtOTgsNyArOTgsNyBAQCBzdGF0aWMgdm9pZCBzcGluX3Jlc3VibWl0
KGludCBmZCwgdW5zaWduZWQgaW50IGVuZ2luZSwgdW5zaWduZWQgaW50IGZsYWdzKQogCiAJaWd0
X3NwaW5fZW5kKHNwaW4pOwogCi0JZ2VtX3N5bmMoZmQsIHNwaW4tPm9ialsxXS5oYW5kbGUpOwor
CWdlbV9zeW5jKGZkLCBzcGluLT5oYW5kbGUpOwogCiAJaWd0X3NwaW5fZnJlZShmZCwgc3Bpbik7
CiAKZGlmZiAtLWdpdCBhL3Rlc3RzL2k5MTUvaTkxNV9oYW5nbWFuLmMgYi90ZXN0cy9pOTE1L2k5
MTVfaGFuZ21hbi5jCmluZGV4IDlhMWQ1ODg5Li41MWIzYjcwMCAxMDA2NDQKLS0tIGEvdGVzdHMv
aTkxNS9pOTE1X2hhbmdtYW4uYworKysgYi90ZXN0cy9pOTE1L2k5MTVfaGFuZ21hbi5jCkBAIC0y
MDksNyArMjA5LDcgQEAgc3RhdGljIHZvaWQgdGVzdF9lcnJvcl9zdGF0ZV9jYXB0dXJlKHVuc2ln
bmVkIHJpbmdfaWQsCiAJY2xlYXJfZXJyb3Jfc3RhdGUoKTsKIAogCWhhbmcgPSBpZ3RfaGFuZ19j
dHgoZGV2aWNlLCAwLCByaW5nX2lkLCBIQU5HX0FMTE9XX0NBUFRVUkUpOwotCW9mZnNldCA9IGhh
bmcuc3Bpbi0+b2JqWzFdLm9mZnNldDsKKwlvZmZzZXQgPSBoYW5nLnNwaW4tPm9ialtJR1RfU1BJ
Tl9CQVRDSF0ub2Zmc2V0OwogCiAJYmF0Y2ggPSBnZW1fbW1hcF9fY3B1KGRldmljZSwgaGFuZy5z
cGluLT5oYW5kbGUsIDAsIDQwOTYsIFBST1RfUkVBRCk7CiAJZ2VtX3NldF9kb21haW4oZGV2aWNl
LCBoYW5nLnNwaW4tPmhhbmRsZSwgSTkxNV9HRU1fRE9NQUlOX0NQVSwgMCk7Ci0tIAoyLjE3LjEK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
