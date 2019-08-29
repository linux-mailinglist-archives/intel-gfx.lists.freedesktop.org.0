Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A120EA21FA
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Aug 2019 19:16:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8AF6B6E147;
	Thu, 29 Aug 2019 17:16:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5578A6E146;
 Thu, 29 Aug 2019 17:16:49 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Aug 2019 10:16:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,444,1559545200"; d="scan'208";a="356516838"
Received: from mdroper-desk.fm.intel.com ([10.105.128.12])
 by orsmga005.jf.intel.com with ESMTP; 29 Aug 2019 10:16:48 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org,
	igt-dev@lists.freedesktop.org
Date: Thu, 29 Aug 2019 10:16:39 -0700
Message-Id: <20190829171639.30767-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] tests/i915_pm_lpsp: Don't always fail
 pfit subtest on 13x7 panels
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhpcyB0ZXN0IGN1cnJlbnRseSBkb2VzIHR3byBzZXBhcmF0ZSBhc3NlcnRzIHRvIGVuc3VyZSB0
aGF0CmhkaXNwbGF5ID4gMTAyNCBhbmQgdmRpc3BsYXkgPiA3NjggdG8gZW5zdXJlIHRoYXQgd2Un
cmUgbm90IHJ1bm5pbmcgb24gYQpzeXN0ZW0gd2l0aCBhIG5hdGl2ZSAxMHg3IHBhbmVsLiAgSG93
ZXZlciB0aGUgc2Vjb25kIGFzc2VydCBoZXJlIHdpbGwKYWxzbyBmYWlsIG9uIDEzeDcgcGFuZWxz
LCBldmVuIHRob3VnaCB0aGUgcGFuZWwgZml0dGVyIHdvdWxkIGhhdmUgYmVlbgp1c2VkIGluIHRo
YXQgY2FzZS4gIENvbWJpbmUgdGhlIHR3byB0ZXN0cyB0byBtYWtlIHN1cmUgd2UncmUgY2hlY2tp
bmcKZm9yIGV4YWN0bHkgdGhlIDEweDcgbW9kZS4KCkFsc28sIGlmIHRoZSBhc3N1bXB0aW9uIHRo
YXQgbm8gcGxhdGZvcm0gd2l0aCBMUFNQIHdvdWxkIGV2ZXIgaGF2ZSBhCjEweDcgcGFuZWwgdHVy
bnMgb3V0IHRvIGJlIGZhbHNlLCB3ZSBzaG91bGQganVzdCBza2lwIHRoaXMgc3VidGVzdApyYXRo
ZXIgdGhhbiBmYWlsaW5nIGl0LCBzbyBjaGFuZ2UgdGhlIGlndF9hc3NlcnQoKSB0byBpZ3RfcmVx
dWlyZS4KCkJ1Z3ppbGxhOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNn
aT9pZD0xMDY2MDIKU2lnbmVkLW9mZi1ieTogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGlu
dGVsLmNvbT4KLS0tCiB0ZXN0cy9pOTE1L2k5MTVfcG1fbHBzcC5jIHwgNyArKystLS0tCiAxIGZp
bGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBh
L3Rlc3RzL2k5MTUvaTkxNV9wbV9scHNwLmMgYi90ZXN0cy9pOTE1L2k5MTVfcG1fbHBzcC5jCmlu
ZGV4IGIzMTlkYmU5Li43NTZkZjcxMCAxMDA2NDQKLS0tIGEvdGVzdHMvaTkxNS9pOTE1X3BtX2xw
c3AuYworKysgYi90ZXN0cy9pOTE1L2k5MTVfcG1fbHBzcC5jCkBAIC0xMDksMTAgKzEwOSw5IEBA
IHN0YXRpYyB2b2lkIGVkcF9zdWJ0ZXN0KGludCBkcm1fZmQsIGRybU1vZGVSZXNQdHIgZHJtX3Jl
cywKIAkJCSAqIHN1cHBvcnQgTFBTUCBhcmUgdG9vIG5ldyBmb3IgcGFuZWxzIHdpdGggbmF0aXZl
CiAJCQkgKiAxMDI0eDc2OCByZXNvbHV0aW9uLCBzbyB0aGlzIHNob3VsZCBmb3JjZSB0aGUgcGFu
ZWwKIAkJCSAqIGZpdHRlci4gKi8KLQkJCWlndF9hc3NlcnQoYy0+Y291bnRfbW9kZXMgJiYKLQkJ
CQkgICBjLT5tb2Rlc1swXS5oZGlzcGxheSA+IDEwMjQpOwotCQkJaWd0X2Fzc2VydChjLT5jb3Vu
dF9tb2RlcyAmJgotCQkJCSAgIGMtPm1vZGVzWzBdLnZkaXNwbGF5ID4gNzY4KTsKKwkJCWlndF9y
ZXF1aXJlKGMtPmNvdW50X21vZGVzICYmCisJCQkJICAgIChjLT5tb2Rlc1swXS5oZGlzcGxheSAh
PSAxMDI0IHx8CisJCQkJICAgICBjLT5tb2Rlc1swXS52ZGlzcGxheSAhPSA3NjgpKTsKIAkJCW1v
ZGUgPSAmc3RkXzEwMjRfbW9kZTsKIAkJCWJyZWFrOwogCQl9Ci0tIAoyLjIwLjEKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
