Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE9A830AF65
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Feb 2021 19:34:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 331F46E992;
	Mon,  1 Feb 2021 18:34:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6551D6E992
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Feb 2021 18:34:04 +0000 (UTC)
IronPort-SDR: 5A0ximqoHhcpT11x1AzW2K23Nhcby1w+k0wDhrSM1psMkmNmoFszT0Di66YsDwkhVgb64x0wLi
 uwQ/PJX/bw3g==
X-IronPort-AV: E=McAfee;i="6000,8403,9882"; a="168412959"
X-IronPort-AV: E=Sophos;i="5.79,393,1602572400"; d="scan'208";a="168412959"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2021 10:34:03 -0800
IronPort-SDR: QeQYj9SyDx9zJq8t1mzhyGMfVf2cuOvsB36IYDXlToOpiITlcl9jc8JyVdhXrMn3a6zflTXRr3
 3VK/VRHiIQNg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,393,1602572400"; d="scan'208";a="395703928"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga007.jf.intel.com with SMTP; 01 Feb 2021 10:34:01 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 01 Feb 2021 20:34:01 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  1 Feb 2021 20:33:34 +0200
Message-Id: <20210201183343.15292-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210201183343.15292-1-ville.syrjala@linux.intel.com>
References: <20210201183343.15292-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 06/15] drm/i195: Extract cnl_ddi_{enable,
 disable}_clock()
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkV4
dHJhY3QgdGhlIERESSBjbG9jayByb3V0aW5nIGZvciBDTkwgaW50byB0aGUgbmV3IHZmdW5jcy4K
ClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRl
bC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyB8IDYy
ICsrKysrKysrKysrKysrKystLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDQyIGluc2VydGlvbnMo
KyksIDIwIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGRpLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rk
aS5jCmluZGV4IGM1MGIyMGY1YjNiNi4uNjExNDk1YTc4NDk0IDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKQEAgLTMzODgsNyArMzM4OCw2IEBAIHN0YXRpYyB2b2lk
IGludGVsX2RkaV9jbGtfc2VsZWN0KHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAogCXN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoZW5jb2Rlci0+YmFzZS5k
ZXYpOwogCWVudW0gcG9ydCBwb3J0ID0gZW5jb2Rlci0+cG9ydDsKIAllbnVtIHBoeSBwaHkgPSBp
bnRlbF9wb3J0X3RvX3BoeShkZXZfcHJpdiwgcG9ydCk7Ci0JdTMyIHZhbDsKIAljb25zdCBzdHJ1
Y3QgaW50ZWxfc2hhcmVkX2RwbGwgKnBsbCA9IGNydGNfc3RhdGUtPnNoYXJlZF9kcGxsOwogCiAJ
aWYgKGRybV9XQVJOX09OKCZkZXZfcHJpdi0+ZHJtLCAhcGxsKSkKQEAgLTM0MDcsMjEgKzM0MDYs
NiBAQCBzdGF0aWMgdm9pZCBpbnRlbF9kZGlfY2xrX3NlbGVjdChzdHJ1Y3QgaW50ZWxfZW5jb2Rl
ciAqZW5jb2RlciwKIAkJCSAqLwogCQkJaW50ZWxfZGVfd3JpdGUoZGV2X3ByaXYsIERESV9DTEtf
U0VMKHBvcnQpLAogCQkJCSAgICAgICBERElfQ0xLX1NFTF9NRyk7Ci0JfSBlbHNlIGlmIChJU19D
QU5OT05MQUtFKGRldl9wcml2KSkgewotCQkvKiBDb25maWd1cmUgRFBDTEtBX0NGR0NSMCB0byBt
YXAgdGhlIERQTEwgdG8gdGhlIERESS4gKi8KLQkJdmFsID0gaW50ZWxfZGVfcmVhZChkZXZfcHJp
diwgRFBDTEtBX0NGR0NSMCk7Ci0JCXZhbCAmPSB+RFBDTEtBX0NGR0NSMF9ERElfQ0xLX1NFTF9N
QVNLKHBvcnQpOwotCQl2YWwgfD0gRFBDTEtBX0NGR0NSMF9ERElfQ0xLX1NFTChwbGwtPmluZm8t
PmlkLCBwb3J0KTsKLQkJaW50ZWxfZGVfd3JpdGUoZGV2X3ByaXYsIERQQ0xLQV9DRkdDUjAsIHZh
bCk7Ci0KLQkJLyoKLQkJICogQ29uZmlndXJlIERQQ0xLQV9DRkdDUjAgdG8gdHVybiBvbiB0aGUg
Y2xvY2sgZm9yIHRoZSBEREkuCi0JCSAqIFRoaXMgc3RlcCBhbmQgdGhlIHN0ZXAgYmVmb3JlIG11
c3QgYmUgZG9uZSB3aXRoIHNlcGFyYXRlCi0JCSAqIHJlZ2lzdGVyIHdyaXRlcy4KLQkJICovCi0J
CXZhbCA9IGludGVsX2RlX3JlYWQoZGV2X3ByaXYsIERQQ0xLQV9DRkdDUjApOwotCQl2YWwgJj0g
fkRQQ0xLQV9DRkdDUjBfRERJX0NMS19PRkYocG9ydCk7Ci0JCWludGVsX2RlX3dyaXRlKGRldl9w
cml2LCBEUENMS0FfQ0ZHQ1IwLCB2YWwpOwogCX0KIAogCW11dGV4X3VubG9jaygmZGV2X3ByaXYt
PmRwbGwubG9jayk7CkBAIC0zNDM4LDEyICszNDIyLDQ3IEBAIHN0YXRpYyB2b2lkIGludGVsX2Rk
aV9jbGtfZGlzYWJsZShzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlcikKIAkJICAgIChJU19K
U0xfRUhMKGRldl9wcml2KSAmJiBwb3J0ID49IFBPUlRfQykpCiAJCQlpbnRlbF9kZV93cml0ZShk
ZXZfcHJpdiwgRERJX0NMS19TRUwocG9ydCksCiAJCQkJICAgICAgIERESV9DTEtfU0VMX05PTkUp
OwotCX0gZWxzZSBpZiAoSVNfQ0FOTk9OTEFLRShkZXZfcHJpdikpIHsKLQkJaW50ZWxfZGVfd3Jp
dGUoZGV2X3ByaXYsIERQQ0xLQV9DRkdDUjAsCi0JCQkgICAgICAgaW50ZWxfZGVfcmVhZChkZXZf
cHJpdiwgRFBDTEtBX0NGR0NSMCkgfCBEUENMS0FfQ0ZHQ1IwX0RESV9DTEtfT0ZGKHBvcnQpKTsK
IAl9CiB9CiAKK3N0YXRpYyB2b2lkIGNubF9kZGlfZW5hYmxlX2Nsb2NrKHN0cnVjdCBpbnRlbF9l
bmNvZGVyICplbmNvZGVyLAorCQkJCSBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0
Y19zdGF0ZSkKK3sKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1
KGVuY29kZXItPmJhc2UuZGV2KTsKKwljb25zdCBzdHJ1Y3QgaW50ZWxfc2hhcmVkX2RwbGwgKnBs
bCA9IGNydGNfc3RhdGUtPnNoYXJlZF9kcGxsOworCWVudW0gcG9ydCBwb3J0ID0gZW5jb2Rlci0+
cG9ydDsKKwl1MzIgdmFsOworCisJaWYgKGRybV9XQVJOX09OKCZkZXZfcHJpdi0+ZHJtLCAhcGxs
KSkKKwkJcmV0dXJuOworCisJbXV0ZXhfbG9jaygmZGV2X3ByaXYtPmRwbGwubG9jayk7CisKKwl2
YWwgPSBpbnRlbF9kZV9yZWFkKGRldl9wcml2LCBEUENMS0FfQ0ZHQ1IwKTsKKwl2YWwgJj0gfkRQ
Q0xLQV9DRkdDUjBfRERJX0NMS19TRUxfTUFTSyhwb3J0KTsKKwl2YWwgfD0gRFBDTEtBX0NGR0NS
MF9ERElfQ0xLX1NFTChwbGwtPmluZm8tPmlkLCBwb3J0KTsKKwlpbnRlbF9kZV93cml0ZShkZXZf
cHJpdiwgRFBDTEtBX0NGR0NSMCwgdmFsKTsKKworCS8qCisJICogIlRoaXMgc3RlcCBhbmQgdGhl
IHN0ZXAgYmVmb3JlIG11c3QgYmUKKwkgKiAgZG9uZSB3aXRoIHNlcGFyYXRlIHJlZ2lzdGVyIHdy
aXRlcy4iCisJICovCisJdmFsID0gaW50ZWxfZGVfcmVhZChkZXZfcHJpdiwgRFBDTEtBX0NGR0NS
MCk7CisJdmFsICY9IH5EUENMS0FfQ0ZHQ1IwX0RESV9DTEtfT0ZGKHBvcnQpOworCWludGVsX2Rl
X3dyaXRlKGRldl9wcml2LCBEUENMS0FfQ0ZHQ1IwLCB2YWwpOworCisJbXV0ZXhfdW5sb2NrKCZk
ZXZfcHJpdi0+ZHBsbC5sb2NrKTsKK30KKworc3RhdGljIHZvaWQgY25sX2RkaV9kaXNhYmxlX2Ns
b2NrKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyKQoreworCXN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoZW5jb2Rlci0+YmFzZS5kZXYpOworCWVudW0gcG9y
dCBwb3J0ID0gZW5jb2Rlci0+cG9ydDsKKworCWludGVsX2RlX3dyaXRlKGRldl9wcml2LCBEUENM
S0FfQ0ZHQ1IwLAorCQkgICAgICAgaW50ZWxfZGVfcmVhZChkZXZfcHJpdiwgRFBDTEtBX0NGR0NS
MCkgfCBEUENMS0FfQ0ZHQ1IwX0RESV9DTEtfT0ZGKHBvcnQpKTsKK30KKwogc3RhdGljIHZvaWQg
c2tsX2RkaV9lbmFibGVfY2xvY2soc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCiAJCQkJ
IGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQogewpAQCAtNTY0NSw3
ICs1NjY0LDEwIEBAIHZvaWQgaW50ZWxfZGRpX2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
KmRldl9wcml2LCBlbnVtIHBvcnQgcG9ydCkKIAllbmNvZGVyLT5jbG9uZWFibGUgPSAwOwogCWVu
Y29kZXItPnBpcGVfbWFzayA9IH4wOwogCi0JaWYgKElTX0dFTjlfQkMoZGV2X3ByaXYpKSB7CisJ
aWYgKElTX0NBTk5PTkxBS0UoZGV2X3ByaXYpKSB7CisJCWVuY29kZXItPmVuYWJsZV9jbG9jayA9
IGNubF9kZGlfZW5hYmxlX2Nsb2NrOworCQllbmNvZGVyLT5kaXNhYmxlX2Nsb2NrID0gY25sX2Rk
aV9kaXNhYmxlX2Nsb2NrOworCX0gZWxzZSBpZiAoSVNfR0VOOV9CQyhkZXZfcHJpdikpIHsKIAkJ
ZW5jb2Rlci0+ZW5hYmxlX2Nsb2NrID0gc2tsX2RkaV9lbmFibGVfY2xvY2s7CiAJCWVuY29kZXIt
PmRpc2FibGVfY2xvY2sgPSBza2xfZGRpX2Rpc2FibGVfY2xvY2s7CiAJfSBlbHNlIGlmIChJU19C
Uk9BRFdFTEwoZGV2X3ByaXYpIHx8IElTX0hBU1dFTEwoZGV2X3ByaXYpKSB7Ci0tIAoyLjI2LjIK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
