Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 78B8CC8E3A
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Oct 2019 18:25:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A38389F47;
	Wed,  2 Oct 2019 16:25:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2789B89F47
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Oct 2019 16:25:09 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Oct 2019 09:25:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,249,1566889200"; d="scan'208";a="191843879"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga007.fm.intel.com with SMTP; 02 Oct 2019 09:25:06 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 02 Oct 2019 19:25:05 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  2 Oct 2019 19:25:00 +0300
Message-Id: <20191002162505.30716-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/6] drm/i915: Polish possible_clones setup
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClJl
cGxhY2UgdGhlIGhhbmQgcm9sbGVkIHN0dWZmIHdpdGggZHJtX2VuY29kZXJfbWFzaygpIHdoZW4g
cG9wdWxhdGluZwpwb3NzaWJsZV9jbG9uZXMsIGFuZCByZW5hbWUgdGhlIGZ1bmN0aW9uIHRvCmlu
dGVsX2VuY29kZXJfcG9zc2libGVfY2xvbmVzKCkgdG8gbWFrZSBpdCBjbGVhciB3aGF0IGl0J3Mg
dXNlZCBmb3IuCgpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFA
bGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheS5jIHwgMTMgKysrKystLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9u
cygrKSwgOCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheS5jCmluZGV4IDIwZWM4YTFkYzVlMS4uZDEwZTExOGI5YTdjIDEwMDY0NAotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpAQCAtMTUyNDAsMjEgKzE1
MjQwLDE4IEBAIGludCBpbnRlbF9nZXRfcGlwZV9mcm9tX2NydGNfaWRfaW9jdGwoc3RydWN0IGRy
bV9kZXZpY2UgKmRldiwgdm9pZCAqZGF0YSwKIAlyZXR1cm4gMDsKIH0KIAotc3RhdGljIGludCBp
bnRlbF9lbmNvZGVyX2Nsb25lcyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlcikKK3N0YXRp
YyB1MzIgaW50ZWxfZW5jb2Rlcl9wb3NzaWJsZV9jbG9uZXMoc3RydWN0IGludGVsX2VuY29kZXIg
KmVuY29kZXIpCiB7CiAJc3RydWN0IGRybV9kZXZpY2UgKmRldiA9IGVuY29kZXItPmJhc2UuZGV2
OwogCXN0cnVjdCBpbnRlbF9lbmNvZGVyICpzb3VyY2VfZW5jb2RlcjsKLQlpbnQgaW5kZXhfbWFz
ayA9IDA7Ci0JaW50IGVudHJ5ID0gMDsKKwl1MzIgcG9zc2libGVfY2xvbmVzID0gMDsKIAogCWZv
cl9lYWNoX2ludGVsX2VuY29kZXIoZGV2LCBzb3VyY2VfZW5jb2RlcikgewogCQlpZiAoZW5jb2Rl
cnNfY2xvbmVhYmxlKGVuY29kZXIsIHNvdXJjZV9lbmNvZGVyKSkKLQkJCWluZGV4X21hc2sgfD0g
KDEgPDwgZW50cnkpOwotCi0JCWVudHJ5Kys7CisJCQlwb3NzaWJsZV9jbG9uZXMgfD0gZHJtX2Vu
Y29kZXJfbWFzaygmc291cmNlX2VuY29kZXItPmJhc2UpOwogCX0KIAotCXJldHVybiBpbmRleF9t
YXNrOworCXJldHVybiBwb3NzaWJsZV9jbG9uZXM7CiB9CiAKIHN0YXRpYyB1MzIgaW50ZWxfZW5j
b2Rlcl9wb3NzaWJsZV9jcnRjcyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlcikKQEAgLTE1
NTc0LDcgKzE1NTcxLDcgQEAgc3RhdGljIHZvaWQgaW50ZWxfc2V0dXBfb3V0cHV0cyhzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJCWVuY29kZXItPmJhc2UucG9zc2libGVfY3J0
Y3MgPQogCQkJaW50ZWxfZW5jb2Rlcl9wb3NzaWJsZV9jcnRjcyhlbmNvZGVyKTsKIAkJZW5jb2Rl
ci0+YmFzZS5wb3NzaWJsZV9jbG9uZXMgPQotCQkJaW50ZWxfZW5jb2Rlcl9jbG9uZXMoZW5jb2Rl
cik7CisJCQlpbnRlbF9lbmNvZGVyX3Bvc3NpYmxlX2Nsb25lcyhlbmNvZGVyKTsKIAl9CiAKIAlp
bnRlbF9pbml0X3BjaF9yZWZjbGsoZGV2X3ByaXYpOwotLSAKMi4yMS4wCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
