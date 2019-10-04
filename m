Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FD89CB645
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Oct 2019 10:35:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D04EF6EAF9;
	Fri,  4 Oct 2019 08:35:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C44DD6EAFA
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Oct 2019 08:35:24 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Oct 2019 01:35:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,255,1566889200"; d="scan'208";a="392226337"
Received: from genxfsim-shark-bay-client-platform.iind.intel.com
 ([10.223.34.144])
 by fmsmga005.fm.intel.com with ESMTP; 04 Oct 2019 01:35:21 -0700
From: Swati Sharma <swati2.sharma@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  4 Oct 2019 13:56:07 +0530
Message-Id: <20191004082610.24664-2-swati2.sharma@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191004082610.24664-1-swati2.sharma@intel.com>
References: <20191004082610.24664-1-swati2.sharma@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/4] [v2] drm/i915/color: fix broken gamma
 state-checker during boot
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
Cc: jani.nikula@intel.com, ankit.k.nautiyal@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UHJlbWF0dXJlIGdhbW1hIGx1dCBwcmVwcmF0aW9uIGFuZCBsb2FkaW5nIHdoaWNoIHdhcyBnZXR0
aW5nCnJlZmxlY3RlZCBpbiBmaXJzdCBtb2Rlc2V0IGNhdXNpbmcgZGlmZmVyZW50IGNvbG9ycyBv
bgpzY3JlZW4gZHVyaW5nIGJvb3QuCgpJc3N1ZTogSW4gQklPUywgZ2FtbWEgaXMgZGlzYWJsZWQg
YnkgZGVmYXVsdC4gSG93ZXZlciwgbGVnYWN5IHJlYWRfbHV0cygpCndhcyBzZXR0aW5nIGNydGNf
c3RhdGUtPmJhc2UuZ2FtbWFfbHV0IGFuZCBnYW1tYV9sdXQgd2FzIHByb2dyYW1tZWQKd2l0aCBq
dW5rIHZhbHVlcyB3aGljaCBsZWQgdG8gdmlzdWFsIGFydGlmYWN0cyAoZGlmZmVyZW50CmNvbG9y
ZWQgc2NyZWVucyBpbnN0ZWFkIG9mIHVzdWFsIGJsYWNrIGR1cmluZyBib290KS4KCkZpeDogQ2Fs
bGluZyByZWFkX2x1dHMoKSBvbmx5IHdoZW4gZ2FtbWEgaXMgZW5hYmxlZCB3aGljaCB3aWxsIGhh
cHBlbgphZnRlciBmaXJzdCBtb2Rlc2V0LgoKVGhpcyBmaXggaXMgaW5kZXBlbmRlbnQgZnJvbSB0
aGUgcmV2ZXJ0IDFiODU4ODc0MWZkYyAoIlJldmVydAoiZHJtL2k5MTUvY29sb3I6IEV4dHJhY3Qg
aWNsX3JlYWRfbHV0cygpIiIpIGFuZCBzaG91bGQgZml4IGRpZmZlcmVudCBjb2xvcnMKb24gc2Ny
ZWVuIGluIGxlZ2FjeSBwbGF0Zm9ybXMgdG9vLgoKLUFkZGVkIGdhbW1hX2VuYWJsZSBjaGVja3Mg
aW5zaWRlIHJlYWRfbHV0cygpIFtWaWxsZS9KYW5pIE5dCi1Db3JyZWN0ZWQgZ2FtbWEgZW5hYmxl
IGNoZWNrIGZvciBDSFYgW1ZpbGxlXQoKQnVnemlsbGE6IGh0dHBzOi8vYnVncy5mcmVlZGVza3Rv
cC5vcmcvc2hvd19idWcuY2dpP2lkPTExMTgwOQpCdWd6aWxsYTogaHR0cHM6Ly9idWdzLmZyZWVk
ZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTExODg1ClNpZ25lZC1vZmYtYnk6IFN3YXRpIFNo
YXJtYSA8c3dhdGkyLnNoYXJtYUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9jb2xvci5jIHwgMjcgKysrKysrKysrKysrKysrKysrKy0tLQogMSBmaWxl
IGNoYW5nZWQsIDI0IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jCmluZGV4IDlhYjM0OTAyNjYzZS4uOGYwMjMx
M2E3ZmVmIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Nv
bG9yLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jCkBA
IC0xNjEzLDYgKzE2MTMsOSBAQCBpOXh4X3JlYWRfbHV0XzgoY29uc3Qgc3RydWN0IGludGVsX2Ny
dGNfc3RhdGUgKmNydGNfc3RhdGUpCiAKIHN0YXRpYyB2b2lkIGk5eHhfcmVhZF9sdXRzKHN0cnVj
dCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQogeworCWlmICghY3J0Y19zdGF0ZS0+Z2Ft
bWFfZW5hYmxlKQorCQlyZXR1cm47CisKIAljcnRjX3N0YXRlLT5iYXNlLmdhbW1hX2x1dCA9IGk5
eHhfcmVhZF9sdXRfOChjcnRjX3N0YXRlKTsKIH0KIApAQCAtMTY1OSw2ICsxNjYyLDkgQEAgaTk2
NV9yZWFkX2x1dF8xMHA2KGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRl
KQogCiBzdGF0aWMgdm9pZCBpOTY1X3JlYWRfbHV0cyhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAq
Y3J0Y19zdGF0ZSkKIHsKKwlpZiAoIWNydGNfc3RhdGUtPmdhbW1hX2VuYWJsZSkKKwkJcmV0dXJu
OworCiAJaWYgKGNydGNfc3RhdGUtPmdhbW1hX21vZGUgPT0gR0FNTUFfTU9ERV9NT0RFXzhCSVQp
CiAJCWNydGNfc3RhdGUtPmJhc2UuZ2FtbWFfbHV0ID0gaTl4eF9yZWFkX2x1dF84KGNydGNfc3Rh
dGUpOwogCWVsc2UKQEAgLTE3MDEsMTAgKzE3MDcsMTkgQEAgY2h2X3JlYWRfY2dtX2x1dChjb25z
dCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKIAogc3RhdGljIHZvaWQgY2h2
X3JlYWRfbHV0cyhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKIHsKLQlpZiAo
Y3J0Y19zdGF0ZS0+Z2FtbWFfbW9kZSA9PSBHQU1NQV9NT0RFX01PREVfOEJJVCkKLQkJY3J0Y19z
dGF0ZS0+YmFzZS5nYW1tYV9sdXQgPSBpOXh4X3JlYWRfbHV0XzgoY3J0Y19zdGF0ZSk7Ci0JZWxz
ZQorCWlmIChjcnRjX3N0YXRlLT5jZ21fbW9kZSkgeworCQlpZiAoKGNydGNfc3RhdGUtPmNnbV9t
b2RlICYgQ0dNX1BJUEVfTU9ERV9HQU1NQSkgPT0gMCkKKwkJCXJldHVybjsKKwogCQljcnRjX3N0
YXRlLT5iYXNlLmdhbW1hX2x1dCA9IGNodl9yZWFkX2NnbV9sdXQoY3J0Y19zdGF0ZSk7CisJfQor
CisJaWYgKGNydGNfc3RhdGUtPmdhbW1hX21vZGUgPT0gR0FNTUFfTU9ERV9NT0RFXzhCSVQpIHsK
KwkJaWYgKCFjcnRjX3N0YXRlLT5nYW1tYV9lbmFibGUpCisJCQlyZXR1cm47CisKKwkJY3J0Y19z
dGF0ZS0+YmFzZS5nYW1tYV9sdXQgPSBpOXh4X3JlYWRfbHV0XzgoY3J0Y19zdGF0ZSk7CisJfQog
fQogCiBzdGF0aWMgc3RydWN0IGRybV9wcm9wZXJ0eV9ibG9iICoKQEAgLTE3NDIsNiArMTc1Nyw5
IEBAIGlsa19yZWFkX2x1dF8xMChjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19z
dGF0ZSkKIAogc3RhdGljIHZvaWQgaWxrX3JlYWRfbHV0cyhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0
ZSAqY3J0Y19zdGF0ZSkKIHsKKwlpZiAoIWNydGNfc3RhdGUtPmdhbW1hX2VuYWJsZSkKKwkJcmV0
dXJuOworCiAJaWYgKGNydGNfc3RhdGUtPmdhbW1hX21vZGUgPT0gR0FNTUFfTU9ERV9NT0RFXzhC
SVQpCiAJCWNydGNfc3RhdGUtPmJhc2UuZ2FtbWFfbHV0ID0gaTl4eF9yZWFkX2x1dF84KGNydGNf
c3RhdGUpOwogCWVsc2UKQEAgLTE3ODgsNiArMTgwNiw5IEBAIGdsa19yZWFkX2x1dF8xMChjb25z
dCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwgdTMyIHByZWNfaW5kZXgpCiAK
IHN0YXRpYyB2b2lkIGdsa19yZWFkX2x1dHMoc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNf
c3RhdGUpCiB7CisJaWYgKCFjcnRjX3N0YXRlLT5nYW1tYV9lbmFibGUpCisJCXJldHVybjsKKwog
CWlmIChjcnRjX3N0YXRlLT5nYW1tYV9tb2RlID09IEdBTU1BX01PREVfTU9ERV84QklUKQogCQlj
cnRjX3N0YXRlLT5iYXNlLmdhbW1hX2x1dCA9IGk5eHhfcmVhZF9sdXRfOChjcnRjX3N0YXRlKTsK
IAllbHNlCi0tIAoyLjIzLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
