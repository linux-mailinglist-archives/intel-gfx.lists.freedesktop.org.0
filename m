Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 857F1EB589
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Oct 2019 17:57:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0850B6F3AB;
	Thu, 31 Oct 2019 16:57:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 383C36F397
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Oct 2019 16:57:19 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Oct 2019 09:57:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,252,1569308400"; d="scan'208";a="211603574"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 31 Oct 2019 09:57:15 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 31 Oct 2019 18:57:14 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 31 Oct 2019 18:56:52 +0200
Message-Id: <20191031165652.10868-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191031165652.10868-1-ville.syrjala@linux.intel.com>
References: <20191031165652.10868-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 7/7] drm/i915: Eliminate redundancy in
 intel_primary_plane_create()
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkxv
dHMgb2YgcmVkdW5kYW50IGFzc2lnbm1lbnRzIGluc2lkZSBpbnRlbF9wcmltYXJ5X3BsYW5lX2Ny
ZWF0ZSgpLgpHZXQgcmlkIG9mIHRoZW0uCgp2MjogUmViYXNlIGR1ZSB0byBmcDE2IGxhbmRpbmcK
ClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRl
bC5jb20+ClJldmlld2VkLWJ5OiBKdWhhLVBla2thIEhlaWtraWxhIDxqdWhhcGVra2EuaGVpa2tp
bGFAZ21haWwuY29tPgpSZXZpZXdlZC1ieTogVW1hIFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVs
LmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8
IDYwICsrKysrKystLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMjIgaW5zZXJ0aW9ucygr
KSwgMzggZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXkuYwppbmRleCA5Y2Y2YjEzZjc5ZmUuLjEyZTRlN2VmMWEzNCAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKQEAgLTE1NDY0LDcgKzE1NDY0
LDYgQEAgaW50ZWxfcHJpbWFyeV9wbGFuZV9jcmVhdGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
KmRldl9wcml2LCBlbnVtIHBpcGUgcGlwZSkKIAljb25zdCBzdHJ1Y3QgZHJtX3BsYW5lX2Z1bmNz
ICpwbGFuZV9mdW5jczsKIAl1bnNpZ25lZCBpbnQgc3VwcG9ydGVkX3JvdGF0aW9uczsKIAl1bnNp
Z25lZCBpbnQgcG9zc2libGVfY3J0Y3M7Ci0JY29uc3QgdTY0ICptb2RpZmllcnM7CiAJY29uc3Qg
dTMyICpmb3JtYXRzOwogCWludCBudW1fZm9ybWF0czsKIAlpbnQgcmV0LCB6cG9zOwpAQCAtMTU0
OTksMTYgKzE1NDk4LDYgQEAgaW50ZWxfcHJpbWFyeV9wbGFuZV9jcmVhdGUoc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmRldl9wcml2LCBlbnVtIHBpcGUgcGlwZSkKIAlpZiAoSVNfVkFMTEVZVklF
VyhkZXZfcHJpdikgfHwgSVNfQ0hFUlJZVklFVyhkZXZfcHJpdikpIHsKIAkJZm9ybWF0cyA9IHZs
dl9wcmltYXJ5X2Zvcm1hdHM7CiAJCW51bV9mb3JtYXRzID0gQVJSQVlfU0laRSh2bHZfcHJpbWFy
eV9mb3JtYXRzKTsKLQkJbW9kaWZpZXJzID0gaTl4eF9mb3JtYXRfbW9kaWZpZXJzOwotCi0JCXBs
YW5lLT5tYXhfc3RyaWRlID0gaTl4eF9wbGFuZV9tYXhfc3RyaWRlOwotCQlwbGFuZS0+dXBkYXRl
X3BsYW5lID0gaTl4eF91cGRhdGVfcGxhbmU7Ci0JCXBsYW5lLT5kaXNhYmxlX3BsYW5lID0gaTl4
eF9kaXNhYmxlX3BsYW5lOwotCQlwbGFuZS0+Z2V0X2h3X3N0YXRlID0gaTl4eF9wbGFuZV9nZXRf
aHdfc3RhdGU7Ci0JCXBsYW5lLT5jaGVja19wbGFuZSA9IGk5eHhfcGxhbmVfY2hlY2s7Ci0JCXBs
YW5lLT5taW5fY2RjbGsgPSB2bHZfcGxhbmVfbWluX2NkY2xrOwotCi0JCXBsYW5lX2Z1bmNzID0g
Jmk5NjVfcGxhbmVfZnVuY3M7CiAJfSBlbHNlIGlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDQp
IHsKIAkJLyoKIAkJICogV2FGUDE2R2FtbWFFbmFibGluZzppdmIKQEAgLTE1NTMwLDUwICsxNTUx
OSw0NSBAQCBpbnRlbF9wcmltYXJ5X3BsYW5lX2NyZWF0ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqZGV2X3ByaXYsIGVudW0gcGlwZSBwaXBlKQogCQkJZm9ybWF0cyA9IGk5NjVfcHJpbWFyeV9m
b3JtYXRzOwogCQkJbnVtX2Zvcm1hdHMgPSBBUlJBWV9TSVpFKGk5NjVfcHJpbWFyeV9mb3JtYXRz
KTsKIAkJfQotCi0JCW1vZGlmaWVycyA9IGk5eHhfZm9ybWF0X21vZGlmaWVyczsKLQotCQlwbGFu
ZS0+bWF4X3N0cmlkZSA9IGk5eHhfcGxhbmVfbWF4X3N0cmlkZTsKLQkJcGxhbmUtPnVwZGF0ZV9w
bGFuZSA9IGk5eHhfdXBkYXRlX3BsYW5lOwotCQlwbGFuZS0+ZGlzYWJsZV9wbGFuZSA9IGk5eHhf
ZGlzYWJsZV9wbGFuZTsKLQkJcGxhbmUtPmdldF9od19zdGF0ZSA9IGk5eHhfcGxhbmVfZ2V0X2h3
X3N0YXRlOwotCQlwbGFuZS0+Y2hlY2tfcGxhbmUgPSBpOXh4X3BsYW5lX2NoZWNrOwotCi0JCWlm
IChJU19CUk9BRFdFTEwoZGV2X3ByaXYpIHx8IElTX0hBU1dFTEwoZGV2X3ByaXYpKQotCQkJcGxh
bmUtPm1pbl9jZGNsayA9IGhzd19wbGFuZV9taW5fY2RjbGs7Ci0JCWVsc2UgaWYgKElTX0lWWUJS
SURHRShkZXZfcHJpdikpCi0JCQlwbGFuZS0+bWluX2NkY2xrID0gaXZiX3BsYW5lX21pbl9jZGNs
azsKLQkJZWxzZQotCQkJcGxhbmUtPm1pbl9jZGNsayA9IGk5eHhfcGxhbmVfbWluX2NkY2xrOwot
Ci0JCXBsYW5lX2Z1bmNzID0gJmk5NjVfcGxhbmVfZnVuY3M7CiAJfSBlbHNlIHsKIAkJZm9ybWF0
cyA9IGk4eHhfcHJpbWFyeV9mb3JtYXRzOwogCQludW1fZm9ybWF0cyA9IEFSUkFZX1NJWkUoaTh4
eF9wcmltYXJ5X2Zvcm1hdHMpOwotCQltb2RpZmllcnMgPSBpOXh4X2Zvcm1hdF9tb2RpZmllcnM7
CisJfQogCi0JCXBsYW5lLT5tYXhfc3RyaWRlID0gaTl4eF9wbGFuZV9tYXhfc3RyaWRlOwotCQlw
bGFuZS0+dXBkYXRlX3BsYW5lID0gaTl4eF91cGRhdGVfcGxhbmU7Ci0JCXBsYW5lLT5kaXNhYmxl
X3BsYW5lID0gaTl4eF9kaXNhYmxlX3BsYW5lOwotCQlwbGFuZS0+Z2V0X2h3X3N0YXRlID0gaTl4
eF9wbGFuZV9nZXRfaHdfc3RhdGU7Ci0JCXBsYW5lLT5jaGVja19wbGFuZSA9IGk5eHhfcGxhbmVf
Y2hlY2s7CisJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gNCkKKwkJcGxhbmVfZnVuY3MgPSAm
aTk2NV9wbGFuZV9mdW5jczsKKwllbHNlCisJCXBsYW5lX2Z1bmNzID0gJmk4eHhfcGxhbmVfZnVu
Y3M7CisKKwlpZiAoSVNfVkFMTEVZVklFVyhkZXZfcHJpdikgfHwgSVNfQ0hFUlJZVklFVyhkZXZf
cHJpdikpCisJCXBsYW5lLT5taW5fY2RjbGsgPSB2bHZfcGxhbmVfbWluX2NkY2xrOworCWVsc2Ug
aWYgKElTX0JST0FEV0VMTChkZXZfcHJpdikgfHwgSVNfSEFTV0VMTChkZXZfcHJpdikpCisJCXBs
YW5lLT5taW5fY2RjbGsgPSBoc3dfcGxhbmVfbWluX2NkY2xrOworCWVsc2UgaWYgKElTX0lWWUJS
SURHRShkZXZfcHJpdikpCisJCXBsYW5lLT5taW5fY2RjbGsgPSBpdmJfcGxhbmVfbWluX2NkY2xr
OworCWVsc2UKIAkJcGxhbmUtPm1pbl9jZGNsayA9IGk5eHhfcGxhbmVfbWluX2NkY2xrOwogCi0J
CXBsYW5lX2Z1bmNzID0gJmk4eHhfcGxhbmVfZnVuY3M7Ci0JfQorCXBsYW5lLT5tYXhfc3RyaWRl
ID0gaTl4eF9wbGFuZV9tYXhfc3RyaWRlOworCXBsYW5lLT51cGRhdGVfcGxhbmUgPSBpOXh4X3Vw
ZGF0ZV9wbGFuZTsKKwlwbGFuZS0+ZGlzYWJsZV9wbGFuZSA9IGk5eHhfZGlzYWJsZV9wbGFuZTsK
KwlwbGFuZS0+Z2V0X2h3X3N0YXRlID0gaTl4eF9wbGFuZV9nZXRfaHdfc3RhdGU7CisJcGxhbmUt
PmNoZWNrX3BsYW5lID0gaTl4eF9wbGFuZV9jaGVjazsKIAogCXBvc3NpYmxlX2NydGNzID0gQklU
KHBpcGUpOwogCiAJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gNSB8fCBJU19HNFgoZGV2X3By
aXYpKQogCQlyZXQgPSBkcm1fdW5pdmVyc2FsX3BsYW5lX2luaXQoJmRldl9wcml2LT5kcm0sICZw
bGFuZS0+YmFzZSwKIAkJCQkJICAgICAgIHBvc3NpYmxlX2NydGNzLCBwbGFuZV9mdW5jcywKLQkJ
CQkJICAgICAgIGZvcm1hdHMsIG51bV9mb3JtYXRzLCBtb2RpZmllcnMsCisJCQkJCSAgICAgICBm
b3JtYXRzLCBudW1fZm9ybWF0cywKKwkJCQkJICAgICAgIGk5eHhfZm9ybWF0X21vZGlmaWVycywK
IAkJCQkJICAgICAgIERSTV9QTEFORV9UWVBFX1BSSU1BUlksCiAJCQkJCSAgICAgICAicHJpbWFy
eSAlYyIsIHBpcGVfbmFtZShwaXBlKSk7CiAJZWxzZQogCQlyZXQgPSBkcm1fdW5pdmVyc2FsX3Bs
YW5lX2luaXQoJmRldl9wcml2LT5kcm0sICZwbGFuZS0+YmFzZSwKIAkJCQkJICAgICAgIHBvc3Np
YmxlX2NydGNzLCBwbGFuZV9mdW5jcywKLQkJCQkJICAgICAgIGZvcm1hdHMsIG51bV9mb3JtYXRz
LCBtb2RpZmllcnMsCisJCQkJCSAgICAgICBmb3JtYXRzLCBudW1fZm9ybWF0cywKKwkJCQkJICAg
ICAgIGk5eHhfZm9ybWF0X21vZGlmaWVycywKIAkJCQkJICAgICAgIERSTV9QTEFORV9UWVBFX1BS
SU1BUlksCiAJCQkJCSAgICAgICAicGxhbmUgJWMiLAogCQkJCQkgICAgICAgcGxhbmVfbmFtZShw
bGFuZS0+aTl4eF9wbGFuZSkpOwotLSAKMi4yMy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
