Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CD8DC4DB6E
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jun 2019 22:39:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D36146E7EC;
	Thu, 20 Jun 2019 20:39:29 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 091A26E7FA
 for <Intel-gfx@lists.freedesktop.org>; Thu, 20 Jun 2019 20:38:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Jun 2019 13:38:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,398,1557212400"; d="scan'208";a="186938716"
Received: from yyosef-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.23.42])
 by fmsmga002.fm.intel.com with ESMTP; 20 Jun 2019 13:38:51 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Thu, 20 Jun 2019 21:38:22 +0100
Message-Id: <20190620203835.1421-20-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190620203835.1421-1-tvrtko.ursulin@linux.intel.com>
References: <20190620203835.1421-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 20/33] drm/i915: Make ggtt invalidation work on ggtt
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCkl0IGlzIG1v
cmUgbG9naWNhbCBmb3IgZ2d0dCBpbnZhbGlkYXRpb24gdG8gdGFrZSBnZ3R0IGFzIGlucHV0IHBh
cmFtZXRlci4KClNpZ25lZC1vZmYtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBp
bnRlbC5jb20+ClJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5j
by51az4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYyB8IDUxICsrKysr
KysrKysrKysrLS0tLS0tLS0tLS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9n
dHQuaCB8ICAyICstCiAyIGZpbGVzIGNoYW5nZWQsIDI2IGluc2VydGlvbnMoKyksIDI3IGRlbGV0
aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMKaW5kZXggZWM2OWZmMmQxYWYz
Li5mZjY3MTg0YmI4YTIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2Vt
X2d0dC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCkBAIC0xMTAs
OSArMTEwLDkgQEAKIHN0YXRpYyBpbnQKIGk5MTVfZ2V0X2dndHRfdm1hX3BhZ2VzKHN0cnVjdCBp
OTE1X3ZtYSAqdm1hKTsKIAotc3RhdGljIHZvaWQgZ2VuNl9nZ3R0X2ludmFsaWRhdGUoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCitzdGF0aWMgdm9pZCBnZW42X2dndHRfaW52YWxpZGF0
ZShzdHJ1Y3QgaTkxNV9nZ3R0ICpnZ3R0KQogewotCXN0cnVjdCBpbnRlbF91bmNvcmUgKnVuY29y
ZSA9ICZpOTE1LT51bmNvcmU7CisJc3RydWN0IGludGVsX3VuY29yZSAqdW5jb3JlID0gJmdndHQt
PnZtLmk5MTUtPnVuY29yZTsKIAogCS8qCiAJICogTm90ZSB0aGF0IGFzIGFuIHVuY2FjaGVkIG1t
aW8gd3JpdGUsIHRoaXMgd2lsbCBmbHVzaCB0aGUKQEAgLTEyMSwyNCArMTIxLDE5IEBAIHN0YXRp
YyB2b2lkIGdlbjZfZ2d0dF9pbnZhbGlkYXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1
KQogCWludGVsX3VuY29yZV93cml0ZV9mdyh1bmNvcmUsIEdGWF9GTFNIX0NOVExfR0VONiwgR0ZY
X0ZMU0hfQ05UTF9FTik7CiB9CiAKLXN0YXRpYyB2b2lkIGd1Y19nZ3R0X2ludmFsaWRhdGUoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCitzdGF0aWMgdm9pZCBndWNfZ2d0dF9pbnZhbGlk
YXRlKHN0cnVjdCBpOTE1X2dndHQgKmdndHQpCiB7Ci0Jc3RydWN0IGludGVsX3VuY29yZSAqdW5j
b3JlID0gJmk5MTUtPnVuY29yZTsKKwlzdHJ1Y3QgaW50ZWxfdW5jb3JlICp1bmNvcmUgPSAmZ2d0
dC0+dm0uaTkxNS0+dW5jb3JlOwogCi0JZ2VuNl9nZ3R0X2ludmFsaWRhdGUoaTkxNSk7CisJZ2Vu
Nl9nZ3R0X2ludmFsaWRhdGUoZ2d0dCk7CiAJaW50ZWxfdW5jb3JlX3dyaXRlX2Z3KHVuY29yZSwg
R0VOOF9HVENSLCBHRU44X0dUQ1JfSU5WQUxJREFURSk7CiB9CiAKLXN0YXRpYyB2b2lkIGdtY2hf
Z2d0dF9pbnZhbGlkYXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQorc3RhdGljIHZv
aWQgZ21jaF9nZ3R0X2ludmFsaWRhdGUoc3RydWN0IGk5MTVfZ2d0dCAqZ2d0dCkKIHsKIAlpbnRl
bF9ndHRfY2hpcHNldF9mbHVzaCgpOwogfQogCi1zdGF0aWMgaW5saW5lIHZvaWQgaTkxNV9nZ3R0
X2ludmFsaWRhdGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCi17Ci0JaTkxNS0+Z2d0
dC5pbnZhbGlkYXRlKGk5MTUpOwotfQotCiBzdGF0aWMgaW50IHBwZ3R0X2JpbmRfdm1hKHN0cnVj
dCBpOTE1X3ZtYSAqdm1hLAogCQkJICBlbnVtIGk5MTVfY2FjaGVfbGV2ZWwgY2FjaGVfbGV2ZWws
CiAJCQkgIHUzMiB1bnVzZWQpCkBAIC0xODU3LDcgKzE4NTIsNyBAQCBzdGF0aWMgaW50IGdlbjZf
YWxsb2NfdmFfcmFuZ2Uoc3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSAqdm0sCiAKIAlpZiAoZmx1
c2gpIHsKIAkJbWFya190bGJzX2RpcnR5KCZwcGd0dC0+YmFzZSk7Ci0JCWdlbjZfZ2d0dF9pbnZh
bGlkYXRlKHZtLT5pOTE1KTsKKwkJZ2VuNl9nZ3R0X2ludmFsaWRhdGUoJnZtLT5pOTE1LT5nZ3R0
KTsKIAl9CiAKIAlnb3RvIG91dDsKQEAgLTIwMTAsNyArMjAwNSw3IEBAIHN0YXRpYyBpbnQgcGRf
dm1hX2JpbmQoc3RydWN0IGk5MTVfdm1hICp2bWEsCiAJCWdlbjZfd3JpdGVfcGRlKHBwZ3R0LCBw
ZGUsIHB0KTsKIAogCW1hcmtfdGxic19kaXJ0eSgmcHBndHQtPmJhc2UpOwotCWdlbjZfZ2d0dF9p
bnZhbGlkYXRlKHBwZ3R0LT5iYXNlLnZtLmk5MTUpOworCWdlbjZfZ2d0dF9pbnZhbGlkYXRlKGdn
dHQpOwogCiAJcmV0dXJuIDA7CiB9CkBAIC0yMzM0LDcgKzIzMjksNyBAQCB2b2lkIGk5MTVfZ2Vt
X3N1c3BlbmRfZ3R0X21hcHBpbmdzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikK
IAogCWdndHQtPnZtLmNsZWFyX3JhbmdlKCZnZ3R0LT52bSwgMCwgZ2d0dC0+dm0udG90YWwpOwog
Ci0JaTkxNV9nZ3R0X2ludmFsaWRhdGUoZGV2X3ByaXYpOworCWdndHQtPmludmFsaWRhdGUoZ2d0
dCk7CiB9CiAKIGludCBpOTE1X2dlbV9ndHRfcHJlcGFyZV9wYWdlcyhzdHJ1Y3QgZHJtX2k5MTVf
Z2VtX29iamVjdCAqb2JqLApAQCAtMjM4MCw3ICsyMzc1LDcgQEAgc3RhdGljIHZvaWQgZ2VuOF9n
Z3R0X2luc2VydF9wYWdlKHN0cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2UgKnZtLAogCiAJZ2VuOF9z
ZXRfcHRlKHB0ZSwgZ2VuOF9wdGVfZW5jb2RlKGFkZHIsIGxldmVsLCAwKSk7CiAKLQlnZ3R0LT5p
bnZhbGlkYXRlKHZtLT5pOTE1KTsKKwlnZ3R0LT5pbnZhbGlkYXRlKGdndHQpOwogfQogCiBzdGF0
aWMgdm9pZCBnZW44X2dndHRfaW5zZXJ0X2VudHJpZXMoc3RydWN0IGk5MTVfYWRkcmVzc19zcGFj
ZSAqdm0sCkBAIC0yNDA4LDcgKzI0MDMsNyBAQCBzdGF0aWMgdm9pZCBnZW44X2dndHRfaW5zZXJ0
X2VudHJpZXMoc3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSAqdm0sCiAJICogV2Ugd2FudCB0byBm
bHVzaCB0aGUgVExCcyBvbmx5IGFmdGVyIHdlJ3JlIGNlcnRhaW4gYWxsIHRoZSBQVEUKIAkgKiB1
cGRhdGVzIGhhdmUgZmluaXNoZWQuCiAJICovCi0JZ2d0dC0+aW52YWxpZGF0ZSh2bS0+aTkxNSk7
CisJZ2d0dC0+aW52YWxpZGF0ZShnZ3R0KTsKIH0KIAogc3RhdGljIHZvaWQgZ2VuNl9nZ3R0X2lu
c2VydF9wYWdlKHN0cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2UgKnZtLApAQCAtMjQyMyw3ICsyNDE4
LDcgQEAgc3RhdGljIHZvaWQgZ2VuNl9nZ3R0X2luc2VydF9wYWdlKHN0cnVjdCBpOTE1X2FkZHJl
c3Nfc3BhY2UgKnZtLAogCiAJaW93cml0ZTMyKHZtLT5wdGVfZW5jb2RlKGFkZHIsIGxldmVsLCBm
bGFncyksIHB0ZSk7CiAKLQlnZ3R0LT5pbnZhbGlkYXRlKHZtLT5pOTE1KTsKKwlnZ3R0LT5pbnZh
bGlkYXRlKGdndHQpOwogfQogCiAvKgpAQCAtMjQ0OSw3ICsyNDQ0LDcgQEAgc3RhdGljIHZvaWQg
Z2VuNl9nZ3R0X2luc2VydF9lbnRyaWVzKHN0cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2UgKnZtLAog
CSAqIFdlIHdhbnQgdG8gZmx1c2ggdGhlIFRMQnMgb25seSBhZnRlciB3ZSdyZSBjZXJ0YWluIGFs
bCB0aGUgUFRFCiAJICogdXBkYXRlcyBoYXZlIGZpbmlzaGVkLgogCSAqLwotCWdndHQtPmludmFs
aWRhdGUodm0tPmk5MTUpOworCWdndHQtPmludmFsaWRhdGUoZ2d0dCk7CiB9CiAKIHN0YXRpYyB2
b2lkIG5vcF9jbGVhcl9yYW5nZShzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2bSwKQEAgLTM2
NDQsMjUgKzM2MzksMjkgQEAgaW50IGk5MTVfZ2d0dF9lbmFibGVfaHcoc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmRldl9wcml2KQogCiB2b2lkIGk5MTVfZ2d0dF9lbmFibGVfZ3VjKHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICppOTE1KQogewotCUdFTV9CVUdfT04oaTkxNS0+Z2d0dC5pbnZhbGlk
YXRlICE9IGdlbjZfZ2d0dF9pbnZhbGlkYXRlKTsKKwlzdHJ1Y3QgaTkxNV9nZ3R0ICpnZ3R0ID0g
Jmk5MTUtPmdndHQ7CiAKLQlpOTE1LT5nZ3R0LmludmFsaWRhdGUgPSBndWNfZ2d0dF9pbnZhbGlk
YXRlOworCUdFTV9CVUdfT04oZ2d0dC0+aW52YWxpZGF0ZSAhPSBnZW42X2dndHRfaW52YWxpZGF0
ZSk7CiAKLQlpOTE1X2dndHRfaW52YWxpZGF0ZShpOTE1KTsKKwlnZ3R0LT5pbnZhbGlkYXRlID0g
Z3VjX2dndHRfaW52YWxpZGF0ZTsKKworCWdndHQtPmludmFsaWRhdGUoZ2d0dCk7CiB9CiAKIHZv
aWQgaTkxNV9nZ3R0X2Rpc2FibGVfZ3VjKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQog
eworCXN0cnVjdCBpOTE1X2dndHQgKmdndHQgPSAmaTkxNS0+Z2d0dDsKKwogCS8qIFhYWCBUZW1w
b3JhcnkgcGFyZG9uIGZvciBlcnJvciB1bmxvYWQgKi8KLQlpZiAoaTkxNS0+Z2d0dC5pbnZhbGlk
YXRlID09IGdlbjZfZ2d0dF9pbnZhbGlkYXRlKQorCWlmIChnZ3R0LT5pbnZhbGlkYXRlID09IGdl
bjZfZ2d0dF9pbnZhbGlkYXRlKQogCQlyZXR1cm47CiAKIAkvKiBXZSBzaG91bGQgb25seSBiZSBj
YWxsZWQgYWZ0ZXIgaTkxNV9nZ3R0X2VuYWJsZV9ndWMoKSAqLwotCUdFTV9CVUdfT04oaTkxNS0+
Z2d0dC5pbnZhbGlkYXRlICE9IGd1Y19nZ3R0X2ludmFsaWRhdGUpOworCUdFTV9CVUdfT04oZ2d0
dC0+aW52YWxpZGF0ZSAhPSBndWNfZ2d0dF9pbnZhbGlkYXRlKTsKIAotCWk5MTUtPmdndHQuaW52
YWxpZGF0ZSA9IGdlbjZfZ2d0dF9pbnZhbGlkYXRlOworCWdndHQtPmludmFsaWRhdGUgPSBnZW42
X2dndHRfaW52YWxpZGF0ZTsKIAotCWk5MTVfZ2d0dF9pbnZhbGlkYXRlKGk5MTUpOworCWdndHQt
PmludmFsaWRhdGUoZ2d0dCk7CiB9CiAKIHZvaWQgaTkxNV9nZW1fcmVzdG9yZV9ndHRfbWFwcGlu
Z3Moc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQpAQCAtMzcwNCw3ICszNzAzLDcg
QEAgdm9pZCBpOTE1X2dlbV9yZXN0b3JlX2d0dF9tYXBwaW5ncyhzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqZGV2X3ByaXYpCiAJfQogCiAJZ2d0dC0+dm0uY2xvc2VkID0gZmFsc2U7Ci0JaTkxNV9n
Z3R0X2ludmFsaWRhdGUoZGV2X3ByaXYpOworCWdndHQtPmludmFsaWRhdGUoZ2d0dCk7CiAKIAlt
dXRleF91bmxvY2soJmdndHQtPnZtLm11dGV4KTsKIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9n
dHQuaAppbmRleCAzMTI4YWRjZDRhN2EuLmFkYTQ4YTI3YTA1MyAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9nZW1fZ3R0LmgKQEAgLTM4Nyw3ICszODcsNyBAQCBzdHJ1Y3QgaTkxNV9nZ3R0IHsKIAog
CS8qKiAiR3JhcGhpY3MgU3RvbGVuIE1lbW9yeSIgaG9sZHMgdGhlIGdsb2JhbCBQVEVzICovCiAJ
dm9pZCBfX2lvbWVtICpnc207Ci0Jdm9pZCAoKmludmFsaWRhdGUpKHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdik7CisJdm9pZCAoKmludmFsaWRhdGUpKHN0cnVjdCBpOTE1X2dndHQg
KmdndHQpOwogCiAJYm9vbCBkb19pZGxlX21hcHM7CiAKLS0gCjIuMjAuMQoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
