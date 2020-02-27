Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E2D6C172458
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2020 18:01:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4736189F38;
	Thu, 27 Feb 2020 17:01:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8268C89F38
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Feb 2020 17:01:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Feb 2020 09:00:54 -0800
X-IronPort-AV: E=Sophos;i="5.70,492,1574150400"; d="scan'208";a="231924486"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Feb 2020 09:00:53 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Feb 2020 19:00:45 +0200
Message-Id: <20200227170047.31089-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 1/3] drm/i915: add i915_ioc32.h for compat
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

S2VlcCByZWR1Y2luZyBpOTE1X2Rydi5oLgoKU2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1bGEgPGph
bmkubmlrdWxhQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5j
ICAgfCAgMyArKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggICB8ICA1IC0tLS0t
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lvYzMyLmMgfCAgNiArKysrLS0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfaW9jMzIuaCB8IDE3ICsrKysrKysrKysrKysrKysrCiA0IGZpbGVz
IGNoYW5nZWQsIDIzIGluc2VydGlvbnMoKyksIDggZGVsZXRpb25zKC0pCiBjcmVhdGUgbW9kZSAx
MDA2NDQgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pb2MzMi5oCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
ZHJ2LmMKaW5kZXggYjA4NjEzMmRmMWI3Li40NTczOWM1ZDI1ZWIgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9kcnYuYwpAQCAtNzAsNiArNzAsNyBAQAogCiAjaW5jbHVkZSAiaTkxNV9kZWJ1Z2ZzLmgiCiAj
aW5jbHVkZSAiaTkxNV9kcnYuaCIKKyNpbmNsdWRlICJpOTE1X2lvYzMyLmgiCiAjaW5jbHVkZSAi
aTkxNV9pcnEuaCIKICNpbmNsdWRlICJpOTE1X21lbWNweS5oIgogI2luY2x1ZGUgImk5MTVfcGVy
Zi5oIgpAQCAtMTc2Miw3ICsxNzYzLDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBmaWxlX29wZXJh
dGlvbnMgaTkxNV9kcml2ZXJfZm9wcyA9IHsKIAkubW1hcCA9IGk5MTVfZ2VtX21tYXAsCiAJLnBv
bGwgPSBkcm1fcG9sbCwKIAkucmVhZCA9IGRybV9yZWFkLAotCS5jb21wYXRfaW9jdGwgPSBpOTE1
X2NvbXBhdF9pb2N0bCwKKwkuY29tcGF0X2lvY3RsID0gaTkxNV9pb2MzMl9jb21wYXRfaW9jdGws
CiAJLmxsc2VlayA9IG5vb3BfbGxzZWVrLAogfTsKIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9kcnYuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKaW5k
ZXggZWExM2ZjMGI0MDliLi5iYTUyMzM1MGNiOWEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZHJ2LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaApA
QCAtMTczNywxMSArMTczNyw2IEBAIGludGVsX2dndHRfdXBkYXRlX25lZWRzX3Z0ZF93YShzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiB9CiAKIC8qIGk5MTVfZHJ2LmMgKi8KLSNp
ZmRlZiBDT05GSUdfQ09NUEFUCi1sb25nIGk5MTVfY29tcGF0X2lvY3RsKHN0cnVjdCBmaWxlICpm
aWxwLCB1bnNpZ25lZCBpbnQgY21kLCB1bnNpZ25lZCBsb25nIGFyZyk7Ci0jZWxzZQotI2RlZmlu
ZSBpOTE1X2NvbXBhdF9pb2N0bCBOVUxMCi0jZW5kaWYKIGV4dGVybiBjb25zdCBzdHJ1Y3QgZGV2
X3BtX29wcyBpOTE1X3BtX29wczsKIAogaW50IGk5MTVfZHJpdmVyX3Byb2JlKHN0cnVjdCBwY2lf
ZGV2ICpwZGV2LCBjb25zdCBzdHJ1Y3QgcGNpX2RldmljZV9pZCAqZW50KTsKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaW9jMzIuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfaW9jMzIuYwppbmRleCBkZjdkMTliZDliM2EuLjhlNDVjYTNkMmVkZSAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pb2MzMi5jCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfaW9jMzIuYwpAQCAtMjksNyArMjksOSBAQAogI2luY2x1ZGUgPGxpbnV4L2Nv
bXBhdC5oPgogCiAjaW5jbHVkZSA8ZHJtL2RybV9pb2N0bC5oPgorCiAjaW5jbHVkZSAiaTkxNV9k
cnYuaCIKKyNpbmNsdWRlICJpOTE1X2lvYzMyLmgiCiAKIHN0cnVjdCBkcm1faTkxNV9nZXRwYXJh
bTMyIHsKIAlzMzIgcGFyYW07CkBAIC02Niw3ICs2OCw3IEBAIHN0YXRpYyBkcm1faW9jdGxfY29t
cGF0X3QgKmk5MTVfY29tcGF0X2lvY3Rsc1tdID0gewogfTsKIAogLyoqCi0gKiBpOTE1X2NvbXBh
dF9pb2N0bCAtIGhhbmRsZSB0aGUgbWlzdGFrZXMgb2YgdGhlIHBhc3QKKyAqIGk5MTVfaW9jMzJf
Y29tcGF0X2lvY3RsIC0gaGFuZGxlIHRoZSBtaXN0YWtlcyBvZiB0aGUgcGFzdAogICogQGZpbHA6
IHRoZSBmaWxlIHBvaW50ZXIKICAqIEBjbWQ6IHRoZSBpb2N0bCBjb21tYW5kIChhbmQgZW5jb2Rl
ZCBmbGFncykKICAqIEBhcmc6IHRoZSBpb2N0bCBhcmd1bWVudCAoZnJvbSB1c2Vyc3BhY2UpCkBA
IC03NCw3ICs3Niw3IEBAIHN0YXRpYyBkcm1faW9jdGxfY29tcGF0X3QgKmk5MTVfY29tcGF0X2lv
Y3Rsc1tdID0gewogICogQ2FsbGVkIHdoZW5ldmVyIGEgMzItYml0IHByb2Nlc3MgcnVubmluZyB1
bmRlciBhIDY0LWJpdCBrZXJuZWwKICAqIHBlcmZvcm1zIGFuIGlvY3RsIG9uIC9kZXYvZHJpL2Nh
cmQ8bj4uCiAgKi8KLWxvbmcgaTkxNV9jb21wYXRfaW9jdGwoc3RydWN0IGZpbGUgKmZpbHAsIHVu
c2lnbmVkIGludCBjbWQsIHVuc2lnbmVkIGxvbmcgYXJnKQorbG9uZyBpOTE1X2lvYzMyX2NvbXBh
dF9pb2N0bChzdHJ1Y3QgZmlsZSAqZmlscCwgdW5zaWduZWQgaW50IGNtZCwgdW5zaWduZWQgbG9u
ZyBhcmcpCiB7CiAJdW5zaWduZWQgaW50IG5yID0gRFJNX0lPQ1RMX05SKGNtZCk7CiAJZHJtX2lv
Y3RsX2NvbXBhdF90ICpmbiA9IE5VTEw7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2lvYzMyLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lvYzMyLmgKbmV3IGZp
bGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwMDAwMDAwLi40MGRjZDU1Y2EyMTMKLS0tIC9kZXYv
bnVsbAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lvYzMyLmgKQEAgLTAsMCArMSwx
NyBAQAorLyogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IE1JVCAqLworLyoKKyAqIENvcHlyaWdo
dCDCqSAyMDIwIEludGVsIENvcnBvcmF0aW9uCisgKi8KKworI2lmbmRlZiBfX0k5MTVfSU9DMzJf
SF9fCisjZGVmaW5lIF9fSTkxNV9JT0MzMl9IX18KKworI2lmZGVmIENPTkZJR19DT01QQVQKK3N0
cnVjdCBmaWxlOworbG9uZyBpOTE1X2lvYzMyX2NvbXBhdF9pb2N0bChzdHJ1Y3QgZmlsZSAqZmls
cCwgdW5zaWduZWQgaW50IGNtZCwKKwkJCSAgICAgdW5zaWduZWQgbG9uZyBhcmcpOworI2Vsc2UK
KyNkZWZpbmUgaTkxNV9pb2MzMl9jb21wYXRfaW9jdGwgTlVMTAorI2VuZGlmCisKKyNlbmRpZiAv
KiBfX0k5MTVfSU9DMzJfSF9fICovCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
