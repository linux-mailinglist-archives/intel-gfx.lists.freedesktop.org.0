Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 084731FB40E
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2020 16:19:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 308046E8D2;
	Tue, 16 Jun 2020 14:19:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C9AC6E8D0;
 Tue, 16 Jun 2020 14:19:09 +0000 (UTC)
IronPort-SDR: PUfEMvKRjYB+5iz9Mnchr4abdWB6nJoDnufyNyVZeuhGEyAd4r2N0kqJ79PqkgcS6DrRd3UhrO
 P++Xn871dPrQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2020 07:19:09 -0700
IronPort-SDR: VEawNHlaVXHbUuuDOr+vdteO9Jeten/WDF4ETGe9XopcqCPV+BUNovNSeqS+O7pGBqexI6dQZu
 DphrfIiQ5dUQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,518,1583222400"; d="scan'208";a="273165016"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga003.jf.intel.com with ESMTP; 16 Jun 2020 07:19:07 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 16 Jun 2020 17:18:55 +0300
Message-Id: <20200616141855.746-6-imre.deak@intel.com>
X-Mailer: git-send-email 2.23.1
In-Reply-To: <20200616141855.746-1-imre.deak@intel.com>
References: <20200616141855.746-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 6/6] drm/i915/dp_mst: Ensure the DPCD ACT sent
 flag is cleared before waiting for it
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QXRtLCB3ZSBjbGVhciB0aGUgQUNUIHNlbnQgZmxhZyBpbiB0aGUgc2luaydzIERQQ0QgYmVmb3Jl
IHVwZGF0aW5nIHRoZQpzaW5rJ3MgcGF5bG9hZCB0YWJsZSwgYWxvbmcgY2xlYXJpbmcgdGhlIHBh
eWxvYWQgdGFibGUgdXBkYXRlZCBmbGFnLgpUaGUgc2luayBpcyBzdXBwb3NlZCB0byBzZXQgdGhp
cyBmbGFnIG9uY2UgaXQgZGV0ZWN0cyB0aGF0IHRoZSBzb3VyY2UKaGFzIGNvbXBsZXRlZCB0aGUg
QUNUIHNlcXVlbmNlIChhZnRlciBkZXRlY3RpbmcgdGhlIDQgcmVxdWlyZWQgQUNUIE1UUEgKc3lt
Ym9scyBzZW50IGJ5IHRoZSBzb3VyY2UpLiBBcyBvcHBvc2VkIHRvIHRoaXMgMiBERUxMIG1vbml0
b3JzIEkgaGF2ZQpzZXQgdGhlIGZsYWcgYWxyZWFkeSBhbG9uZyB0aGUgcGF5bG9hZCB0YWJsZSB1
cGRhdGVkIGZsYWcsIHdoaWNoIGlzIG5vdApxdWl0ZSBjb3JyZWN0LgoKVG8gYmUgc3VyZSB0aGF0
IHRoZSBzaW5rIGhhcyBkZXRlY3RlZCB0aGUgQUNUIE1UUEggc3ltYm9scyBiZWZvcmUKY29udGlu
dWluZyBlbmFibGluZyB0aGUgZW5jb2RlciwgY2xlYXIgdGhlIEFDVCBzZW50IGZsYWcgYmVmb3Jl
IGVuYWJsaW5nCm9yIGRpc2FibGluZyB0aGUgdHJhbnNjb2RlciBWQyBwYXlsb2FkIGFsbG9jYXRp
b24gKHdoaWNoIGlzIHdoYXQgc3RhcnRzCnRoZSBBQ1Qgc2VxdWVuY2UpLgoKQ2M6IEx5dWRlIFBh
dWwgPGx5dWRlQHJlZGhhdC5jb20+CkNjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFA
bGludXguaW50ZWwuY29tPgpDYzogZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpTaWdu
ZWQtb2ZmLWJ5OiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9n
cHUvZHJtL2RybV9kcF9tc3RfdG9wb2xvZ3kuYyAgICAgICB8IDMxICsrKysrKysrKysrKysrKysr
KystLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuYyB8ICAyICsr
CiBpbmNsdWRlL2RybS9kcm1fZHBfbXN0X2hlbHBlci5oICAgICAgICAgICAgIHwgIDIgKysKIDMg
ZmlsZXMgY2hhbmdlZCwgMzMgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2RwX21zdF90b3BvbG9neS5jIGIvZHJpdmVycy9ncHUv
ZHJtL2RybV9kcF9tc3RfdG9wb2xvZ3kuYwppbmRleCBiMmY1YTg0YjRjZmIuLmUzYmY4YzljODI2
NyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2RybV9kcF9tc3RfdG9wb2xvZ3kuYworKysg
Yi9kcml2ZXJzL2dwdS9kcm0vZHJtX2RwX21zdF90b3BvbG9neS5jCkBAIC00Mzc3LDYgKzQzNzcs
MzQgQEAgdm9pZCBkcm1fZHBfbXN0X2RlYWxsb2NhdGVfdmNwaShzdHJ1Y3QgZHJtX2RwX21zdF90
b3BvbG9neV9tZ3IgKm1nciwKIH0KIEVYUE9SVF9TWU1CT0woZHJtX2RwX21zdF9kZWFsbG9jYXRl
X3ZjcGkpOwogCisvKioKKyAqIGRybV9kcF9jbGVhcl9wYXlsb2FkX3N0YXR1cygpIC0gQ2xlYXJz
IHRoZSBwYXlsb2FkIHRhYmxlIHN0YXR1cyBmbGFncworICogQG1ncjogbWFuYWdlciB0byB1c2UK
KyAqCisgKiBDbGVhcnMgdGhlIHBheWxvYWQgdGFibGUgQUNUIGhhbmRsZWQgYW5kIHRhYmxlIHVw
ZGF0ZWQgZmxhZ3MgaW4gdGhlIE1TVCBodWIncworICogRFBDRC4gVGhpcyBmdW5jdGlvbiBtdXN0
IGJlIGNhbGxlZCBiZWZvcmUgdXBkYXRpbmcgdGhlIHBheWxvYWQgdGFibGUgb3IKKyAqIHN0YXJ0
aW5nIHRoZSBBQ1Qgc2VxdWVuY2UgYW5kIHdhaXRpbmcgZm9yIHRoZSBjb3JyZXNwb25kaW5nIGZs
YWdzIHRvIGdldAorICogc2V0IGJ5IHRoZSBodWIuCisgKgorICogUmV0dXJuczoKKyAqIDAgaWYg
dGhlIGZsYWcgZ290IGNsZWFyZWQgc3VjY2Vzc2Z1bGx5LCBvdGhlcndpc2UgYSBuZWdhdGl2ZSBl
cnJvciBjb2RlLgorICovCitpbnQgZHJtX2RwX2NsZWFyX3BheWxvYWRfc3RhdHVzKHN0cnVjdCBk
cm1fZHBfbXN0X3RvcG9sb2d5X21nciAqbWdyKQoreworCWludCByZXQ7CisKKwlyZXQgPSBkcm1f
ZHBfZHBjZF93cml0ZWIobWdyLT5hdXgsIERQX1BBWUxPQURfVEFCTEVfVVBEQVRFX1NUQVRVUywK
KwkJCQkgRFBfUEFZTE9BRF9BQ1RfSEFORExFRCk7CisJaWYgKHJldCA8IDApIHsKKwkJRFJNX0RF
QlVHX0RSSVZFUigiQ2FuJ3QgY2xlYXIgdGhlIEFDVCBzZW50IGZsYWcgKCVkKVxuIiwgcmV0KTsK
KwkJcmV0dXJuIHJldDsKKwl9CisJV0FSTl9PTihyZXQgIT0gMSk7CisKKwlyZXR1cm4gMDsKK30K
K0VYUE9SVF9TWU1CT0woZHJtX2RwX2NsZWFyX3BheWxvYWRfc3RhdHVzKTsKKwogc3RhdGljIGlu
dCBkcm1fZHBfZHBjZF93cml0ZV9wYXlsb2FkKHN0cnVjdCBkcm1fZHBfbXN0X3RvcG9sb2d5X21n
ciAqbWdyLAogCQkJCSAgICAgaW50IGlkLCBzdHJ1Y3QgZHJtX2RwX3BheWxvYWQgKnBheWxvYWQp
CiB7CkBAIC00Mzg0LDggKzQ0MTIsNyBAQCBzdGF0aWMgaW50IGRybV9kcF9kcGNkX3dyaXRlX3Bh
eWxvYWQoc3RydWN0IGRybV9kcF9tc3RfdG9wb2xvZ3lfbWdyICptZ3IsCiAJaW50IHJldDsKIAlp
bnQgcmV0cmllcyA9IDA7CiAKLQlkcm1fZHBfZHBjZF93cml0ZWIobWdyLT5hdXgsIERQX1BBWUxP
QURfVEFCTEVfVVBEQVRFX1NUQVRVUywKLQkJCSAgIERQX1BBWUxPQURfVEFCTEVfVVBEQVRFRCk7
CisJZHJtX2RwX2NsZWFyX3BheWxvYWRfc3RhdHVzKG1ncik7CiAKIAlwYXlsb2FkX2FsbG9jWzBd
ID0gaWQ7CiAJcGF5bG9hZF9hbGxvY1sxXSA9IHBheWxvYWQtPnN0YXJ0X3Nsb3Q7CmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuYwppbmRleCA5MzA4YjU5MjA3ODAu
LjNjNGIwZmIxMGQ4YiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kcF9tc3QuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rw
X21zdC5jCkBAIC0zMjMsNiArMzIzLDggQEAgc3RhdGljIHZvaWQgY2xlYXJfYWN0X3NlbnQoc3Ry
dWN0IGludGVsX2RwICppbnRlbF9kcCkKIAogCWludGVsX2RlX3dyaXRlKGk5MTUsIGludGVsX2Rw
LT5yZWdzLmRwX3RwX3N0YXR1cywKIAkJICAgICAgIERQX1RQX1NUQVRVU19BQ1RfU0VOVCk7CisK
Kwlkcm1fZHBfY2xlYXJfcGF5bG9hZF9zdGF0dXMoJmludGVsX2RwLT5tc3RfbWdyKTsKIH0KIAog
c3RhdGljIHZvaWQgd2FpdF9mb3JfYWN0X3NlbnQoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkK
ZGlmZiAtLWdpdCBhL2luY2x1ZGUvZHJtL2RybV9kcF9tc3RfaGVscGVyLmggYi9pbmNsdWRlL2Ry
bS9kcm1fZHBfbXN0X2hlbHBlci5oCmluZGV4IDhiOWViNGRiMzM4MS4uMmZhY2I4NzYyNGJmIDEw
MDY0NAotLS0gYS9pbmNsdWRlL2RybS9kcm1fZHBfbXN0X2hlbHBlci5oCisrKyBiL2luY2x1ZGUv
ZHJtL2RybV9kcF9tc3RfaGVscGVyLmgKQEAgLTc2Myw2ICs3NjMsOCBAQCBpbnQgZHJtX2RwX2Zp
bmRfdmNwaV9zbG90cyhzdHJ1Y3QgZHJtX2RwX21zdF90b3BvbG9neV9tZ3IgKm1nciwKIAkJCSAg
IGludCBwYm4pOwogCiAKK2ludCBkcm1fZHBfY2xlYXJfcGF5bG9hZF9zdGF0dXMoc3RydWN0IGRy
bV9kcF9tc3RfdG9wb2xvZ3lfbWdyICptZ3IpOworCiBpbnQgZHJtX2RwX3VwZGF0ZV9wYXlsb2Fk
X3BhcnQxKHN0cnVjdCBkcm1fZHBfbXN0X3RvcG9sb2d5X21nciAqbWdyKTsKIAogCi0tIAoyLjIz
LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
