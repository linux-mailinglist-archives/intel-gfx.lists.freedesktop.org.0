Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B4AEFA64CF
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Sep 2019 11:12:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73A638959D;
	Tue,  3 Sep 2019 09:12:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0910D89533;
 Tue,  3 Sep 2019 09:12:46 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Sep 2019 02:12:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,462,1559545200"; d="scan'208";a="207021841"
Received: from helsinki.fi.intel.com ([10.237.66.149])
 by fmsmga004.fm.intel.com with ESMTP; 03 Sep 2019 02:12:43 -0700
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 Sep 2019 12:12:30 +0300
Message-Id: <20190903091235.32304-3-gwan-gyeong.mun@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190903091235.32304-1-gwan-gyeong.mun@intel.com>
References: <20190903091235.32304-1-gwan-gyeong.mun@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 2/7] drm/i915/dp: Add support of BT.2020
 Colorimetry to DP MSA
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

V2hlbiBCVC4yMDIwIENvbG9yaW1ldHJ5IG91dHB1dCBpcyB1c2VkIGZvciBEUCwgd2Ugc2hvdWxk
IHByb2dyYW0gQlQuMjAyMApDb2xvcmltZXRyeSB0byBNU0EgYW5kIFZTQyBTRFAuIEl0IGFkZHMg
b3V0cHV0X2NvbG9yc3BhY2UgdG8KaW50ZWxfY3J0Y19zdGF0ZSBzdHJ1Y3QgYXMgYSBwbGFjZSBo
b2xkZXIgb2YgcGlwZSdzIG91dHB1dCBjb2xvcnNwYWNlLgpJbiBvcmRlciB0byBkaXN0aW5ndWlz
aCBuZWVkZWQgY29sb3JpbWV0cnkgZm9yIFZTQyBTRFAsIGl0IGFkZHMKaW50ZWxfZHBfbmVlZHNf
dnNjX3NkcCBmdW5jdGlvbi4KSWYgdGhlIG91dHB1dCBjb2xvcnNwYWNlIHJlcXVpcmVzIHZzYyBz
ZHAgb3Igb3V0cHV0IGZvcm1hdCBpcyBZQ2JDciA0OjI6MCwKaXQgdXNlcyBNU0Egd2l0aCBWU0Mg
U0RQLgoKQXMgcGVyIERQIDEuNGEgc3BlYyBzZWN0aW9uIDIuMi40LjMgW01TQSBGaWVsZCBmb3Ig
SW5kaWNhdGlvbiBvZgpDb2xvciBFbmNvZGluZyBGb3JtYXQgYW5kIENvbnRlbnQgQ29sb3IgR2Ft
dXRdIHdoaWxlIHNlbmRpbmcKQlQuMjAyMCBDb2xvcmltZXRyeSBzaWduYWxzIHdlIHNob3VsZCBw
cm9ncmFtIE1TQSBNSVNDMSBmaWVsZHMgd2hpY2gKaW5kaWNhdGUgVlNDIFNEUCBmb3IgdGhlIFBp
eGVsIEVuY29kaW5nL0NvbG9yaW1ldHJ5IEZvcm1hdC4KCnYyOiBSZW1vdmUgdXNlbGVzcyBwYXJl
bnRoZXNlcwp2MzogQWRkcmVzc2VkIHJldmlldyBjb21tZW50cyBmcm9tIFZpbGxlCiAgICAtIElu
IG9yZGVyIHRvIGNoZWNraW5nIG91dHB1dCBmb3JtYXQgYW5kIG91dHB1dCBjb2xvcnNwYWNlIG9u
CiAgICAgIGludGVsX2RwX25lZWRzX3ZzY19zZHAoKSwgaXQgcGFzc2VzIGVudGlyZSBpbnRlbF9j
cnRjX3N0YXRlIHN0cnVjdAogICAgICB2YWx1ZS4KICAgIC0gUmVtb3ZlIGEgcG9pbnRsZXNzIHZh
cmlhYmxlLgoKU2lnbmVkLW9mZi1ieTogR3dhbi1neWVvbmcgTXVuIDxnd2FuLWd5ZW9uZy5tdW5A
aW50ZWwuY29tPgpSZXZpZXdlZC1ieTogVW1hIFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVsLmNv
bT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jICAgICAgfCAg
NyArKystLQogLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oICAgIHwg
IDMgKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyAgICAgICB8IDI5
ICsrKysrKysrKysrKysrKysrKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHAuaCAgICAgICB8ICAxICsKIDQgZmlsZXMgY2hhbmdlZCwgMzYgaW5zZXJ0aW9ucygrKSwgNCBk
ZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RkaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYwppbmRl
eCA0OWMzNWFmNTgzZjkuLjg3ZGM1YTE5Y2I3YiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RkaS5jCkBAIC0xNzM3LDExICsxNzM3LDEyIEBAIHZvaWQgaW50ZWxfZGRpX3Nl
dF9waXBlX3NldHRpbmdzKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRl
KQogCS8qCiAJICogQXMgcGVyIERQIDEuNGEgc3BlYyBzZWN0aW9uIDIuMi40LjMgW01TQSBGaWVs
ZCBmb3IgSW5kaWNhdGlvbgogCSAqIG9mIENvbG9yIEVuY29kaW5nIEZvcm1hdCBhbmQgQ29udGVu
dCBDb2xvciBHYW11dF0gd2hpbGUgc2VuZGluZwotCSAqIFlDQkNSIDQyMCBzaWduYWxzIHdlIHNo
b3VsZCBwcm9ncmFtIE1TQSBNSVNDMSBmaWVsZHMgd2hpY2gKLQkgKiBpbmRpY2F0ZSBWU0MgU0RQ
IGZvciB0aGUgUGl4ZWwgRW5jb2RpbmcvQ29sb3JpbWV0cnkgRm9ybWF0LgorCSAqIFlDQkNSIDQy
MCwgSERSIEJULjIwMjAgc2lnbmFscyB3ZSBzaG91bGQgcHJvZ3JhbSBNU0EgTUlTQzEgZmllbGRz
CisJICogd2hpY2ggaW5kaWNhdGUgVlNDIFNEUCBmb3IgdGhlIFBpeGVsIEVuY29kaW5nL0NvbG9y
aW1ldHJ5IEZvcm1hdC4KIAkgKi8KLQlpZiAoY3J0Y19zdGF0ZS0+b3V0cHV0X2Zvcm1hdCA9PSBJ
TlRFTF9PVVRQVVRfRk9STUFUX1lDQkNSNDIwKQorCWlmIChpbnRlbF9kcF9uZWVkc192c2Nfc2Rw
KGNydGNfc3RhdGUpKQogCQl0ZW1wIHw9IFRSQU5TX01TQV9VU0VfVlNDX1NEUDsKKwogCUk5MTVf
V1JJVEUoVFJBTlNfTVNBX01JU0MoY3B1X3RyYW5zY29kZXIpLCB0ZW1wKTsKIH0KIApkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaAppbmRl
eCA2MTI3N2E4N2RiZTcuLmM2MmJhZDM2OWM4ZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgKQEAgLTk3MSw2ICs5NzEsOSBAQCBz
dHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSB7CiAJLyogT3V0cHV0IGZvcm1hdCBSR0IvWUNCQ1IgZXRj
ICovCiAJZW51bSBpbnRlbF9vdXRwdXRfZm9ybWF0IG91dHB1dF9mb3JtYXQ7CiAKKwkvKiBPdXRw
dXQgY29sb3JzcGFjZSBzUkdCL0JULjIwMjAgZXRjICovCisJdTMyIG91dHB1dF9jb2xvcnNwYWNl
OworCiAJLyogT3V0cHV0IGRvd24gc2NhbGluZyBpcyBkb25lIGluIExTUENPTiBkZXZpY2UgKi8K
IAlib29sIGxzcGNvbl9kb3duc2FtcGxpbmc7CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHAuYwppbmRleCA3NzZiZTNlMTZhYzYuLjZiNzU4N2M3MWU0OSAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwpAQCAtMjE4Nyw2ICsyMTg3LDggQEAgaW50ZWxf
ZHBfY29tcHV0ZV9jb25maWcoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCiAJCXBpcGVf
Y29uZmlnLT5oYXNfcGNoX2VuY29kZXIgPSB0cnVlOwogCiAJcGlwZV9jb25maWctPm91dHB1dF9m
b3JtYXQgPSBJTlRFTF9PVVRQVVRfRk9STUFUX1JHQjsKKwlwaXBlX2NvbmZpZy0+b3V0cHV0X2Nv
bG9yc3BhY2UgPSBpbnRlbF9jb25uX3N0YXRlLT5iYXNlLmNvbG9yc3BhY2U7CisKIAlpZiAobHNw
Y29uLT5hY3RpdmUpCiAJCWxzcGNvbl95Y2JjcjQyMF9jb25maWcoJmludGVsX2Nvbm5lY3Rvci0+
YmFzZSwgcGlwZV9jb25maWcpOwogCWVsc2UKQEAgLTQ0NDUsNiArNDQ0NywzMSBAQCB1OCBpbnRl
bF9kcF9kc2NfZ2V0X3NsaWNlX2NvdW50KHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsCiAJcmV0
dXJuIDA7CiB9CiAKK2Jvb2wKK2ludGVsX2RwX25lZWRzX3ZzY19zZHAoY29uc3Qgc3RydWN0IGlu
dGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCit7CisJLyoKKwkgKiBBcyBwZXIgRFAgMS40YSBz
cGVjIHNlY3Rpb24gMi4yLjQuMyBbTVNBIEZpZWxkIGZvciBJbmRpY2F0aW9uCisJICogb2YgQ29s
b3IgRW5jb2RpbmcgRm9ybWF0IGFuZCBDb250ZW50IENvbG9yIEdhbXV0XSwgaW4gb3JkZXIgdG8K
KwkgKiBzZW5kaW5nIFlDQkNSIDQyMCBvciBIRFIgQlQuMjAyMCBzaWduYWxzIHdlIHNob3VsZCB1
c2UgRFAgVlNDIFNEUC4KKwkgKi8KKwlpZiAoY3J0Y19zdGF0ZS0+b3V0cHV0X2Zvcm1hdCA9PSBJ
TlRFTF9PVVRQVVRfRk9STUFUX1lDQkNSNDIwKQorCQlyZXR1cm4gdHJ1ZTsKKworCXN3aXRjaCAo
Y3J0Y19zdGF0ZS0+b3V0cHV0X2NvbG9yc3BhY2UpIHsKKwljYXNlIERSTV9NT0RFX0NPTE9SSU1F
VFJZX1NZQ0NfNjAxOgorCWNhc2UgRFJNX01PREVfQ09MT1JJTUVUUllfT1BZQ0NfNjAxOgorCWNh
c2UgRFJNX01PREVfQ09MT1JJTUVUUllfQlQyMDIwX1lDQzoKKwljYXNlIERSTV9NT0RFX0NPTE9S
SU1FVFJZX0JUMjAyMF9SR0I6CisJY2FzZSBEUk1fTU9ERV9DT0xPUklNRVRSWV9CVDIwMjBfQ1lD
QzoKKwkJcmV0dXJuIHRydWU7CisJZGVmYXVsdDoKKwkJYnJlYWs7CisJfQorCisJcmV0dXJuIGZh
bHNlOworfQorCiBzdGF0aWMgdm9pZAogaW50ZWxfZHBfc2V0dXBfdnNjX3NkcChzdHJ1Y3QgaW50
ZWxfZHAgKmludGVsX2RwLAogCQkgICAgICAgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUg
KmNydGNfc3RhdGUsCkBAIC00NTczLDcgKzQ2MDAsNyBAQCB2b2lkIGludGVsX2RwX3ZzY19lbmFi
bGUoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwKIAkJCSBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0
Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKIAkJCSBjb25zdCBzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9zdGF0
ZSAqY29ubl9zdGF0ZSkKIHsKLQlpZiAoY3J0Y19zdGF0ZS0+b3V0cHV0X2Zvcm1hdCAhPSBJTlRF
TF9PVVRQVVRfRk9STUFUX1lDQkNSNDIwKQorCWlmICghaW50ZWxfZHBfbmVlZHNfdnNjX3NkcChj
cnRjX3N0YXRlKSkKIAkJcmV0dXJuOwogCiAJaW50ZWxfZHBfc2V0dXBfdnNjX3NkcChpbnRlbF9k
cCwgY3J0Y19zdGF0ZSwgY29ubl9zdGF0ZSk7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RwLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RwLmgKaW5kZXggYmUxM2NiMzk1ZWY4Li44Nzg4M2QwZDU5NzcgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuaAorKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmgKQEAgLTExMiw2ICsxMTIsNyBAQCBib29sIGludGVs
X2RwX3JlYWRfZHBjZChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKTsKIGJvb2wgaW50ZWxfZHBf
Z2V0X2NvbG9yaW1ldHJ5X3N0YXR1cyhzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKTsKIGludCBp
bnRlbF9kcF9saW5rX3JlcXVpcmVkKGludCBwaXhlbF9jbG9jaywgaW50IGJwcCk7CiBpbnQgaW50
ZWxfZHBfbWF4X2RhdGFfcmF0ZShpbnQgbWF4X2xpbmtfY2xvY2ssIGludCBtYXhfbGFuZXMpOwor
Ym9vbCBpbnRlbF9kcF9uZWVkc192c2Nfc2RwKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRl
ICpjcnRjX3N0YXRlKTsKIHZvaWQgaW50ZWxfZHBfdnNjX2VuYWJsZShzdHJ1Y3QgaW50ZWxfZHAg
KmludGVsX2RwLAogCQkJIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRl
LAogCQkJIGNvbnN0IHN0cnVjdCBkcm1fY29ubmVjdG9yX3N0YXRlICpjb25uX3N0YXRlKTsKLS0g
CjIuMjMuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
