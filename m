Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 04A095CE6E
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Jul 2019 13:32:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDAA389B00;
	Tue,  2 Jul 2019 11:32:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2B6689B00
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Jul 2019 11:32:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Jul 2019 04:32:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,443,1557212400"; d="scan'208";a="190628662"
Received: from irsmsx102.ger.corp.intel.com ([163.33.3.155])
 by fmsmga002.fm.intel.com with ESMTP; 02 Jul 2019 04:32:15 -0700
Received: from localhost (172.28.172.64) by IRSMSX102.ger.corp.intel.com
 (163.33.3.155) with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 2 Jul
 2019 12:32:14 +0100
From: =?UTF-8?q?Micha=C5=82=20Winiarski?= <michal.winiarski@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Date: Tue, 2 Jul 2019 13:31:48 +0200
Message-ID: <20190702113149.21200-1-michal.winiarski@intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-Originating-IP: [172.28.172.64]
Subject: [Intel-gfx] [PATCH 1/2] Revert "drm/i915: Introduce private PAT
 management"
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

VGhpcyByZXZlcnRzIGNvbW1pdCA0Mzk1ODkwYTQ4NTUxOTgyNTQ5ZDIyMmQxOTIzZTI4MzNkYWM0
N2NmLgoKSXQncyBiZWVuIG92ZXIgYSB5ZWFyIHNpbmNlIHRoaXMgd2FzIG1lcmdlZCwgYW5kIHRo
ZSBhY3R1YWwgdXNlcnMgb2YKaW50ZWxfcHBhdF9nZXQgLyBpbnRlbF9wcGF0X3B1dCBuZXZlciBt
YXRlcmlhbGl6ZWQuCgpUaW1lIHRvIHJlbW92ZSBpdCEKCnYyOiBVbmJyZWFrIHN1c3BlbmQgKENo
cmlzKQp2MzogUmViYXNlLCBkcm9wIGZpeGVzIHRhZyB0byBhdm9pZCBjb25mdXNpb24KClNpZ25l
ZC1vZmYtYnk6IE1pY2hhxYIgV2luaWFyc2tpIDxtaWNoYWwud2luaWFyc2tpQGludGVsLmNvbT4K
Q2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzogSm9vbmFzIExh
aHRpbmVuIDxqb29uYXMubGFodGluZW5AbGludXguaW50ZWwuY29tPgpDYzogUm9kcmlnbyBWaXZp
IDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPgpDYzogWmhpIFdhbmcgPHpoaS5hLndhbmdAaW50ZWwu
Y29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggICAgIHwgICAyIC0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jIHwgMjc5ICsrKysrLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5oIHwgIDM2IC0t
LS0KIDMgZmlsZXMgY2hhbmdlZCwgNDIgaW5zZXJ0aW9ucygrKSwgMjc1IGRlbGV0aW9ucygtKQoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2Rydi5oCmluZGV4IDAyZGQ5ZjlmM2E4OS4uMDllMDlkMjZlNjdkIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKQEAgLTE0ODksOCArMTQ4OSw2IEBAIHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlIHsKIAlERUNMQVJFX0hBU0hUQUJMRShtbV9zdHJ1Y3RzLCA3KTsKIAlzdHJ1
Y3QgbXV0ZXggbW1fbG9jazsKIAotCXN0cnVjdCBpbnRlbF9wcGF0IHBwYXQ7Ci0KIAkvKiBLZXJu
ZWwgTW9kZXNldHRpbmcgKi8KIAogCXN0cnVjdCBpbnRlbF9jcnRjICpwbGFuZV90b19jcnRjX21h
cHBpbmdbSTkxNV9NQVhfUElQRVNdOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9nZW1fZ3R0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYwppbmRl
eCBmZjFkNTAwOGEyNTYuLjMwZTE0ZWFjNDdhYyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9nZW1fZ3R0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1f
Z3R0LmMKQEAgLTMwMjgsMjAzICszMDI4LDI2IEBAIHN0YXRpYyBpbnQgZ2d0dF9wcm9iZV9jb21t
b24oc3RydWN0IGk5MTVfZ2d0dCAqZ2d0dCwgdTY0IHNpemUpCiAJcmV0dXJuIDA7CiB9CiAKLXN0
YXRpYyBzdHJ1Y3QgaW50ZWxfcHBhdF9lbnRyeSAqCi1fX2FsbG9jX3BwYXRfZW50cnkoc3RydWN0
IGludGVsX3BwYXQgKnBwYXQsIHVuc2lnbmVkIGludCBpbmRleCwgdTggdmFsdWUpCitzdGF0aWMg
dm9pZCBjbmxfc2V0dXBfcHJpdmF0ZV9wcGF0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdikKIHsKLQlzdHJ1Y3QgaW50ZWxfcHBhdF9lbnRyeSAqZW50cnkgPSAmcHBhdC0+ZW50cmll
c1tpbmRleF07Ci0KLQlHRU1fQlVHX09OKGluZGV4ID49IHBwYXQtPm1heF9lbnRyaWVzKTsKLQlH
RU1fQlVHX09OKHRlc3RfYml0KGluZGV4LCBwcGF0LT51c2VkKSk7Ci0KLQllbnRyeS0+cHBhdCA9
IHBwYXQ7Ci0JZW50cnktPnZhbHVlID0gdmFsdWU7Ci0Ja3JlZl9pbml0KCZlbnRyeS0+cmVmKTsK
LQlzZXRfYml0KGluZGV4LCBwcGF0LT51c2VkKTsKLQlzZXRfYml0KGluZGV4LCBwcGF0LT5kaXJ0
eSk7Ci0KLQlyZXR1cm4gZW50cnk7Ci19Ci0KLXN0YXRpYyB2b2lkIF9fZnJlZV9wcGF0X2VudHJ5
KHN0cnVjdCBpbnRlbF9wcGF0X2VudHJ5ICplbnRyeSkKLXsKLQlzdHJ1Y3QgaW50ZWxfcHBhdCAq
cHBhdCA9IGVudHJ5LT5wcGF0OwotCXVuc2lnbmVkIGludCBpbmRleCA9IGVudHJ5IC0gcHBhdC0+
ZW50cmllczsKLQotCUdFTV9CVUdfT04oaW5kZXggPj0gcHBhdC0+bWF4X2VudHJpZXMpOwotCUdF
TV9CVUdfT04oIXRlc3RfYml0KGluZGV4LCBwcGF0LT51c2VkKSk7Ci0KLQllbnRyeS0+dmFsdWUg
PSBwcGF0LT5jbGVhcl92YWx1ZTsKLQljbGVhcl9iaXQoaW5kZXgsIHBwYXQtPnVzZWQpOwotCXNl
dF9iaXQoaW5kZXgsIHBwYXQtPmRpcnR5KTsKLX0KLQotLyoqCi0gKiBpbnRlbF9wcGF0X2dldCAt
IGdldCBhIHVzYWJsZSBQUEFUIGVudHJ5Ci0gKiBAaTkxNTogaTkxNSBkZXZpY2UgaW5zdGFuY2UK
LSAqIEB2YWx1ZTogdGhlIFBQQVQgdmFsdWUgcmVxdWlyZWQgYnkgdGhlIGNhbGxlcgotICoKLSAq
IFRoZSBmdW5jdGlvbiB0cmllcyB0byBzZWFyY2ggaWYgdGhlcmUgaXMgYW4gZXhpc3RpbmcgUFBB
VCBlbnRyeSB3aGljaAotICogbWF0Y2hlcyB3aXRoIHRoZSByZXF1aXJlZCB2YWx1ZS4gSWYgcGVy
ZmVjdGx5IG1hdGNoZWQsIHRoZSBleGlzdGluZyBQUEFUCi0gKiBlbnRyeSB3aWxsIGJlIHVzZWQu
IElmIG9ubHkgcGFydGlhbGx5IG1hdGNoZWQsIGl0IHdpbGwgdHJ5IHRvIGNoZWNrIGlmCi0gKiB0
aGVyZSBpcyBhbnkgYXZhaWxhYmxlIFBQQVQgaW5kZXguIElmIHllcywgaXQgd2lsbCBhbGxvY2F0
ZSBhIG5ldyBQUEFUCi0gKiBpbmRleCBmb3IgdGhlIHJlcXVpcmVkIGVudHJ5IGFuZCB1cGRhdGUg
dGhlIEhXLiBJZiBub3QsIHRoZSBwYXJ0aWFsbHkKLSAqIG1hdGNoZWQgZW50cnkgd2lsbCBiZSB1
c2VkLgotICovCi1jb25zdCBzdHJ1Y3QgaW50ZWxfcHBhdF9lbnRyeSAqCi1pbnRlbF9wcGF0X2dl
dChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwgdTggdmFsdWUpCi17Ci0Jc3RydWN0IGlu
dGVsX3BwYXQgKnBwYXQgPSAmaTkxNS0+cHBhdDsKLQlzdHJ1Y3QgaW50ZWxfcHBhdF9lbnRyeSAq
ZW50cnkgPSBOVUxMOwotCXVuc2lnbmVkIGludCBzY2FubmVkLCBiZXN0X3Njb3JlOwotCWludCBp
OwotCi0JR0VNX0JVR19PTighcHBhdC0+bWF4X2VudHJpZXMpOwotCi0Jc2Nhbm5lZCA9IGJlc3Rf
c2NvcmUgPSAwOwotCWZvcl9lYWNoX3NldF9iaXQoaSwgcHBhdC0+dXNlZCwgcHBhdC0+bWF4X2Vu
dHJpZXMpIHsKLQkJdW5zaWduZWQgaW50IHNjb3JlOwotCi0JCXNjb3JlID0gcHBhdC0+bWF0Y2go
cHBhdC0+ZW50cmllc1tpXS52YWx1ZSwgdmFsdWUpOwotCQlpZiAoc2NvcmUgPiBiZXN0X3Njb3Jl
KSB7Ci0JCQllbnRyeSA9ICZwcGF0LT5lbnRyaWVzW2ldOwotCQkJaWYgKHNjb3JlID09IElOVEVM
X1BQQVRfUEVSRkVDVF9NQVRDSCkgewotCQkJCWtyZWZfZ2V0KCZlbnRyeS0+cmVmKTsKLQkJCQly
ZXR1cm4gZW50cnk7Ci0JCQl9Ci0JCQliZXN0X3Njb3JlID0gc2NvcmU7Ci0JCX0KLQkJc2Nhbm5l
ZCsrOwotCX0KLQotCWlmIChzY2FubmVkID09IHBwYXQtPm1heF9lbnRyaWVzKSB7Ci0JCWlmICgh
ZW50cnkpCi0JCQlyZXR1cm4gRVJSX1BUUigtRU5PU1BDKTsKLQotCQlrcmVmX2dldCgmZW50cnkt
PnJlZik7Ci0JCXJldHVybiBlbnRyeTsKLQl9Ci0KLQlpID0gZmluZF9maXJzdF96ZXJvX2JpdChw
cGF0LT51c2VkLCBwcGF0LT5tYXhfZW50cmllcyk7Ci0JZW50cnkgPSBfX2FsbG9jX3BwYXRfZW50
cnkocHBhdCwgaSwgdmFsdWUpOwotCXBwYXQtPnVwZGF0ZV9odyhpOTE1KTsKLQlyZXR1cm4gZW50
cnk7Ci19Ci0KLXN0YXRpYyB2b2lkIHJlbGVhc2VfcHBhdChzdHJ1Y3Qga3JlZiAqa3JlZikKLXsK
LQlzdHJ1Y3QgaW50ZWxfcHBhdF9lbnRyeSAqZW50cnkgPQotCQljb250YWluZXJfb2Yoa3JlZiwg
c3RydWN0IGludGVsX3BwYXRfZW50cnksIHJlZik7Ci0Jc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
Kmk5MTUgPSBlbnRyeS0+cHBhdC0+aTkxNTsKLQotCV9fZnJlZV9wcGF0X2VudHJ5KGVudHJ5KTsK
LQllbnRyeS0+cHBhdC0+dXBkYXRlX2h3KGk5MTUpOwotfQotCi0vKioKLSAqIGludGVsX3BwYXRf
cHV0IC0gcHV0IGJhY2sgdGhlIFBQQVQgZW50cnkgZ290IGZyb20gaW50ZWxfcHBhdF9nZXQoKQot
ICogQGVudHJ5OiBhbiBpbnRlbCBQUEFUIGVudHJ5Ci0gKgotICogUHV0IGJhY2sgdGhlIFBQQVQg
ZW50cnkgZ290IGZyb20gaW50ZWxfcHBhdF9nZXQoKS4gSWYgdGhlIFBQQVQgaW5kZXggb2YgdGhl
Ci0gKiBlbnRyeSBpcyBkeW5hbWljYWxseSBhbGxvY2F0ZWQsIGl0cyByZWZlcmVuY2UgY291bnQg
d2lsbCBiZSBkZWNyZWFzZWQuIE9uY2UKLSAqIHRoZSByZWZlcmVuY2UgY291bnQgYmVjb21lcyBp
bnRvIHplcm8sIHRoZSBQUEFUIGluZGV4IGJlY29tZXMgZnJlZSBhZ2Fpbi4KLSAqLwotdm9pZCBp
bnRlbF9wcGF0X3B1dChjb25zdCBzdHJ1Y3QgaW50ZWxfcHBhdF9lbnRyeSAqZW50cnkpCi17Ci0J
c3RydWN0IGludGVsX3BwYXQgKnBwYXQgPSBlbnRyeS0+cHBhdDsKLQl1bnNpZ25lZCBpbnQgaW5k
ZXggPSBlbnRyeSAtIHBwYXQtPmVudHJpZXM7Ci0KLQlHRU1fQlVHX09OKCFwcGF0LT5tYXhfZW50
cmllcyk7Ci0KLQlrcmVmX3B1dCgmcHBhdC0+ZW50cmllc1tpbmRleF0ucmVmLCByZWxlYXNlX3Bw
YXQpOwotfQotCi1zdGF0aWMgdm9pZCBjbmxfcHJpdmF0ZV9wYXRfdXBkYXRlX2h3KHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKLXsKLQlzdHJ1Y3QgaW50ZWxfcHBhdCAqcHBhdCA9
ICZkZXZfcHJpdi0+cHBhdDsKLQlpbnQgaTsKLQotCWZvcl9lYWNoX3NldF9iaXQoaSwgcHBhdC0+
ZGlydHksIHBwYXQtPm1heF9lbnRyaWVzKSB7Ci0JCUk5MTVfV1JJVEUoR0VOMTBfUEFUX0lOREVY
KGkpLCBwcGF0LT5lbnRyaWVzW2ldLnZhbHVlKTsKLQkJY2xlYXJfYml0KGksIHBwYXQtPmRpcnR5
KTsKLQl9Ci19Ci0KLXN0YXRpYyB2b2lkIGJkd19wcml2YXRlX3BhdF91cGRhdGVfaHcoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQotewotCXN0cnVjdCBpbnRlbF9wcGF0ICpwcGF0
ID0gJmRldl9wcml2LT5wcGF0OwotCXU2NCBwYXQgPSAwOwotCWludCBpOwotCi0JZm9yIChpID0g
MDsgaSA8IHBwYXQtPm1heF9lbnRyaWVzOyBpKyspCi0JCXBhdCB8PSBHRU44X1BQQVQoaSwgcHBh
dC0+ZW50cmllc1tpXS52YWx1ZSk7Ci0KLQliaXRtYXBfY2xlYXIocHBhdC0+ZGlydHksIDAsIHBw
YXQtPm1heF9lbnRyaWVzKTsKLQotCUk5MTVfV1JJVEUoR0VOOF9QUklWQVRFX1BBVF9MTywgbG93
ZXJfMzJfYml0cyhwYXQpKTsKLQlJOTE1X1dSSVRFKEdFTjhfUFJJVkFURV9QQVRfSEksIHVwcGVy
XzMyX2JpdHMocGF0KSk7Ci19Ci0KLXN0YXRpYyB1bnNpZ25lZCBpbnQgYmR3X3ByaXZhdGVfcGF0
X21hdGNoKHU4IHNyYywgdTggZHN0KQotewotCXVuc2lnbmVkIGludCBzY29yZSA9IDA7Ci0JZW51
bSB7Ci0JCUFHRV9NQVRDSCA9IEJJVCgwKSwKLQkJVENfTUFUQ0ggPSBCSVQoMSksCi0JCUNBX01B
VENIID0gQklUKDIpLAotCX07Ci0KLQkvKiBDYWNoZSBhdHRyaWJ1dGUgaGFzIHRvIGJlIG1hdGNo
ZWQuICovCi0JaWYgKEdFTjhfUFBBVF9HRVRfQ0Eoc3JjKSAhPSBHRU44X1BQQVRfR0VUX0NBKGRz
dCkpCi0JCXJldHVybiAwOwotCi0Jc2NvcmUgfD0gQ0FfTUFUQ0g7Ci0KLQlpZiAoR0VOOF9QUEFU
X0dFVF9UQyhzcmMpID09IEdFTjhfUFBBVF9HRVRfVEMoZHN0KSkKLQkJc2NvcmUgfD0gVENfTUFU
Q0g7Ci0KLQlpZiAoR0VOOF9QUEFUX0dFVF9BR0Uoc3JjKSA9PSBHRU44X1BQQVRfR0VUX0FHRShk
c3QpKQotCQlzY29yZSB8PSBBR0VfTUFUQ0g7Ci0KLQlpZiAoc2NvcmUgPT0gKEFHRV9NQVRDSCB8
IFRDX01BVENIIHwgQ0FfTUFUQ0gpKQotCQlyZXR1cm4gSU5URUxfUFBBVF9QRVJGRUNUX01BVENI
OwotCi0JcmV0dXJuIHNjb3JlOwotfQotCi1zdGF0aWMgdW5zaWduZWQgaW50IGNodl9wcml2YXRl
X3BhdF9tYXRjaCh1OCBzcmMsIHU4IGRzdCkKLXsKLQlyZXR1cm4gKENIVl9QUEFUX0dFVF9TTk9P
UChzcmMpID09IENIVl9QUEFUX0dFVF9TTk9PUChkc3QpKSA/Ci0JCUlOVEVMX1BQQVRfUEVSRkVD
VF9NQVRDSCA6IDA7Ci19Ci0KLXN0YXRpYyB2b2lkIGNubF9zZXR1cF9wcml2YXRlX3BwYXQoc3Ry
dWN0IGludGVsX3BwYXQgKnBwYXQpCi17Ci0JcHBhdC0+bWF4X2VudHJpZXMgPSA4OwotCXBwYXQt
PnVwZGF0ZV9odyA9IGNubF9wcml2YXRlX3BhdF91cGRhdGVfaHc7Ci0JcHBhdC0+bWF0Y2ggPSBi
ZHdfcHJpdmF0ZV9wYXRfbWF0Y2g7Ci0JcHBhdC0+Y2xlYXJfdmFsdWUgPSBHRU44X1BQQVRfV0Ig
fCBHRU44X1BQQVRfTExDRUxMQyB8IEdFTjhfUFBBVF9BR0UoMyk7Ci0KLQlfX2FsbG9jX3BwYXRf
ZW50cnkocHBhdCwgMCwgR0VOOF9QUEFUX1dCIHwgR0VOOF9QUEFUX0xMQyk7Ci0JX19hbGxvY19w
cGF0X2VudHJ5KHBwYXQsIDEsIEdFTjhfUFBBVF9XQyB8IEdFTjhfUFBBVF9MTENFTExDKTsKLQlf
X2FsbG9jX3BwYXRfZW50cnkocHBhdCwgMiwgR0VOOF9QUEFUX1dUIHwgR0VOOF9QUEFUX0xMQ0VM
TEMpOwotCV9fYWxsb2NfcHBhdF9lbnRyeShwcGF0LCAzLCBHRU44X1BQQVRfVUMpOwotCV9fYWxs
b2NfcHBhdF9lbnRyeShwcGF0LCA0LCBHRU44X1BQQVRfV0IgfCBHRU44X1BQQVRfTExDRUxMQyB8
IEdFTjhfUFBBVF9BR0UoMCkpOwotCV9fYWxsb2NfcHBhdF9lbnRyeShwcGF0LCA1LCBHRU44X1BQ
QVRfV0IgfCBHRU44X1BQQVRfTExDRUxMQyB8IEdFTjhfUFBBVF9BR0UoMSkpOwotCV9fYWxsb2Nf
cHBhdF9lbnRyeShwcGF0LCA2LCBHRU44X1BQQVRfV0IgfCBHRU44X1BQQVRfTExDRUxMQyB8IEdF
TjhfUFBBVF9BR0UoMikpOwotCV9fYWxsb2NfcHBhdF9lbnRyeShwcGF0LCA3LCBHRU44X1BQQVRf
V0IgfCBHRU44X1BQQVRfTExDRUxMQyB8IEdFTjhfUFBBVF9BR0UoMykpOworCUk5MTVfV1JJVEUo
R0VOMTBfUEFUX0lOREVYKDApLCBHRU44X1BQQVRfV0IgfCBHRU44X1BQQVRfTExDKTsKKwlJOTE1
X1dSSVRFKEdFTjEwX1BBVF9JTkRFWCgxKSwgR0VOOF9QUEFUX1dDIHwgR0VOOF9QUEFUX0xMQ0VM
TEMpOworCUk5MTVfV1JJVEUoR0VOMTBfUEFUX0lOREVYKDIpLCBHRU44X1BQQVRfV1QgfCBHRU44
X1BQQVRfTExDRUxMQyk7CisJSTkxNV9XUklURShHRU4xMF9QQVRfSU5ERVgoMyksIEdFTjhfUFBB
VF9VQyk7CisJSTkxNV9XUklURShHRU4xMF9QQVRfSU5ERVgoNCksIEdFTjhfUFBBVF9XQiB8IEdF
TjhfUFBBVF9MTENFTExDIHwgR0VOOF9QUEFUX0FHRSgwKSk7CisJSTkxNV9XUklURShHRU4xMF9Q
QVRfSU5ERVgoNSksIEdFTjhfUFBBVF9XQiB8IEdFTjhfUFBBVF9MTENFTExDIHwgR0VOOF9QUEFU
X0FHRSgxKSk7CisJSTkxNV9XUklURShHRU4xMF9QQVRfSU5ERVgoNiksIEdFTjhfUFBBVF9XQiB8
IEdFTjhfUFBBVF9MTENFTExDIHwgR0VOOF9QUEFUX0FHRSgyKSk7CisJSTkxNV9XUklURShHRU4x
MF9QQVRfSU5ERVgoNyksIEdFTjhfUFBBVF9XQiB8IEdFTjhfUFBBVF9MTENFTExDIHwgR0VOOF9Q
UEFUX0FHRSgzKSk7CiB9CiAKIC8qIFRoZSBHR1RUIGFuZCBQUEdUVCBuZWVkIGEgcHJpdmF0ZSBQ
UEFUIHNldHVwIGluIG9yZGVyIHRvIGhhbmRsZSBjYWNoZWFiaWxpdHkKICAqIGJpdHMuIFdoZW4g
dXNpbmcgYWR2YW5jZWQgY29udGV4dHMgZWFjaCBjb250ZXh0IHN0b3JlcyBpdHMgb3duIFBBVCwg
YnV0CiAgKiB3cml0aW5nIHRoaXMgZGF0YSBzaG91bGRuJ3QgYmUgaGFybWZ1bCBldmVuIGluIHRo
b3NlIGNhc2VzLiAqLwotc3RhdGljIHZvaWQgYmR3X3NldHVwX3ByaXZhdGVfcHBhdChzdHJ1Y3Qg
aW50ZWxfcHBhdCAqcHBhdCkKK3N0YXRpYyB2b2lkIGJkd19zZXR1cF9wcml2YXRlX3BwYXQoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogewotCXBwYXQtPm1heF9lbnRyaWVzID0g
ODsKLQlwcGF0LT51cGRhdGVfaHcgPSBiZHdfcHJpdmF0ZV9wYXRfdXBkYXRlX2h3OwotCXBwYXQt
Pm1hdGNoID0gYmR3X3ByaXZhdGVfcGF0X21hdGNoOwotCXBwYXQtPmNsZWFyX3ZhbHVlID0gR0VO
OF9QUEFUX1dCIHwgR0VOOF9QUEFUX0xMQ0VMTEMgfCBHRU44X1BQQVRfQUdFKDMpOworCXU2NCBw
YXQ7CiAKLQlpZiAoIUhBU19QUEdUVChwcGF0LT5pOTE1KSkgeworCWlmICghSEFTX1BQR1RUKGRl
dl9wcml2KSkgewogCQkvKiBTcGVjOiAiRm9yIEdHVFQsIHRoZXJlIGlzIE5PIHBhdF9zZWxbMjow
XSBmcm9tIHRoZSBlbnRyeSwKIAkJICogc28gUlRMIHdpbGwgYWx3YXlzIHVzZSB0aGUgdmFsdWUg
Y29ycmVzcG9uZGluZyB0bwogCQkgKiBwYXRfc2VsID0gMDAwIi4KQEAgLTMyMzgsMjYgKzMwNjEs
MjUgQEAgc3RhdGljIHZvaWQgYmR3X3NldHVwX3ByaXZhdGVfcHBhdChzdHJ1Y3QgaW50ZWxfcHBh
dCAqcHBhdCkKIAkJICogU28gd2UgY2FuIHN0aWxsIGhvbGQgb250byBhbGwgb3VyIGFzc3VtcHRp
b25zIHdydCBjcHUKIAkJICogY2xmbHVzaGluZyBvbiBMTEMgbWFjaGluZXMuCiAJCSAqLwotCQlf
X2FsbG9jX3BwYXRfZW50cnkocHBhdCwgMCwgR0VOOF9QUEFUX1VDKTsKLQkJcmV0dXJuOworCQlw
YXQgPSBHRU44X1BQQVQoMCwgR0VOOF9QUEFUX1VDKTsKKwl9IGVsc2UgeworCQlwYXQgPSBHRU44
X1BQQVQoMCwgR0VOOF9QUEFUX1dCIHwgR0VOOF9QUEFUX0xMQykgfAkvKiBmb3Igbm9ybWFsIG9i
amVjdHMsIG5vIGVMTEMgKi8KKwkJICAgICAgR0VOOF9QUEFUKDEsIEdFTjhfUFBBVF9XQyB8IEdF
TjhfUFBBVF9MTENFTExDKSB8CS8qIGZvciBzb21ldGhpbmcgcG9pbnRpbmcgdG8gcHRlcz8gKi8K
KwkJICAgICAgR0VOOF9QUEFUKDIsIEdFTjhfUFBBVF9XVCB8IEdFTjhfUFBBVF9MTENFTExDKSB8
CS8qIGZvciBzY2Fub3V0IHdpdGggZUxMQyAqLworCQkgICAgICBHRU44X1BQQVQoMywgR0VOOF9Q
UEFUX1VDKSB8CQkJLyogVW5jYWNoZWQgb2JqZWN0cywgbW9zdGx5IGZvciBzY2Fub3V0ICovCisJ
CSAgICAgIEdFTjhfUFBBVCg0LCBHRU44X1BQQVRfV0IgfCBHRU44X1BQQVRfTExDRUxMQyB8IEdF
TjhfUFBBVF9BR0UoMCkpIHwKKwkJICAgICAgR0VOOF9QUEFUKDUsIEdFTjhfUFBBVF9XQiB8IEdF
TjhfUFBBVF9MTENFTExDIHwgR0VOOF9QUEFUX0FHRSgxKSkgfAorCQkgICAgICBHRU44X1BQQVQo
NiwgR0VOOF9QUEFUX1dCIHwgR0VOOF9QUEFUX0xMQ0VMTEMgfCBHRU44X1BQQVRfQUdFKDIpKSB8
CisJCSAgICAgIEdFTjhfUFBBVCg3LCBHRU44X1BQQVRfV0IgfCBHRU44X1BQQVRfTExDRUxMQyB8
IEdFTjhfUFBBVF9BR0UoMykpOwogCX0KIAotCV9fYWxsb2NfcHBhdF9lbnRyeShwcGF0LCAwLCBH
RU44X1BQQVRfV0IgfCBHRU44X1BQQVRfTExDKTsgICAgICAvKiBmb3Igbm9ybWFsIG9iamVjdHMs
IG5vIGVMTEMgKi8KLQlfX2FsbG9jX3BwYXRfZW50cnkocHBhdCwgMSwgR0VOOF9QUEFUX1dDIHwg
R0VOOF9QUEFUX0xMQ0VMTEMpOyAgLyogZm9yIHNvbWV0aGluZyBwb2ludGluZyB0byBwdGVzPyAq
LwotCV9fYWxsb2NfcHBhdF9lbnRyeShwcGF0LCAyLCBHRU44X1BQQVRfV1QgfCBHRU44X1BQQVRf
TExDRUxMQyk7ICAvKiBmb3Igc2Nhbm91dCB3aXRoIGVMTEMgKi8KLQlfX2FsbG9jX3BwYXRfZW50
cnkocHBhdCwgMywgR0VOOF9QUEFUX1VDKTsgICAgICAgICAgICAgICAgICAgICAgLyogVW5jYWNo
ZWQgb2JqZWN0cywgbW9zdGx5IGZvciBzY2Fub3V0ICovCi0JX19hbGxvY19wcGF0X2VudHJ5KHBw
YXQsIDQsIEdFTjhfUFBBVF9XQiB8IEdFTjhfUFBBVF9MTENFTExDIHwgR0VOOF9QUEFUX0FHRSgw
KSk7Ci0JX19hbGxvY19wcGF0X2VudHJ5KHBwYXQsIDUsIEdFTjhfUFBBVF9XQiB8IEdFTjhfUFBB
VF9MTENFTExDIHwgR0VOOF9QUEFUX0FHRSgxKSk7Ci0JX19hbGxvY19wcGF0X2VudHJ5KHBwYXQs
IDYsIEdFTjhfUFBBVF9XQiB8IEdFTjhfUFBBVF9MTENFTExDIHwgR0VOOF9QUEFUX0FHRSgyKSk7
Ci0JX19hbGxvY19wcGF0X2VudHJ5KHBwYXQsIDcsIEdFTjhfUFBBVF9XQiB8IEdFTjhfUFBBVF9M
TENFTExDIHwgR0VOOF9QUEFUX0FHRSgzKSk7CisJSTkxNV9XUklURShHRU44X1BSSVZBVEVfUEFU
X0xPLCBsb3dlcl8zMl9iaXRzKHBhdCkpOworCUk5MTVfV1JJVEUoR0VOOF9QUklWQVRFX1BBVF9I
SSwgdXBwZXJfMzJfYml0cyhwYXQpKTsKIH0KIAotc3RhdGljIHZvaWQgY2h2X3NldHVwX3ByaXZh
dGVfcHBhdChzdHJ1Y3QgaW50ZWxfcHBhdCAqcHBhdCkKK3N0YXRpYyB2b2lkIGNodl9zZXR1cF9w
cml2YXRlX3BwYXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogewotCXBwYXQt
Pm1heF9lbnRyaWVzID0gODsKLQlwcGF0LT51cGRhdGVfaHcgPSBiZHdfcHJpdmF0ZV9wYXRfdXBk
YXRlX2h3OwotCXBwYXQtPm1hdGNoID0gY2h2X3ByaXZhdGVfcGF0X21hdGNoOwotCXBwYXQtPmNs
ZWFyX3ZhbHVlID0gQ0hWX1BQQVRfU05PT1A7CisJdTY0IHBhdDsKIAogCS8qCiAJICogTWFwIFdC
IG9uIEJEVyB0byBzbm9vcGVkIG9uIENIVi4KQEAgLTMyNzgsMTQgKzMxMDAsMTcgQEAgc3RhdGlj
IHZvaWQgY2h2X3NldHVwX3ByaXZhdGVfcHBhdChzdHJ1Y3QgaW50ZWxfcHBhdCAqcHBhdCkKIAkg
KiBpbiBvcmRlciB0byBrZWVwIHRoZSBnbG9iYWwgc3RhdHVzIHBhZ2Ugd29ya2luZy4KIAkgKi8K
IAotCV9fYWxsb2NfcHBhdF9lbnRyeShwcGF0LCAwLCBDSFZfUFBBVF9TTk9PUCk7Ci0JX19hbGxv
Y19wcGF0X2VudHJ5KHBwYXQsIDEsIDApOwotCV9fYWxsb2NfcHBhdF9lbnRyeShwcGF0LCAyLCAw
KTsKLQlfX2FsbG9jX3BwYXRfZW50cnkocHBhdCwgMywgMCk7Ci0JX19hbGxvY19wcGF0X2VudHJ5
KHBwYXQsIDQsIENIVl9QUEFUX1NOT09QKTsKLQlfX2FsbG9jX3BwYXRfZW50cnkocHBhdCwgNSwg
Q0hWX1BQQVRfU05PT1ApOwotCV9fYWxsb2NfcHBhdF9lbnRyeShwcGF0LCA2LCBDSFZfUFBBVF9T
Tk9PUCk7Ci0JX19hbGxvY19wcGF0X2VudHJ5KHBwYXQsIDcsIENIVl9QUEFUX1NOT09QKTsKKwlw
YXQgPSBHRU44X1BQQVQoMCwgQ0hWX1BQQVRfU05PT1ApIHwKKwkgICAgICBHRU44X1BQQVQoMSwg
MCkgfAorCSAgICAgIEdFTjhfUFBBVCgyLCAwKSB8CisJICAgICAgR0VOOF9QUEFUKDMsIDApIHwK
KwkgICAgICBHRU44X1BQQVQoNCwgQ0hWX1BQQVRfU05PT1ApIHwKKwkgICAgICBHRU44X1BQQVQo
NSwgQ0hWX1BQQVRfU05PT1ApIHwKKwkgICAgICBHRU44X1BQQVQoNiwgQ0hWX1BQQVRfU05PT1Ap
IHwKKwkgICAgICBHRU44X1BQQVQoNywgQ0hWX1BQQVRfU05PT1ApOworCisJSTkxNV9XUklURShH
RU44X1BSSVZBVEVfUEFUX0xPLCBsb3dlcl8zMl9iaXRzKHBhdCkpOworCUk5MTVfV1JJVEUoR0VO
OF9QUklWQVRFX1BBVF9ISSwgdXBwZXJfMzJfYml0cyhwYXQpKTsKIH0KIAogc3RhdGljIHZvaWQg
Z2VuNl9nbWNoX3JlbW92ZShzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2bSkKQEAgLTMyOTgs
MjcgKzMxMjMsMTIgQEAgc3RhdGljIHZvaWQgZ2VuNl9nbWNoX3JlbW92ZShzdHJ1Y3QgaTkxNV9h
ZGRyZXNzX3NwYWNlICp2bSkKIAogc3RhdGljIHZvaWQgc2V0dXBfcHJpdmF0ZV9wYXQoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogewotCXN0cnVjdCBpbnRlbF9wcGF0ICpwcGF0
ID0gJmRldl9wcml2LT5wcGF0OwotCWludCBpOwotCi0JcHBhdC0+aTkxNSA9IGRldl9wcml2Owot
CiAJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTApCi0JCWNubF9zZXR1cF9wcml2YXRlX3Bw
YXQocHBhdCk7CisJCWNubF9zZXR1cF9wcml2YXRlX3BwYXQoZGV2X3ByaXYpOwogCWVsc2UgaWYg
KElTX0NIRVJSWVZJRVcoZGV2X3ByaXYpIHx8IElTX0dFTjlfTFAoZGV2X3ByaXYpKQotCQljaHZf
c2V0dXBfcHJpdmF0ZV9wcGF0KHBwYXQpOworCQljaHZfc2V0dXBfcHJpdmF0ZV9wcGF0KGRldl9w
cml2KTsKIAllbHNlCi0JCWJkd19zZXR1cF9wcml2YXRlX3BwYXQocHBhdCk7Ci0KLQlHRU1fQlVH
X09OKHBwYXQtPm1heF9lbnRyaWVzID4gSU5URUxfTUFYX1BQQVRfRU5UUklFUyk7Ci0KLQlmb3Jf
ZWFjaF9jbGVhcl9iaXQoaSwgcHBhdC0+dXNlZCwgcHBhdC0+bWF4X2VudHJpZXMpIHsKLQkJcHBh
dC0+ZW50cmllc1tpXS52YWx1ZSA9IHBwYXQtPmNsZWFyX3ZhbHVlOwotCQlwcGF0LT5lbnRyaWVz
W2ldLnBwYXQgPSBwcGF0OwotCQlzZXRfYml0KGksIHBwYXQtPmRpcnR5KTsKLQl9Ci0KLQlwcGF0
LT51cGRhdGVfaHcoZGV2X3ByaXYpOworCQliZHdfc2V0dXBfcHJpdmF0ZV9wcGF0KGRldl9wcml2
KTsKIH0KIAogc3RhdGljIGludCBnZW44X2dtY2hfcHJvYmUoc3RydWN0IGk5MTVfZ2d0dCAqZ2d0
dCkKQEAgLTM2OTcsMTMgKzM1MDcsOCBAQCB2b2lkIGk5MTVfZ2VtX3Jlc3RvcmVfZ3R0X21hcHBp
bmdzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQogewogCWdndHRfcmVzdG9yZV9tYXBw
aW5ncygmaTkxNS0+Z2d0dCk7CiAKLQlpZiAoSU5URUxfR0VOKGk5MTUpID49IDgpIHsKLQkJc3Ry
dWN0IGludGVsX3BwYXQgKnBwYXQgPSAmaTkxNS0+cHBhdDsKLQotCQliaXRtYXBfc2V0KHBwYXQt
PmRpcnR5LCAwLCBwcGF0LT5tYXhfZW50cmllcyk7Ci0JCWk5MTUtPnBwYXQudXBkYXRlX2h3KGk5
MTUpOwotCQlyZXR1cm47Ci0JfQorCWlmIChJTlRFTF9HRU4oaTkxNSkgPj0gOCkKKwkJc2V0dXBf
cHJpdmF0ZV9wYXQoaTkxNSk7CiB9CiAKIHN0YXRpYyBzdHJ1Y3Qgc2NhdHRlcmxpc3QgKgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmggYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuaAppbmRleCAwMjhiZTNiNDRkMDcuLmQwZTA5MDVhY2Ji
YiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmgKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmgKQEAgLTE2MCwxMSArMTYwLDYgQEAg
dHlwZWRlZiB1NjQgZ2VuOF9wcGd0dF9wbWw0ZV90OwogI2RlZmluZSBHRU44X1BQQVRfRUxMQ19P
VkVSUklERQkJKDA8PDIpCiAjZGVmaW5lIEdFTjhfUFBBVChpLCB4KQkJCSgodTY0KSh4KSA8PCAo
KGkpICogOCkpCiAKLSNkZWZpbmUgR0VOOF9QUEFUX0dFVF9DQSh4KSAoKHgpICYgMykKLSNkZWZp
bmUgR0VOOF9QUEFUX0dFVF9UQyh4KSAoKHgpICYgKDMgPDwgMikpCi0jZGVmaW5lIEdFTjhfUFBB
VF9HRVRfQUdFKHgpICgoeCkgJiAoMyA8PCA0KSkKLSNkZWZpbmUgQ0hWX1BQQVRfR0VUX1NOT09Q
KHgpICgoeCkgJiAoMSA8PCA2KSkKLQogI2RlZmluZSBHRU44X1BERV9JUFNfNjRLIEJJVCgxMSkK
ICNkZWZpbmUgR0VOOF9QREVfUFNfMk0gICBCSVQoNykKIApAQCAtNjE5LDM3ICs2MTQsNiBAQCBp
OTE1X3ZtX3RvX3BwZ3R0KHN0cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2UgKnZtKQogCXJldHVybiBj
b250YWluZXJfb2Yodm0sIHN0cnVjdCBpOTE1X3BwZ3R0LCB2bSk7CiB9CiAKLSNkZWZpbmUgSU5U
RUxfTUFYX1BQQVRfRU5UUklFUyA4Ci0jZGVmaW5lIElOVEVMX1BQQVRfUEVSRkVDVF9NQVRDSCAo
fjBVKQotCi1zdHJ1Y3QgaW50ZWxfcHBhdDsKLQotc3RydWN0IGludGVsX3BwYXRfZW50cnkgewot
CXN0cnVjdCBpbnRlbF9wcGF0ICpwcGF0OwotCXN0cnVjdCBrcmVmIHJlZjsKLQl1OCB2YWx1ZTsK
LX07Ci0KLXN0cnVjdCBpbnRlbF9wcGF0IHsKLQlzdHJ1Y3QgaW50ZWxfcHBhdF9lbnRyeSBlbnRy
aWVzW0lOVEVMX01BWF9QUEFUX0VOVFJJRVNdOwotCURFQ0xBUkVfQklUTUFQKHVzZWQsIElOVEVM
X01BWF9QUEFUX0VOVFJJRVMpOwotCURFQ0xBUkVfQklUTUFQKGRpcnR5LCBJTlRFTF9NQVhfUFBB
VF9FTlRSSUVTKTsKLQl1bnNpZ25lZCBpbnQgbWF4X2VudHJpZXM7Ci0JdTggY2xlYXJfdmFsdWU7
Ci0JLyoKLQkgKiBSZXR1cm4gYSBzY29yZSB0byBzaG93IGhvdyB0d28gUFBBVCB2YWx1ZXMgbWF0
Y2gsCi0JICogYSBJTlRFTF9QUEFUX1BFUkZFQ1RfTUFUQ0ggaW5kaWNhdGVzIGEgcGVyZmVjdCBt
YXRjaAotCSAqLwotCXVuc2lnbmVkIGludCAoKm1hdGNoKSh1OCBzcmMsIHU4IGRzdCk7Ci0Jdm9p
ZCAoKnVwZGF0ZV9odykoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpOwotCi0Jc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmk5MTU7Ci19OwotCi1jb25zdCBzdHJ1Y3QgaW50ZWxfcHBhdF9l
bnRyeSAqCi1pbnRlbF9wcGF0X2dldChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwgdTgg
dmFsdWUpOwotdm9pZCBpbnRlbF9wcGF0X3B1dChjb25zdCBzdHJ1Y3QgaW50ZWxfcHBhdF9lbnRy
eSAqZW50cnkpOwotCiBpbnQgaTkxNV9nZ3R0X3Byb2JlX2h3KHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdik7CiBpbnQgaTkxNV9nZ3R0X2luaXRfaHcoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmRldl9wcml2KTsKIGludCBpOTE1X2dndHRfZW5hYmxlX2h3KHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdik7Ci0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
