Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 186FE10096D
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Nov 2019 17:44:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 638FE6E605;
	Mon, 18 Nov 2019 16:44:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 561DA6E605
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Nov 2019 16:44:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Nov 2019 08:44:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,320,1569308400"; d="scan'208";a="215331873"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 18 Nov 2019 08:44:36 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 18 Nov 2019 18:44:35 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 18 Nov 2019 18:44:22 +0200
Message-Id: <20191118164430.27265-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191118164430.27265-1-ville.syrjala@linux.intel.com>
References: <20191118164430.27265-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 02/10] drm/i915: Add intel_crtc_vblank_off()
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCldl
IGFscmVhZHkgaGF2ZSBpbnRlbF9jcnRjX3ZibGFua19vbigpLiBBZGQgYSBjb3VudGVycGFydCBz
byB3ZQpkb24ndCBoYXZlIHRvIGlubGluZSB0aGUgZGlzYWJsZSthc3NlcnQgYWxsIG92ZXIuCgpS
ZXZpZXdlZC1ieTogTWFuYXNpIE5hdmFyZSA8bWFuYXNpLmQubmF2YXJlQGludGVsLmNvbT4KU2ln
bmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNv
bT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDE1
ICsrKysrKysrKy0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwgNiBkZWxl
dGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5j
CmluZGV4IDVkMmFiNDBkZWY4Zi4uYmY3ZmFhZjA2MWEzIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpAQCAtMTg0Myw2ICsxODQzLDEyIEBAIHN0YXRp
YyB2b2lkIGludGVsX2NydGNfdmJsYW5rX29uKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRl
ICpjcnRjX3N0YXRlKQogCWRybV9jcnRjX3ZibGFua19vbigmY3J0Yy0+YmFzZSk7CiB9CiAKK3N0
YXRpYyB2b2lkIGludGVsX2NydGNfdmJsYW5rX29mZihzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YykK
K3sKKwlkcm1fY3J0Y192Ymxhbmtfb2ZmKCZjcnRjLT5iYXNlKTsKKwlhc3NlcnRfdmJsYW5rX2Rp
c2FibGVkKCZjcnRjLT5iYXNlKTsKK30KKwogc3RhdGljIHZvaWQgaW50ZWxfZW5hYmxlX3BpcGUo
Y29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKm5ld19jcnRjX3N0YXRlKQogewogCXN0cnVj
dCBpbnRlbF9jcnRjICpjcnRjID0gdG9faW50ZWxfY3J0YyhuZXdfY3J0Y19zdGF0ZS0+dWFwaS5j
cnRjKTsKQEAgLTY3NjAsOCArNjc2Niw3IEBAIHN0YXRpYyB2b2lkIGlyb25sYWtlX2NydGNfZGlz
YWJsZShzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqb2xkX2NydGNfc3RhdGUsCiAKIAlpbnRlbF9l
bmNvZGVyc19kaXNhYmxlKHN0YXRlLCBpbnRlbF9jcnRjKTsKIAotCWRybV9jcnRjX3ZibGFua19v
ZmYoY3J0Yyk7Ci0JYXNzZXJ0X3ZibGFua19kaXNhYmxlZChjcnRjKTsKKwlpbnRlbF9jcnRjX3Zi
bGFua19vZmYoaW50ZWxfY3J0Yyk7CiAKIAlpbnRlbF9kaXNhYmxlX3BpcGUob2xkX2NydGNfc3Rh
dGUpOwogCkBAIC02ODEwLDggKzY4MTUsNyBAQCBzdGF0aWMgdm9pZCBoYXN3ZWxsX2NydGNfZGlz
YWJsZShzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqb2xkX2NydGNfc3RhdGUsCiAKIAlpbnRlbF9l
bmNvZGVyc19kaXNhYmxlKHN0YXRlLCBpbnRlbF9jcnRjKTsKIAotCWRybV9jcnRjX3ZibGFua19v
ZmYoY3J0Yyk7Ci0JYXNzZXJ0X3ZibGFua19kaXNhYmxlZChjcnRjKTsKKwlpbnRlbF9jcnRjX3Zi
bGFua19vZmYoaW50ZWxfY3J0Yyk7CiAKIAkvKiBYWFg6IERvIHRoZSBwaXBlIGFzc2VydGlvbnMg
YXQgdGhlIHJpZ2h0IHBsYWNlIGZvciBCWFQgRFNJLiAqLwogCWlmICghdHJhbnNjb2Rlcl9pc19k
c2koY3B1X3RyYW5zY29kZXIpKQpAQCAtNzE4NCw4ICs3MTg4LDcgQEAgc3RhdGljIHZvaWQgaTl4
eF9jcnRjX2Rpc2FibGUoc3RydWN0IGludGVsX2NydGNfc3RhdGUgKm9sZF9jcnRjX3N0YXRlLAog
CiAJaW50ZWxfZW5jb2RlcnNfZGlzYWJsZShzdGF0ZSwgaW50ZWxfY3J0Yyk7CiAKLQlkcm1fY3J0
Y192Ymxhbmtfb2ZmKGNydGMpOwotCWFzc2VydF92YmxhbmtfZGlzYWJsZWQoY3J0Yyk7CisJaW50
ZWxfY3J0Y192Ymxhbmtfb2ZmKGludGVsX2NydGMpOwogCiAJaW50ZWxfZGlzYWJsZV9waXBlKG9s
ZF9jcnRjX3N0YXRlKTsKIAotLSAKMi4yMy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
