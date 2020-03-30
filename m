Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 31F32198854
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2020 01:31:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B55E6E4DD;
	Mon, 30 Mar 2020 23:31:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDCFC6E4D7
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Mar 2020 23:31:46 +0000 (UTC)
IronPort-SDR: vcjGexTexw73u2uzQQ65uIBg8qc9Kd1RAuYHGHqk/DEtbiwk8bCj5wb14rQNdsrpXbojdDb7M3
 crwzN2FMS/Zg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2020 16:31:42 -0700
IronPort-SDR: VBeu32YfcMsyC9LOw2kqNZrVfiRUM/vsaV6jPB7lUAqCflKee6Kx15ULUA1IC61JslP0gZoLdR
 3kmAWsW92ngQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,326,1580803200"; d="scan'208";a="242190309"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-MOBL2.intel.com)
 ([10.24.15.8])
 by orsmga008.jf.intel.com with ESMTP; 30 Mar 2020 16:31:42 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 30 Mar 2020 16:33:02 -0700
Message-Id: <20200330233304.406215-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/3] drm/i915/psr: Implement WA 1110
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

U29tZSBmbGlwcyBjb3VsZCBiZSBtaXNzZWQgd2hlbiBGQkMgKyBQU1IgbGluayBvZmYgaXMgZW5h
YmxlZC4KClNwZWMgc3RhdGVzIHRoYXQgU0tMLCBCWFQsIEtCTCBhbmQgQ05MIG5lZWRzIGl0IGJ1
dCBwcm9iYWJseSBhbGwKb3RoZXIgR0VOOSBwbGF0Zm9ybXMgYWxzbyBuZWVkcyBpdC4gQXMgdGhl
IHBvd2VyIGRyYXdiYWNrIHdvdWxkIGJlCm1pbmluYWwgZXZlbiBpZiBub3QgbmVlZGVkLgoKQlNw
ZWM6IDIxNjY0ClNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291
emFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNy
LmMgfCA5ICsrKysrKysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAgICAg
ICB8IDEgKwogMiBmaWxlcyBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKaW5kZXggYTA1NjlmZGZlYjE2Li4zODE2N2U5ODNm
MWIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYwpAQCAtODQ1LDYg
Kzg0NSwxNSBAQCBzdGF0aWMgdm9pZCBpbnRlbF9wc3JfZW5hYmxlX3NvdXJjZShzdHJ1Y3QgaW50
ZWxfZHAgKmludGVsX2RwLAogCQlpbnRlbF9kZV93cml0ZShkZXZfcHJpdiwgcmVnLCBjaGlja2Vu
KTsKIAl9CiAKKwkvKiBXQSAxMTEwOiBHRU45IGFuZCBHRU4xMCAqLworCWlmIChJU19HRU4oZGV2
X3ByaXYsIDkpIHx8IElTX0dFTihkZXZfcHJpdiwgMTApKSB7CisJCWk5MTVfcmVnX3QgcmVnID0g
Q0hJQ0tFTl9UUkFOUyhjcHVfdHJhbnNjb2Rlcik7CisJCXUzMiBjaGlja2VuID0gaW50ZWxfZGVf
cmVhZChkZXZfcHJpdiwgcmVnKTsKKworCQljaGlja2VuIHw9IFVOTUFTS19WQkxBTktfUFNSX0xJ
TktfT0ZGOworCQlpbnRlbF9kZV93cml0ZShkZXZfcHJpdiwgcmVnLCBjaGlja2VuKTsKKwl9CisK
IAkvKgogCSAqIFBlciBTcGVjOiBBdm9pZCBjb250aW51b3VzIFBTUiBleGl0IGJ5IG1hc2tpbmcg
TUVNVVAgYW5kIEhQRCBhbHNvCiAJICogbWFzayBMUFNQIHRvIGF2b2lkIGRlcGVuZGVuY3kgb24g
b3RoZXIgZHJpdmVycyB0aGF0IG1pZ2h0IGJsb2NrCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3JlZy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAppbmRl
eCAxNzQ4NDM0NWNiODAuLmFiYjM3NDM3ZmY1ZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9yZWcuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCkBA
IC03ODIxLDYgKzc4MjEsNyBAQCBlbnVtIHsKIAkJCQkJICAgIFtUUkFOU0NPREVSX0JdID0gX0NI
SUNLRU5fVFJBTlNfQiwgXAogCQkJCQkgICAgW1RSQU5TQ09ERVJfQ10gPSBfQ0hJQ0tFTl9UUkFO
U19DLCBcCiAJCQkJCSAgICBbVFJBTlNDT0RFUl9EXSA9IF9DSElDS0VOX1RSQU5TX0QpKQorI2Rl
ZmluZSAgVU5NQVNLX1ZCTEFOS19QU1JfTElOS19PRkYJKDEgPDwgMzApCiAjZGVmaW5lICBIU1df
RlJBTUVfU1RBUlRfREVMQVlfTUFTSwkoMyA8PCAyNykKICNkZWZpbmUgIEhTV19GUkFNRV9TVEFS
VF9ERUxBWSh4KQkoKHgpIDw8IDI3KSAvKiAwLTMgKi8KICNkZWZpbmUgIFZTQ19EQVRBX1NFTF9T
T0ZUV0FSRV9DT05UUk9MCSgxIDw8IDI1KSAvKiBHTEsgYW5kIENOTCsgKi8KLS0gCjIuMjYuMAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
