Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 571D91E321F
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2020 00:12:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23AF489BFE;
	Tue, 26 May 2020 22:12:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B87A46E20F
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 May 2020 22:12:45 +0000 (UTC)
IronPort-SDR: w10onvRNdqn/qly8Az+8hU0DSsBSAJ+iRJnc301UKmiFo2SFNxevcL+bQWOl127t9Tkn6t1jm+
 z65ciCr7LyYQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2020 15:12:44 -0700
IronPort-SDR: nuIk2+6GmtA3hEhEjdAFqFGxn0GwZY8ciSrXsvf6kt6Sw0leItGOI1x4Lcsau9Jwg8fk5uMstT
 ZXt9CQMnU+tg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,439,1583222400"; d="scan'208";a="310381874"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-MOBL2.intel.com)
 ([10.24.14.40])
 by FMSMGA003.fm.intel.com with ESMTP; 26 May 2020 15:12:44 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 26 May 2020 15:14:47 -0700
Message-Id: <20200526221447.64110-6-jose.souza@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200526221447.64110-1-jose.souza@intel.com>
References: <20200526221447.64110-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 6/6] drm/i915: Implement PSR2 selective fetch WAs
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

VGhpcyBmZWF0dXJlIGhhdmUgMyBXQXMgYW5kIGFzIGNvbW1lbnRlZCBXQSAxNDAxMDEwMzc5MiBh
bmQKV0EgMTQwMTAyNTQxODUgY29uZmxpY3RzLCBzbyBsZWF2aW5nIHRoZSBmZWF0dXJlIGRpc2Fi
bGVkIGluIHRoZQphZmZlY3RlZCBzdGVwcGluZ3MuCgpTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2Jl
cnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIHwgMzAgKysrKysrKysrKysrKysrKysrKysrKy0tCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAgICAgIHwgIDEgKwogMiBmaWxlcyBj
aGFuZ2VkLCAyOSBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jCmluZGV4IGJjMmEyZTY0ZmUyYS4uYzEzOGFiNjlmYTkz
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKQEAgLTUxOCwxMyAr
NTE4LDIxIEBAIHN0YXRpYyB2b2lkIGhzd19hY3RpdmF0ZV9wc3IyKHN0cnVjdCBpbnRlbF9kcCAq
aW50ZWxfZHApCiAJZWxzZQogCQl2YWwgfD0gRURQX1BTUjJfVFAyX1RJTUVfMjUwMHVzOwogCi0J
aWYgKGRldl9wcml2LT5wc3IucHNyMl9zZWxfZmV0Y2hfZW5hYmxlZCkKKwlpZiAoZGV2X3ByaXYt
PnBzci5wc3IyX3NlbF9mZXRjaF9lbmFibGVkKSB7CisJCS8qIFdBIDE0MDgzMzA4NDcgKi8KKwkJ
aWYgKElTX1RHTF9SRVZJRChkZXZfcHJpdiwgVEdMX1JFVklEX0EwLCBUR0xfUkVWSURfQTApIHx8
CisJCSAgICBJU19SS0xfUkVWSUQoZGV2X3ByaXYsIFJLTF9SRVZJRF9BMCwgUktMX1JFVklEX0Ew
KSkKKwkJCWludGVsX2RlX3JtdyhkZXZfcHJpdiwgQ0hJQ0tFTl9QQVIxXzEsCisJCQkJICAgICBE
SVNfUkFNX0JZUEFTU19QU1IyX01BTl9UUkFDSywKKwkJCQkgICAgIERJU19SQU1fQllQQVNTX1BT
UjJfTUFOX1RSQUNLKTsKKwogCQlpbnRlbF9kZV93cml0ZShkZXZfcHJpdiwKIAkJCSAgICAgICBQ
U1IyX01BTl9UUktfQ1RMKGRldl9wcml2LT5wc3IudHJhbnNjb2RlciksCiAJCQkgICAgICAgUFNS
Ml9NQU5fVFJLX0NUTF9FTkFCTEUpOwotCWVsc2UgaWYgKEhBU19QU1IyX1NFTF9GRVRDSChkZXZf
cHJpdikpCisJfSBlbHNlIGlmIChIQVNfUFNSMl9TRUxfRkVUQ0goZGV2X3ByaXYpKSB7CiAJCWlu
dGVsX2RlX3dyaXRlKGRldl9wcml2LAogCQkJICAgICAgIFBTUjJfTUFOX1RSS19DVEwoZGV2X3By
aXYtPnBzci50cmFuc2NvZGVyKSwgMCk7CisJfQogCiAJLyoKIAkgKiBQU1IyIEhXIGlzIGluY29y
cmVjdGx5IHVzaW5nIEVEUF9QU1JfVFAxX1RQM19TRUwgYW5kIEJTcGVjIGlzCkBAIC02NTEsNiAr
NjU5LDE3IEBAIHN0YXRpYyBib29sIGludGVsX3BzcjJfc2VsX2ZldGNoX2NvbmZpZ192YWxpZChz
dHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLAogCQlyZXR1cm4gZmFsc2U7CiAJfQogCisJLyoKKwkg
KiBBcyBXQSAxNDAxMDEwMzc5MiBjb25mbGljdHMgd2l0aCBXQSAxNDAxMDI1NDE4NSBzbyBkaXNh
YmxpbmcgUFNSMiBTVworCSAqIHRyYWNraW5nIGluIFRHTCBhbmQgUktMIEEwCisJICovCisJaWYg
KElTX1RHTF9SRVZJRChkZXZfcHJpdiwgVEdMX1JFVklEX0EwLCBUR0xfUkVWSURfQTApIHx8CisJ
ICAgIElTX1JLTF9SRVZJRChkZXZfcHJpdiwgUktMX1JFVklEX0EwLCBSS0xfUkVWSURfQTApKSB7
CisJCWRybV9kYmdfa21zKCZkZXZfcHJpdi0+ZHJtLAorCQkJICAgICJQU1IyIHNlbCBmZXRjaCBu
b3QgZW5hYmxlZCwgZmVhdHVyZSBub3Qgd29ya2luZyBpbiBjdXJyZW50IHN0ZXBwaW5nXG4iKTsK
KwkJcmV0dXJuIGZhbHNlOworCX0KKwogCWlmIChjcnRjX3N0YXRlLT51YXBpLmFzeW5jX2ZsaXAp
IHsKIAkJZHJtX2RiZ19rbXMoJmRldl9wcml2LT5kcm0sCiAJCQkgICAgIlBTUjIgc2VsIGZldGNo
IG5vdCBlbmFibGVkLCBhc3luYyBmbGlwIGVuYWJsZWRcbiIpOwpAQCAtMTA2Myw2ICsxMDgyLDEz
IEBAIHN0YXRpYyB2b2lkIGludGVsX3Bzcl9kaXNhYmxlX2xvY2tlZChzdHJ1Y3QgaW50ZWxfZHAg
KmludGVsX2RwKQogCQkJCSAgICBwc3Jfc3RhdHVzX21hc2ssIDIwMDApKQogCQlkcm1fZXJyKCZk
ZXZfcHJpdi0+ZHJtLCAiVGltZWQgb3V0IHdhaXRpbmcgUFNSIGlkbGUgc3RhdGVcbiIpOwogCisJ
LyogV0EgMTQwODMzMDg0NyAqLworCWlmIChkZXZfcHJpdi0+cHNyLnBzcjJfc2VsX2ZldGNoX2Vu
YWJsZWQgJiYKKwkgICAgKElTX1RHTF9SRVZJRChkZXZfcHJpdiwgVEdMX1JFVklEX0EwLCBUR0xf
UkVWSURfQTApIHx8CisJICAgICBJU19SS0xfUkVWSUQoZGV2X3ByaXYsIFJLTF9SRVZJRF9BMCwg
UktMX1JFVklEX0EwKSkpCisJCWludGVsX2RlX3JtdyhkZXZfcHJpdiwgQ0hJQ0tFTl9QQVIxXzEs
CisJCQkgICAgIERJU19SQU1fQllQQVNTX1BTUjJfTUFOX1RSQUNLLCAwKTsKKwogCS8qIERpc2Fi
bGUgUFNSIG9uIFNpbmsgKi8KIAlkcm1fZHBfZHBjZF93cml0ZWIoJmludGVsX2RwLT5hdXgsIERQ
X1BTUl9FTl9DRkcsIDApOwogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3JlZy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAppbmRleCA2ZjU0N2U0NTlk
MzAuLjJlMzc0ZTE2NmIyZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9y
ZWcuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCkBAIC03ODMzLDYgKzc4
MzMsNyBAQCBlbnVtIHsKICMgZGVmaW5lIENISUNLRU4zX0RHTUdfRE9ORV9GSVhfRElTQUJMRQkJ
KDEgPDwgMikKIAogI2RlZmluZSBDSElDS0VOX1BBUjFfMQkJCV9NTUlPKDB4NDIwODApCisjZGVm
aW5lICBESVNfUkFNX0JZUEFTU19QU1IyX01BTl9UUkFDSwkoMSA8PCAxNikKICNkZWZpbmUgIFNL
TF9ERV9DT01QUkVTU0VEX0hBU0hfTU9ERQkoMSA8PCAxNSkKICNkZWZpbmUgIERQQV9NQVNLX1ZC
TEFOS19TUkQJCSgxIDw8IDE1KQogI2RlZmluZSAgRk9SQ0VfQVJCX0lETEVfUExBTkVTCQkoMSA8
PCAxNCkKLS0gCjIuMjYuMgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4Cg==
