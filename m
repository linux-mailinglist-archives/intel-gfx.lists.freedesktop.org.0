Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E3E858E31
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jun 2019 00:55:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0CF46E854;
	Thu, 27 Jun 2019 22:55:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 419556E854
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jun 2019 22:55:46 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jun 2019 15:55:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,425,1557212400"; d="scan'208";a="313955582"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.54.75.49])
 by orsmga004.jf.intel.com with ESMTP; 27 Jun 2019 15:55:45 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Jun 2019 15:57:35 -0700
Message-Id: <20190627225736.2665-1-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190624210850.17223-9-manasi.d.navare@intel.com>
References: <20190624210850.17223-9-manasi.d.navare@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 8/8] drm/i915/display/icl: In port sync mode
 disable slaves first then masters
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

SW4gdGhlIHRyYW5zY29kZXIgcG9ydCBzeW5jIG1vZGUsIHRoZSBzbGF2ZSB0cmFuc2NvZGVycyBt
YXNrIHRoZWlyIHZibGFua3MKdW50aWwgbWFzdGVyIHRyYW5zY29kZXIncyB2Ymxhbmsgc28gd2hp
bGUgZGlzYWJsaW5nIHRoZW0sIG1ha2UKc3VyZSBzbGF2ZXMgYXJlIGRpc2FibGVkIGZpcnN0IGFu
ZCB0aGVuIHRoZSBtYXN0ZXJzLgoKdjI6CiogVXNlIHRoZSBpbnRlbF9vbGRfY3J0Y19zdGF0ZV9k
aXNhYmxlcygpIGhlbHBlcgoKQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51
eC5pbnRlbC5jb20+CkNjOiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGlu
dXguaW50ZWwuY29tPgpDYzogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4K
Q2M6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IE1h
bmFzaSBOYXZhcmUgPG1hbmFzaS5kLm5hdmFyZUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCA2OCArKysrKysrKysrKysrKysrKyst
LQogMSBmaWxlIGNoYW5nZWQsIDYyIGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwppbmRleCAzY2NiYTUz
OWNjZTAuLmUyNDRkOWNiNGUzMyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5LmMKQEAgLTEzOTEyLDYgKzEzOTEyLDU3IEBAIHN0YXRpYyB2b2lkIGludGVs
X2NvbW1pdF9tb2Rlc2V0X2Rpc2FibGVzKHN0cnVjdCBkcm1fYXRvbWljX3N0YXRlICpzdGF0ZSkK
IAl9CiB9CiAKK3N0YXRpYyB2b2lkIGljbF9jb21taXRfbW9kZXNldF9kaXNhYmxlcyhzdHJ1Y3Qg
ZHJtX2F0b21pY19zdGF0ZSAqc3RhdGUpCit7CisJc3RydWN0IGRybV9jcnRjX3N0YXRlICpvbGRf
Y3J0Y19zdGF0ZSwgKm5ld19jcnRjX3N0YXRlOworCXN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpu
ZXdfaW50ZWxfY3J0Y19zdGF0ZSwgKm9sZF9pbnRlbF9jcnRjX3N0YXRlOworCXN0cnVjdCBkcm1f
Y3J0YyAqY3J0YzsKKwlzdHJ1Y3QgaW50ZWxfY3J0YyAqaW50ZWxfY3J0YzsKKwlpbnQgaTsKKwor
CS8qCisJICogRGlzYWJsZSBhbGwgdGhlIFBvcnQgU3luYyBTbGF2ZXMgZmlyc3QKKwkgKi8KKwlm
b3JfZWFjaF9vbGRuZXdfY3J0Y19pbl9zdGF0ZShzdGF0ZSwgY3J0Yywgb2xkX2NydGNfc3RhdGUs
IG5ld19jcnRjX3N0YXRlLCBpKSB7CisJCW9sZF9pbnRlbF9jcnRjX3N0YXRlID0gdG9faW50ZWxf
Y3J0Y19zdGF0ZShvbGRfY3J0Y19zdGF0ZSk7CisJCW5ld19pbnRlbF9jcnRjX3N0YXRlID0gdG9f
aW50ZWxfY3J0Y19zdGF0ZShuZXdfY3J0Y19zdGF0ZSk7CisJCWludGVsX2NydGMgPSB0b19pbnRl
bF9jcnRjKGNydGMpOworCisJCWlmICghbmVlZHNfbW9kZXNldChuZXdfY3J0Y19zdGF0ZSkgfHwK
KwkJICAgICFpc190cmFuc19wb3J0X3N5bmNfc2xhdmUob2xkX2ludGVsX2NydGNfc3RhdGUpKQor
CQkJY29udGludWU7CisKKwkJaW50ZWxfcHJlX3BsYW5lX3VwZGF0ZShvbGRfaW50ZWxfY3J0Y19z
dGF0ZSwgbmV3X2ludGVsX2NydGNfc3RhdGUpOworCisJCWlmIChvbGRfY3J0Y19zdGF0ZS0+YWN0
aXZlKQorCQkJaW50ZWxfb2xkX2NydGNfc3RhdGVfZGlzYWJsZXMoc3RhdGUsCisJCQkJCQkgICAg
ICBvbGRfaW50ZWxfY3J0Y19zdGF0ZSwKKwkJCQkJCSAgICAgIG5ld19pbnRlbF9jcnRjX3N0YXRl
LAorCQkJCQkJICAgICAgaW50ZWxfY3J0Yyk7CisJfQorCisJLyoKKwkgKiBEaXNhYmxlIHJlc3Qg
b2YgdGhlIENSVENzIG90aGVyIHRoYW4gc2xhdmVzCisJICovCisJZm9yX2VhY2hfb2xkbmV3X2Ny
dGNfaW5fc3RhdGUoc3RhdGUsIGNydGMsIG9sZF9jcnRjX3N0YXRlLCBuZXdfY3J0Y19zdGF0ZSwg
aSkgeworCQlvbGRfaW50ZWxfY3J0Y19zdGF0ZSA9IHRvX2ludGVsX2NydGNfc3RhdGUob2xkX2Ny
dGNfc3RhdGUpOworCQluZXdfaW50ZWxfY3J0Y19zdGF0ZSA9IHRvX2ludGVsX2NydGNfc3RhdGUo
bmV3X2NydGNfc3RhdGUpOworCQlpbnRlbF9jcnRjID0gdG9faW50ZWxfY3J0YyhjcnRjKTsKKwor
CQlpZiAoIW5lZWRzX21vZGVzZXQobmV3X2NydGNfc3RhdGUpIHx8CisJCSAgICBpc190cmFuc19w
b3J0X3N5bmNfc2xhdmUob2xkX2ludGVsX2NydGNfc3RhdGUpKQorCQkJY29udGludWU7CisKKwkJ
aW50ZWxfcHJlX3BsYW5lX3VwZGF0ZShvbGRfaW50ZWxfY3J0Y19zdGF0ZSwgbmV3X2ludGVsX2Ny
dGNfc3RhdGUpOworCisJCWlmIChvbGRfY3J0Y19zdGF0ZS0+YWN0aXZlKQorCQkJaW50ZWxfb2xk
X2NydGNfc3RhdGVfZGlzYWJsZXMoc3RhdGUsCisJCQkJCQkgICAgICBvbGRfaW50ZWxfY3J0Y19z
dGF0ZSwKKwkJCQkJCSAgICAgIG5ld19pbnRlbF9jcnRjX3N0YXRlLAorCQkJCQkJICAgICAgaW50
ZWxfY3J0Yyk7CisJfQorfQorCiBzdGF0aWMgdm9pZCBpbnRlbF9jb21taXRfbW9kZXNldF9lbmFi
bGVzKHN0cnVjdCBkcm1fYXRvbWljX3N0YXRlICpzdGF0ZSkKIHsKIAlzdHJ1Y3QgZHJtX2NydGMg
KmNydGM7CkBAIC0xNDI2OCw2ICsxNDMxOSwxMSBAQCBzdGF0aWMgdm9pZCBpbnRlbF9hdG9taWNf
Y29tbWl0X3RhaWwoc3RydWN0IGRybV9hdG9taWNfc3RhdGUgKnN0YXRlKQogCiAJaW50ZWxfYXRv
bWljX2NvbW1pdF9mZW5jZV93YWl0KGludGVsX3N0YXRlKTsKIAorCWRybV9hdG9taWNfaGVscGVy
X3dhaXRfZm9yX2RlcGVuZGVuY2llcyhzdGF0ZSk7CisKKwlpZiAoaW50ZWxfc3RhdGUtPm1vZGVz
ZXQpCisJCXdha2VyZWYgPSBpbnRlbF9kaXNwbGF5X3Bvd2VyX2dldChkZXZfcHJpdiwgUE9XRVJf
RE9NQUlOX01PREVTRVQpOworCiAJZm9yX2VhY2hfb2xkbmV3X2NydGNfaW5fc3RhdGUoc3RhdGUs
IGNydGMsIG9sZF9jcnRjX3N0YXRlLCBuZXdfY3J0Y19zdGF0ZSwgaSkgewogCQluZXdfaW50ZWxf
Y3J0Y19zdGF0ZSA9IHRvX2ludGVsX2NydGNfc3RhdGUobmV3X2NydGNfc3RhdGUpOwogCQlpbnRl
bF9jcnRjID0gdG9faW50ZWxfY3J0YyhjcnRjKTsKQEAgLTE0MjgwLDExICsxNDMzNiw2IEBAIHN0
YXRpYyB2b2lkIGludGVsX2F0b21pY19jb21taXRfdGFpbChzdHJ1Y3QgZHJtX2F0b21pY19zdGF0
ZSAqc3RhdGUpCiAJCX0KIAl9CiAKLQlkcm1fYXRvbWljX2hlbHBlcl93YWl0X2Zvcl9kZXBlbmRl
bmNpZXMoc3RhdGUpOwotCi0JaWYgKGludGVsX3N0YXRlLT5tb2Rlc2V0KQotCQl3YWtlcmVmID0g
aW50ZWxfZGlzcGxheV9wb3dlcl9nZXQoZGV2X3ByaXYsIFBPV0VSX0RPTUFJTl9NT0RFU0VUKTsK
LQogCWRldl9wcml2LT5kaXNwbGF5LmNvbW1pdF9tb2Rlc2V0X2Rpc2FibGVzKHN0YXRlKTsKIAog
CS8qIEZJWE1FOiBFdmVudHVhbGx5IGdldCByaWQgb2Ygb3VyIGludGVsX2NydGMtPmNvbmZpZyBw
b2ludGVyICovCkBAIC0xNjE4MSw3ICsxNjIzMiwxMiBAQCB2b2lkIGludGVsX2luaXRfZGlzcGxh
eV9ob29rcyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJZWxzZQogCQlkZXZf
cHJpdi0+ZGlzcGxheS5jb21taXRfbW9kZXNldF9lbmFibGVzID0gaW50ZWxfY29tbWl0X21vZGVz
ZXRfZW5hYmxlczsKIAotCWRldl9wcml2LT5kaXNwbGF5LmNvbW1pdF9tb2Rlc2V0X2Rpc2FibGVz
ID0gaW50ZWxfY29tbWl0X21vZGVzZXRfZGlzYWJsZXM7CisJaWYgKElOVEVMX0dFTihkZXZfcHJp
dikgPj0gMTEpCisJCWRldl9wcml2LT5kaXNwbGF5LmNvbW1pdF9tb2Rlc2V0X2Rpc2FibGVzID0K
KwkJCWljbF9jb21taXRfbW9kZXNldF9kaXNhYmxlczsKKwllbHNlCisJCWRldl9wcml2LT5kaXNw
bGF5LmNvbW1pdF9tb2Rlc2V0X2Rpc2FibGVzID0KKwkJCWludGVsX2NvbW1pdF9tb2Rlc2V0X2Rp
c2FibGVzOwogCiB9CiAKLS0gCjIuMTkuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
