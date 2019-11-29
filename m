Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8823310D9C3
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Nov 2019 19:54:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0FE76EA4B;
	Fri, 29 Nov 2019 18:54:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B9E06EA4B
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Nov 2019 18:54:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Nov 2019 10:54:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,258,1571727600"; d="scan'208";a="212378667"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 29 Nov 2019 10:54:49 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 29 Nov 2019 20:54:48 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 29 Nov 2019 20:54:30 +0200
Message-Id: <20191129185434.25549-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191129185434.25549-1-ville.syrjala@linux.intel.com>
References: <20191129185434.25549-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 5/9] drm/i915: Dump the mode for the crtc
 just the once
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
aXQuCkFuZCB3aGlsZSBhdCBsZXQncyBwb2xpc2ggdGhlIGZpeGVkIG1vZGUgcHJpbnQgdG8gZml0
IG9uCm9uZSBsaW5lIGFzIHdlbGwuCgpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZp
bGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZGVidWdmcy5jIHwgMjcgKysrKysrKysrLS0tLS0tLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hh
bmdlZCwgOSBpbnNlcnRpb25zKCspLCAxOCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZGVidWdmcy5jCmluZGV4IDI4ZjQ1ZjI1Y2ZjMC4uMTFmM2Y5MWJlZmI5IDEwMDY0NAotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYworKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2RlYnVnZnMuYwpAQCAtMjM4OCwyOSArMjM4OCwxNiBAQCBzdGF0aWMgdm9p
ZCBpbnRlbF9lbmNvZGVyX2luZm8oc3RydWN0IHNlcV9maWxlICptLAogCXNlcV9wcmludGYobSwg
Ilx0ZW5jb2RlciAlZDogdHlwZTogJXMsIGNvbm5lY3RvcnM6XG4iLAogCQkgICBlbmNvZGVyLT5i
YXNlLmJhc2UuaWQsIGVuY29kZXItPmJhc2UubmFtZSk7CiAKLQlmb3JfZWFjaF9jb25uZWN0b3Jf
b25fZW5jb2RlcihkZXYsICZlbmNvZGVyLT5iYXNlLCBjb25uZWN0b3IpIHsKLQkJc2VxX3ByaW50
ZihtLCAiXHRcdGNvbm5lY3RvciAlZDogdHlwZTogJXMsIHN0YXR1czogJXMiLAotCQkJICAgY29u
bmVjdG9yLT5iYXNlLmJhc2UuaWQsIGNvbm5lY3Rvci0+YmFzZS5uYW1lLAotCQkJICAgZHJtX2dl
dF9jb25uZWN0b3Jfc3RhdHVzX25hbWUoY29ubmVjdG9yLT5iYXNlLnN0YXR1cykpOwotCi0JCWlm
IChjb25uZWN0b3ItPmJhc2Uuc3RhdHVzID09IGNvbm5lY3Rvcl9zdGF0dXNfY29ubmVjdGVkKSB7
Ci0JCQljb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSA9Ci0JCQkJdG9f
aW50ZWxfY3J0Y19zdGF0ZShjcnRjLT5iYXNlLnN0YXRlKTsKLQotCQkJc2VxX3ByaW50ZihtLCAi
LCBtb2RlOlxuIik7Ci0JCQlpbnRlbF9zZXFfcHJpbnRfbW9kZShtLCAyLCAmY3J0Y19zdGF0ZS0+
aHcubW9kZSk7Ci0JCX0gZWxzZSB7Ci0JCQlzZXFfcHV0YyhtLCAnXG4nKTsKLQkJfQotCX0KKwlm
b3JfZWFjaF9jb25uZWN0b3Jfb25fZW5jb2RlcihkZXYsICZlbmNvZGVyLT5iYXNlLCBjb25uZWN0
b3IpCisJCXNlcV9wcmludGYobSwgIlx0XHRjb25uZWN0b3IgJWQ6IHR5cGU6ICVzXG4iLAorCQkJ
ICAgY29ubmVjdG9yLT5iYXNlLmJhc2UuaWQsIGNvbm5lY3Rvci0+YmFzZS5uYW1lKTsKIH0KIAog
c3RhdGljIHZvaWQgaW50ZWxfcGFuZWxfaW5mbyhzdHJ1Y3Qgc2VxX2ZpbGUgKm0sIHN0cnVjdCBp
bnRlbF9wYW5lbCAqcGFuZWwpCiB7Ci0Jc3RydWN0IGRybV9kaXNwbGF5X21vZGUgKm1vZGUgPSBw
YW5lbC0+Zml4ZWRfbW9kZTsKKwljb25zdCBzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSAqbW9kZSA9
IHBhbmVsLT5maXhlZF9tb2RlOwogCi0Jc2VxX3ByaW50ZihtLCAiXHRmaXhlZCBtb2RlOlxuIik7
Ci0JaW50ZWxfc2VxX3ByaW50X21vZGUobSwgMiwgbW9kZSk7CisJc2VxX3ByaW50ZihtLCAiXHRm
aXhlZCBtb2RlOiAiIERSTV9NT0RFX0ZNVCAiXG4iLCBEUk1fTU9ERV9BUkcobW9kZSkpOwogfQog
CiBzdGF0aWMgdm9pZCBpbnRlbF9oZGNwX2luZm8oc3RydWN0IHNlcV9maWxlICptLApAQCAtMjY1
MSw4ICsyNjM4LDEyIEBAIHN0YXRpYyB2b2lkIGludGVsX2NydGNfaW5mbyhzdHJ1Y3Qgc2VxX2Zp
bGUgKm0sIHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKQogCQkgICB5ZXNubyhjcnRjX3N0YXRlLT5k
aXRoZXIpLCBjcnRjX3N0YXRlLT5waXBlX2JwcCk7CiAKIAlpZiAoY3J0Y19zdGF0ZS0+aHcuYWN0
aXZlKSB7CisJCWNvbnN0IHN0cnVjdCBkcm1fZGlzcGxheV9tb2RlICptb2RlID0KKwkJCSZjcnRj
X3N0YXRlLT5ody5tb2RlOwogCQlzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlcjsKIAorCQlz
ZXFfcHJpbnRmKG0sICJcdG1vZGU6ICIgRFJNX01PREVfRk1UICJcbiIsIERSTV9NT0RFX0FSRyht
b2RlKSk7CisKIAkJZm9yX2VhY2hfZW5jb2Rlcl9vbl9jcnRjKCZkZXZfcHJpdi0+ZHJtLCAmY3J0
Yy0+YmFzZSwgZW5jb2RlcikKIAkJCWludGVsX2VuY29kZXJfaW5mbyhtLCBjcnRjLCBlbmNvZGVy
KTsKIAotLSAKMi4yMy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
