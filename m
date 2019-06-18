Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AC4C34AB47
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2019 22:00:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD58489944;
	Tue, 18 Jun 2019 20:00:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05A25898E8
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jun 2019 20:00:07 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Jun 2019 13:00:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,390,1557212400"; d="scan'208";a="182514422"
Received: from josouza-mobl.jf.intel.com ([10.24.8.250])
 by fmsmga004.fm.intel.com with ESMTP; 18 Jun 2019 13:00:07 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 18 Jun 2019 12:59:59 -0700
Message-Id: <20190618200000.15847-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/ehl/dsi: Set lane latency
 optimization for DW1
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmFuZGl0YSBLdWxrYXJuaSA8dmFuZGl0YS5rdWxrYXJuaUBpbnRlbC5jb20+CgpFSEwg
aGFzIDIgYWRkaXRpb25hbCBzdGVwcyBpbiB0aGUgRFNJIHNlcXVlbmNlLCB0aGlzIGlzIG9uZSBv
ZiB0aGVuCnRoZSBsYW5lIGxhdGVuY3kgb3B0aW1pemF0aW9uIGZvciBEVzEuCgpCU3BlYzogMjA1
OTcKQ2M6IFVtYSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRlbC5jb20+CkNjOiBSb2RyaWdvIFZp
dmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+CkNjOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFA
aW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBWYW5kaXRhIEt1bGthcm5pIDx2YW5kaXRhLmt1bGth
cm5pQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ljbF9kc2ku
YyB8IDExICsrKysrKysrKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAg
ICB8ICAyICsrCiAyIGZpbGVzIGNoYW5nZWQsIDEzIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ljbF9kc2kuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaWNsX2RzaS5jCmluZGV4IDc0NDQ4ZTZiZjc0OS4uZWU4NTQyOGIzMDlm
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ljbF9kc2kuYworKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ljbF9kc2kuYwpAQCAtNDAzLDYgKzQwMywx
NyBAQCBzdGF0aWMgdm9pZCBnZW4xMV9kc2lfY29uZmlnX3BoeV9sYW5lc19zZXF1ZW5jZShzdHJ1
Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlcikKIAkJdG1wICY9IH5GUkNfTEFURU5DWV9PUFRJTV9N
QVNLOwogCQl0bXAgfD0gRlJDX0xBVEVOQ1lfT1BUSU1fVkFMKDB4NSk7CiAJCUk5MTVfV1JJVEUo
SUNMX1BPUlRfVFhfRFcyX0dSUChwb3J0KSwgdG1wKTsKKwkJLyogRm9yIEVITCBzZXQgbGF0ZW5j
eSBvcHRpbWl6YXRpb24gZm9yIFBDU19EVzEgbGFuZXMgKi8KKwkJaWYgKElTX0VMS0hBUlRMQUtF
KGRldl9wcml2KSkgeworCQkJdG1wID0gSTkxNV9SRUFEKElDTF9QT1JUX1BDU19EVzFfQVVYKHBv
cnQpKTsKKwkJCXRtcCAmPSB+TEFURU5DWV9PUFRJTV9NQVNLOworCQkJdG1wIHw9IExBVEVOQ1lf
T1BUSU1fVkFMKDApOworCQkJSTkxNV9XUklURShJQ0xfUE9SVF9QQ1NfRFcxX0FVWChwb3J0KSwg
dG1wKTsKKwkJCXRtcCA9IEk5MTVfUkVBRChJQ0xfUE9SVF9QQ1NfRFcxX0xOMChwb3J0KSk7CisJ
CQl0bXAgJj0gfkxBVEVOQ1lfT1BUSU1fTUFTSzsKKwkJCXRtcCB8PSBMQVRFTkNZX09QVElNX1ZB
TCgweDEpOworCQkJSTkxNV9XUklURShJQ0xfUE9SVF9QQ1NfRFcxX0dSUChwb3J0KSwgdG1wKTsK
KwkJfQogCX0KIAogfQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcu
aCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKaW5kZXggZDY0ODNiNWRjOGU1Li4x
ZjJjM2ViZGY4N2IgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaApAQCAtMTg5Niw2ICsxODk2LDgg
QEAgZW51bSBpOTE1X3Bvd2VyX3dlbGxfaWQgewogI2RlZmluZSBJQ0xfUE9SVF9QQ1NfRFcxX0dS
UChwb3J0KQlfTU1JTyhfSUNMX1BPUlRfUENTX0RXX0dSUCgxLCBwb3J0KSkKICNkZWZpbmUgSUNM
X1BPUlRfUENTX0RXMV9MTjAocG9ydCkJX01NSU8oX0lDTF9QT1JUX1BDU19EV19MTigxLCAwLCBw
b3J0KSkKICNkZWZpbmUgICBDT01NT05fS0VFUEVSX0VOCQkoMSA8PCAyNikKKyNkZWZpbmUgICBM
QVRFTkNZX09QVElNX01BU0sJCSgweDMgPDwgMikKKyNkZWZpbmUgICBMQVRFTkNZX09QVElNX1ZB
TCh4KQkJKCh4KSA8PCAyKQogCiAvKiBDTkwvSUNMIFBvcnQgVFggcmVnaXN0ZXJzICovCiAjZGVm
aW5lIF9DTkxfUE9SVF9UWF9BRV9HUlBfT0ZGU0VUCQkweDE2MjM0MAotLSAKMi4yMi4wCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
