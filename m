Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 013762DA532
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Dec 2020 02:08:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 162D86E150;
	Tue, 15 Dec 2020 01:08:04 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45A9F6E045
 for <Intel-gfx@lists.freedesktop.org>; Tue, 15 Dec 2020 01:08:02 +0000 (UTC)
IronPort-SDR: HAW2rdTECjWcpvp6+FnrBg54WWpe+n67ltMRnqYXcusBqdLCFc5NQuDDMaewTlEdGMK+lMUcdo
 7FNclySwH9rQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9835"; a="171297985"
X-IronPort-AV: E=Sophos;i="5.78,420,1599548400"; d="scan'208";a="171297985"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2020 17:08:01 -0800
IronPort-SDR: VLnjAralwFYOxfnGlSdNIh0Ih20j0lOeQK/KtyN/rNFx8bR8ktv+vqYW+qLJbCP0hKunoZC7h7
 zfiaV80/Uzdg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,420,1599548400"; d="scan'208";a="331861123"
Received: from sean-virtualbox.fm.intel.com ([10.105.158.96])
 by fmsmga007.fm.intel.com with ESMTP; 14 Dec 2020 17:08:01 -0800
From: "Huang, Sean Z" <sean.z.huang@intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Mon, 14 Dec 2020 17:07:06 -0800
Message-Id: <20201215010726.15898-4-sean.z.huang@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201215010726.15898-1-sean.z.huang@intel.com>
References: <20201215010726.15898-1-sean.z.huang@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC-v9 03/23] drm/i915/pxp: Implement funcs to create
 the TEE channel
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SW1wbGVtZW50IHRoZSBmdW5jcyB0byBjcmVhdGUgdGhlIFRFRSBjaGFubmVsLCBzbyBrZXJuZWwg
Y2FuCnNlbmQgdGhlIFRFRSBjb21tYW5kcyBkaXJlY3RseSB0byBURUUgZm9yIGNyZWF0aW5nIHRo
ZSBhcmJpdHJhcnkKKGRlZnVhbHQpIHNlc3Npb24uCgpTaWduZWQtb2ZmLWJ5OiBIdWFuZywgU2Vh
biBaIDxzZWFuLnouaHVhbmdAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L01h
a2VmaWxlICAgICAgICAgICAgfCAgIDMgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2
LmMgICAgICAgICAgfCAgIDEgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCAgICAg
ICAgICB8ICAgNiArKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvcHhwL2ludGVsX3B4cC5jICAgICB8
ICAgNSArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9weHAvaW50ZWxfcHhwX3RlZS5jIHwgMTMyICsr
KysrKysrKysrKysrKysrKysrKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9weHAvaW50ZWxfcHhw
X3RlZS5oIHwgIDE0ICsrKwogaW5jbHVkZS9kcm0vaTkxNV9jb21wb25lbnQuaCAgICAgICAgICAg
ICB8ICAgMSArCiBpbmNsdWRlL2RybS9pOTE1X3B4cF90ZWVfaW50ZXJmYWNlLmggICAgIHwgIDQ1
ICsrKysrKysrCiA4IGZpbGVzIGNoYW5nZWQsIDIwNiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9u
KC0pCiBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL2k5MTUvcHhwL2ludGVsX3B4
cF90ZWUuYwogY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS9pOTE1L3B4cC9pbnRl
bF9weHBfdGVlLmgKIGNyZWF0ZSBtb2RlIDEwMDY0NCBpbmNsdWRlL2RybS9pOTE1X3B4cF90ZWVf
aW50ZXJmYWNlLmgKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZSBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlCmluZGV4IDUzYmUyOWRiYzA3ZC4uNTc0NDc4
ODdkMzUyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZQorKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZQpAQCAtMjU4LDcgKzI1OCw4IEBAIGk5MTUteSAr
PSBpOTE1X3BlcmYubwogIyBQcm90ZWN0ZWQgZXhlY3V0aW9uIHBsYXRmb3JtIChQWFApIHN1cHBv
cnQKIGk5MTUtJChDT05GSUdfRFJNX0k5MTVfUFhQKSArPSBcCiAJcHhwL2ludGVsX3B4cC5vIFwK
LQlweHAvaW50ZWxfcHhwX2NvbnRleHQubworCXB4cC9pbnRlbF9weHBfY29udGV4dC5vIFwKKwlw
eHAvaW50ZWxfcHhwX3RlZS5vCiAKICMgUG9zdC1tb3J0ZW0gZGVidWcgYW5kIEdQVSBoYW5nIHN0
YXRlIGNhcHR1cmUKIGk5MTUtJChDT05GSUdfRFJNX0k5MTVfQ0FQVFVSRV9FUlJPUikgKz0gaTkx
NV9ncHVfZXJyb3IubwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYu
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKaW5kZXggNTcwOGUxMWQ5MTdiLi45
Mjk5YTQ1NmFkYjAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYwpAQCAtMzIyLDYgKzMyMiw3IEBA
IHN0YXRpYyBpbnQgaTkxNV9kcml2ZXJfZWFybHlfcHJvYmUoc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmRldl9wcml2KQogCW11dGV4X2luaXQoJmRldl9wcml2LT53bS53bV9tdXRleCk7CiAJbXV0
ZXhfaW5pdCgmZGV2X3ByaXYtPnBwc19tdXRleCk7CiAJbXV0ZXhfaW5pdCgmZGV2X3ByaXYtPmhk
Y3BfY29tcF9tdXRleCk7CisJbXV0ZXhfaW5pdCgmZGV2X3ByaXYtPnB4cF90ZWVfY29tcF9tdXRl
eCk7CiAKIAlpOTE1X21lbWNweV9pbml0X2Vhcmx5KGRldl9wcml2KTsKIAlpbnRlbF9ydW50aW1l
X3BtX2luaXRfZWFybHkoJmRldl9wcml2LT5ydW50aW1lX3BtKTsKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Ry
di5oCmluZGV4IDVkMDRiMjgyYzA2MC4uMmU5OTdmNzUzMDU0IDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
ZHJ2LmgKQEAgLTEyMTUsNiArMTIxNSwxMiBAQCBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSB7CiAJ
LyogTXV0ZXggdG8gcHJvdGVjdCB0aGUgYWJvdmUgaGRjcCBjb21wb25lbnQgcmVsYXRlZCB2YWx1
ZXMuICovCiAJc3RydWN0IG11dGV4IGhkY3BfY29tcF9tdXRleDsKIAorCXN0cnVjdCBpOTE1X3B4
cF9jb21wX21hc3RlciAqcHhwX3RlZV9tYXN0ZXI7CisJYm9vbCBweHBfdGVlX2NvbXBfYWRkZWQ7
CisKKwkvKiBNdXRleCB0byBwcm90ZWN0IHRoZSBhYm92ZSBweHBfdGVlIGNvbXBvbmVudCByZWxh
dGVkIHZhbHVlcy4gKi8KKwlzdHJ1Y3QgbXV0ZXggcHhwX3RlZV9jb21wX211dGV4OworCiAJSTkx
NV9TRUxGVEVTVF9ERUNMQVJFKHN0cnVjdCBpOTE1X3NlbGZ0ZXN0X3N0YXNoIHNlbGZ0ZXN0OykK
IAogCS8qCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9weHAvaW50ZWxfcHhwLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9weHAvaW50ZWxfcHhwLmMKaW5kZXggYzQ4MTU5NTA1Njdk
Li40MTA0ZGQ4OWNhN2YgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3B4cC9pbnRl
bF9weHAuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9weHAvaW50ZWxfcHhwLmMKQEAgLTUs
NiArNSw3IEBACiAjaW5jbHVkZSAiaTkxNV9kcnYuaCIKICNpbmNsdWRlICJpbnRlbF9weHAuaCIK
ICNpbmNsdWRlICJpbnRlbF9weHBfY29udGV4dC5oIgorI2luY2x1ZGUgImludGVsX3B4cF90ZWUu
aCIKIAogLyogS0NSIHJlZ2lzdGVyIGRlZmluaXRpb25zICovCiAjZGVmaW5lIEtDUl9JTklUICAg
ICAgICAgICAgX01NSU8oMHgzMjBmMCkKQEAgLTI0LDYgKzI1LDggQEAgaW50IGludGVsX3B4cF9p
bml0KHN0cnVjdCBpbnRlbF9weHAgKnB4cCkKIAogCWludGVsX3VuY29yZV93cml0ZShndC0+dW5j
b3JlLCBLQ1JfSU5JVCwgS0NSX0lOSVRfQUxMT1dfRElTUExBWV9NRV9XUklURVMpOwogCisJaW50
ZWxfcHhwX3RlZV9jb21wb25lbnRfaW5pdChweHApOworCiAJZHJtX2luZm8oJmd0LT5pOTE1LT5k
cm0sICJQcm90ZWN0ZWQgWGUgUGF0aCAoUFhQKSBwcm90ZWN0ZWQgY29udGVudCBzdXBwb3J0IGlu
aXRpYWxpemVkXG4iKTsKIAogCXJldHVybiAwOwpAQCAtMzEsNSArMzQsNyBAQCBpbnQgaW50ZWxf
cHhwX2luaXQoc3RydWN0IGludGVsX3B4cCAqcHhwKQogCiB2b2lkIGludGVsX3B4cF91bmluaXQo
c3RydWN0IGludGVsX3B4cCAqcHhwKQogeworCWludGVsX3B4cF90ZWVfY29tcG9uZW50X2Zpbmko
cHhwKTsKKwogCWludGVsX3B4cF9jdHhfZmluaSgmcHhwLT5jdHgpOwogfQpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvcHhwL2ludGVsX3B4cF90ZWUuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L3B4cC9pbnRlbF9weHBfdGVlLmMKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAw
MDAwMDAwMDAwLi5jYTZiNjEwOTlhZWUKLS0tIC9kZXYvbnVsbAorKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9weHAvaW50ZWxfcHhwX3RlZS5jCkBAIC0wLDAgKzEsMTMyIEBACisvLyBTUERYLUxp
Y2Vuc2UtSWRlbnRpZmllcjogTUlUCisvKgorICogQ29weXJpZ2h0KGMpIDIwMjAgSW50ZWwgQ29y
cG9yYXRpb24uCisgKi8KKworI2luY2x1ZGUgPGxpbnV4L2NvbXBvbmVudC5oPgorI2luY2x1ZGUg
ImRybS9pOTE1X3B4cF90ZWVfaW50ZXJmYWNlLmgiCisjaW5jbHVkZSAiZHJtL2k5MTVfY29tcG9u
ZW50LmgiCisjaW5jbHVkZSAgImk5MTVfZHJ2LmgiCisjaW5jbHVkZSAiaW50ZWxfcHhwLmgiCisj
aW5jbHVkZSAiaW50ZWxfcHhwX2NvbnRleHQuaCIKKyNpbmNsdWRlICJpbnRlbF9weHBfdGVlLmgi
CisKK3N0YXRpYyBpbnQgaW50ZWxfcHhwX3RlZV9pb19tZXNzYWdlKHN0cnVjdCBpbnRlbF9weHAg
KnB4cCwKKwkJCQkgICAgdm9pZCAqbXNnX2luLCB1MzIgbXNnX2luX3NpemUsCisJCQkJICAgIHZv
aWQgKm1zZ19vdXQsIHUzMiAqbXNnX291dF9zaXplX3B0ciwKKwkJCQkgICAgdTMyIG1zZ19vdXRf
YnVmX3NpemUpCit7CisJaW50IHJldDsKKwlzdHJ1Y3QgaW50ZWxfZ3QgKmd0ID0gY29udGFpbmVy
X29mKHB4cCwgdHlwZW9mKCpndCksIHB4cCk7CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5
MTUgPSBndC0+aTkxNTsKKwlzdHJ1Y3QgaTkxNV9weHBfY29tcF9tYXN0ZXIgKnB4cF90ZWVfbWFz
dGVyID0gaTkxNS0+cHhwX3RlZV9tYXN0ZXI7CisKKwlpZiAoIXB4cF90ZWVfbWFzdGVyIHx8ICFt
c2dfaW4gfHwgIW1zZ19vdXQgfHwgIW1zZ19vdXRfc2l6ZV9wdHIpCisJCXJldHVybiAtRUlOVkFM
OworCisJbG9ja2RlcF9hc3NlcnRfaGVsZCgmaTkxNS0+cHhwX3RlZV9jb21wX211dGV4KTsKKwor
CWlmIChkcm1fZGVidWdfZW5hYmxlZChEUk1fVVRfRFJJVkVSKSkKKwkJcHJpbnRfaGV4X2R1bXAo
S0VSTl9ERUJVRywgIlRFRSBpbnB1dCBtZXNzYWdlIGJpbmFyaWVzOiIsCisJCQkgICAgICAgRFVN
UF9QUkVGSVhfT0ZGU0VULCA0LCA0LCBtc2dfaW4sIG1zZ19pbl9zaXplLCB0cnVlKTsKKworCXJl
dCA9IHB4cF90ZWVfbWFzdGVyLT5vcHMtPnNlbmQocHhwX3RlZV9tYXN0ZXItPnRlZV9kZXYsIG1z
Z19pbiwgbXNnX2luX3NpemUpOworCWlmIChyZXQpIHsKKwkJZHJtX2VycigmaTkxNS0+ZHJtLCAi
RmFpbGVkIHRvIHNlbmQgVEVFIG1lc3NhZ2VcbiIpOworCQlyZXR1cm4gLUVGQVVMVDsKKwl9CisK
KwlyZXQgPSBweHBfdGVlX21hc3Rlci0+b3BzLT5yZWNlaXZlKHB4cF90ZWVfbWFzdGVyLT50ZWVf
ZGV2LCBtc2dfb3V0LCBtc2dfb3V0X2J1Zl9zaXplKTsKKwlpZiAocmV0IDwgMCkgeworCQlkcm1f
ZXJyKCZpOTE1LT5kcm0sICJGYWlsZWQgdG8gcmVjZWl2ZSBURUUgbWVzc2FnZVxuIik7CisJCXJl
dHVybiAtRUZBVUxUOworCX0KKworCWlmIChyZXQgPiBtc2dfb3V0X2J1Zl9zaXplKSB7CisJCWRy
bV9lcnIoJmk5MTUtPmRybSwgIkZhaWxlZCB0byByZWNlaXZlIFRFRSBtZXNzYWdlIGR1ZSB0byB1
bmV4cGVjdGVkIG91dHB1dCBzaXplXG4iKTsKKwkJcmV0dXJuIC1FRkFVTFQ7CisJfQorCisJKm1z
Z19vdXRfc2l6ZV9wdHIgPSByZXQ7CisJcmV0ID0gMDsKKworCWlmIChkcm1fZGVidWdfZW5hYmxl
ZChEUk1fVVRfRFJJVkVSKSkKKwkJcHJpbnRfaGV4X2R1bXAoS0VSTl9ERUJVRywgIlRFRSBvdXRw
dXQgbWVzc2FnZSBiaW5hcmllczoiLAorCQkJICAgICAgIERVTVBfUFJFRklYX09GRlNFVCwgNCwg
NCwgbXNnX291dCwgKm1zZ19vdXRfc2l6ZV9wdHIsIHRydWUpOworCisJcmV0dXJuIHJldDsKK30K
KworLyoqCisgKiBpOTE1X3B4cF90ZWVfY29tcG9uZW50X2JpbmQgLSBiaW5kIGZ1bmNpdG9uIHRv
IHBhc3MgdGhlIGZ1bmN0aW9uIHBvaW50ZXJzIHRvIHB4cF90ZWUKKyAqIEBpOTE1X2tkZXY6IHBv
aW50ZXIgdG8gaTkxNSBrZXJuZWwgZGV2aWNlCisgKiBAdGVlX2tkZXY6IHBvaW50ZXIgdG8gdGVl
IGtlcm5lbCBkZXZpY2UKKyAqIEBkYXRhOiBwb2ludGVyIHRvIHB4cF90ZWVfbWFzdGVyIGNvbnRh
aW5pbmcgdGhlIGZ1bmN0aW9uIHBvaW50ZXJzCisgKgorICogVGhpcyBiaW5kIGZ1bmN0aW9uIGlz
IGNhbGxlZCBkdXJpbmcgdGhlIHN5c3RlbSBib290IG9yIHJlc3VtZSBmcm9tIHN5c3RlbSBzbGVl
cC4KKyAqCisgKiBSZXR1cm46IHJldHVybiAwIGlmIHN1Y2Nlc3NmdWwuCisgKi8KK3N0YXRpYyBp
bnQgaTkxNV9weHBfdGVlX2NvbXBvbmVudF9iaW5kKHN0cnVjdCBkZXZpY2UgKmk5MTVfa2RldiwK
KwkJCQkgICAgICAgc3RydWN0IGRldmljZSAqdGVlX2tkZXYsIHZvaWQgKmRhdGEpCit7CisJc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBrZGV2X3RvX2k5MTUoaTkxNV9rZGV2KTsKKwor
CWlmICghaTkxNSB8fCAhdGVlX2tkZXYgfHwgIWRhdGEpCisJCXJldHVybiAtRVBFUk07CisKKwlt
dXRleF9sb2NrKCZpOTE1LT5weHBfdGVlX2NvbXBfbXV0ZXgpOworCWk5MTUtPnB4cF90ZWVfbWFz
dGVyID0gKHN0cnVjdCBpOTE1X3B4cF9jb21wX21hc3RlciAqKWRhdGE7CisJaTkxNS0+cHhwX3Rl
ZV9tYXN0ZXItPnRlZV9kZXYgPSB0ZWVfa2RldjsKKwltdXRleF91bmxvY2soJmk5MTUtPnB4cF90
ZWVfY29tcF9tdXRleCk7CisKKwlyZXR1cm4gMDsKK30KKworc3RhdGljIHZvaWQgaTkxNV9weHBf
dGVlX2NvbXBvbmVudF91bmJpbmQoc3RydWN0IGRldmljZSAqaTkxNV9rZGV2LAorCQkJCQkgIHN0
cnVjdCBkZXZpY2UgKnRlZV9rZGV2LCB2b2lkICpkYXRhKQoreworCXN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICppOTE1ID0ga2Rldl90b19pOTE1KGk5MTVfa2Rldik7CisKKwlpZiAoIWk5MTUgfHwg
IXRlZV9rZGV2IHx8ICFkYXRhKQorCQlyZXR1cm47CisKKwltdXRleF9sb2NrKCZpOTE1LT5weHBf
dGVlX2NvbXBfbXV0ZXgpOworCWk5MTUtPnB4cF90ZWVfbWFzdGVyID0gTlVMTDsKKwltdXRleF91
bmxvY2soJmk5MTUtPnB4cF90ZWVfY29tcF9tdXRleCk7Cit9CisKK3N0YXRpYyBjb25zdCBzdHJ1
Y3QgY29tcG9uZW50X29wcyBpOTE1X3B4cF90ZWVfY29tcG9uZW50X29wcyA9IHsKKwkuYmluZCAg
ID0gaTkxNV9weHBfdGVlX2NvbXBvbmVudF9iaW5kLAorCS51bmJpbmQgPSBpOTE1X3B4cF90ZWVf
Y29tcG9uZW50X3VuYmluZCwKK307CisKK3ZvaWQgaW50ZWxfcHhwX3RlZV9jb21wb25lbnRfaW5p
dChzdHJ1Y3QgaW50ZWxfcHhwICpweHApCit7CisJaW50IHJldDsKKwlzdHJ1Y3QgaW50ZWxfZ3Qg
Kmd0ID0gY29udGFpbmVyX29mKHB4cCwgdHlwZW9mKCpndCksIHB4cCk7CisJc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmk5MTUgPSBndC0+aTkxNTsKKworCXJldCA9IGNvbXBvbmVudF9hZGRfdHlw
ZWQoaTkxNS0+ZHJtLmRldiwgJmk5MTVfcHhwX3RlZV9jb21wb25lbnRfb3BzLAorCQkJCSAgSTkx
NV9DT01QT05FTlRfUFhQKTsKKwlpZiAocmV0IDwgMCkgeworCQlkcm1fZXJyKCZpOTE1LT5kcm0s
ICJGYWlsZWQgYXQgY29tcG9uZW50IGFkZCglZClcbiIsIHJldCk7CisJCXJldHVybjsKKwl9CisK
KwltdXRleF9sb2NrKCZpOTE1LT5weHBfdGVlX2NvbXBfbXV0ZXgpOworCWk5MTUtPnB4cF90ZWVf
Y29tcF9hZGRlZCA9IHRydWU7CisJbXV0ZXhfdW5sb2NrKCZpOTE1LT5weHBfdGVlX2NvbXBfbXV0
ZXgpOworfQorCit2b2lkIGludGVsX3B4cF90ZWVfY29tcG9uZW50X2Zpbmkoc3RydWN0IGludGVs
X3B4cCAqcHhwKQoreworCXN0cnVjdCBpbnRlbF9ndCAqZ3QgPSBjb250YWluZXJfb2YocHhwLCB0
eXBlb2YoKmd0KSwgcHhwKTsKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IGd0LT5p
OTE1OworCisJbXV0ZXhfbG9jaygmaTkxNS0+cHhwX3RlZV9jb21wX211dGV4KTsKKwlpOTE1LT5w
eHBfdGVlX2NvbXBfYWRkZWQgPSBmYWxzZTsKKwltdXRleF91bmxvY2soJmk5MTUtPnB4cF90ZWVf
Y29tcF9tdXRleCk7CisKKwljb21wb25lbnRfZGVsKGk5MTUtPmRybS5kZXYsICZpOTE1X3B4cF90
ZWVfY29tcG9uZW50X29wcyk7Cit9CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9w
eHAvaW50ZWxfcHhwX3RlZS5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvcHhwL2ludGVsX3B4cF90
ZWUuaApuZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAwMDAwMDAuLjRiNWUzZWRiMWQ5
YgotLS0gL2Rldi9udWxsCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3B4cC9pbnRlbF9weHBf
dGVlLmgKQEAgLTAsMCArMSwxNCBAQAorLyogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IE1JVCAq
LworLyoKKyAqIENvcHlyaWdodChjKSAyMDIwLCBJbnRlbCBDb3Jwb3JhdGlvbi4gQWxsIHJpZ2h0
cyByZXNlcnZlZC4KKyAqLworCisjaWZuZGVmIF9fSU5URUxfUFhQX1RFRV9IX18KKyNkZWZpbmUg
X19JTlRFTF9QWFBfVEVFX0hfXworCisjaW5jbHVkZSAiaW50ZWxfcHhwLmgiCisKK3ZvaWQgaW50
ZWxfcHhwX3RlZV9jb21wb25lbnRfaW5pdChzdHJ1Y3QgaW50ZWxfcHhwICpweHApOwordm9pZCBp
bnRlbF9weHBfdGVlX2NvbXBvbmVudF9maW5pKHN0cnVjdCBpbnRlbF9weHAgKnB4cCk7CisKKyNl
bmRpZiAvKiBfX0lOVEVMX1BYUF9URUVfSF9fICovCmRpZmYgLS1naXQgYS9pbmNsdWRlL2RybS9p
OTE1X2NvbXBvbmVudC5oIGIvaW5jbHVkZS9kcm0vaTkxNV9jb21wb25lbnQuaAppbmRleCA1NWMz
YjEyMzU4MWIuLmMxZTJhNDNkMmQxZSAxMDA2NDQKLS0tIGEvaW5jbHVkZS9kcm0vaTkxNV9jb21w
b25lbnQuaAorKysgYi9pbmNsdWRlL2RybS9pOTE1X2NvbXBvbmVudC5oCkBAIC0yOSw2ICsyOSw3
IEBACiBlbnVtIGk5MTVfY29tcG9uZW50X3R5cGUgewogCUk5MTVfQ09NUE9ORU5UX0FVRElPID0g
MSwKIAlJOTE1X0NPTVBPTkVOVF9IRENQLAorCUk5MTVfQ09NUE9ORU5UX1BYUAogfTsKIAogLyog
TUFYX1BPUlQgaXMgdGhlIG51bWJlciBvZiBwb3J0CmRpZmYgLS1naXQgYS9pbmNsdWRlL2RybS9p
OTE1X3B4cF90ZWVfaW50ZXJmYWNlLmggYi9pbmNsdWRlL2RybS9pOTE1X3B4cF90ZWVfaW50ZXJm
YWNlLmgKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwMDAwMDAwLi4zOTk5ZTI1NWUx
NDUKLS0tIC9kZXYvbnVsbAorKysgYi9pbmNsdWRlL2RybS9pOTE1X3B4cF90ZWVfaW50ZXJmYWNl
LmgKQEAgLTAsMCArMSw0NSBAQAorLyogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IE1JVCAqLwor
LyoKKyAqIENvcHlyaWdodCDCqSAyMDIwIEludGVsIENvcnBvcmF0aW9uCisgKgorICogQXV0aG9y
czoKKyAqIFZpdGFseSBMdWJhcnQgPHZpdGFseS5sdWJhcnRAaW50ZWwuY29tPgorICovCisKKyNp
Zm5kZWYgX0k5MTVfUFhQX1RFRV9JTlRFUkZBQ0VfSF8KKyNkZWZpbmUgX0k5MTVfUFhQX1RFRV9J
TlRFUkZBQ0VfSF8KKworI2luY2x1ZGUgPGxpbnV4L211dGV4Lmg+CisjaW5jbHVkZSA8bGludXgv
ZGV2aWNlLmg+CisKKy8qKgorICogc3RydWN0IGk5MTVfcHhwX2NvbXBvbmVudF9vcHMgLSBvcHMg
Zm9yIFBYUCBzZXJ2aWNlcy4KKyAqIEBvd25lcjogTW9kdWxlIHByb3ZpZGluZyB0aGUgb3BzCisg
KiBAc2VuZDogc2VuZHMgZGF0YSB0byBQWFAKKyAqIEByZWNlaXZlOiByZWNlaXZlcyBkYXRhIGZy
b20gUFhQCisgKi8KK3N0cnVjdCBpOTE1X3B4cF9jb21wb25lbnRfb3BzIHsKKwkvKioKKwkgKiBA
b3duZXI6IG93bmVyIG9mIHRoZSBtb2R1bGUgcHJvdmRpbmcgdGhlIG9wcworCSAqLworCXN0cnVj
dCBtb2R1bGUgKm93bmVyOworCisJaW50ICgqc2VuZCkoc3RydWN0IGRldmljZSAqZGV2LCBjb25z
dCB2b2lkICptZXNzYWdlLCBzaXplX3Qgc2l6ZSk7CisJaW50ICgqcmVjZWl2ZSkoc3RydWN0IGRl
dmljZSAqZGV2LCB2b2lkICpidWZmZXIsIHNpemVfdCBzaXplKTsKK307CisKKy8qKgorICogc3Ry
dWN0IGk5MTVfcHhwX2NvbXBvbmVudF9tYXN0ZXIgLSBVc2VkIGZvciBjb21tdW5pY2F0aW9uIGJl
dHdlZW4gaTkxNQorICogYW5kIFRFRSBkcml2ZXJzIGZvciB0aGUgUFhQIHNlcnZpY2VzCisgKiBA
dGVlX2RldjogZGV2aWNlIHRoYXQgcHJvdmlkZSB0aGUgUFhQIHNlcnZpY2UgZnJvbSBURUUgQnVz
LgorICogQHB4cF9vcHM6IE9wcyBpbXBsZW1lbnRlZCBieSBURUUgZHJpdmVyLCB1c2VkIGJ5IGk5
MTUgZHJpdmVyLgorICovCitzdHJ1Y3QgaTkxNV9weHBfY29tcF9tYXN0ZXIgeworCXN0cnVjdCBk
ZXZpY2UgKnRlZV9kZXY7CisJY29uc3Qgc3RydWN0IGk5MTVfcHhwX2NvbXBvbmVudF9vcHMgKm9w
czsKKworCS8qIFRvIHByb3RlY3QgdGhlIGFib3ZlIG1lbWJlcnMuICovCisJc3RydWN0IG11dGV4
IG11dGV4OworfTsKKworI2VuZGlmIC8qIF9JOTE1X1RFRV9QWFBfSU5URVJGQUNFX0hfICovCi0t
IAoyLjE3LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
