Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 406FA3AA54B
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Jun 2021 22:28:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5D626E819;
	Wed, 16 Jun 2021 20:28:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F23F6E05D
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Jun 2021 20:28:17 +0000 (UTC)
IronPort-SDR: +gegakkiwW1TUAPqVDuhzrQr7Yb/Nd1WAqr2SpAjhk7fECWTrOTvGmb2q4ZMhyDASAntAq78rS
 iRo2YyyrGgzA==
X-IronPort-AV: E=McAfee;i="6200,9189,10016"; a="206289216"
X-IronPort-AV: E=Sophos;i="5.83,278,1616482800"; d="scan'208";a="206289216"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2021 13:28:16 -0700
IronPort-SDR: JFTfLxsYeUI3oMBC14Tr5HzE8vCpZYUnyoFJ/uV2KSClCa0m8vP/NkqXz7ylu638yZKFn7oJ5l
 ElEKDguo2x6g==
X-IronPort-AV: E=Sophos;i="5.83,278,1616482800"; d="scan'208";a="479227662"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-mobl2.intel.com)
 ([10.24.14.54])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2021 13:28:16 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 16 Jun 2021 13:31:55 -0700
Message-Id: <20210616203158.118111-3-jose.souza@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210616203158.118111-1-jose.souza@intel.com>
References: <20210616203158.118111-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/6] drm/i915/display/adl_p: Implement
 Wa_16011168373
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

QW5vdGhlciBXQSB0aGF0IGlzIHJlcXVpcmVkIGZvciBQU1IyLgoKQlNwZWM6IDU0MzY5CkNjOiBH
d2FuLWd5ZW9uZyBNdW4gPGd3YW4tZ3llb25nLm11bkBpbnRlbC5jb20+CkNjOiBNYXR0IEF0d29v
ZCA8bWF0dGhldy5zLmF0d29vZEBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVy
dG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgfCAxNSArKysrKysrKysrKysrKysKIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfcmVnLmggICAgICAgICAgfCAgOCArKysrKysrKwogMiBmaWxlcyBjaGFu
Z2VkLCAyMyBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9wc3IuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
cHNyLmMKaW5kZXggYzhkNTYzODdkOTIzMy4uZTUwODgxNjkxMWZhZCAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYworKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jCkBAIC0xMTEyLDYgKzExMTIsMTQgQEAgc3RhdGlj
IHZvaWQgaW50ZWxfcHNyX2VuYWJsZV9zb3VyY2Uoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkK
IAkJaW50ZWxfZGVfcm13KGRldl9wcml2LCBDSElDS0VOX1BBUjFfMSwgSUdOT1JFX1BTUjJfSFdf
VFJBQ0tJTkcsCiAJCQkgICAgIGludGVsX2RwLT5wc3IucHNyMl9zZWxfZmV0Y2hfZW5hYmxlZCA/
CiAJCQkgICAgIElHTk9SRV9QU1IyX0hXX1RSQUNLSU5HIDogMCk7CisKKwkvKiBXYV8xNjAxMTE2
ODM3MzphZGxwICovCisJaWYgKElTX0FETFBfRElTUExBWV9TVEVQKGRldl9wcml2LCBTVEVQX0Ew
LCBTVEVQX0EwKSAmJgorCSAgICBpbnRlbF9kcC0+cHNyLnBzcjJfZW5hYmxlZCkKKwkJaW50ZWxf
ZGVfcm13KGRldl9wcml2LAorCQkJICAgICBUUkFOU19TRVRfQ09OVEVYVF9MQVRFTkNZKGludGVs
X2RwLT5wc3IudHJhbnNjb2RlciksCisJCQkgICAgIFRSQU5TX1NFVF9DT05URVhUX0xBVEVOQ1lf
TUFTSywKKwkJCSAgICAgVFJBTlNfU0VUX0NPTlRFWFRfTEFURU5DWV9WQUxVRSgxKSk7CiB9CiAK
IHN0YXRpYyBib29sIHBzcl9pbnRlcnJ1cHRfZXJyb3JfY2hlY2soc3RydWN0IGludGVsX2RwICpp
bnRlbF9kcCkKQEAgLTEyODksNiArMTI5NywxMyBAQCBzdGF0aWMgdm9pZCBpbnRlbF9wc3JfZGlz
YWJsZV9sb2NrZWQoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkKIAkJaW50ZWxfZGVfcm13KGRl
dl9wcml2LCBDSElDS0VOX1BBUjFfMSwKIAkJCSAgICAgRElTX1JBTV9CWVBBU1NfUFNSMl9NQU5f
VFJBQ0ssIDApOwogCisJLyogV2FfMTYwMTExNjgzNzM6YWRscCAqLworCWlmIChJU19BRExQX0RJ
U1BMQVlfU1RFUChkZXZfcHJpdiwgU1RFUF9BMCwgU1RFUF9BMCkgJiYKKwkgICAgaW50ZWxfZHAt
PnBzci5wc3IyX2VuYWJsZWQpCisJCWludGVsX2RlX3JtdyhkZXZfcHJpdiwKKwkJCSAgICAgVFJB
TlNfU0VUX0NPTlRFWFRfTEFURU5DWShpbnRlbF9kcC0+cHNyLnRyYW5zY29kZXIpLAorCQkJICAg
ICBUUkFOU19TRVRfQ09OVEVYVF9MQVRFTkNZX01BU0ssIDApOworCiAJLyogRGlzYWJsZSBQU1Ig
b24gU2luayAqLwogCWRybV9kcF9kcGNkX3dyaXRlYigmaW50ZWxfZHAtPmF1eCwgRFBfUFNSX0VO
X0NGRywgMCk7CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCmluZGV4IDRhOThlNDljNTg4MTIuLjU2
OGU1ZjEwOGUyYzQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaApAQCAtMTAzNjgsNiArMTAzNjgs
MTQgQEAgZW51bSBza2xfcG93ZXJfZ2F0ZSB7CiAjZGVmaW5lIFRSQU5TX01TQV9NSVNDKHRyYW4p
IF9NTUlPX1RSQU5TMih0cmFuLCBfVFJBTlNBX01TQV9NSVNDKQogLyogU2VlIERQX01TQV9NSVND
XyogZm9yIHRoZSBiaXQgZGVmaW5pdGlvbnMgKi8KIAorI2RlZmluZSBfVFJBTlNfQV9TRVRfQ09O
VEVYVF9MQVRFTkNZCQkweDYwMDdDCisjZGVmaW5lIF9UUkFOU19CX1NFVF9DT05URVhUX0xBVEVO
Q1kJCTB4NjEwN0MKKyNkZWZpbmUgX1RSQU5TX0NfU0VUX0NPTlRFWFRfTEFURU5DWQkJMHg2MjA3
QworI2RlZmluZSBfVFJBTlNfRF9TRVRfQ09OVEVYVF9MQVRFTkNZCQkweDYzMDdDCisjZGVmaW5l
IFRSQU5TX1NFVF9DT05URVhUX0xBVEVOQ1kodHJhbikJCV9NTUlPX1RSQU5TMih0cmFuLCBfVFJB
TlNfQV9TRVRfQ09OVEVYVF9MQVRFTkNZKQorI2RlZmluZSAgVFJBTlNfU0VUX0NPTlRFWFRfTEFU
RU5DWV9NQVNLCQlSRUdfR0VOTUFTSygxNSwgMCkKKyNkZWZpbmUgIFRSQU5TX1NFVF9DT05URVhU
X0xBVEVOQ1lfVkFMVUUoeCkJUkVHX0ZJRUxEX1BSRVAoVFJBTlNfU0VUX0NPTlRFWFRfTEFURU5D
WV9NQVNLLCAoeCkpCisKIC8qIExDUExMIENvbnRyb2wgKi8KICNkZWZpbmUgTENQTExfQ1RMCQkJ
X01NSU8oMHgxMzAwNDApCiAjZGVmaW5lICBMQ1BMTF9QTExfRElTQUJMRQkJKDEgPDwgMzEpCi0t
IAoyLjMyLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
