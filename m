Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7942D21A997
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jul 2020 23:14:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED7826EB42;
	Thu,  9 Jul 2020 21:14:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 163A86EB3A
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jul 2020 21:14:02 +0000 (UTC)
IronPort-SDR: z01iNDLyWyUt/86s3YaPE+DBMLt6KkBY3uIrZzJSKWntxPhYywXyFiKxy3hLvVeagAWA89x3pe
 bw3E80X5rS9w==
X-IronPort-AV: E=McAfee;i="6000,8403,9677"; a="149580924"
X-IronPort-AV: E=Sophos;i="5.75,332,1589266800"; d="scan'208";a="149580924"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2020 14:14:01 -0700
IronPort-SDR: iT43H9NKqzhTkk7j9Jqnw/Wl8rlV1cqg/GHS6VnpYN8vcBoZDQMgK5ZiMEv3lnxgKhYyMUh78Q
 rccATQ0YyRNg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,332,1589266800"; d="scan'208";a="280429783"
Received: from ldmartin1-desk.jf.intel.com ([10.165.21.151])
 by orsmga003.jf.intel.com with ESMTP; 09 Jul 2020 14:14:00 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  9 Jul 2020 14:13:53 -0700
Message-Id: <20200709211357.23208-2-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200709211357.23208-1-lucas.demarchi@intel.com>
References: <20200709211357.23208-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 2/6] drm/i915/dg1: add initial DG-1 definitions
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

RnJvbTogQWJkaWVsIEphbnVsZ3VlIDxhYmRpZWwuamFudWxndWVAbGludXguaW50ZWwuY29tPgoK
QnNwZWM6IDMzNjE3LCAzMzYxNwoKdjI6IHMvaW50ZWxfZGcxX2luZm8vZGcxX2luZm8vIGFzIGRv
bmUgZm9yIG90aGVyIHBsYXRmb3JtcyBiZWZvcmUgYW5kCiAgICB0cnkgdG8gc2h1dCB1cCBjb21w
aWxlciBhYm91dCB1bnVuc2VkIHZhcmlhYmxlIHRoYXQgd2Uga25vdwogICAgc2hvdWxkbid0IGJl
IHVzZWQgKEx1Y2FzKQoKQ2M6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50
ZWwuY29tPgpDYzogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlv
QGludGVsLmNvbT4KQ2M6IFN0dWFydCBTdW1tZXJzIDxzdHVhcnQuc3VtbWVyc0BpbnRlbC5jb20+
CkNjOiBWYW5zaGlkaGFyIEtvbmRhIDx2YW5zaGlkaGFyLnIua29uZGFAaW50ZWwuY29tPgpDYzog
THVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+CkNjOiBBcmF2aW5kIElk
ZGFtc2V0dHkgPGFyYXZpbmQuaWRkYW1zZXR0eUBpbnRlbC5jb20+CkNjOiBNYXR0IFJvcGVyIDxt
YXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBBYmRpZWwgSmFudWxndWUg
PGFiZGllbC5qYW51bGd1ZUBsaW51eC5pbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEx1Y2FzIERl
IE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogSm9zw6kgUm9i
ZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9kcnYuaCAgICAgICAgICB8ICA3ICsrKysrKysKIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfcGNpLmMgICAgICAgICAgfCAxMiArKysrKysrKysrKysKIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmMgfCAgMSArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF9kZXZpY2VfaW5mby5oIHwgIDEgKwogNCBmaWxlcyBjaGFuZ2VkLCAyMSBpbnNlcnRpb25z
KCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKaW5kZXggNDJhOWIyMzE1NTZhLi4xZjViYzAzNjlk
YmQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaApAQCAtMTQzMCw2ICsxNDMwLDcgQEAgSVNfU1VC
UExBVEZPUk0oY29uc3Qgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsCiAjZGVmaW5lIElT
X0VMS0hBUlRMQUtFKGRldl9wcml2KQlJU19QTEFURk9STShkZXZfcHJpdiwgSU5URUxfRUxLSEFS
VExBS0UpCiAjZGVmaW5lIElTX1RJR0VSTEFLRShkZXZfcHJpdikJSVNfUExBVEZPUk0oZGV2X3By
aXYsIElOVEVMX1RJR0VSTEFLRSkKICNkZWZpbmUgSVNfUk9DS0VUTEFLRShkZXZfcHJpdikJSVNf
UExBVEZPUk0oZGV2X3ByaXYsIElOVEVMX1JPQ0tFVExBS0UpCisjZGVmaW5lIElTX0RHMShkZXZf
cHJpdikgICAgICAgIElTX1BMQVRGT1JNKGRldl9wcml2LCBJTlRFTF9ERzEpCiAjZGVmaW5lIElT
X0hTV19FQVJMWV9TRFYoZGV2X3ByaXYpIChJU19IQVNXRUxMKGRldl9wcml2KSAmJiBcCiAJCQkJ
ICAgIChJTlRFTF9ERVZJRChkZXZfcHJpdikgJiAweEZGMDApID09IDB4MEMwMCkKICNkZWZpbmUg
SVNfQkRXX1VMVChkZXZfcHJpdikgXApAQCAtMTU1OCw2ICsxNTU5LDEyIEBAIElTX1NVQlBMQVRG
T1JNKGNvbnN0IHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAogI2RlZmluZSBJU19SS0xf
UkVWSUQocCwgc2luY2UsIHVudGlsKSBcCiAJKElTX1JPQ0tFVExBS0UocCkgJiYgSVNfUkVWSUQo
cCwgc2luY2UsIHVudGlsKSkKIAorI2RlZmluZSBERzFfUkVWSURfQTAJCTB4MAorI2RlZmluZSBE
RzFfUkVWSURfQjAJCTB4MQorCisjZGVmaW5lIElTX0RHMV9SRVZJRChwLCBzaW5jZSwgdW50aWwp
IFwKKwkoSVNfREcxKHApICYmIElTX1JFVklEKHAsIHNpbmNlLCB1bnRpbCkpCisKICNkZWZpbmUg
SVNfTFAoZGV2X3ByaXYpCShJTlRFTF9JTkZPKGRldl9wcml2KS0+aXNfbHApCiAjZGVmaW5lIElT
X0dFTjlfTFAoZGV2X3ByaXYpCShJU19HRU4oZGV2X3ByaXYsIDkpICYmIElTX0xQKGRldl9wcml2
KSkKICNkZWZpbmUgSVNfR0VOOV9CQyhkZXZfcHJpdikJKElTX0dFTihkZXZfcHJpdiwgOSkgJiYg
IUlTX0xQKGRldl9wcml2KSkKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
cGNpLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jCmluZGV4IGRiOTE2ZmZmM2Yw
ZC4uZjQwNTljM2RlOGFmIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Bj
aS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMKQEAgLTg5Nyw4ICs4OTcs
MjAgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBpbnRlbF9kZXZpY2VfaW5mbyBya2xfaW5mbyA9IHsK
IAogI2RlZmluZSBHRU4xMl9ER0ZYX0ZFQVRVUkVTIFwKIAlHRU4xMl9GRUFUVVJFUywgXAorCS5t
ZW1vcnlfcmVnaW9ucyA9IFJFR0lPTl9TTUVNIHwgUkVHSU9OX0xNRU0sIFwKKwkuaGFzX21hc3Rl
cl91bml0X2lycSA9IDEsIFwKIAkuaXNfZGdmeCA9IDEKIAorc3RhdGljIGNvbnN0IHN0cnVjdCBp
bnRlbF9kZXZpY2VfaW5mbyBkZzFfaW5mbyBfX2F0dHJpYnV0ZV9fKChfX3VudXNlZF9fKSkgPSB7
CisJR0VOMTJfREdGWF9GRUFUVVJFUywKKwlQTEFURk9STShJTlRFTF9ERzEpLAorCS5waXBlX21h
c2sgPSBCSVQoUElQRV9BKSB8IEJJVChQSVBFX0IpIHwgQklUKFBJUEVfQykgfCBCSVQoUElQRV9E
KSwKKwkucmVxdWlyZV9mb3JjZV9wcm9iZSA9IDEsCisJLnBsYXRmb3JtX2VuZ2luZV9tYXNrID0K
KwkJQklUKFJDUzApIHwgQklUKEJDUzApIHwgQklUKFZFQ1MwKSB8CisJCUJJVChWQ1MwKSB8IEJJ
VChWQ1MyKSwKK307CisKICN1bmRlZiBHRU4KICN1bmRlZiBQTEFURk9STQogCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uYwppbmRleCAzZjVkYzM3ZDJiN2MuLjQwYzU5MGRi
M2M3NiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8u
YworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5jCkBAIC02NCw2
ICs2NCw3IEBAIHN0YXRpYyBjb25zdCBjaGFyICogY29uc3QgcGxhdGZvcm1fbmFtZXNbXSA9IHsK
IAlQTEFURk9STV9OQU1FKEVMS0hBUlRMQUtFKSwKIAlQTEFURk9STV9OQU1FKFRJR0VSTEFLRSks
CiAJUExBVEZPUk1fTkFNRShST0NLRVRMQUtFKSwKKwlQTEFURk9STV9OQU1FKERHMSksCiB9Owog
I3VuZGVmIFBMQVRGT1JNX05BTUUKIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfZGV2aWNlX2luZm8uaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9p
bmZvLmgKaW5kZXggNzFlZGIzOTZiMzFhLi5mZDIzODU0NTdhYjYgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmgKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uaApAQCAtODIsNiArODIsNyBAQCBlbnVtIGludGVsX3Bs
YXRmb3JtIHsKIAkvKiBnZW4xMiAqLwogCUlOVEVMX1RJR0VSTEFLRSwKIAlJTlRFTF9ST0NLRVRM
QUtFLAorCUlOVEVMX0RHMSwKIAlJTlRFTF9NQVhfUExBVEZPUk1TCiB9OwogCi0tIAoyLjI2LjIK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
