Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A5CD1157DF
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Dec 2019 20:43:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58DDA6E10D;
	Fri,  6 Dec 2019 19:43:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B0C86E10D
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Dec 2019 19:43:41 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Dec 2019 11:43:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,285,1571727600"; d="scan'208";a="219491940"
Received: from orsosgc001.ra.intel.com ([10.23.184.150])
 by fmsmga001.fm.intel.com with ESMTP; 06 Dec 2019 11:43:40 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Lionel G Landwerlin <lionel.g.landwerlin@intel.com>,
 Chris Wilson <chris.p.wilson@intel.com>
Date: Fri,  6 Dec 2019 11:43:39 -0800
Message-Id: <20191206194339.31356-2-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191206194339.31356-1-umesh.nerlige.ramappa@intel.com>
References: <20191206194339.31356-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 2/2] drm/i915/perf: Configure OAR for
 specific context
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

R2VuMTIgc3VwcG9ydHMgc2F2aW5nL3Jlc3RvcmluZyByZW5kZXIgY291bnRlcnMgcGVyIGNvbnRl
eHQuIEFwcGx5IE9BUgpjb25maWd1cmF0aW9uIG9ubHkgZm9yIHRoZSBjb250ZXh0IHRoYXQgaXMg
cGFzc2VkIGluIHRvIHBlcmYuCgp2MjoKLSBGaXggT0FDVFhDT05UUk9MIHZhbHVlIHRvIG9ubHkg
c3RvcC9yZXN1bWUgY291bnRlcnMuCi0gUmVtb3ZlIGdlbjEyX3VwZGF0ZV9yZWdfc3RhdGVfdW5s
b2NrZWQgYXMgcG93ZXIgc3RhdGUgaXMgYWxyZWFkeQogIGFwcGxpZWQgYnkgdGhlIGNhbGxlci4K
CnYzOiAoTGlvbmVsKQotIE1vdmUgcmVnaXN0ZXIgaW5pdGlhbGl6YXRpb24gaW50byB0aGUgYXJy
YXkKLSBBc3N1bWUgYSB2YWxpZCBvYV9jb25maWcgaW4gZW5hYmxlX21ldHJpY19zZXQKClNpZ25l
ZC1vZmYtYnk6IFVtZXNoIE5lcmxpZ2UgUmFtYXBwYSA8dW1lc2gubmVybGlnZS5yYW1hcHBhQGlu
dGVsLmNvbT4KRml4ZXM6IDAwYTdmMGQ3MTU1YyAoImRybS9pOTE1L3RnbDogQWRkIHBlcmYgc3Vw
cG9ydCBvbiBUR0wiKQpSZXZpZXdlZC1ieTogTGlvbmVsIExhbmR3ZXJsaW4gPGxpb25lbC5nLmxh
bmR3ZXJsaW5AaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5j
IHwgMTk5ICsrKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAx
MTIgaW5zZXJ0aW9ucygrKSwgODcgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYu
YwppbmRleCA5ZmVmN2I1NzUyMGYuLjhkMmUzNzk0OWY0NiAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9w
ZXJmLmMKQEAgLTIwODIsMjAgKzIwODIsMTIgQEAgZ2VuOF91cGRhdGVfcmVnX3N0YXRlX3VubG9j
a2VkKGNvbnN0IHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSwKIAl1MzIgKnJlZ19zdGF0ZSA9IGNl
LT5scmNfcmVnX3N0YXRlOwogCWludCBpOwogCi0JaWYgKElTX0dFTihzdHJlYW0tPnBlcmYtPmk5
MTUsIDEyKSkgewotCQl1MzIgZm9ybWF0ID0gc3RyZWFtLT5vYV9idWZmZXIuZm9ybWF0OworCXJl
Z19zdGF0ZVtjdHhfb2FjdHhjdHJsICsgMV0gPQorCQkoc3RyZWFtLT5wZXJpb2RfZXhwb25lbnQg
PDwgR0VOOF9PQV9USU1FUl9QRVJJT0RfU0hJRlQpIHwKKwkJKHN0cmVhbS0+cGVyaW9kaWMgPyBH
RU44X09BX1RJTUVSX0VOQUJMRSA6IDApIHwKKwkJR0VOOF9PQV9DT1VOVEVSX1JFU1VNRTsKIAot
CQlyZWdfc3RhdGVbY3R4X29hY3R4Y3RybCArIDFdID0KLQkJCShmb3JtYXQgPDwgR0VOMTJfT0FS
X09BQ09OVFJPTF9DT1VOVEVSX0ZPUk1BVF9TSElGVCkgfAotCQkJKHN0cmVhbS0+b2FfY29uZmln
ID8gR0VOMTJfT0FSX09BQ09OVFJPTF9DT1VOVEVSX0VOQUJMRSA6IDApOwotCX0gZWxzZSB7Ci0J
CXJlZ19zdGF0ZVtjdHhfb2FjdHhjdHJsICsgMV0gPQotCQkJKHN0cmVhbS0+cGVyaW9kX2V4cG9u
ZW50IDw8IEdFTjhfT0FfVElNRVJfUEVSSU9EX1NISUZUKSB8Ci0JCQkoc3RyZWFtLT5wZXJpb2Rp
YyA/IEdFTjhfT0FfVElNRVJfRU5BQkxFIDogMCkgfAotCQkJR0VOOF9PQV9DT1VOVEVSX1JFU1VN
RTsKLQl9Ci0KLQlmb3IgKGkgPSAwOyAhIWN0eF9mbGV4ZXUwICYmIGkgPCBBUlJBWV9TSVpFKGZs
ZXhfcmVncyk7IGkrKykKKwlmb3IgKGkgPSAwOyBpIDwgQVJSQVlfU0laRShmbGV4X3JlZ3MpOyBp
KyspCiAJCXJlZ19zdGF0ZVtjdHhfZmxleGV1MCArIGkgKiAyICsgMV0gPQogCQkJb2FfY29uZmln
X2ZsZXhfcmVnKHN0cmVhbS0+b2FfY29uZmlnLCBmbGV4X3JlZ3NbaV0pOwogCkBAIC0yMjI4LDM0
ICsyMjIwLDUxIEBAIHN0YXRpYyBpbnQgZ2VuOF9jb25maWd1cmVfY29udGV4dChzdHJ1Y3QgaTkx
NV9nZW1fY29udGV4dCAqY3R4LAogCXJldHVybiBlcnI7CiB9CiAKLXN0YXRpYyBpbnQgZ2VuMTJf
ZW1pdF9vYXJfY29uZmlnKHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSwgYm9vbCBlbmFibGUpCitz
dGF0aWMgaW50IGdlbjEyX2NvbmZpZ3VyZV9vYXJfY29udGV4dChzdHJ1Y3QgaTkxNV9wZXJmX3N0
cmVhbSAqc3RyZWFtLCBib29sIGVuYWJsZSkKIHsKLQlzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycTsK
LQl1MzIgKmNzOwotCWludCBlcnIgPSAwOwotCi0JcnEgPSBpOTE1X3JlcXVlc3RfY3JlYXRlKGNl
KTsKLQlpZiAoSVNfRVJSKHJxKSkKLQkJcmV0dXJuIFBUUl9FUlIocnEpOwotCi0JY3MgPSBpbnRl
bF9yaW5nX2JlZ2luKHJxLCA0KTsKLQlpZiAoSVNfRVJSKGNzKSkgewotCQllcnIgPSBQVFJfRVJS
KGNzKTsKLQkJZ290byBvdXQ7Ci0JfQotCi0JKmNzKysgPSBNSV9MT0FEX1JFR0lTVEVSX0lNTSgx
KTsKLQkqY3MrKyA9IGk5MTVfbW1pb19yZWdfb2Zmc2V0KFJJTkdfQ09OVEVYVF9DT05UUk9MKGNl
LT5lbmdpbmUtPm1taW9fYmFzZSkpOwotCSpjcysrID0gX01BU0tFRF9GSUVMRChHRU4xMl9DVFhf
Q1RSTF9PQVJfQ09OVEVYVF9FTkFCTEUsCi0JCQkgICAgICBlbmFibGUgPyBHRU4xMl9DVFhfQ1RS
TF9PQVJfQ09OVEVYVF9FTkFCTEUgOiAwKTsKLQkqY3MrKyA9IE1JX05PT1A7CisJaW50IGVycjsK
KwlzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2UgPSBzdHJlYW0tPnBpbm5lZF9jdHg7CisJdTMyIGZv
cm1hdCA9IHN0cmVhbS0+b2FfYnVmZmVyLmZvcm1hdDsKKwlzdHJ1Y3QgZmxleCByZWdzX2NvbnRl
eHRbXSA9IHsKKwkJeworCQkJR0VOOF9PQUNUWENPTlRST0wsCisJCQlzdHJlYW0tPnBlcmYtPmN0
eF9vYWN0eGN0cmxfb2Zmc2V0ICsgMSwKKwkJCWVuYWJsZSA/IEdFTjhfT0FfQ09VTlRFUl9SRVNV
TUUgOiAwLAorCQl9LAorCX07CisJLyogT2Zmc2V0cyBpbiByZWdzX2xyaSBhcmUgbm90IHVzZWQg
c2luY2UgdGhpcyBjb25maWd1cmF0aW9uIGlzIG9ubHkKKwkgKiBhcHBsaWVkIHVzaW5nIExSSS4g
SW5pdGlhbGl6ZSB0aGUgY29ycmVjdCBvZmZzZXRzIGZvciBwb3N0ZXJpdHkuCisJICovCisjZGVm
aW5lIEdFTjEyX09BUl9PQUNPTlRST0xfT0ZGU0VUIDB4NUIwCisJc3RydWN0IGZsZXggcmVnc19s
cmlbXSA9IHsKKwkJeworCQkJR0VOMTJfT0FSX09BQ09OVFJPTCwKKwkJCUdFTjEyX09BUl9PQUNP
TlRST0xfT0ZGU0VUICsgMSwKKwkJCShmb3JtYXQgPDwgR0VOMTJfT0FSX09BQ09OVFJPTF9DT1VO
VEVSX0ZPUk1BVF9TSElGVCkgfAorCQkJKGVuYWJsZSA/IEdFTjEyX09BUl9PQUNPTlRST0xfQ09V
TlRFUl9FTkFCTEUgOiAwKQorCQl9LAorCQl7CisJCQlSSU5HX0NPTlRFWFRfQ09OVFJPTChjZS0+
ZW5naW5lLT5tbWlvX2Jhc2UpLAorCQkJQ1RYX0NPTlRFWFRfQ09OVFJPTCwKKwkJCV9NQVNLRURf
RklFTEQoR0VOMTJfQ1RYX0NUUkxfT0FSX0NPTlRFWFRfRU5BQkxFLAorCQkJCSAgICAgIGVuYWJs
ZSA/CisJCQkJICAgICAgR0VOMTJfQ1RYX0NUUkxfT0FSX0NPTlRFWFRfRU5BQkxFIDoKKwkJCQkg
ICAgICAwKQorCQl9LAorCX07CiAKLQlpbnRlbF9yaW5nX2FkdmFuY2UocnEsIGNzKTsKKwkvKiBN
b2RpZnkgdGhlIGNvbnRleHQgaW1hZ2Ugb2YgcGlubmVkIGNvbnRleHQgd2l0aCByZWdzX2NvbnRl
eHQqLworCWVyciA9IGludGVsX2NvbnRleHRfbG9ja19waW5uZWQoY2UpOworCWlmIChlcnIpCisJ
CXJldHVybiBlcnI7CiAKLW91dDoKLQlpOTE1X3JlcXVlc3RfYWRkKHJxKTsKKwllcnIgPSBnZW44
X21vZGlmeV9jb250ZXh0KGNlLCByZWdzX2NvbnRleHQsIEFSUkFZX1NJWkUocmVnc19jb250ZXh0
KSk7CisJaW50ZWxfY29udGV4dF91bmxvY2tfcGlubmVkKGNlKTsKKwlpZiAoZXJyKQorCQlyZXR1
cm4gZXJyOwogCi0JcmV0dXJuIGVycjsKKwkvKiBBcHBseSByZWdzX2xyaSB1c2luZyBMUkkgd2l0
aCBwaW5uZWQgY29udGV4dCAqLworCXJldHVybiBnZW44X21vZGlmeV9zZWxmKGNlLCByZWdzX2xy
aSwgQVJSQVlfU0laRShyZWdzX2xyaSkpOwogfQogCiAvKgpAQCAtMjI4MSw1MyArMjI5MCwxNiBA
QCBzdGF0aWMgaW50IGdlbjEyX2VtaXRfb2FyX2NvbmZpZyhzdHJ1Y3QgaW50ZWxfY29udGV4dCAq
Y2UsIGJvb2wgZW5hYmxlKQogICogICBwZXItY29udGV4dCBPQSBzdGF0ZS4KICAqCiAgKiBOb3Rl
OiBpdCdzIG9ubHkgdGhlIFJDUy9SZW5kZXIgY29udGV4dCB0aGF0IGhhcyBhbnkgT0Egc3RhdGUu
CisgKiBOb3RlOiB0aGUgZmlyc3QgZmxleCByZWdpc3RlciBwYXNzZWQgbXVzdCBhbHdheXMgYmUg
Ul9QV1JfQ0xLX1NUQVRFCiAgKi8KLXN0YXRpYyBpbnQgbHJjX2NvbmZpZ3VyZV9hbGxfY29udGV4
dHMoc3RydWN0IGk5MTVfcGVyZl9zdHJlYW0gKnN0cmVhbSwKLQkJCQkgICAgICBjb25zdCBzdHJ1
Y3QgaTkxNV9vYV9jb25maWcgKm9hX2NvbmZpZykKK3N0YXRpYyBpbnQgb2FfY29uZmlndXJlX2Fs
bF9jb250ZXh0cyhzdHJ1Y3QgaTkxNV9wZXJmX3N0cmVhbSAqc3RyZWFtLAorCQkJCSAgICAgc3Ry
dWN0IGZsZXggKnJlZ3MsCisJCQkJICAgICBzaXplX3QgbnVtX3JlZ3MpCiB7CiAJc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBzdHJlYW0tPnBlcmYtPmk5MTU7Ci0JLyogVGhlIE1NSU8g
b2Zmc2V0cyBmb3IgRmxleCBFVSByZWdpc3RlcnMgYXJlbid0IGNvbnRpZ3VvdXMgKi8KLQljb25z
dCB1MzIgY3R4X2ZsZXhldTAgPSBzdHJlYW0tPnBlcmYtPmN0eF9mbGV4ZXUwX29mZnNldDsKLSNk
ZWZpbmUgY3R4X2ZsZXhldU4oTikgKGN0eF9mbGV4ZXUwICsgMiAqIChOKSArIDEpCi0Jc3RydWN0
IGZsZXggcmVnc1tdID0gewotCQl7Ci0JCQlHRU44X1JfUFdSX0NMS19TVEFURSwKLQkJCUNUWF9S
X1BXUl9DTEtfU1RBVEUsCi0JCX0sCi0JCXsKLQkJCUlTX0dFTihpOTE1LCAxMikgPwotCQkJR0VO
MTJfT0FSX09BQ09OVFJPTCA6IEdFTjhfT0FDVFhDT05UUk9MLAotCQkJc3RyZWFtLT5wZXJmLT5j
dHhfb2FjdHhjdHJsX29mZnNldCArIDEsCi0JCX0sCi0JCXsgRVVfUEVSRl9DTlRMMCwgY3R4X2Zs
ZXhldU4oMCkgfSwKLQkJeyBFVV9QRVJGX0NOVEwxLCBjdHhfZmxleGV1TigxKSB9LAotCQl7IEVV
X1BFUkZfQ05UTDIsIGN0eF9mbGV4ZXVOKDIpIH0sCi0JCXsgRVVfUEVSRl9DTlRMMywgY3R4X2Zs
ZXhldU4oMykgfSwKLQkJeyBFVV9QRVJGX0NOVEw0LCBjdHhfZmxleGV1Tig0KSB9LAotCQl7IEVV
X1BFUkZfQ05UTDUsIGN0eF9mbGV4ZXVOKDUpIH0sCi0JCXsgRVVfUEVSRl9DTlRMNiwgY3R4X2Zs
ZXhldU4oNikgfSwKLQl9OwotI3VuZGVmIGN0eF9mbGV4ZXVOCiAJc3RydWN0IGludGVsX2VuZ2lu
ZV9jcyAqZW5naW5lOwogCXN0cnVjdCBpOTE1X2dlbV9jb250ZXh0ICpjdHgsICpjbjsKLQlzaXpl
X3QgYXJyYXlfc2l6ZSA9IElTX0dFTihpOTE1LCAxMikgPyAyIDogQVJSQVlfU0laRShyZWdzKTsK
LQlpbnQgaSwgZXJyOwotCi0JaWYgKElTX0dFTihpOTE1LCAxMikpIHsKLQkJdTMyIGZvcm1hdCA9
IHN0cmVhbS0+b2FfYnVmZmVyLmZvcm1hdDsKLQotCQlyZWdzWzFdLnZhbHVlID0KLQkJCShmb3Jt
YXQgPDwgR0VOMTJfT0FSX09BQ09OVFJPTF9DT1VOVEVSX0ZPUk1BVF9TSElGVCkgfAotCQkJKG9h
X2NvbmZpZyA/IEdFTjEyX09BUl9PQUNPTlRST0xfQ09VTlRFUl9FTkFCTEUgOiAwKTsKLQl9IGVs
c2UgewotCQlyZWdzWzFdLnZhbHVlID0KLQkJCShzdHJlYW0tPnBlcmlvZF9leHBvbmVudCA8PCBH
RU44X09BX1RJTUVSX1BFUklPRF9TSElGVCkgfAotCQkJKHN0cmVhbS0+cGVyaW9kaWMgPyBHRU44
X09BX1RJTUVSX0VOQUJMRSA6IDApIHwKLQkJCUdFTjhfT0FfQ09VTlRFUl9SRVNVTUU7Ci0JfQot
Ci0JZm9yIChpID0gMjsgISFjdHhfZmxleGV1MCAmJiBpIDwgYXJyYXlfc2l6ZTsgaSsrKQotCQly
ZWdzW2ldLnZhbHVlID0gb2FfY29uZmlnX2ZsZXhfcmVnKG9hX2NvbmZpZywgcmVnc1tpXS5yZWcp
OworCWludCBlcnI7CiAKIAlsb2NrZGVwX2Fzc2VydF9oZWxkKCZzdHJlYW0tPnBlcmYtPmxvY2sp
OwogCkBAIC0yMzU3LDcgKzIzMjksNyBAQCBzdGF0aWMgaW50IGxyY19jb25maWd1cmVfYWxsX2Nv
bnRleHRzKHN0cnVjdCBpOTE1X3BlcmZfc3RyZWFtICpzdHJlYW0sCiAKIAkJc3Bpbl91bmxvY2so
Jmk5MTUtPmdlbS5jb250ZXh0cy5sb2NrKTsKIAotCQllcnIgPSBnZW44X2NvbmZpZ3VyZV9jb250
ZXh0KGN0eCwgcmVncywgYXJyYXlfc2l6ZSk7CisJCWVyciA9IGdlbjhfY29uZmlndXJlX2NvbnRl
eHQoY3R4LCByZWdzLCBudW1fcmVncyk7CiAJCWlmIChlcnIpIHsKIAkJCWk5MTVfZ2VtX2NvbnRl
eHRfcHV0KGN0eCk7CiAJCQlyZXR1cm4gZXJyOwpAQCAtMjM4Miw3ICsyMzU0LDcgQEAgc3RhdGlj
IGludCBscmNfY29uZmlndXJlX2FsbF9jb250ZXh0cyhzdHJ1Y3QgaTkxNV9wZXJmX3N0cmVhbSAq
c3RyZWFtLAogCiAJCXJlZ3NbMF0udmFsdWUgPSBpbnRlbF9zc2V1X21ha2VfcnBjcyhpOTE1LCAm
Y2UtPnNzZXUpOwogCi0JCWVyciA9IGdlbjhfbW9kaWZ5X3NlbGYoY2UsIHJlZ3MsIGFycmF5X3Np
emUpOworCQllcnIgPSBnZW44X21vZGlmeV9zZWxmKGNlLCByZWdzLCBudW1fcmVncyk7CiAJCWlm
IChlcnIpCiAJCQlyZXR1cm4gZXJyOwogCX0KQEAgLTIzOTAsNiArMjM2Miw1NiBAQCBzdGF0aWMg
aW50IGxyY19jb25maWd1cmVfYWxsX2NvbnRleHRzKHN0cnVjdCBpOTE1X3BlcmZfc3RyZWFtICpz
dHJlYW0sCiAJcmV0dXJuIDA7CiB9CiAKK3N0YXRpYyBpbnQgZ2VuMTJfY29uZmlndXJlX2FsbF9j
b250ZXh0cyhzdHJ1Y3QgaTkxNV9wZXJmX3N0cmVhbSAqc3RyZWFtLAorCQkJCQljb25zdCBzdHJ1
Y3QgaTkxNV9vYV9jb25maWcgKm9hX2NvbmZpZykKK3sKKwlzdHJ1Y3QgZmxleCByZWdzW10gPSB7
CisJCXsKKwkJCUdFTjhfUl9QV1JfQ0xLX1NUQVRFLAorCQkJQ1RYX1JfUFdSX0NMS19TVEFURSwK
KwkJfSwKKwl9OworCisJcmV0dXJuIG9hX2NvbmZpZ3VyZV9hbGxfY29udGV4dHMoc3RyZWFtLCBy
ZWdzLCBBUlJBWV9TSVpFKHJlZ3MpKTsKK30KKworc3RhdGljIGludCBscmNfY29uZmlndXJlX2Fs
bF9jb250ZXh0cyhzdHJ1Y3QgaTkxNV9wZXJmX3N0cmVhbSAqc3RyZWFtLAorCQkJCSAgICAgIGNv
bnN0IHN0cnVjdCBpOTE1X29hX2NvbmZpZyAqb2FfY29uZmlnKQoreworCS8qIFRoZSBNTUlPIG9m
ZnNldHMgZm9yIEZsZXggRVUgcmVnaXN0ZXJzIGFyZW4ndCBjb250aWd1b3VzICovCisJY29uc3Qg
dTMyIGN0eF9mbGV4ZXUwID0gc3RyZWFtLT5wZXJmLT5jdHhfZmxleGV1MF9vZmZzZXQ7CisjZGVm
aW5lIGN0eF9mbGV4ZXVOKE4pIChjdHhfZmxleGV1MCArIDIgKiAoTikgKyAxKQorCXN0cnVjdCBm
bGV4IHJlZ3NbXSA9IHsKKwkJeworCQkJR0VOOF9SX1BXUl9DTEtfU1RBVEUsCisJCQlDVFhfUl9Q
V1JfQ0xLX1NUQVRFLAorCQl9LAorCQl7CisJCQlHRU44X09BQ1RYQ09OVFJPTCwKKwkJCXN0cmVh
bS0+cGVyZi0+Y3R4X29hY3R4Y3RybF9vZmZzZXQgKyAxLAorCQl9LAorCQl7IEVVX1BFUkZfQ05U
TDAsIGN0eF9mbGV4ZXVOKDApIH0sCisJCXsgRVVfUEVSRl9DTlRMMSwgY3R4X2ZsZXhldU4oMSkg
fSwKKwkJeyBFVV9QRVJGX0NOVEwyLCBjdHhfZmxleGV1TigyKSB9LAorCQl7IEVVX1BFUkZfQ05U
TDMsIGN0eF9mbGV4ZXVOKDMpIH0sCisJCXsgRVVfUEVSRl9DTlRMNCwgY3R4X2ZsZXhldU4oNCkg
fSwKKwkJeyBFVV9QRVJGX0NOVEw1LCBjdHhfZmxleGV1Tig1KSB9LAorCQl7IEVVX1BFUkZfQ05U
TDYsIGN0eF9mbGV4ZXVOKDYpIH0sCisJfTsKKyN1bmRlZiBjdHhfZmxleGV1TgorCWludCBpOwor
CisJcmVnc1sxXS52YWx1ZSA9CisJCShzdHJlYW0tPnBlcmlvZF9leHBvbmVudCA8PCBHRU44X09B
X1RJTUVSX1BFUklPRF9TSElGVCkgfAorCQkoc3RyZWFtLT5wZXJpb2RpYyA/IEdFTjhfT0FfVElN
RVJfRU5BQkxFIDogMCkgfAorCQlHRU44X09BX0NPVU5URVJfUkVTVU1FOworCisJZm9yIChpID0g
MjsgaSA8IEFSUkFZX1NJWkUocmVncyk7IGkrKykKKwkJcmVnc1tpXS52YWx1ZSA9IG9hX2NvbmZp
Z19mbGV4X3JlZyhvYV9jb25maWcsIHJlZ3NbaV0ucmVnKTsKKworCXJldHVybiBvYV9jb25maWd1
cmVfYWxsX2NvbnRleHRzKHN0cmVhbSwgcmVncywgQVJSQVlfU0laRShyZWdzKSk7Cit9CisKIHN0
YXRpYyBpbnQgZ2VuOF9lbmFibGVfbWV0cmljX3NldChzdHJ1Y3QgaTkxNV9wZXJmX3N0cmVhbSAq
c3RyZWFtKQogewogCXN0cnVjdCBpbnRlbF91bmNvcmUgKnVuY29yZSA9IHN0cmVhbS0+dW5jb3Jl
OwpAQCAtMjQ3Myw3ICsyNDk1LDcgQEAgc3RhdGljIGludCBnZW4xMl9lbmFibGVfbWV0cmljX3Nl
dChzdHJ1Y3QgaTkxNV9wZXJmX3N0cmVhbSAqc3RyZWFtKQogCSAqIHRvIG1ha2Ugc3VyZSBhbGwg
c2xpY2VzL3N1YnNsaWNlcyBhcmUgT04gYmVmb3JlIHdyaXRpbmcgdG8gTk9BCiAJICogcmVnaXN0
ZXJzLgogCSAqLwotCXJldCA9IGxyY19jb25maWd1cmVfYWxsX2NvbnRleHRzKHN0cmVhbSwgb2Ff
Y29uZmlnKTsKKwlyZXQgPSBnZW4xMl9jb25maWd1cmVfYWxsX2NvbnRleHRzKHN0cmVhbSwgb2Ff
Y29uZmlnKTsKIAlpZiAocmV0KQogCQlyZXR1cm4gcmV0OwogCkBAIC0yNDgzLDggKzI1MDUsNyBA
QCBzdGF0aWMgaW50IGdlbjEyX2VuYWJsZV9tZXRyaWNfc2V0KHN0cnVjdCBpOTE1X3BlcmZfc3Ry
ZWFtICpzdHJlYW0pCiAJICogcmVxdWVzdGVkIHRoaXMuCiAJICovCiAJaWYgKHN0cmVhbS0+Y3R4
KSB7Ci0JCXJldCA9IGdlbjEyX2VtaXRfb2FyX2NvbmZpZyhzdHJlYW0tPnBpbm5lZF9jdHgsCi0J
CQkJCSAgICBvYV9jb25maWcgIT0gTlVMTCk7CisJCXJldCA9IGdlbjEyX2NvbmZpZ3VyZV9vYXJf
Y29udGV4dChzdHJlYW0sIHRydWUpOwogCQlpZiAocmV0KQogCQkJcmV0dXJuIHJldDsKIAl9CkBA
IC0yNTE4LDExICsyNTM5LDExIEBAIHN0YXRpYyB2b2lkIGdlbjEyX2Rpc2FibGVfbWV0cmljX3Nl
dChzdHJ1Y3QgaTkxNV9wZXJmX3N0cmVhbSAqc3RyZWFtKQogCXN0cnVjdCBpbnRlbF91bmNvcmUg
KnVuY29yZSA9IHN0cmVhbS0+dW5jb3JlOwogCiAJLyogUmVzZXQgYWxsIGNvbnRleHRzJyBzbGlj
ZXMvc3Vic2xpY2VzIGNvbmZpZ3VyYXRpb25zLiAqLwotCWxyY19jb25maWd1cmVfYWxsX2NvbnRl
eHRzKHN0cmVhbSwgTlVMTCk7CisJZ2VuMTJfY29uZmlndXJlX2FsbF9jb250ZXh0cyhzdHJlYW0s
IE5VTEwpOwogCiAJLyogZGlzYWJsZSB0aGUgY29udGV4dCBzYXZlL3Jlc3RvcmUgb3IgT0FSIGNv
dW50ZXJzICovCiAJaWYgKHN0cmVhbS0+Y3R4KQotCQlnZW4xMl9lbWl0X29hcl9jb25maWcoc3Ry
ZWFtLT5waW5uZWRfY3R4LCBmYWxzZSk7CisJCWdlbjEyX2NvbmZpZ3VyZV9vYXJfY29udGV4dChz
dHJlYW0sIGZhbHNlKTsKIAogCS8qIE1ha2Ugc3VyZSB3ZSBkaXNhYmxlIG5vYSB0byBzYXZlIHBv
d2VyLiAqLwogCWludGVsX3VuY29yZV9ybXcodW5jb3JlLCBSUE1fQ09ORklHMSwgR0VOMTBfR1Rf
Tk9BX0VOQUJMRSwgMCk7CkBAIC0yODY0LDcgKzI4ODUsMTEgQEAgdm9pZCBpOTE1X29hX2luaXRf
cmVnX3N0YXRlKGNvbnN0IHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSwKIAkJcmV0dXJuOwogCiAJ
c3RyZWFtID0gZW5naW5lLT5pOTE1LT5wZXJmLmV4Y2x1c2l2ZV9zdHJlYW07Ci0JaWYgKHN0cmVh
bSkKKwkvKgorCSAqIEZvciBnZW4xMiwgb25seSBDVFhfUl9QV1JfQ0xLX1NUQVRFIG5lZWRzIHVw
ZGF0ZSwgYnV0IHRoZSBjYWxsZXIKKwkgKiBpcyBhbHJlYWR5IGRvaW5nIHRoYXQsIHNvIG5vdGhp
bmcgdG8gYmUgZG9uZSBmb3IgZ2VuMTIgaGVyZS4KKwkgKi8KKwlpZiAoc3RyZWFtICYmIElOVEVM
X0dFTihzdHJlYW0tPnBlcmYtPmk5MTUpIDwgMTIpCiAJCWdlbjhfdXBkYXRlX3JlZ19zdGF0ZV91
bmxvY2tlZChjZSwgc3RyZWFtKTsKIH0KIAotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
