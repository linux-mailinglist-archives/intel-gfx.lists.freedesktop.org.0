Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F40F7284DFC
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Oct 2020 16:34:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56E47898FD;
	Tue,  6 Oct 2020 14:34:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EACA46E4A5
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Oct 2020 14:34:23 +0000 (UTC)
IronPort-SDR: r+LH/0XNcMRMbC82Q0jZvGtFrk+d8bJ8bXWZKR/QcFq3XRjCeFmW1ggk7ee6nll2Fy/TYEcXob
 6YjpJYv9bdqA==
X-IronPort-AV: E=McAfee;i="6000,8403,9765"; a="163745206"
X-IronPort-AV: E=Sophos;i="5.77,343,1596524400"; d="scan'208";a="163745206"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2020 07:34:05 -0700
IronPort-SDR: I6hvJuogsvGwldg9HklVVLWpzsflXtX7KPS18dchP/MF5t829je8Fua9OmivghAAdWNKA014bI
 /QgCAwmkFbhQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,343,1596524400"; d="scan'208";a="353504923"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 06 Oct 2020 07:34:01 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 06 Oct 2020 17:34:00 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  6 Oct 2020 17:33:33 +0300
Message-Id: <20201006143349.5561-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201006143349.5561-1-ville.syrjala@linux.intel.com>
References: <20201006143349.5561-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 04/20] drm/i915: Give DDI encoders even better
 names
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkxl
dCdzIHBpbXAgdGhlIERESSBlbmNvZGVyLT5uYW1lIHRvIHJlZmxlY3Qgd2hhdCB0aGUgc3BlYyBj
YWxscyB0aGVtLgpJZS4gb24gcHJlLXRnbCBEREkgQS1GLCBvbiB0Z2wrIERESSBBLUMgb3IgRERJ
IFRDMS02LgoKQWxzbyBzaW5jZSBlYWNoIGVuY29kZXIgaXMgcmVhbGx5IGEgY29tYmluYXRpb24g
b2YgdGhlIERESSBhbmQgdGhlIFBIWQp3ZSBpbmNsdWRlIHRoZSBQSFkgbmFtZSBhcyB3ZWxsLgoK
SUNMIGlzIGEgYml0IHNwZWNpYWwgc2luY2UgaXQgYWxyZWFkeSBoYXMgdGhlIHR3byBkaWZmZXJl
bnQgdHlwZXMKb2YgRERJcyAoY29tYm8gb3IgVEMpIGJ1dCBpdCBzdGlsbCBjYWxscyB0aGVtIGp1
c3QgRERJIEEtRiByZWdhcmxlc3MKb2YgdGhlIHR5cGUuIEZvciB0aGF0IGxldCdzIGFkZCBhbiBl
eHRyYSAiKFRDKSIgbm90ZSB0byByZW1pbmQKaXMgd2hpY2ggdHlwZSBvZiBEREkgaXQgcmVhbGx5
IGlzLgoKVGhlIGNvZGUgaXMgZGFybiB1Z2x5LCBidXQgbm90IHN1cmUgdGhlcmUncyBtdWNoIHdl
IGNhbiBkbyBhYm91dCBpdC4KClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUu
c3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kZGkuYyB8IDI3ICsrKysrKysrKysrKysrKysrKysrKystLQogMSBmaWxlIGNoYW5n
ZWQsIDI1IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGRpLmMKaW5kZXggZDFlNGNiMDRlOTBkLi41YTMwYmM2YTZjNDkgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYwpAQCAtNTE3MSw4ICs1MTcx
LDMxIEBAIHZvaWQgaW50ZWxfZGRpX2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9w
cml2LCBlbnVtIHBvcnQgcG9ydCkKIAogCWVuY29kZXIgPSAmZGlnX3BvcnQtPmJhc2U7CiAKLQlk
cm1fZW5jb2Rlcl9pbml0KCZkZXZfcHJpdi0+ZHJtLCAmZW5jb2Rlci0+YmFzZSwgJmludGVsX2Rk
aV9mdW5jcywKLQkJCSBEUk1fTU9ERV9FTkNPREVSX1RNRFMsICJEREkgJWMiLCBwb3J0X25hbWUo
cG9ydCkpOworCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEyKSB7CisJCWVudW0gdGNfcG9y
dCB0Y19wb3J0ID0gaW50ZWxfcG9ydF90b190YyhkZXZfcHJpdiwgcG9ydCk7CisKKwkJZHJtX2Vu
Y29kZXJfaW5pdCgmZGV2X3ByaXYtPmRybSwgJmVuY29kZXItPmJhc2UsICZpbnRlbF9kZGlfZnVu
Y3MsCisJCQkJIERSTV9NT0RFX0VOQ09ERVJfVE1EUywKKwkJCQkgIkRESSAlcyVjL1BIWSAlcyVj
IiwKKwkJCQkgcG9ydCA+PSBQT1JUX1RDMSA/ICJUQyIgOiAiIiwKKwkJCQkgcG9ydCA+PSBQT1JU
X1RDMSA/IHBvcnRfbmFtZShwb3J0KSA6IHBvcnQgLSBQT1JUX1RDMSArICcxJywKKwkJCQkgdGNf
cG9ydCAhPSBUQ19QT1JUX05PTkUgPyAiVEMiIDogIiIsCisJCQkJIHRjX3BvcnQgIT0gVENfUE9S
VF9OT05FID8gcGh5X25hbWUocGh5KSA6IHRjX3BvcnQgLSBUQ19QT1JUX1RDMSArICcxJyk7CisJ
fSBlbHNlIGlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDExKSB7CisJCWVudW0gdGNfcG9ydCB0
Y19wb3J0ID0gaW50ZWxfcG9ydF90b190YyhkZXZfcHJpdiwgcG9ydCk7CisKKwkJZHJtX2VuY29k
ZXJfaW5pdCgmZGV2X3ByaXYtPmRybSwgJmVuY29kZXItPmJhc2UsICZpbnRlbF9kZGlfZnVuY3Ms
CisJCQkJIERSTV9NT0RFX0VOQ09ERVJfVE1EUywKKwkJCQkgIkRESSAlYyVzL1BIWSAlcyVjIiwK
KwkJCQkgcG9ydF9uYW1lKHBvcnQpLAorCQkJCSBwb3J0ID49IFBPUlRfQyA/ICIgKFRDKSIgOiAi
IiwKKwkJCQkgdGNfcG9ydCAhPSBUQ19QT1JUX05PTkUgPyAiVEMiIDogIiIsCisJCQkJIHRjX3Bv
cnQgIT0gVENfUE9SVF9OT05FID8gcGh5X25hbWUocGh5KSA6IHRjX3BvcnQgLSBUQ19QT1JUX1RD
MSArICcxJyk7CisJfSBlbHNlIHsKKwkJZHJtX2VuY29kZXJfaW5pdCgmZGV2X3ByaXYtPmRybSwg
JmVuY29kZXItPmJhc2UsICZpbnRlbF9kZGlfZnVuY3MsCisJCQkJIERSTV9NT0RFX0VOQ09ERVJf
VE1EUywKKwkJCQkgIkRESSAlYy9QSFkgJWMiLCBwb3J0X25hbWUocG9ydCksICBwaHlfbmFtZShw
aHkpKTsKKwl9CiAKIAltdXRleF9pbml0KCZkaWdfcG9ydC0+aGRjcF9tdXRleCk7CiAJZGlnX3Bv
cnQtPm51bV9oZGNwX3N0cmVhbXMgPSAwOwotLSAKMi4yNi4yCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
