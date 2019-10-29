Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76DECE8BA4
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2019 16:16:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C47A56EB96;
	Tue, 29 Oct 2019 15:16:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6B8D6EB94
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2019 15:16:31 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Oct 2019 08:16:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,244,1569308400"; d="scan'208";a="283267564"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 29 Oct 2019 08:16:28 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 29 Oct 2019 17:16:28 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 29 Oct 2019 17:16:14 +0200
Message-Id: <20191029151614.16929-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191029151614.16929-1-ville.syrjala@linux.intel.com>
References: <20191029151614.16929-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/5] drm/i915: Dump the mode for the crtc just
 the once
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCk5v
IHBvaW50IGluIHJlcGVhdGluZyB0aGUgY3J0YyBtb2RlIGZvciBlYWNoIGNsb25lZCBlbmNvZGVy
LgpKdXN0IHByaW50IGl0IG9uY2UsIGFuZCBhdm9pZCB1c2luZyBtdWx0aXBsZSBsaW5lcyBmb3Ig
aXQuCkFuZCB3aGlsZSBhdCBsZXQncyBwb2xpdXNoIHRoZSBmaXhlZCBtb2RlIHByaW50IHRvIGZp
dCBvbgpvbmUgbGluZSBhcyB3ZWxsLgoKU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2
aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2RlYnVnZnMuYyB8IDI3ICsrKysrKysrKy0tLS0tLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNo
YW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwgMTggZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2RlYnVnZnMuYwppbmRleCAyZWM4OTMwYmU3NzUuLjc0NjAyYzNhZWJlNiAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMKQEAgLTIzODgsMjkgKzIzODgsMTYgQEAgc3RhdGljIHZv
aWQgaW50ZWxfZW5jb2Rlcl9pbmZvKHN0cnVjdCBzZXFfZmlsZSAqbSwKIAlzZXFfcHJpbnRmKG0s
ICJcdGVuY29kZXIgJWQ6IHR5cGU6ICVzLCBjb25uZWN0b3JzOlxuIiwKIAkJICAgZW5jb2Rlci0+
YmFzZS5iYXNlLmlkLCBlbmNvZGVyLT5iYXNlLm5hbWUpOwogCi0JZm9yX2VhY2hfY29ubmVjdG9y
X29uX2VuY29kZXIoZGV2LCAmZW5jb2Rlci0+YmFzZSwgY29ubmVjdG9yKSB7Ci0JCXNlcV9wcmlu
dGYobSwgIlx0XHRjb25uZWN0b3IgJWQ6IHR5cGU6ICVzLCBzdGF0dXM6ICVzIiwKLQkJCSAgIGNv
bm5lY3Rvci0+YmFzZS5iYXNlLmlkLCBjb25uZWN0b3ItPmJhc2UubmFtZSwKLQkJCSAgIGRybV9n
ZXRfY29ubmVjdG9yX3N0YXR1c19uYW1lKGNvbm5lY3Rvci0+YmFzZS5zdGF0dXMpKTsKLQotCQlp
ZiAoY29ubmVjdG9yLT5iYXNlLnN0YXR1cyA9PSBjb25uZWN0b3Jfc3RhdHVzX2Nvbm5lY3RlZCkg
ewotCQkJY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUgPQotCQkJCXRv
X2ludGVsX2NydGNfc3RhdGUoY3J0Yy0+YmFzZS5zdGF0ZSk7Ci0KLQkJCXNlcV9wcmludGYobSwg
IiwgbW9kZTpcbiIpOwotCQkJaW50ZWxfc2VxX3ByaW50X21vZGUobSwgMiwgJmNydGNfc3RhdGUt
PmJhc2UubW9kZSk7Ci0JCX0gZWxzZSB7Ci0JCQlzZXFfcHV0YyhtLCAnXG4nKTsKLQkJfQotCX0K
Kwlmb3JfZWFjaF9jb25uZWN0b3Jfb25fZW5jb2RlcihkZXYsICZlbmNvZGVyLT5iYXNlLCBjb25u
ZWN0b3IpCisJCXNlcV9wcmludGYobSwgIlx0XHRjb25uZWN0b3IgJWQ6IHR5cGU6ICVzXG4iLAor
CQkJICAgY29ubmVjdG9yLT5iYXNlLmJhc2UuaWQsIGNvbm5lY3Rvci0+YmFzZS5uYW1lKTsKIH0K
IAogc3RhdGljIHZvaWQgaW50ZWxfcGFuZWxfaW5mbyhzdHJ1Y3Qgc2VxX2ZpbGUgKm0sIHN0cnVj
dCBpbnRlbF9wYW5lbCAqcGFuZWwpCiB7Ci0Jc3RydWN0IGRybV9kaXNwbGF5X21vZGUgKm1vZGUg
PSBwYW5lbC0+Zml4ZWRfbW9kZTsKKwljb25zdCBzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSAqbW9k
ZSA9IHBhbmVsLT5maXhlZF9tb2RlOwogCi0Jc2VxX3ByaW50ZihtLCAiXHRmaXhlZCBtb2RlOlxu
Iik7Ci0JaW50ZWxfc2VxX3ByaW50X21vZGUobSwgMiwgbW9kZSk7CisJc2VxX3ByaW50ZihtLCAi
XHRmaXhlZCBtb2RlOiAiIERSTV9NT0RFX0ZNVCAiXG4iLCBEUk1fTU9ERV9BUkcobW9kZSkpOwog
fQogCiBzdGF0aWMgdm9pZCBpbnRlbF9oZGNwX2luZm8oc3RydWN0IHNlcV9maWxlICptLApAQCAt
MjY1MSw4ICsyNjM4LDEyIEBAIHN0YXRpYyB2b2lkIGludGVsX2NydGNfaW5mbyhzdHJ1Y3Qgc2Vx
X2ZpbGUgKm0sIHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKQogCQkgICB5ZXNubyhjcnRjX3N0YXRl
LT5kaXRoZXIpLCBjcnRjX3N0YXRlLT5waXBlX2JwcCk7CiAKIAlpZiAoY3J0Y19zdGF0ZS0+YmFz
ZS5hY3RpdmUpIHsKKwkJY29uc3Qgc3RydWN0IGRybV9kaXNwbGF5X21vZGUgKm1vZGUgPQorCQkJ
JmNydGNfc3RhdGUtPmJhc2UubW9kZTsKIAkJc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXI7
CiAKKwkJc2VxX3ByaW50ZihtLCAiXHRtb2RlOiAiIERSTV9NT0RFX0ZNVCAiXG4iLCBEUk1fTU9E
RV9BUkcobW9kZSkpOworCiAJCWZvcl9lYWNoX2VuY29kZXJfb25fY3J0YygmZGV2X3ByaXYtPmRy
bSwgJmNydGMtPmJhc2UsIGVuY29kZXIpCiAJCQlpbnRlbF9lbmNvZGVyX2luZm8obSwgY3J0Yywg
ZW5jb2Rlcik7CiAKLS0gCjIuMjMuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
