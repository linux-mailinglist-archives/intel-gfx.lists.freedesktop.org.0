Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 632FF121EBB
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2019 00:09:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D52D76E8EA;
	Mon, 16 Dec 2019 23:09:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 897AA6E8E8
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Dec 2019 23:09:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Dec 2019 14:07:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,323,1571727600"; d="scan'208";a="240188293"
Received: from gneiger-mobl2.amr.corp.intel.com (HELO
 josouza-MOBL.amr.corp.intel.com) ([10.251.15.215])
 by fmsmga004.fm.intel.com with ESMTP; 16 Dec 2019 14:07:52 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 16 Dec 2019 14:07:32 -0800
Message-Id: <20191216220742.34332-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 01/11] drm: Add
 __drm_atomic_helper_crtc_state_reset() & co.
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkFu
bm95aW5nbHkgX19kcm1fYXRvbWljX2hlbHBlcl9jcnRjX3Jlc2V0KCkgZG9lcyB0d28KdG90YWxs
eSBzZXBhcmF0ZSB0aGluZ3M6CmEpIHJlc2V0IHRoZSBzdGF0ZSB0byBkZWZhdWx0cyB2YWx1ZXMK
YikgYXNzaWduIHRoZSBjcnRjLT5zdGF0ZSBwb2ludGVyCgpJIGp1c3Qgd2FudCBhKSB3aXRob3V0
IHRoZSBiKSBzbyBsZXQncyBzcGxpdCBvdXQgcGFydAphKSBpbnRvIF9fZHJtX2F0b21pY19oZWxw
ZXJfY3J0Y19zdGF0ZV9yZXNldCgpLiBBbmQKb2YgY291cnNlIHdlJ2xsIGRvIHRoZSBzYW1lIHRo
aW5nIGZvciBwbGFuZXMgYW5kIGNvbm5lY3RvcnMuCgpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJq
w6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogRGFuaWVs
IFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4KQWNrZWQtYnk6IERhbmllbCBWZXR0ZXIg
PGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2RybV9hdG9taWNf
c3RhdGVfaGVscGVyLmMgfCA3MCArKysrKysrKysrKysrKysrKysrKy0tLQogaW5jbHVkZS9kcm0v
ZHJtX2F0b21pY19zdGF0ZV9oZWxwZXIuaCAgICAgfCAgNiArKwogMiBmaWxlcyBjaGFuZ2VkLCA2
NyBpbnNlcnRpb25zKCspLCA5IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9kcm1fYXRvbWljX3N0YXRlX2hlbHBlci5jIGIvZHJpdmVycy9ncHUvZHJtL2RybV9hdG9t
aWNfc3RhdGVfaGVscGVyLmMKaW5kZXggZDBhOTM3ZmIwYzU2Li5hOTcyMDY4ZDU4Y2YgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fYXRvbWljX3N0YXRlX2hlbHBlci5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9kcm1fYXRvbWljX3N0YXRlX2hlbHBlci5jCkBAIC01Nyw2ICs1NywyMiBA
QAogICogZm9yIHRoZXNlIGZ1bmN0aW9ucy4KICAqLwogCisvKioKKyAqIF9fZHJtX2F0b21pY19o
ZWxwZXJfY3J0Y19zdGF0ZV9yZXNldCAtIHJlc2V0IHRoZSBDUlRDIHN0YXRlCisgKiBAY3J0Y19z
dGF0ZTogYXRvbWljIENSVEMgc3RhdGUsIG11c3Qgbm90IGJlIE5VTEwKKyAqIEBjcnRjOiBDUlRD
IG9iamVjdCwgbXVzdCBub3QgYmUgTlVMTAorICoKKyAqIEluaXRpYWxpemVzIHRoZSBuZXdseSBh
bGxvY2F0ZWQgQGNydGNfc3RhdGUgd2l0aCBkZWZhdWx0CisgKiB2YWx1ZXMuIFRoaXMgaXMgdXNl
ZnVsIGZvciBkcml2ZXJzIHRoYXQgc3ViY2xhc3MgdGhlIENSVEMgc3RhdGUuCisgKi8KK3ZvaWQK
K19fZHJtX2F0b21pY19oZWxwZXJfY3J0Y19zdGF0ZV9yZXNldChzdHJ1Y3QgZHJtX2NydGNfc3Rh
dGUgKmNydGNfc3RhdGUsCisJCQkJICAgICBzdHJ1Y3QgZHJtX2NydGMgKmNydGMpCit7CisJY3J0
Y19zdGF0ZS0+Y3J0YyA9IGNydGM7Cit9CitFWFBPUlRfU1lNQk9MKF9fZHJtX2F0b21pY19oZWxw
ZXJfY3J0Y19zdGF0ZV9yZXNldCk7CisKIC8qKgogICogX19kcm1fYXRvbWljX2hlbHBlcl9jcnRj
X3Jlc2V0IC0gcmVzZXQgc3RhdGUgb24gQ1JUQwogICogQGNydGM6IGRybSBDUlRDCkBAIC03NCw3
ICs5MCw3IEBAIF9fZHJtX2F0b21pY19oZWxwZXJfY3J0Y19yZXNldChzdHJ1Y3QgZHJtX2NydGMg
KmNydGMsCiAJCQkgICAgICAgc3RydWN0IGRybV9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQogewog
CWlmIChjcnRjX3N0YXRlKQotCQljcnRjX3N0YXRlLT5jcnRjID0gY3J0YzsKKwkJX19kcm1fYXRv
bWljX2hlbHBlcl9jcnRjX3N0YXRlX3Jlc2V0KGNydGNfc3RhdGUsIGNydGMpOwogCiAJY3J0Yy0+
c3RhdGUgPSBjcnRjX3N0YXRlOwogfQpAQCAtMjEyLDIzICsyMjgsNDMgQEAgdm9pZCBkcm1fYXRv
bWljX2hlbHBlcl9jcnRjX2Rlc3Ryb3lfc3RhdGUoc3RydWN0IGRybV9jcnRjICpjcnRjLAogRVhQ
T1JUX1NZTUJPTChkcm1fYXRvbWljX2hlbHBlcl9jcnRjX2Rlc3Ryb3lfc3RhdGUpOwogCiAvKioK
LSAqIF9fZHJtX2F0b21pY19oZWxwZXJfcGxhbmVfcmVzZXQgLSByZXNldHMgcGxhbmVzIHN0YXRl
IHRvIGRlZmF1bHQgdmFsdWVzCisgKiBfX2RybV9hdG9taWNfaGVscGVyX3BsYW5lX3N0YXRlX3Jl
c2V0IC0gcmVzZXRzIHBsYW5lIHN0YXRlIHRvIGRlZmF1bHQgdmFsdWVzCisgKiBAcGxhbmVfc3Rh
dGU6IGF0b21pYyBwbGFuZSBzdGF0ZSwgbXVzdCBub3QgYmUgTlVMTAogICogQHBsYW5lOiBwbGFu
ZSBvYmplY3QsIG11c3Qgbm90IGJlIE5VTEwKLSAqIEBzdGF0ZTogYXRvbWljIHBsYW5lIHN0YXRl
LCBtdXN0IG5vdCBiZSBOVUxMCiAgKgotICogSW5pdGlhbGl6ZXMgcGxhbmUgc3RhdGUgdG8gZGVm
YXVsdC4gVGhpcyBpcyB1c2VmdWwgZm9yIGRyaXZlcnMgdGhhdCBzdWJjbGFzcwotICogdGhlIHBs
YW5lIHN0YXRlLgorICogSW5pdGlhbGl6ZXMgdGhlIG5ld2x5IGFsbG9jYXRlZCBAcGxhbmVfc3Rh
dGUgd2l0aCBkZWZhdWx0CisgKiB2YWx1ZXMuIFRoaXMgaXMgdXNlZnVsIGZvciBkcml2ZXJzIHRo
YXQgc3ViY2xhc3MgdGhlIENSVEMgc3RhdGUuCiAgKi8KLXZvaWQgX19kcm1fYXRvbWljX2hlbHBl
cl9wbGFuZV9yZXNldChzdHJ1Y3QgZHJtX3BsYW5lICpwbGFuZSwKLQkJCQkgICAgIHN0cnVjdCBk
cm1fcGxhbmVfc3RhdGUgKnN0YXRlKQordm9pZCBfX2RybV9hdG9taWNfaGVscGVyX3BsYW5lX3N0
YXRlX3Jlc2V0KHN0cnVjdCBkcm1fcGxhbmVfc3RhdGUgKnN0YXRlLAorCQkJCQkgICBzdHJ1Y3Qg
ZHJtX3BsYW5lICpwbGFuZSkKIHsKIAlzdGF0ZS0+cGxhbmUgPSBwbGFuZTsKIAlzdGF0ZS0+cm90
YXRpb24gPSBEUk1fTU9ERV9ST1RBVEVfMDsKIAogCXN0YXRlLT5hbHBoYSA9IERSTV9CTEVORF9B
TFBIQV9PUEFRVUU7CiAJc3RhdGUtPnBpeGVsX2JsZW5kX21vZGUgPSBEUk1fTU9ERV9CTEVORF9Q
UkVNVUxUSTsKK30KK0VYUE9SVF9TWU1CT0woX19kcm1fYXRvbWljX2hlbHBlcl9wbGFuZV9zdGF0
ZV9yZXNldCk7CiAKLQlwbGFuZS0+c3RhdGUgPSBzdGF0ZTsKKy8qKgorICogX19kcm1fYXRvbWlj
X2hlbHBlcl9wbGFuZV9yZXNldCAtIHJlc2V0IHN0YXRlIG9uIHBsYW5lCisgKiBAcGxhbmU6IGRy
bSBwbGFuZQorICogQHBsYW5lX3N0YXRlOiBwbGFuZSBzdGF0ZSB0byBhc3NpZ24KKyAqCisgKiBJ
bml0aWFsaXplcyB0aGUgbmV3bHkgYWxsb2NhdGVkIEBwbGFuZV9zdGF0ZSBhbmQgYXNzaWducyBp
dCB0bworICogdGhlICZkcm1fY3J0Yy0+c3RhdGUgcG9pbnRlciBvZiBAcGxhbmUsIHVzdWFsbHkg
cmVxdWlyZWQgd2hlbgorICogaW5pdGlhbGl6aW5nIHRoZSBkcml2ZXJzIG9yIHdoZW4gY2FsbGVk
IGZyb20gdGhlICZkcm1fcGxhbmVfZnVuY3MucmVzZXQKKyAqIGhvb2suCisgKgorICogVGhpcyBp
cyB1c2VmdWwgZm9yIGRyaXZlcnMgdGhhdCBzdWJjbGFzcyB0aGUgcGxhbmUgc3RhdGUuCisgKi8K
K3ZvaWQgX19kcm1fYXRvbWljX2hlbHBlcl9wbGFuZV9yZXNldChzdHJ1Y3QgZHJtX3BsYW5lICpw
bGFuZSwKKwkJCQkgICAgIHN0cnVjdCBkcm1fcGxhbmVfc3RhdGUgKnBsYW5lX3N0YXRlKQorewor
CWlmIChwbGFuZV9zdGF0ZSkKKwkJX19kcm1fYXRvbWljX2hlbHBlcl9wbGFuZV9zdGF0ZV9yZXNl
dChwbGFuZV9zdGF0ZSwgcGxhbmUpOworCisJcGxhbmUtPnN0YXRlID0gcGxhbmVfc3RhdGU7CiB9
CiBFWFBPUlRfU1lNQk9MKF9fZHJtX2F0b21pY19oZWxwZXJfcGxhbmVfcmVzZXQpOwogCkBAIC0z
MzUsNiArMzcxLDIyIEBAIHZvaWQgZHJtX2F0b21pY19oZWxwZXJfcGxhbmVfZGVzdHJveV9zdGF0
ZShzdHJ1Y3QgZHJtX3BsYW5lICpwbGFuZSwKIH0KIEVYUE9SVF9TWU1CT0woZHJtX2F0b21pY19o
ZWxwZXJfcGxhbmVfZGVzdHJveV9zdGF0ZSk7CiAKKy8qKgorICogX19kcm1fYXRvbWljX2hlbHBl
cl9jb25uZWN0b3Jfc3RhdGVfcmVzZXQgLSByZXNldCB0aGUgY29ubmVjdG9yIHN0YXRlCisgKiBA
Y29ubl9fc3RhdGU6IGF0b21pYyBjb25uZWN0b3Igc3RhdGUsIG11c3Qgbm90IGJlIE5VTEwKKyAq
IEBjb25uZWN0b3I6IGNvbm5lY3RvdHIgb2JqZWN0LCBtdXN0IG5vdCBiZSBOVUxMCisgKgorICog
SW5pdGlhbGl6ZXMgdGhlIG5ld2x5IGFsbG9jYXRlZCBAY29ubl9zdGF0ZSB3aXRoIGRlZmF1bHQK
KyAqIHZhbHVlcy4gVGhpcyBpcyB1c2VmdWwgZm9yIGRyaXZlcnMgdGhhdCBzdWJjbGFzcyB0aGUg
Y29ubmVjdG9yIHN0YXRlLgorICovCit2b2lkCitfX2RybV9hdG9taWNfaGVscGVyX2Nvbm5lY3Rv
cl9zdGF0ZV9yZXNldChzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9zdGF0ZSAqY29ubl9zdGF0ZSwKKwkJ
CQkJICBzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yKQoreworCWNvbm5fc3RhdGUtPmNv
bm5lY3RvciA9IGNvbm5lY3RvcjsKK30KK0VYUE9SVF9TWU1CT0woX19kcm1fYXRvbWljX2hlbHBl
cl9jb25uZWN0b3Jfc3RhdGVfcmVzZXQpOworCiAvKioKICAqIF9fZHJtX2F0b21pY19oZWxwZXJf
Y29ubmVjdG9yX3Jlc2V0IC0gcmVzZXQgc3RhdGUgb24gY29ubmVjdG9yCiAgKiBAY29ubmVjdG9y
OiBkcm0gY29ubmVjdG9yCkBAIC0zNTIsNyArNDA0LDcgQEAgX19kcm1fYXRvbWljX2hlbHBlcl9j
b25uZWN0b3JfcmVzZXQoc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvciwKIAkJCQkgICAg
c3RydWN0IGRybV9jb25uZWN0b3Jfc3RhdGUgKmNvbm5fc3RhdGUpCiB7CiAJaWYgKGNvbm5fc3Rh
dGUpCi0JCWNvbm5fc3RhdGUtPmNvbm5lY3RvciA9IGNvbm5lY3RvcjsKKwkJX19kcm1fYXRvbWlj
X2hlbHBlcl9jb25uZWN0b3Jfc3RhdGVfcmVzZXQoY29ubl9zdGF0ZSwgY29ubmVjdG9yKTsKIAog
CWNvbm5lY3Rvci0+c3RhdGUgPSBjb25uX3N0YXRlOwogfQpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9k
cm0vZHJtX2F0b21pY19zdGF0ZV9oZWxwZXIuaCBiL2luY2x1ZGUvZHJtL2RybV9hdG9taWNfc3Rh
dGVfaGVscGVyLmgKaW5kZXggZTQ1NzdjYzExNjg5Li44MTcxZGVhNGNjMjIgMTAwNjQ0Ci0tLSBh
L2luY2x1ZGUvZHJtL2RybV9hdG9taWNfc3RhdGVfaGVscGVyLmgKKysrIGIvaW5jbHVkZS9kcm0v
ZHJtX2F0b21pY19zdGF0ZV9oZWxwZXIuaApAQCAtMzcsNiArMzcsOCBAQCBzdHJ1Y3QgZHJtX3By
aXZhdGVfc3RhdGU7CiBzdHJ1Y3QgZHJtX21vZGVzZXRfYWNxdWlyZV9jdHg7CiBzdHJ1Y3QgZHJt
X2RldmljZTsKIAordm9pZCBfX2RybV9hdG9taWNfaGVscGVyX2NydGNfc3RhdGVfcmVzZXQoc3Ry
dWN0IGRybV9jcnRjX3N0YXRlICpzdGF0ZSwKKwkJCQkJICBzdHJ1Y3QgZHJtX2NydGMgKmNydGMp
Owogdm9pZCBfX2RybV9hdG9taWNfaGVscGVyX2NydGNfcmVzZXQoc3RydWN0IGRybV9jcnRjICpj
cnRjLAogCQkJCSAgICBzdHJ1Y3QgZHJtX2NydGNfc3RhdGUgKnN0YXRlKTsKIHZvaWQgZHJtX2F0
b21pY19oZWxwZXJfY3J0Y19yZXNldChzdHJ1Y3QgZHJtX2NydGMgKmNydGMpOwpAQCAtNDgsNiAr
NTAsOCBAQCB2b2lkIF9fZHJtX2F0b21pY19oZWxwZXJfY3J0Y19kZXN0cm95X3N0YXRlKHN0cnVj
dCBkcm1fY3J0Y19zdGF0ZSAqc3RhdGUpOwogdm9pZCBkcm1fYXRvbWljX2hlbHBlcl9jcnRjX2Rl
c3Ryb3lfc3RhdGUoc3RydWN0IGRybV9jcnRjICpjcnRjLAogCQkJCQkgIHN0cnVjdCBkcm1fY3J0
Y19zdGF0ZSAqc3RhdGUpOwogCit2b2lkIF9fZHJtX2F0b21pY19oZWxwZXJfcGxhbmVfc3RhdGVf
cmVzZXQoc3RydWN0IGRybV9wbGFuZV9zdGF0ZSAqc3RhdGUsCisJCQkJCSAgIHN0cnVjdCBkcm1f
cGxhbmUgKnBsYW5lKTsKIHZvaWQgX19kcm1fYXRvbWljX2hlbHBlcl9wbGFuZV9yZXNldChzdHJ1
Y3QgZHJtX3BsYW5lICpwbGFuZSwKIAkJCQkgICAgIHN0cnVjdCBkcm1fcGxhbmVfc3RhdGUgKnN0
YXRlKTsKIHZvaWQgZHJtX2F0b21pY19oZWxwZXJfcGxhbmVfcmVzZXQoc3RydWN0IGRybV9wbGFu
ZSAqcGxhbmUpOwpAQCAtNTksNiArNjMsOCBAQCB2b2lkIF9fZHJtX2F0b21pY19oZWxwZXJfcGxh
bmVfZGVzdHJveV9zdGF0ZShzdHJ1Y3QgZHJtX3BsYW5lX3N0YXRlICpzdGF0ZSk7CiB2b2lkIGRy
bV9hdG9taWNfaGVscGVyX3BsYW5lX2Rlc3Ryb3lfc3RhdGUoc3RydWN0IGRybV9wbGFuZSAqcGxh
bmUsCiAJCQkJCSAgc3RydWN0IGRybV9wbGFuZV9zdGF0ZSAqc3RhdGUpOwogCit2b2lkIF9fZHJt
X2F0b21pY19oZWxwZXJfY29ubmVjdG9yX3N0YXRlX3Jlc2V0KHN0cnVjdCBkcm1fY29ubmVjdG9y
X3N0YXRlICpjb25uX3N0YXRlLAorCQkJCQkgICAgICAgc3RydWN0IGRybV9jb25uZWN0b3IgKmNv
bm5lY3Rvcik7CiB2b2lkIF9fZHJtX2F0b21pY19oZWxwZXJfY29ubmVjdG9yX3Jlc2V0KHN0cnVj
dCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IsCiAJCQkJCSBzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9z
dGF0ZSAqY29ubl9zdGF0ZSk7CiB2b2lkIGRybV9hdG9taWNfaGVscGVyX2Nvbm5lY3Rvcl9yZXNl
dChzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yKTsKLS0gCjIuMjQuMQoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
