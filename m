Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD04CA60AB
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Sep 2019 07:35:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0F4989A0E;
	Tue,  3 Sep 2019 05:35:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A3DCF89A1E;
 Tue,  3 Sep 2019 05:35:35 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Sep 2019 22:35:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,461,1559545200"; d="scan'208";a="187151351"
Received: from helsinki.fi.intel.com ([10.237.66.149])
 by orsmga006.jf.intel.com with ESMTP; 02 Sep 2019 22:35:29 -0700
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 Sep 2019 08:35:04 +0300
Message-Id: <20190903053508.21803-4-gwan-gyeong.mun@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190903053508.21803-1-gwan-gyeong.mun@intel.com>
References: <20190903053508.21803-1-gwan-gyeong.mun@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 3/7] drm: Add DisplayPort colorspace property
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
Cc: dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SW4gb3JkZXIgdG8gdXNlIGNvbG9yc3BhY2UgcHJvcGVydHkgdG8gRGlzcGxheSBQb3J0IGNvbm5l
Y3RvcnMsIGl0IGV4dGVuZHMKRFJNX01PREVfQ09OTkVDVE9SX0Rpc3BsYXlQb3J0IGNvbm5lY3Rv
cl90eXBlIG9uCmRybV9tb2RlX2NyZWF0ZV9jb2xvcnNwYWNlX3Byb3BlcnR5IGZ1bmN0aW9uLgoK
djM6IEFkZHJlc3NlZCByZXZpZXcgY29tbWVudHMgZnJvbSBWaWxsZQogICAgLSBBZGQgbmV3IGNv
bG9yaW1ldHJ5IG9wdGlvbnMgZm9yIERQIDEuNGEgc3BlYy4KICAgIC0gU2VwYXJhdGUgc2V0IG9m
IGNvbG9yaW1ldHJ5IGVudW0gdmFsdWVzIGZvciBEUC4KClNpZ25lZC1vZmYtYnk6IEd3YW4tZ3ll
b25nIE11biA8Z3dhbi1neWVvbmcubXVuQGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IFVtYSBTaGFu
a2FyIDx1bWEuc2hhbmthckBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2RybV9jb25u
ZWN0b3IuYyB8IDQzICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwogaW5jbHVkZS9k
cm0vZHJtX2Nvbm5lY3Rvci5oICAgICB8ICA4ICsrKysrKwogMiBmaWxlcyBjaGFuZ2VkLCA1MSBp
bnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2RybV9jb25uZWN0b3Iu
YyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fY29ubmVjdG9yLmMKaW5kZXggNGM3NjY2MjRiMjBkLi4w
MTNjZjk2ZTMwMTIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fY29ubmVjdG9yLmMK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2RybV9jb25uZWN0b3IuYwpAQCAtODgyLDYgKzg4Miw0MSBA
QCBzdGF0aWMgY29uc3Qgc3RydWN0IGRybV9wcm9wX2VudW1fbGlzdCBoZG1pX2NvbG9yc3BhY2Vz
W10gPSB7CiAJeyBEUk1fTU9ERV9DT0xPUklNRVRSWV9EQ0lfUDNfUkdCX1RIRUFURVIsICJEQ0kt
UDNfUkdCX1RoZWF0ZXIiIH0sCiB9OwogCisvKgorICogQXMgcGVyIERQIDEuNGEgc3BlYywgMi4y
LjUuNy41IFZTQyBTRFAgUGF5bG9hZCBmb3IgUGl4ZWwgRW5jb2RpbmcvQ29sb3JpbWV0cnkKKyAq
IEZvcm1hdCBUYWJsZSAyLTEyMAorICovCitzdGF0aWMgY29uc3Qgc3RydWN0IGRybV9wcm9wX2Vu
dW1fbGlzdCBkcF9jb2xvcnNwYWNlc1tdID0geworCS8qIEZvciBEZWZhdWx0IGNhc2UsIGRyaXZl
ciB3aWxsIHNldCB0aGUgY29sb3JzcGFjZSAqLworCXsgRFJNX01PREVfQ09MT1JJTUVUUllfREVG
QVVMVCwgIkRlZmF1bHQiIH0sCisJLyogQ29sb3JpbWV0cnkgYmFzZWQgb24gSUVDIDYxOTY2LTIt
MSAqLworCXsgRFJNX01PREVfQ09MT1JJTUVUUllfU1JHQiwgInNSR0IiIH0sCisJeyBEUk1fTU9E
RV9DT0xPUklNRVRSWV9XSURFX0dBTVVUX0ZJWEVEX1BPSU5UX1JHQiwgIlJHQl93aWRlX2dhbXV0
X2ZpeGVkX3BvaW50IiB9LAorCS8qIENvbG9yaW1ldHJ5IGJhc2VkIG9uIElFQyA2MTk2Ni0yLTIg
Ki8KKwl7IERSTV9NT0RFX0NPTE9SSU1FVFJZX1NDUkdCLCAic2NSR0IiIH0sCisJeyBEUk1fTU9E
RV9DT0xPUklNRVRSWV9BRE9CRV9SR0IsICJBZG9iZV9SR0IiIH0sCisJLyogQ29sb3JpbWV0cnkg
YmFzZWQgb24gU01QVEUgUlAgNDMxLTIgKi8KKwl7IERSTV9NT0RFX0NPTE9SSU1FVFJZX0RDUF9Q
M19SR0IsICJEQ0ktUDNfUkdCIiB9LAorCS8qIENvbG9yaW1ldHJ5IGJhc2VkIG9uIElUVS1SIEJU
LjIwMjAgKi8KKwl7IERSTV9NT0RFX0NPTE9SSU1FVFJZX0JUMjAyMF9SR0IsICJCVDIwMjBfUkdC
IiB9LAorCXsgRFJNX01PREVfQ09MT1JJTUVUUllfQlQ2MDFfWUNDLCAiQlQ2MDFfWUNDIiB9LAor
CXsgRFJNX01PREVfQ09MT1JJTUVUUllfQlQ3MDlfWUNDLCAiQlQ3MDlfWUNDIiB9LAorCS8qIFN0
YW5kYXJkIERlZmluaXRpb24gQ29sb3JpbWV0cnkgYmFzZWQgb24gSUVDIDYxOTY2LTItNCAqLwor
CXsgRFJNX01PREVfQ09MT1JJTUVUUllfWFZZQ0NfNjAxLCAiWFZZQ0NfNjAxIiB9LAorCS8qIEhp
Z2ggRGVmaW5pdGlvbiBDb2xvcmltZXRyeSBiYXNlZCBvbiBJRUMgNjE5NjYtMi00ICovCisJeyBE
Uk1fTU9ERV9DT0xPUklNRVRSWV9YVllDQ183MDksICJYVllDQ183MDkiIH0sCisJLyogQ29sb3Jp
bWV0cnkgYmFzZWQgb24gSUVDIDYxOTY2LTItMS9BbWVuZG1lbnQgMSAqLworCXsgRFJNX01PREVf
Q09MT1JJTUVUUllfU1lDQ182MDEsICJTWUNDXzYwMSIgfSwKKwkvKiBDb2xvcmltZXRyeSBiYXNl
ZCBvbiBJRUMgNjE5NjYtMi01IFszM10gKi8KKwl7IERSTV9NT0RFX0NPTE9SSU1FVFJZX09QWUND
XzYwMSwgIm9wWUNDXzYwMSIgfSwKKwkvKiBDb2xvcmltZXRyeSBiYXNlZCBvbiBJVFUtUiBCVC4y
MDIwICovCisJeyBEUk1fTU9ERV9DT0xPUklNRVRSWV9CVDIwMjBfQ1lDQywgIkJUMjAyMF9DWUND
IiB9LAorCS8qIENvbG9yaW1ldHJ5IGJhc2VkIG9uIElUVS1SIEJULjIwMjAgKi8KKwl7IERSTV9N
T0RFX0NPTE9SSU1FVFJZX0JUMjAyMF9ZQ0MsICJCVDIwMjBfWUNDIiB9LAorCS8qIENvbG9ydW1l
dHJ5IGZvciBZIE9ubHkgKi8KKwl7IERSTV9NT0RFX0NPTE9SSU1FVFJZX0RJQ09NX1BBUlRfMTRf
R1JBWVNDQUxFLCAiRElDT01fUGFydF8xNF9HcmF5c2NhbGVfRGlzcGxheV9GdW5jdGlvbiIgfSwK
K307CisKIC8qKgogICogRE9DOiBzdGFuZGFyZCBjb25uZWN0b3IgcHJvcGVydGllcwogICoKQEAg
LTE3MTAsNiArMTc0NSwxNCBAQCBpbnQgZHJtX21vZGVfY3JlYXRlX2NvbG9yc3BhY2VfcHJvcGVy
dHkoc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvcikKIAkJCQkJCUFSUkFZX1NJWkUoaGRt
aV9jb2xvcnNwYWNlcykpOwogCQlpZiAoIXByb3ApCiAJCQlyZXR1cm4gLUVOT01FTTsKKwl9IGVs
c2UgaWYgKGNvbm5lY3Rvci0+Y29ubmVjdG9yX3R5cGUgPT0gRFJNX01PREVfQ09OTkVDVE9SX0Rp
c3BsYXlQb3J0IHx8CisJCSAgIGNvbm5lY3Rvci0+Y29ubmVjdG9yX3R5cGUgPT0gRFJNX01PREVf
Q09OTkVDVE9SX2VEUCkgeworCQlwcm9wID0gZHJtX3Byb3BlcnR5X2NyZWF0ZV9lbnVtKGRldiwg
RFJNX01PREVfUFJPUF9FTlVNLAorCQkJCQkJIkNvbG9yc3BhY2UiLAorCQkJCQkJZHBfY29sb3Jz
cGFjZXMsCisJCQkJCQlBUlJBWV9TSVpFKGRwX2NvbG9yc3BhY2VzKSk7CisJCWlmICghcHJvcCkK
KwkJCXJldHVybiAtRU5PTUVNOwogCX0gZWxzZSB7CiAJCURSTV9ERUJVR19LTVMoIkNvbG9yc3Bh
Y2UgcHJvcGVydHkgbm90IHN1cHBvcnRlZFxuIik7CiAJCXJldHVybiAwOwpkaWZmIC0tZ2l0IGEv
aW5jbHVkZS9kcm0vZHJtX2Nvbm5lY3Rvci5oIGIvaW5jbHVkZS9kcm0vZHJtX2Nvbm5lY3Rvci5o
CmluZGV4IDY4MWNiNTkwZjk1Mi4uODg0OGU1ZDZiMGM0IDEwMDY0NAotLS0gYS9pbmNsdWRlL2Ry
bS9kcm1fY29ubmVjdG9yLmgKKysrIGIvaW5jbHVkZS9kcm0vZHJtX2Nvbm5lY3Rvci5oCkBAIC0y
ODEsNiArMjgxLDE0IEBAIGVudW0gZHJtX3BhbmVsX29yaWVudGF0aW9uIHsKIC8qIEFkZGl0aW9u
YWwgQ29sb3JpbWV0cnkgZXh0ZW5zaW9uIGFkZGVkIGFzIHBhcnQgb2YgQ1RBIDg2MS5HICovCiAj
ZGVmaW5lIERSTV9NT0RFX0NPTE9SSU1FVFJZX0RDSV9QM19SR0JfRDY1CQkxMQogI2RlZmluZSBE
Uk1fTU9ERV9DT0xPUklNRVRSWV9EQ0lfUDNfUkdCX1RIRUFURVIJCTEyCisvKiBBZGRpdGlvbmFs
IENvbG9yaW1ldHJ5IE9wdGlvbnMgYWRkZWQgZm9yIERQIDEuNGEgVlNDIENvbG9yaW1ldHJ5IEZv
cm1hdCAqLworI2RlZmluZSBEUk1fTU9ERV9DT0xPUklNRVRSWV9TUkdCCQkJMTMKKyNkZWZpbmUg
RFJNX01PREVfQ09MT1JJTUVUUllfV0lERV9HQU1VVF9GSVhFRF9QT0lOVF9SR0IJMTQKKyNkZWZp
bmUgRFJNX01PREVfQ09MT1JJTUVUUllfU0NSR0IJCQkxNQorI2RlZmluZSBEUk1fTU9ERV9DT0xP
UklNRVRSWV9BRE9CRV9SR0IJCQkxNgorI2RlZmluZSBEUk1fTU9ERV9DT0xPUklNRVRSWV9EQ1Bf
UDNfUkdCCQkJMTcKKyNkZWZpbmUgRFJNX01PREVfQ09MT1JJTUVUUllfQlQ2MDFfWUNDCQkJMTgK
KyNkZWZpbmUgRFJNX01PREVfQ09MT1JJTUVUUllfRElDT01fUEFSVF8xNF9HUkFZU0NBTEUJMTkK
IAogLyoqCiAgKiBlbnVtIGRybV9idXNfZmxhZ3MgLSBidXNfZmxhZ3MgaW5mbyBmb3IgJmRybV9k
aXNwbGF5X2luZm8KLS0gCjIuMjMuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
