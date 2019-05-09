Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CC80318D94
	for <lists+intel-gfx@lfdr.de>; Thu,  9 May 2019 18:00:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD37689C84;
	Thu,  9 May 2019 16:00:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4529E89C84
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 May 2019 16:00:25 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 May 2019 09:00:23 -0700
X-ExtLoop1: 1
Received: from linuxpresi1-desktop.iind.intel.com ([10.223.74.121])
 by orsmga008.jf.intel.com with ESMTP; 09 May 2019 09:00:21 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  9 May 2019 21:57:19 +0530
Message-Id: <1557419239-15289-1-git-send-email-uma.shankar@intel.com>
X-Mailer: git-send-email 1.9.1
Subject: [Intel-gfx] [v3] drm/i915/icl: Handle YCbCr to RGB conversion for
 BT2020 case
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
Cc: ville.syrjala@intel.com, maarten.lankhorst@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Q3VycmVudGx5IGlucHV0IGNzYyBmb3IgWUNiQ1IgdG8gUkdCIGNvbnZlcnNpb24gaGFuZGxlcyBv
bmx5CkJUNjAxIGFuZCBCdDcwOS4gRXh0ZW5kaW5nIGl0IHRvIHN1cHBvcnQgQlQyMDIwIGFzIHdl
bGwuCgp2MjogRml4ZWQgdGhlIGNvLWVmZmljaWVudHMgZm9yIExSIHRvIEZSIGNvbnZlcnNpb24s
CmFzIHN1Z2dlc3RlZCBieSBWaWxsZS4KCnYzOiBGaXhlZCBZIFByZS1vZmZzZXQgaW4gY2FzZSBv
ZiBGdWxsIFJhbmdlIFlDYkNyIGFzIHN1Z2dlc3RlZApieSBWaWxsZS4KClNpZ25lZC1vZmYtYnk6
IFVtYSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IFNoYXNo
YW5rIFNoYXJtYSA8c2hhc2hhbmsuc2hhcm1hQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF9zcHJpdGUuYyB8IDMxICsrKysrKysrKysrKysrKysrKysrKysrKysrKysr
LS0KIDEgZmlsZSBjaGFuZ2VkLCAyOSBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3Nwcml0ZS5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaW50ZWxfc3ByaXRlLmMKaW5kZXggMjkxM2U4OS4uYzljOTcwZiAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfc3ByaXRlLmMKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaW50ZWxfc3ByaXRlLmMKQEAgLTQzMyw2ICs0MzMsMTggQEAgaW50IGludGVs
X3BsYW5lX2NoZWNrX3NyY19jb29yZGluYXRlcyhzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKnBs
YW5lX3N0YXRlKQogCQkJMHg5RUY4LCAweDc4MDAsIDB4QUJGOCwKIAkJCTB4MCwgMHg3ODAwLCAg
MHg3RUQ4LAogCQl9LAorCQkvKgorCQkgKiBCVC4yMDIwIGZ1bGwgcmFuZ2UgWUNiQ3IgLT4gZnVs
bCByYW5nZSBSR0IKKwkJICogVGhlIG1hdHJpeCByZXF1aXJlZCBpcyA6CisJCSAqIFsxLjAwMCwg
MC4wMDAsIDEuNDc0LAorCQkgKiAgMS4wMDAsIC0wLjE2NDUsIC0wLjU3MTMsCisJCSAqICAxLjAw
MCwgMS44ODE0LCAwLjAwMDBdCisJCSAqLworCQlbRFJNX0NPTE9SX1lDQkNSX0JUMjAyMF0gPSB7
CisJCQkweDdCQzgsIDB4NzgwMCwgMHgwLAorCQkJMHg4OTI4LCAweDc4MDAsIDB4QUE4OCwKKwkJ
CTB4MCwgMHg3ODAwLCAweDdGMTAsCisJCX0sCiAJfTsKIAogCS8qIE1hdHJpeCBmb3IgTGltaXRl
ZCBSYW5nZSB0byBGdWxsIFJhbmdlIENvbnZlcnNpb24gKi8KQEAgLTQ2MSw2ICs0NzMsMTggQEAg
aW50IGludGVsX3BsYW5lX2NoZWNrX3NyY19jb29yZGluYXRlcyhzdHJ1Y3QgaW50ZWxfcGxhbmVf
c3RhdGUgKnBsYW5lX3N0YXRlKQogCQkJMHg4ODg4LCAweDc5MTgsIDB4QURBOCwKIAkJCTB4MCwg
MHg3OTE4LCAgMHg2ODcwLAogCQl9LAorCQkvKgorCQkgKiBCVC4yMDIwIExpbWl0ZWQgcmFuZ2Ug
WUNiQ3IgLT4gZnVsbCByYW5nZSBSR0IKKwkJICogVGhlIG1hdHJpeCByZXF1aXJlZCBpcyA6CisJ
CSAqIFsxLjE2NCwgMC4wMDAsIDEuNjc4LAorCQkgKiAgMS4xNjQsIC0wLjE4NzMsIC0wLjY1MDQs
CisJCSAqICAxLjE2NCwgMi4xNDE3LCAwLjAwMDBdCisJCSAqLworCQlbRFJNX0NPTE9SX1lDQkNS
X0JUMjAyMF0gPSB7CisJCQkweDdENzAsIDB4Nzk1MCwgMHgwLAorCQkJMHg4QTY4LCAweDc5NTAs
IDB4QUMwMCwKKwkJCTB4MCwgMHg3OTUwLCAweDY4OTAsCisJCX0sCiAJfTsKIAljb25zdCB1MTYg
KmNzYzsKIApAQCAtNDgxLDggKzUwNSwxMSBAQCBpbnQgaW50ZWxfcGxhbmVfY2hlY2tfc3JjX2Nv
b3JkaW5hdGVzKHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAqcGxhbmVfc3RhdGUpCiAKIAlJOTE1
X1dSSVRFX0ZXKFBMQU5FX0lOUFVUX0NTQ19QUkVPRkYocGlwZSwgcGxhbmVfaWQsIDApLAogCQkg
ICAgICBQUkVPRkZfWVVWX1RPX1JHQl9ISSk7Ci0JSTkxNV9XUklURV9GVyhQTEFORV9JTlBVVF9D
U0NfUFJFT0ZGKHBpcGUsIHBsYW5lX2lkLCAxKSwKLQkJICAgICAgUFJFT0ZGX1lVVl9UT19SR0Jf
TUUpOworCWlmIChwbGFuZV9zdGF0ZS0+YmFzZS5jb2xvcl9yYW5nZSA9PSBEUk1fQ09MT1JfWUNC
Q1JfRlVMTF9SQU5HRSkKKwkJSTkxNV9XUklURV9GVyhQTEFORV9JTlBVVF9DU0NfUFJFT0ZGKHBp
cGUsIHBsYW5lX2lkLCAxKSwgMCk7CisJZWxzZQorCQlJOTE1X1dSSVRFX0ZXKFBMQU5FX0lOUFVU
X0NTQ19QUkVPRkYocGlwZSwgcGxhbmVfaWQsIDEpLAorCQkJICAgICAgUFJFT0ZGX1lVVl9UT19S
R0JfTUUpOwogCUk5MTVfV1JJVEVfRlcoUExBTkVfSU5QVVRfQ1NDX1BSRU9GRihwaXBlLCBwbGFu
ZV9pZCwgMiksCiAJCSAgICAgIFBSRU9GRl9ZVVZfVE9fUkdCX0xPKTsKIAlJOTE1X1dSSVRFX0ZX
KFBMQU5FX0lOUFVUX0NTQ19QT1NUT0ZGKHBpcGUsIHBsYW5lX2lkLCAwKSwgMHgwKTsKLS0gCjEu
OS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
