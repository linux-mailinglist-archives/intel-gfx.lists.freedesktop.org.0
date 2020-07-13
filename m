Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 31ED121E40A
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2020 01:51:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82E176E83D;
	Mon, 13 Jul 2020 23:51:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 817A46E83D
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Jul 2020 23:51:48 +0000 (UTC)
IronPort-SDR: lv1zO+8Cxnkm1yNeF9FopqW5MetgrMKTl+7m25s+2I8vvdZ2knv1x7toIrISo+AGz6na3XGO/I
 XXiTDQ40WmDQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9681"; a="136907615"
X-IronPort-AV: E=Sophos;i="5.75,349,1589266800"; d="scan'208";a="136907615"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2020 16:51:46 -0700
IronPort-SDR: MTtBQqEDtUQwZgLnTvEoWSpR7LrrsXFaL/EnbfnDDf68C/F9GV7JztL7UTtZsQWZ0q5R5MMA2O
 z3bYZPgBpS5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,349,1589266800"; d="scan'208";a="281571367"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-MOBL2.intel.com)
 ([10.24.14.51])
 by orsmga003.jf.intel.com with ESMTP; 13 Jul 2020 16:51:46 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 13 Jul 2020 16:53:33 -0700
Message-Id: <20200713235334.84263-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v5 1/2] drm/i915/display: Implement HOBL
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

SG91cnMgT2YgQmF0dGVyeSBMaWZlIGlzIGEgbmV3IEdFTjEyKyBwb3dlci1zYXZpbmcgZmVhdHVy
ZSB0aGF0IGFsbG93cwpzdXBwb3J0ZWQgbW90aGVyYm9hcmRzIHRvIHVzZSBhIHNwZWNpYWwgdm9s
dGFnZSBzd2luZyB0YWJsZSBmb3IgZURQCnBhbmVscyB0aGF0IHVzZXMgbGVzcyBwb3dlci4KClNv
IGhlcmUgaWYgc3VwcG9ydGVkIGJ5IEhXLCBPRU0gd2lsbCBzZXQgaXQgaW4gVkJUIGFuZCBpOTE1
IHdpbGwgdHJ5CnRvIHRyYWluIGxpbmsgd2l0aCBIT0JMIHZzd2luZyB0YWJsZSBpZiBsaW5rIHRy
YWluaW5nIGZhaWxzIGl0IGZhbGwKYmFjayB0byB0aGUgb3JpZ2luYWwgdGFibGUuCgppbnRlbF9k
ZGlfZHBfcHJlZW1waF9tYXgoKSB3YXMgb3B0aW1pemVkIHRvIG9ubHkgY2hlY2sgdGhlIEhPQkwg
ZmxhZwppbnN0ZWFkIG9mIGRvIHNvbWV0aGluZyBsaWtlIGlzIGRvbmUgaW4gaW50ZWxfZGRpX2Rw
X3ZvbHRhZ2VfbWF4KCkKYmVjYXVzZSBpdCBpcyBvbmx5IGNhbGxlZCBhZnRlciB0aGUgZmlyc3Qg
ZW50cnkgb2YgdGhlIHZvbHRhZ2Ugc3dpbmcKdGFibGUgd2FzIGxvYWRlZCBzbyB0aGUgSE9CTCBm
bGFnIGlzIHZhbGlkIGF0IHRoYXQgcG9pbnQuCgp2MzoKLSByZW1vdmVkIGEgZmV3IHBhcmFtZXRl
cnMgb2YgaWNsX2RkaV9jb21ib192c3dpbmdfcHJvZ3JhbSgpIHRoYXQKY2FuIGJlIHRha2VuIGZy
b20gZW5jb2RlcgoKdjQ6Ci0gdXNpbmcgdGhlIEhPQkwgdnN3aW5nIHRhYmxlIHVudGlsIHRyYWlu
aW5nIGZhaWxzIGNvbXBsZXRlbHkgKFZpbGxlKQoKdjU6Ci0gbm90IHJlZHVjaW5nIGxhbmUgb3Ig
bGluayByYXRlIHdoZW4gbGluayB0cmFpbmluZyBmYWlscyB3aXRoIEhPQkwKYWN0aXZlCi0gZHVw
bGljYXRlZCB0aGUgSE9CTCB2b2x0YWdlIHN3aW5nIGVudHJ5IHRvIG1hdGNoIERQIHNwZWMgcmVx
dWlyZW1lbnQKCkJTcGVjOiA0OTI5MQpCU3BlYzogNDkzOTkKQ2M6IFZpbGxlIFN5cmrDpGzDpCA8
dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+CkNjOiBBbmltZXNoIE1hbm5hIDxhbmltZXNo
Lm1hbm5hQGludGVsLmNvbT4KQ2M6IE1hbmFzaSBOYXZhcmUgPG1hbmFzaS5kLm5hdmFyZUBpbnRl
bC5jb20+ClNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFA
aW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMg
ICAgICB8IDQyICsrKysrKysrKysrKysrKysrKysKIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXlfdHlwZXMuaCAgICB8ICAyICsKIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rw
X2xpbmtfdHJhaW5pbmcuYyB8IDE5ICsrKysrKy0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9yZWcuaCAgICAgICAgICAgICAgIHwgIDIgKwogNCBmaWxlcyBjaGFuZ2VkLCA1OSBpbnNlcnRp
b25zKCspLCA2IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGRpLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RkaS5jCmluZGV4IDJjNDg0YjU1YmNkZi4uOTJhZTAzNjQ0MGZhIDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKQEAgLTcwNiw2ICs3MDYsMjkgQEAgc3RhdGljIGNv
bnN0IHN0cnVjdCBjbmxfZGRpX2J1Zl90cmFucyB0Z2xfY29tYm9fcGh5X2RkaV90cmFuc2xhdGlv
bnNfZHBfaGJyMltdID0KIAl7IDB4NiwgMHg3RiwgMHgzRiwgMHgwMCwgMHgwMCB9LAkvKiA5MDAg
ICA5MDAgICAgICAwLjAgICAqLwogfTsKIAorLyoKKyAqIENsb25lZCB0aGUgSE9CTCBlbnRyeSB0
byBjb21wbHkgd2l0aCB0aGUgdm9sdGFnZSBhbmQgcHJlLWVtcGhhc2lzIGVudHJpZXMKKyAqIHRo
YXQgRGlzcGxheVBvcnQgc3BlY2lmaWNhdGlvbiByZXF1aXJlcworICovCitzdGF0aWMgY29uc3Qg
c3RydWN0IGNubF9kZGlfYnVmX3RyYW5zIHRnbF9jb21ib19waHlfZGRpX3RyYW5zbGF0aW9uc19l
ZHBfaGJyMl9ob2JsW10gPSB7CisJCQkJCQkvKiBWUwlwcmUtZW1wCSovCisJeyAweDYsIDB4N0Ys
IDB4M0YsIDB4MDAsIDB4MDAgfSwJLyogMAkwCSovCisJeyAweDYsIDB4N0YsIDB4M0YsIDB4MDAs
IDB4MDAgfSwJLyogMAkxCSovCisJeyAweDYsIDB4N0YsIDB4M0YsIDB4MDAsIDB4MDAgfSwJLyog
MAkyCSovCisJeyAweDYsIDB4N0YsIDB4M0YsIDB4MDAsIDB4MDAgfSwJLyogMAkzCSovCisJeyAw
eDYsIDB4N0YsIDB4M0YsIDB4MDAsIDB4MDAgfSwJLyogMQkwCSovCisJeyAweDYsIDB4N0YsIDB4
M0YsIDB4MDAsIDB4MDAgfSwJLyogMQkxCSovCisJeyAweDYsIDB4N0YsIDB4M0YsIDB4MDAsIDB4
MDAgfSwJLyogMQkyCSovCisJeyAweDYsIDB4N0YsIDB4M0YsIDB4MDAsIDB4MDAgfSwJLyogMgkw
CSovCisJeyAweDYsIDB4N0YsIDB4M0YsIDB4MDAsIDB4MDAgfSwJLyogMgkxCSovCisJeyAweDYs
IDB4N0YsIDB4M0YsIDB4MDAsIDB4MDAgfSwJLyogMwkwCSovCit9OworCitzdGF0aWMgYm9vbCBp
c19ob2JsX2J1Zl90cmFucyhjb25zdCBzdHJ1Y3QgY25sX2RkaV9idWZfdHJhbnMgKnRhYmxlKQor
eworCXJldHVybiB0YWJsZSA9PSB0Z2xfY29tYm9fcGh5X2RkaV90cmFuc2xhdGlvbnNfZWRwX2hi
cjJfaG9ibDsKK30KKwogc3RhdGljIGNvbnN0IHN0cnVjdCBkZGlfYnVmX3RyYW5zICoKIGJkd19n
ZXRfYnVmX3RyYW5zX2VkcChzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwgaW50ICpuX2Vu
dHJpZXMpCiB7CkBAIC0xMDUwLDYgKzEwNzMsMTYgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBjbmxf
ZGRpX2J1Zl90cmFucyAqCiB0Z2xfZ2V0X2NvbWJvX2J1Zl90cmFucyhzdHJ1Y3QgaW50ZWxfZW5j
b2RlciAqZW5jb2RlciwgaW50IHR5cGUsIGludCByYXRlLAogCQkJaW50ICpuX2VudHJpZXMpCiB7
CisJaWYgKHR5cGUgPT0gSU5URUxfT1VUUFVUX0VEUCAmJiBkZXZfcHJpdi0+dmJ0LmVkcC5ob2Js
KSB7CisJCXN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAgPSBlbmNfdG9faW50ZWxfZHAoZW5jb2Rl
cik7CisKKwkJaWYgKCFpbnRlbF9kcC0+aG9ibF9mYWlsZWQgJiYgcmF0ZSA8PSA1NDAwMDApIHsK
KwkJCS8qIFNhbWUgdGFibGUgYXBwbGllcyB0byBUR0wsIFJLTCBhbmQgREcxICovCisJCQkqbl9l
bnRyaWVzID0gQVJSQVlfU0laRSh0Z2xfY29tYm9fcGh5X2RkaV90cmFuc2xhdGlvbnNfZWRwX2hi
cjJfaG9ibCk7CisJCQlyZXR1cm4gdGdsX2NvbWJvX3BoeV9kZGlfdHJhbnNsYXRpb25zX2VkcF9o
YnIyX2hvYmw7CisJCX0KKwl9CisKIAlpZiAodHlwZSA9PSBJTlRFTF9PVVRQVVRfSERNSSB8fCB0
eXBlID09IElOVEVMX09VVFBVVF9FRFApIHsKIAkJcmV0dXJuIGljbF9nZXRfY29tYm9fYnVmX3Ry
YW5zKGVuY29kZXIsIHR5cGUsIHJhdGUsIG5fZW50cmllcyk7CiAJfSBlbHNlIGlmIChyYXRlID4g
MjcwMDAwKSB7CkBAIC0yMzkyLDYgKzI0MjUsMTUgQEAgc3RhdGljIHZvaWQgaWNsX2RkaV9jb21i
b192c3dpbmdfcHJvZ3JhbShzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKIAkJbGV2ZWwg
PSBuX2VudHJpZXMgLSAxOwogCX0KIAorCWlmICh0eXBlID09IElOVEVMX09VVFBVVF9FRFApIHsK
KwkJc3RydWN0IGludGVsX2RwICppbnRlbF9kcCA9IGVuY190b19pbnRlbF9kcChlbmNvZGVyKTsK
KworCQl2YWwgPSBFRFA0SzJLX01PREVfT1ZSRF9FTiB8IEVEUDRLMktfTU9ERV9PVlJEX09QVElN
SVpFRDsKKwkJaW50ZWxfZHAtPmhvYmxfYWN0aXZlID0gaXNfaG9ibF9idWZfdHJhbnMoZGRpX3Ry
YW5zbGF0aW9ucyk7CisJCWludGVsX2RlX3JtdyhkZXZfcHJpdiwgSUNMX1BPUlRfQ0xfRFcxMChw
aHkpLCB2YWwsCisJCQkgICAgIGludGVsX2RwLT5ob2JsX2FjdGl2ZSA/IHZhbCA6IDApOworCX0K
KwogCS8qIFNldCBQT1JUX1RYX0RXNSAqLwogCXZhbCA9IGludGVsX2RlX3JlYWQoZGV2X3ByaXYs
IElDTF9QT1JUX1RYX0RXNV9MTjAocGh5KSk7CiAJdmFsICY9IH4oU0NBTElOR19NT0RFX1NFTF9N
QVNLIHwgUlRFUk1fU0VMRUNUX01BU0sgfApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaAppbmRleCBlOGY4MDkxNjFjNzUuLjVlNjYzNGI1
NWU4NCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5X3R5cGVzLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5X3R5cGVzLmgKQEAgLTEzNzUsNiArMTM3NSw4IEBAIHN0cnVjdCBpbnRlbF9kcCB7CiAKIAkv
KiBEaXNwbGF5IHN0cmVhbSBjb21wcmVzc2lvbiB0ZXN0aW5nICovCiAJYm9vbCBmb3JjZV9kc2Nf
ZW47CisKKwl1OCBob2JsX2ZhaWxlZCA6IDEsIGhvYmxfYWN0aXZlIDogMTsKIH07CiAKIGVudW0g
bHNwY29uX3ZlbmRvciB7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RwX2xpbmtfdHJhaW5pbmcuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHBfbGlua190cmFpbmluZy5jCmluZGV4IGEyM2VkNzI5MDg0My4uZjJjOGI1NmJlOWVh
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtf
dHJhaW5pbmcuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xp
bmtfdHJhaW5pbmcuYwpAQCAtNDEwLDEwICs0MTAsMTcgQEAgaW50ZWxfZHBfc3RhcnRfbGlua190
cmFpbihzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQogCQkgICAgaW50ZWxfY29ubmVjdG9yLT5i
YXNlLmJhc2UuaWQsCiAJCSAgICBpbnRlbF9jb25uZWN0b3ItPmJhc2UubmFtZSwKIAkJICAgIGlu
dGVsX2RwLT5saW5rX3JhdGUsIGludGVsX2RwLT5sYW5lX2NvdW50KTsKLQlpZiAoIWludGVsX2Rw
X2dldF9saW5rX3RyYWluX2ZhbGxiYWNrX3ZhbHVlcyhpbnRlbF9kcCwKLQkJCQkJCSAgICAgaW50
ZWxfZHAtPmxpbmtfcmF0ZSwKLQkJCQkJCSAgICAgaW50ZWxfZHAtPmxhbmVfY291bnQpKQotCQkv
KiBTY2hlZHVsZSBhIEhvdHBsdWcgVWV2ZW50IHRvIHVzZXJzcGFjZSB0byBzdGFydCBtb2Rlc2V0
ICovCi0JCXNjaGVkdWxlX3dvcmsoJmludGVsX2Nvbm5lY3Rvci0+bW9kZXNldF9yZXRyeV93b3Jr
KTsKLQlyZXR1cm47CisKKwlpZiAoaW50ZWxfZHAtPmhvYmxfYWN0aXZlKSB7CisJCWRybV9kYmdf
a21zKCZkcF90b19pOTE1KGludGVsX2RwKS0+ZHJtLAorCQkJICAgICJMaW5rIFRyYWluaW5nIGZh
aWxlZCB3aXRoIEhPQkwgYWN0aXZlLCBub3QgZW5hYmxpbmcgaXQgZnJvbSBub3cgb24iKTsKKwkJ
aW50ZWxfZHAtPmhvYmxfZmFpbGVkID0gdHJ1ZTsKKwl9IGVsc2UgaWYgKGludGVsX2RwX2dldF9s
aW5rX3RyYWluX2ZhbGxiYWNrX3ZhbHVlcyhpbnRlbF9kcCwKKwkJCQkJCQkgICBpbnRlbF9kcC0+
bGlua19yYXRlLAorCQkJCQkJCSAgIGludGVsX2RwLT5sYW5lX2NvdW50KSkgeworCQlyZXR1cm47
CisJfQorCisJLyogU2NoZWR1bGUgYSBIb3RwbHVnIFVldmVudCB0byB1c2Vyc3BhY2UgdG8gc3Rh
cnQgbW9kZXNldCAqLworCXNjaGVkdWxlX3dvcmsoJmludGVsX2Nvbm5lY3Rvci0+bW9kZXNldF9y
ZXRyeV93b3JrKTsKIH0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVn
LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCmluZGV4IDg2YTIzY2VkMDUxYi4u
ZWExNjkzMWMwZmE0IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5o
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKQEAgLTE4OTgsNiArMTg5OCw4
IEBAIHN0YXRpYyBpbmxpbmUgYm9vbCBpOTE1X21taW9fcmVnX3ZhbGlkKGk5MTVfcmVnX3QgcmVn
KQogI2RlZmluZSAgUFdSX0RPV05fTE5fM18xXzAJCSgweGIgPDwgNCkKICNkZWZpbmUgIFBXUl9E
T1dOX0xOX01BU0sJCSgweGYgPDwgNCkKICNkZWZpbmUgIFBXUl9ET1dOX0xOX1NISUZUCQk0Cisj
ZGVmaW5lICBFRFA0SzJLX01PREVfT1ZSRF9FTgkJKDEgPDwgMykKKyNkZWZpbmUgIEVEUDRLMktf
TU9ERV9PVlJEX09QVElNSVpFRAkoMSA8PCAyKQogCiAjZGVmaW5lIElDTF9QT1JUX0NMX0RXMTIo
cGh5KQkJX01NSU8oX0lDTF9QT1JUX0NMX0RXKDEyLCBwaHkpKQogI2RlZmluZSAgIElDTF9MQU5F
X0VOQUJMRV9BVVgJCSgxIDw8IDApCi0tIAoyLjI3LjAKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
