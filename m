Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ABB32B9AF9
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Nov 2020 19:54:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5088489C6E;
	Thu, 19 Nov 2020 18:54:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AFA0F89BAE
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Nov 2020 18:54:28 +0000 (UTC)
IronPort-SDR: Eymg+0jfsiA+uQBZlv0WRWdSa8rJUYwlUR/T985zIywD9XfTGsrbzTAehzIrf4hKnp8yp1h65Q
 XxAIvE+PR4dQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9810"; a="232962786"
X-IronPort-AV: E=Sophos;i="5.78,354,1599548400"; d="scan'208";a="232962786"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2020 10:54:27 -0800
IronPort-SDR: 08QtTb+KcvnlOovMOBLb/7rKCSkmJ7+9LgF1YAJxnjM13sMjds0ttSGbwwbiKXYpL6jXoLAKrk
 T/3olkXwG5eQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,354,1599548400"; d="scan'208";a="363483383"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 19 Nov 2020 10:54:24 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 19 Nov 2020 20:54:24 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 19 Nov 2020 20:53:56 +0200
Message-Id: <20201119185401.31883-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201119185401.31883-1-ville.syrjala@linux.intel.com>
References: <20201119185401.31883-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 08/13] drm/i915: Split plane data_rate into
 data_rate+data_rate_y
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClNw
bGl0IHRoZSBjdXJyZW50bHkgY29tYmluZWQgcGxhbmUgZGF0YV9yYXRlIGludG8gdGhlIHByb3Bl
cgpZIHZzLiBDYkNyIGNvbXBvbmVudHMuIFRoaXMgbWF0Y2hlcyBob3cgd2Ugbm93IHRyYWNrIHRo
ZQpwbGFuZSBkYnVmIGFsbG9jYXRpb25zLCBhbmQgdGh1cyB3aWxsIG1ha2UgdGhlIGRidWYgYmFu
ZHdpZHRoCmNhbGN1bGF0aW9ucyBhY3R1YWxseSBwcm9kdWNlIHRoZSBjb3JyZWN0IG51bWJlcnMg
Zm9yIGVhY2gKZGJ1ZiBzbGljZS4KClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmls
bGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogLi4uL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2F0b21pY19wbGFuZS5jIHwgMzQgKysrKysrKystLS0tLS0tLS0tCiAuLi4vZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljX3BsYW5lLmggfCAgMyArLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9idy5jICAgICAgIHwgMzYgKysrKysrKysrLS0tLS0tLS0t
LQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgIHwgIDQgKysr
CiAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmggICAgfCAgMyArKwog
NSBmaWxlcyBjaGFuZ2VkLCA0MiBpbnNlcnRpb25zKCspLCAzOCBkZWxldGlvbnMoLSkKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pY19wbGFuZS5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWNfcGxhbmUuYwppbmRl
eCBlYWExZTgzYjZmZGQuLjMxOGIyZDBjMDg0NCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWNfcGxhbmUuYworKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2F0b21pY19wbGFuZS5jCkBAIC0xNTMsMjkgKzE1MywxNiBAQCB1
bnNpZ25lZCBpbnQgaW50ZWxfcGxhbmVfcGl4ZWxfcmF0ZShjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0
Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKIH0KIAogdW5zaWduZWQgaW50IGludGVsX3BsYW5lX2RhdGFf
cmF0ZShjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKLQkJCQkgICBj
b25zdCBzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKnBsYW5lX3N0YXRlKQorCQkJCSAgIGNvbnN0
IHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAqcGxhbmVfc3RhdGUsCisJCQkJICAgaW50IGNvbG9y
X3BsYW5lKQogewogCWNvbnN0IHN0cnVjdCBkcm1fZnJhbWVidWZmZXIgKmZiID0gcGxhbmVfc3Rh
dGUtPmh3LmZiOwotCXVuc2lnbmVkIGludCBjcHA7Ci0JdW5zaWduZWQgaW50IHBpeGVsX3JhdGU7
CiAKIAlpZiAoIXBsYW5lX3N0YXRlLT51YXBpLnZpc2libGUpCiAJCXJldHVybiAwOwogCi0JcGl4
ZWxfcmF0ZSA9IGludGVsX3BsYW5lX3BpeGVsX3JhdGUoY3J0Y19zdGF0ZSwgcGxhbmVfc3RhdGUp
OwotCi0JY3BwID0gZmItPmZvcm1hdC0+Y3BwWzBdOwotCi0JLyoKLQkgKiBCYXNlZCBvbiBIU0Qj
OjE0MDg3MTU0OTMKLQkgKiBOVjEyIGNwcCA9PSA0LCBQMDEwIGNwcCA9PSA4Ci0JICoKLQkgKiBG
SVhNRSB3aGF0IGlzIHRoZSBsb2dpYyBiZWhpbmQgdGhpcz8KLQkgKi8KLQlpZiAoZmItPmZvcm1h
dC0+aXNfeXV2ICYmIGZiLT5mb3JtYXQtPm51bV9wbGFuZXMgPiAxKQotCQljcHAgKj0gNDsKLQot
CXJldHVybiBwaXhlbF9yYXRlICogY3BwOworCXJldHVybiBpbnRlbF9wbGFuZV9waXhlbF9yYXRl
KGNydGNfc3RhdGUsIHBsYW5lX3N0YXRlKSAqCisJCWZiLT5mb3JtYXQtPmNwcFtjb2xvcl9wbGFu
ZV07CiB9CiAKIGludCBpbnRlbF9wbGFuZV9jYWxjX21pbl9jZGNsayhzdHJ1Y3QgaW50ZWxfYXRv
bWljX3N0YXRlICpzdGF0ZSwKQEAgLTI5Nyw2ICsyODQsNyBAQCB2b2lkIGludGVsX3BsYW5lX3Nl
dF9pbnZpc2libGUoc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCiAJY3J0Y19z
dGF0ZS0+bnYxMl9wbGFuZXMgJj0gfkJJVChwbGFuZS0+aWQpOwogCWNydGNfc3RhdGUtPmM4X3Bs
YW5lcyAmPSB+QklUKHBsYW5lLT5pZCk7CiAJY3J0Y19zdGF0ZS0+ZGF0YV9yYXRlW3BsYW5lLT5p
ZF0gPSAwOworCWNydGNfc3RhdGUtPmRhdGFfcmF0ZV95W3BsYW5lLT5pZF0gPSAwOwogCWNydGNf
c3RhdGUtPm1pbl9jZGNsa1twbGFuZS0+aWRdID0gMDsKIAogCXBsYW5lX3N0YXRlLT51YXBpLnZp
c2libGUgPSBmYWxzZTsKQEAgLTMzNSw4ICszMjMsMTYgQEAgaW50IGludGVsX3BsYW5lX2F0b21p
Y19jaGVja193aXRoX3N0YXRlKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpvbGRfY3J0
Y18KIAlpZiAobmV3X3BsYW5lX3N0YXRlLT51YXBpLnZpc2libGUgfHwgb2xkX3BsYW5lX3N0YXRl
LT51YXBpLnZpc2libGUpCiAJCW5ld19jcnRjX3N0YXRlLT51cGRhdGVfcGxhbmVzIHw9IEJJVChw
bGFuZS0+aWQpOwogCi0JbmV3X2NydGNfc3RhdGUtPmRhdGFfcmF0ZVtwbGFuZS0+aWRdID0KLQkJ
aW50ZWxfcGxhbmVfZGF0YV9yYXRlKG5ld19jcnRjX3N0YXRlLCBuZXdfcGxhbmVfc3RhdGUpOwor
CWlmIChuZXdfcGxhbmVfc3RhdGUtPnVhcGkudmlzaWJsZSAmJgorCSAgICBpbnRlbF9mb3JtYXRf
aW5mb19pc195dXZfc2VtaXBsYW5hcihmYi0+Zm9ybWF0LCBmYi0+bW9kaWZpZXIpKSB7CisJCW5l
d19jcnRjX3N0YXRlLT5kYXRhX3JhdGVfeVtwbGFuZS0+aWRdID0KKwkJCWludGVsX3BsYW5lX2Rh
dGFfcmF0ZShuZXdfY3J0Y19zdGF0ZSwgbmV3X3BsYW5lX3N0YXRlLCAwKTsKKwkJbmV3X2NydGNf
c3RhdGUtPmRhdGFfcmF0ZVtwbGFuZS0+aWRdID0KKwkJCWludGVsX3BsYW5lX2RhdGFfcmF0ZShu
ZXdfY3J0Y19zdGF0ZSwgbmV3X3BsYW5lX3N0YXRlLCAxKTsKKwl9IGVsc2UgaWYgKG5ld19wbGFu
ZV9zdGF0ZS0+dWFwaS52aXNpYmxlKSB7CisJCW5ld19jcnRjX3N0YXRlLT5kYXRhX3JhdGVbcGxh
bmUtPmlkXSA9CisJCQlpbnRlbF9wbGFuZV9kYXRhX3JhdGUobmV3X2NydGNfc3RhdGUsIG5ld19w
bGFuZV9zdGF0ZSwgMCk7CisJfQogCiAJcmV0dXJuIGludGVsX3BsYW5lX2F0b21pY19jYWxjX2No
YW5nZXMob2xkX2NydGNfc3RhdGUsIG5ld19jcnRjX3N0YXRlLAogCQkJCQkgICAgICAgb2xkX3Bs
YW5lX3N0YXRlLCBuZXdfcGxhbmVfc3RhdGUpOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWNfcGxhbmUuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfYXRvbWljX3BsYW5lLmgKaW5kZXggNWM3OGEwODdlZDg2Li45MTJiMzEx
ZjE1M2UgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRv
bWljX3BsYW5lLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9t
aWNfcGxhbmUuaApAQCAtMjIsNyArMjIsOCBAQCB1bnNpZ25lZCBpbnQgaW50ZWxfcGxhbmVfcGl4
ZWxfcmF0ZShjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKIAkJCQkg
ICAgY29uc3Qgc3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpwbGFuZV9zdGF0ZSk7CiAKIHVuc2ln
bmVkIGludCBpbnRlbF9wbGFuZV9kYXRhX3JhdGUoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3Rh
dGUgKmNydGNfc3RhdGUsCi0JCQkJICAgY29uc3Qgc3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpw
bGFuZV9zdGF0ZSk7CisJCQkJICAgY29uc3Qgc3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpwbGFu
ZV9zdGF0ZSwKKwkJCQkgICBpbnQgY29sb3JfcGxhbmUpOwogdm9pZCBpbnRlbF9wbGFuZV9jb3B5
X3VhcGlfdG9faHdfc3RhdGUoc3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpwbGFuZV9zdGF0ZSwK
IAkJCQkgICAgICAgY29uc3Qgc3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpmcm9tX3BsYW5lX3N0
YXRlLAogCQkJCSAgICAgICBzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0Yyk7CmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2J3LmMKaW5kZXggYTMzYThhMjc4NGU5Li45OGFhMzJiZWVlMmUg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYncuYworKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmMKQEAgLTMzNSw2ICszMzUs
NyBAQCBzdGF0aWMgdW5zaWduZWQgaW50IGludGVsX2J3X2NydGNfbnVtX2FjdGl2ZV9wbGFuZXMo
Y29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdAogc3RhdGljIHVuc2lnbmVkIGludCBpbnRlbF9i
d19jcnRjX2RhdGFfcmF0ZShjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0
ZSkKIHsKIAlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YyA9IHRvX2ludGVsX2NydGMoY3J0Y19zdGF0
ZS0+dWFwaS5jcnRjKTsKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHRvX2k5MTUo
Y3J0Yy0+YmFzZS5kZXYpOwogCXVuc2lnbmVkIGludCBkYXRhX3JhdGUgPSAwOwogCWVudW0gcGxh
bmVfaWQgcGxhbmVfaWQ7CiAKQEAgLTM0Nyw2ICszNDgsOSBAQCBzdGF0aWMgdW5zaWduZWQgaW50
IGludGVsX2J3X2NydGNfZGF0YV9yYXRlKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpj
cnRjXwogCQkJY29udGludWU7CiAKIAkJZGF0YV9yYXRlICs9IGNydGNfc3RhdGUtPmRhdGFfcmF0
ZVtwbGFuZV9pZF07CisKKwkJaWYgKElOVEVMX0dFTihpOTE1KSA8IDExKQorCQkJZGF0YV9yYXRl
ICs9IGNydGNfc3RhdGUtPmRhdGFfcmF0ZV95W3BsYW5lX2lkXTsKIAl9CiAKIAlyZXR1cm4gZGF0
YV9yYXRlOwpAQCAtNDQ0LDI4ICs0NDgsMjQgQEAgc3RhdGljIHZvaWQgc2tsX2NydGNfY2FsY19k
YnVmX2J3KHN0cnVjdCBpbnRlbF9id19zdGF0ZSAqYndfc3RhdGUsCiAJZm9yX2VhY2hfcGxhbmVf
aWRfb25fY3J0YyhjcnRjLCBwbGFuZV9pZCkgewogCQljb25zdCBzdHJ1Y3Qgc2tsX2RkYl9lbnRy
eSAqZGRiID0KIAkJCSZjcnRjX3N0YXRlLT53bS5za2wucGxhbmVfZGRiW3BsYW5lX2lkXTsKLQkJ
Y29uc3Qgc3RydWN0IHNrbF9kZGJfZW50cnkgKmRkYl95ID0KLQkJCSZjcnRjX3N0YXRlLT53bS5z
a2wucGxhbmVfZGRiX3lbcGxhbmVfaWRdOwogCQl1bnNpZ25lZCBpbnQgZGF0YV9yYXRlID0gY3J0
Y19zdGF0ZS0+ZGF0YV9yYXRlW3BsYW5lX2lkXTsKLQkJdW5zaWduZWQgaW50IGRidWZfbWFzayA9
IDA7CisJCXVuc2lnbmVkIGludCBkYnVmX21hc2sgPSBza2xfZGRiX2RidWZfc2xpY2VfbWFzayhp
OTE1LCBkZGIpOwogCQlpbnQgc2xpY2VfaWQ7CiAKLQkJZGJ1Zl9tYXNrIHw9IHNrbF9kZGJfZGJ1
Zl9zbGljZV9tYXNrKGk5MTUsIGRkYik7Ci0JCWRidWZfbWFzayB8PSBza2xfZGRiX2RidWZfc2xp
Y2VfbWFzayhpOTE1LCBkZGJfeSk7CisJCWZvcl9lYWNoX2RidWZfc2xpY2VfaW5fbWFzayhzbGlj
ZV9pZCwgZGJ1Zl9tYXNrKQorCQkJY3J0Y19idy0+dXNlZF9id1tzbGljZV9pZF0gKz0gZGF0YV9y
YXRlOworCX0KKworCWlmIChJTlRFTF9HRU4oaTkxNSkgPj0gMTEpCisJCXJldHVybjsKKworCWZv
cl9lYWNoX3BsYW5lX2lkX29uX2NydGMoY3J0YywgcGxhbmVfaWQpIHsKKwkJY29uc3Qgc3RydWN0
IHNrbF9kZGJfZW50cnkgKmRkYiA9CisJCQkmY3J0Y19zdGF0ZS0+d20uc2tsLnBsYW5lX2RkYl95
W3BsYW5lX2lkXTsKKwkJdW5zaWduZWQgaW50IGRhdGFfcmF0ZSA9IGNydGNfc3RhdGUtPmRhdGFf
cmF0ZV95W3BsYW5lX2lkXTsKKwkJdW5zaWduZWQgaW50IGRidWZfbWFzayA9IHNrbF9kZGJfZGJ1
Zl9zbGljZV9tYXNrKGk5MTUsIGRkYik7CisJCWludCBzbGljZV9pZDsKIAotCQkvKgotCQkgKiBG
SVhNRTogVG8gY2FsY3VsYXRlIHRoYXQgbW9yZSBwcm9wZXJseSB3ZSBwcm9iYWJseQotCQkgKiBu
ZWVkIHRvIHNwbGl0IHBlciBwbGFuZSBkYXRhX3JhdGUgaW50byBkYXRhX3JhdGVfeQotCQkgKiBh
bmQgZGF0YV9yYXRlX3V2IGZvciBtdWx0aXBsYW5hciBmb3JtYXRzIGluIG9yZGVyIG5vdAotCQkg
KiB0byBnZXQgYWNjb3VudGVkIHRob3NlIHR3aWNlIGlmIHRoZXkgaGFwcGVuIHRvIHJlc2lkZQot
CQkgKiBvbiBkaWZmZXJlbnQgc2xpY2VzLgotCQkgKiBIb3dldmVyIGZvciBwcmUtaWNsIHRoaXMg
d291bGQgd29yayBhbnl3YXkgYmVjYXVzZQotCQkgKiB3ZSBoYXZlIG9ubHkgc2luZ2xlIHNsaWNl
IGFuZCBmb3IgaWNsKyB1diBwbGFuZSBoYXMKLQkJICogbm9uLXplcm8gZGF0YSByYXRlLgotCQkg
KiBTbyBpbiB3b3JzdCBjYXNlIHRob3NlIGNhbGN1bGF0aW9uIGFyZSBhIGJpdAotCQkgKiBwZXNz
aW1pc3RpYywgd2hpY2ggc2hvdWxkbid0IHBvc2UgYW55IHNpZ25pZmljYW50Ci0JCSAqIHByb2Js
ZW0gYW55d2F5LgotCQkgKi8KIAkJZm9yX2VhY2hfZGJ1Zl9zbGljZV9pbl9tYXNrKHNsaWNlX2lk
LCBkYnVmX21hc2spCiAJCQljcnRjX2J3LT51c2VkX2J3W3NsaWNlX2lkXSArPSBkYXRhX3JhdGU7
CiAJfQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwppbmRl
eCAwOWY3NGU4N2EzMDMuLjE0MWQ4NDExODI3OSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKQEAgLTM1ODUsNiArMzU4NSw3IEBAIHN0YXRpYyB2b2lk
IGludGVsX3BsYW5lX2Rpc2FibGVfbm9hdG9taWMoc3RydWN0IGludGVsX2NydGMgKmNydGMsCiAJ
aW50ZWxfc2V0X3BsYW5lX3Zpc2libGUoY3J0Y19zdGF0ZSwgcGxhbmVfc3RhdGUsIGZhbHNlKTsK
IAlmaXh1cF9hY3RpdmVfcGxhbmVzKGNydGNfc3RhdGUpOwogCWNydGNfc3RhdGUtPmRhdGFfcmF0
ZVtwbGFuZS0+aWRdID0gMDsKKwljcnRjX3N0YXRlLT5kYXRhX3JhdGVfeVtwbGFuZS0+aWRdID0g
MDsKIAljcnRjX3N0YXRlLT5taW5fY2RjbGtbcGxhbmUtPmlkXSA9IDA7CiAKIAlpZiAocGxhbmUt
PmlkID09IFBMQU5FX1BSSU1BUlkpCkBAIC0xMjg0Niw2ICsxMjg0Nyw3IEBAIHN0YXRpYyBpbnQg
aWNsX2NoZWNrX252MTJfcGxhbmVzKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRl
KQogCQlpZiAocGxhbmVfc3RhdGUtPnBsYW5hcl9zbGF2ZSAmJiAhcGxhbmVfc3RhdGUtPnVhcGku
dmlzaWJsZSkgewogCQkJY3J0Y19zdGF0ZS0+YWN0aXZlX3BsYW5lcyAmPSB+QklUKHBsYW5lLT5p
ZCk7CiAJCQljcnRjX3N0YXRlLT51cGRhdGVfcGxhbmVzIHw9IEJJVChwbGFuZS0+aWQpOworCQkJ
Y3J0Y19zdGF0ZS0+ZGF0YV9yYXRlW3BsYW5lLT5pZF0gPSAwOwogCQl9CiAKIAkJcGxhbmVfc3Rh
dGUtPnBsYW5hcl9zbGF2ZSA9IGZhbHNlOwpAQCAtMTI4ODksNiArMTI4OTEsOCBAQCBzdGF0aWMg
aW50IGljbF9jaGVja19udjEyX3BsYW5lcyhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19z
dGF0ZSkKIAkJbGlua2VkX3N0YXRlLT5wbGFuYXJfbGlua2VkX3BsYW5lID0gcGxhbmU7CiAJCWNy
dGNfc3RhdGUtPmFjdGl2ZV9wbGFuZXMgfD0gQklUKGxpbmtlZC0+aWQpOwogCQljcnRjX3N0YXRl
LT51cGRhdGVfcGxhbmVzIHw9IEJJVChsaW5rZWQtPmlkKTsKKwkJY3J0Y19zdGF0ZS0+ZGF0YV9y
YXRlW2xpbmtlZC0+aWRdID0KKwkJCWNydGNfc3RhdGUtPmRhdGFfcmF0ZV95W3BsYW5lLT5pZF07
CiAJCWRybV9kYmdfa21zKCZkZXZfcHJpdi0+ZHJtLCAiVXNpbmcgJXMgYXMgWSBwbGFuZSBmb3Ig
JXNcbiIsCiAJCQkgICAgbGlua2VkLT5iYXNlLm5hbWUsIHBsYW5lLT5iYXNlLm5hbWUpOwogCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlw
ZXMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5o
CmluZGV4IDJmMDczODY0NmNmZC4uZDBiOTE0NWRkNmYwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaAorKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaApAQCAtMTAzNSw3ICsxMDM1
LDEwIEBAIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlIHsKIAogCWludCBtaW5fY2RjbGtbSTkxNV9N
QVhfUExBTkVTXTsKIAorCS8qIGZvciBwYWNrZWQvcGxhbmFyIENiQ3IgKi8KIAl1MzIgZGF0YV9y
YXRlW0k5MTVfTUFYX1BMQU5FU107CisJLyogZm9yIHBsYW5hciBZICovCisJdTMyIGRhdGFfcmF0
ZV95W0k5MTVfTUFYX1BMQU5FU107CiAKIAkvKiBGSVhNRSB1bmlmeSB3aXRoIGRhdGFfcmF0ZVtd
ICovCiAJdTY0IHBsYW5lX2RhdGFfcmF0ZVtJOTE1X01BWF9QTEFORVNdOwotLSAKMi4yNi4yCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
