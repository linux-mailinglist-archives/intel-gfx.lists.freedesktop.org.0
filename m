Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 54FCA204C41
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2020 10:24:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA9E46E20A;
	Tue, 23 Jun 2020 08:24:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B8A7B6E20A
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jun 2020 08:24:20 +0000 (UTC)
IronPort-SDR: jLgwtch2MrMgzLf06wkTV6CiddI4wGKPhnsrJKZaJAJmx5Fqd5xRNWm6uv1q+SMd0zQl8FLFhA
 VLJFBdDd2e8A==
X-IronPort-AV: E=McAfee;i="6000,8403,9660"; a="131412928"
X-IronPort-AV: E=Sophos;i="5.75,270,1589266800"; d="scan'208";a="131412928"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2020 01:24:20 -0700
IronPort-SDR: EyoI1Xtcdtm1/tpeDIGQDojEeZYz1/JZmpq71W6XbVBKxiG0D4UzD1xcMBEeggT+jBRM6RFBnW
 cmaZNW0CCQoA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,270,1589266800"; d="scan'208";a="275272337"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga003.jf.intel.com with ESMTP; 23 Jun 2020 01:24:18 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 23 Jun 2020 11:24:11 +0300
Message-Id: <20200623082411.3889-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.23.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/dp_mst: Enable VC payload allocation
 after transcoder is enabled
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

VGhlIHNwZWMgcmVxdWlyZXMgZW5hYmxpbmcgdGhlIE1TVCBWaXJ0dWFsIENoYW5uZWwgcGF5bG9h
ZCBhbGxvY2F0aW9uCi0gaW4gYSBzZXBlcmF0ZSBzdGVwIC0gYWZ0ZXIgdGhlIHRyYW5zY29kZXIg
aXMgZW5hYmxlZCwgZm9sbG93IHRoaXMuCgpDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJq
YWxhQGxpbnV4LmludGVsLmNvbT4KQ2M6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291
emFAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5j
b20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyAgICB8IDgg
KysrLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMgfCA4
ICsrKysrKysrCiAyIGZpbGVzIGNoYW5nZWQsIDExIGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25z
KC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGku
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKaW5kZXggNzNkNmNj
MjkyOTFhLi44ODRiNTA3YzVmNTUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGRpLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kZGkuYwpAQCAtMTY1Myw3ICsxNjUzLDYgQEAgdm9pZCBpbnRlbF9kZGlfZW5hYmxlX3RyYW5z
Y29kZXJfZnVuYyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKIAlzdHJ1Y3QgaW50ZWxf
Y3J0YyAqY3J0YyA9IHRvX2ludGVsX2NydGMoY3J0Y19zdGF0ZS0+dWFwaS5jcnRjKTsKIAlzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNydGMtPmJhc2UuZGV2KTsK
IAllbnVtIHRyYW5zY29kZXIgY3B1X3RyYW5zY29kZXIgPSBjcnRjX3N0YXRlLT5jcHVfdHJhbnNj
b2RlcjsKLQl1MzIgY3RsOwogCiAJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTEpIHsKIAkJ
ZW51bSB0cmFuc2NvZGVyIG1hc3Rlcl90cmFuc2NvZGVyID0gY3J0Y19zdGF0ZS0+bWFzdGVyX3Ry
YW5zY29kZXI7CkBAIC0xNjcxLDEwICsxNjcwLDkgQEAgdm9pZCBpbnRlbF9kZGlfZW5hYmxlX3Ry
YW5zY29kZXJfZnVuYyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKIAkJCSAgICAgICBU
UkFOU19ERElfRlVOQ19DVEwyKGNwdV90cmFuc2NvZGVyKSwgY3RsMik7CiAJfQogCi0JY3RsID0g
aW50ZWxfZGRpX3RyYW5zY29kZXJfZnVuY19yZWdfdmFsX2dldChlbmNvZGVyLCBjcnRjX3N0YXRl
KTsKLQlpZiAoaW50ZWxfY3J0Y19oYXNfdHlwZShjcnRjX3N0YXRlLCBJTlRFTF9PVVRQVVRfRFBf
TVNUKSkKLQkJY3RsIHw9IFRSQU5TX0RESV9EUF9WQ19QQVlMT0FEX0FMTE9DOwotCWludGVsX2Rl
X3dyaXRlKGRldl9wcml2LCBUUkFOU19ERElfRlVOQ19DVEwoY3B1X3RyYW5zY29kZXIpLCBjdGwp
OworCWludGVsX2RlX3dyaXRlKGRldl9wcml2LCBUUkFOU19ERElfRlVOQ19DVEwoY3B1X3RyYW5z
Y29kZXIpLAorCQkgICAgICAgaW50ZWxfZGRpX3RyYW5zY29kZXJfZnVuY19yZWdfdmFsX2dldChl
bmNvZGVyLAorCQkJCQkJCSAgICAgY3J0Y19zdGF0ZSkpOwogfQogCiAvKgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMKaW5kZXggMGM4OTFiZGQxYWEwLi4zNDI2
Y2U4YmJiZDAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHBfbXN0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3Qu
YwpAQCAtNTM5LDYgKzUzOSw3IEBAIHN0YXRpYyB2b2lkIGludGVsX21zdF9lbmFibGVfZHAoc3Ry
dWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsCiAJc3RydWN0IGludGVsX2RpZ2l0YWxfcG9y
dCAqaW50ZWxfZGlnX3BvcnQgPSBpbnRlbF9tc3QtPnByaW1hcnk7CiAJc3RydWN0IGludGVsX2Rw
ICppbnRlbF9kcCA9ICZpbnRlbF9kaWdfcG9ydC0+ZHA7CiAJc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmRldl9wcml2ID0gdG9faTkxNShlbmNvZGVyLT5iYXNlLmRldik7CisJdTMyIHZhbDsKIAog
CWRybV9XQVJOX09OKCZkZXZfcHJpdi0+ZHJtLCBwaXBlX2NvbmZpZy0+aGFzX3BjaF9lbmNvZGVy
KTsKIApAQCAtNTQ2LDYgKzU0NywxMyBAQCBzdGF0aWMgdm9pZCBpbnRlbF9tc3RfZW5hYmxlX2Rw
KHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLAogCiAJaW50ZWxfZGRpX2VuYWJsZV90
cmFuc2NvZGVyX2Z1bmMoZW5jb2RlciwgcGlwZV9jb25maWcpOwogCisJdmFsID0gaW50ZWxfZGVf
cmVhZChkZXZfcHJpdiwKKwkJCSAgICBUUkFOU19ERElfRlVOQ19DVEwocGlwZV9jb25maWctPmNw
dV90cmFuc2NvZGVyKSk7CisJdmFsIHw9IFRSQU5TX0RESV9EUF9WQ19QQVlMT0FEX0FMTE9DOwor
CWludGVsX2RlX3dyaXRlKGRldl9wcml2LAorCQkgICAgICAgVFJBTlNfRERJX0ZVTkNfQ1RMKHBp
cGVfY29uZmlnLT5jcHVfdHJhbnNjb2RlciksCisJCSAgICAgICB2YWwpOworCiAJZHJtX2RiZ19r
bXMoJmRldl9wcml2LT5kcm0sICJhY3RpdmUgbGlua3MgJWRcbiIsCiAJCSAgICBpbnRlbF9kcC0+
YWN0aXZlX21zdF9saW5rcyk7CiAKLS0gCjIuMjMuMQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
