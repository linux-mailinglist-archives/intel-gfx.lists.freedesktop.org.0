Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 75C0429D2A0
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Oct 2020 22:33:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC9FC6E5A2;
	Wed, 28 Oct 2020 21:33:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D7EE6E595
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Oct 2020 21:33:35 +0000 (UTC)
IronPort-SDR: aW+z87cLZAY/uRYXadKFeL84Dl+cJ04w6G6Huxwe3WCgARboxXDWTENEyi8ZEizysUG+l2+7qD
 15uzHGhLf9Xw==
X-IronPort-AV: E=McAfee;i="6000,8403,9788"; a="168440909"
X-IronPort-AV: E=Sophos;i="5.77,428,1596524400"; d="scan'208";a="168440909"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2020 14:33:34 -0700
IronPort-SDR: VxpbJILnsdnpPD7Jk5hkb/3vwWpB7KBVIR4GtrJ/Vbk3ZyROfqe1DwHxoDTNmFVyakyaCmyydJ
 8+AQbgXDrCQw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,428,1596524400"; d="scan'208";a="361265928"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 28 Oct 2020 14:33:32 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 28 Oct 2020 23:33:31 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 28 Oct 2020 23:33:07 +0200
Message-Id: <20201028213323.5423-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201028213323.5423-1-ville.syrjala@linux.intel.com>
References: <20201028213323.5423-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 03/19] drm/i915: Give DDI encoders even
 better names
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
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
IGNhbiBkbyBhYm91dCBpdC4KClJldmlld2VkLWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRl
bWFyY2hpQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5z
eXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RkaS5jIHwgMjcgKysrKysrKysrKysrKysrKysrKysrKy0tCiAxIGZpbGUgY2hhbmdl
ZCwgMjUgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kZGkuYwppbmRleCAyNDI0NTE1N2RjYjkuLjE5YjE2NTE3YTUwMiAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYworKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCkBAIC01MTc0LDggKzUxNzQs
MzEgQEAgdm9pZCBpbnRlbF9kZGlfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYsIGVudW0gcG9ydCBwb3J0KQogCiAJZW5jb2RlciA9ICZkaWdfcG9ydC0+YmFzZTsKIAotCWRy
bV9lbmNvZGVyX2luaXQoJmRldl9wcml2LT5kcm0sICZlbmNvZGVyLT5iYXNlLCAmaW50ZWxfZGRp
X2Z1bmNzLAotCQkJIERSTV9NT0RFX0VOQ09ERVJfVE1EUywgIkRESSAlYyIsIHBvcnRfbmFtZShw
b3J0KSk7CisJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTIpIHsKKwkJZW51bSB0Y19wb3J0
IHRjX3BvcnQgPSBpbnRlbF9wb3J0X3RvX3RjKGRldl9wcml2LCBwb3J0KTsKKworCQlkcm1fZW5j
b2Rlcl9pbml0KCZkZXZfcHJpdi0+ZHJtLCAmZW5jb2Rlci0+YmFzZSwgJmludGVsX2RkaV9mdW5j
cywKKwkJCQkgRFJNX01PREVfRU5DT0RFUl9UTURTLAorCQkJCSAiRERJICVzJWMvUEhZICVzJWMi
LAorCQkJCSBwb3J0ID49IFBPUlRfVEMxID8gIlRDIiA6ICIiLAorCQkJCSBwb3J0ID49IFBPUlRf
VEMxID8gcG9ydF9uYW1lKHBvcnQpIDogcG9ydCAtIFBPUlRfVEMxICsgJzEnLAorCQkJCSB0Y19w
b3J0ICE9IFRDX1BPUlRfTk9ORSA/ICJUQyIgOiAiIiwKKwkJCQkgdGNfcG9ydCAhPSBUQ19QT1JU
X05PTkUgPyBwaHlfbmFtZShwaHkpIDogdGNfcG9ydCAtIFRDX1BPUlRfMSArICcxJyk7CisJfSBl
bHNlIGlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDExKSB7CisJCWVudW0gdGNfcG9ydCB0Y19w
b3J0ID0gaW50ZWxfcG9ydF90b190YyhkZXZfcHJpdiwgcG9ydCk7CisKKwkJZHJtX2VuY29kZXJf
aW5pdCgmZGV2X3ByaXYtPmRybSwgJmVuY29kZXItPmJhc2UsICZpbnRlbF9kZGlfZnVuY3MsCisJ
CQkJIERSTV9NT0RFX0VOQ09ERVJfVE1EUywKKwkJCQkgIkRESSAlYyVzL1BIWSAlcyVjIiwKKwkJ
CQkgcG9ydF9uYW1lKHBvcnQpLAorCQkJCSBwb3J0ID49IFBPUlRfQyA/ICIgKFRDKSIgOiAiIiwK
KwkJCQkgdGNfcG9ydCAhPSBUQ19QT1JUX05PTkUgPyAiVEMiIDogIiIsCisJCQkJIHRjX3BvcnQg
IT0gVENfUE9SVF9OT05FID8gcGh5X25hbWUocGh5KSA6IHRjX3BvcnQgLSBUQ19QT1JUXzEgKyAn
MScpOworCX0gZWxzZSB7CisJCWRybV9lbmNvZGVyX2luaXQoJmRldl9wcml2LT5kcm0sICZlbmNv
ZGVyLT5iYXNlLCAmaW50ZWxfZGRpX2Z1bmNzLAorCQkJCSBEUk1fTU9ERV9FTkNPREVSX1RNRFMs
CisJCQkJICJEREkgJWMvUEhZICVjIiwgcG9ydF9uYW1lKHBvcnQpLCAgcGh5X25hbWUocGh5KSk7
CisJfQogCiAJbXV0ZXhfaW5pdCgmZGlnX3BvcnQtPmhkY3BfbXV0ZXgpOwogCWRpZ19wb3J0LT5u
dW1faGRjcF9zdHJlYW1zID0gMDsKLS0gCjIuMjYuMgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
