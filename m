Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 78131277894
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Sep 2020 20:42:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C45F56EB45;
	Thu, 24 Sep 2020 18:42:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A1596E491
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Sep 2020 18:42:26 +0000 (UTC)
IronPort-SDR: DFseA8IPf9WOud5ACT4lwWRP9QqooFAcaS3fR5PFYDNOYOqACqHDiy/ttX+u9abjEBLp1LomA3
 UGh7dnXWl1Cw==
X-IronPort-AV: E=McAfee;i="6000,8403,9754"; a="148957343"
X-IronPort-AV: E=Sophos;i="5.77,298,1596524400"; d="scan'208";a="148957343"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2020 11:42:25 -0700
IronPort-SDR: zyfm7Nq1pTJW14wIJB1Nzs/Otk+YtViq9nDdifLJl7EKM5SbeBC1a0hKY5F5YcyVDxUwPdGBvU
 V/CiiSLIUm6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,298,1596524400"; d="scan'208";a="339164564"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 24 Sep 2020 11:42:23 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 24 Sep 2020 21:42:22 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Sep 2020 21:41:56 +0300
Message-Id: <20200924184156.24491-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200924184156.24491-1-ville.syrjala@linux.intel.com>
References: <20200924184156.24491-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/3] drm/i915: Inline intel_dp_ycbcr420_config()
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCmlu
dGVsX2RwX3ljYmNyNDIwX2NvbmZpZygpIGlzIHJhdGhlciBwb2ludGxlc3MuIEp1c3QgaW5saW5l
IGl0CmRpcmVjdGx5IGludG8gaW50ZWxfZHBfY29tcHV0ZV9jb25maWcoKS4gVGhpcyBnZXRzIHJp
ZCBvZiB0aGUKdWdseSBkb3VibGUgYXNzaWdubWVudCBvZiBvdXRwdXRfZm9ybWF0LgoKTm90IHJl
YWxseSBzdXJlIHdoYXQgdGhlIGJlc3QgcG9saWN5IHdvdWxkIGJlIHdoZW4gdGhlIHVzZXIKc3Vw
cGxpZXMgYSBtb2RlIGNsYXNzaWVmaWVkIGJ5IHRoZSBkaXNwbGF5IGFzICJZQ2JDciA0OjI6MApv
bmx5IiwgYnV0IHdlIGtub3cgdGhhdCB3ZSBjYW4ndCBkbyBZQ2JDciA0OjI6MCBvdXRwdXQuIEZv
cgpub3cga2VlcCB0aGUgY3VycmVudCBiZWhhdmlvdXIgb2YganVzdCBzaWxlbnRseSB1cGdyYWRl
Cml0IHRvIFJHQiA0OjQ6NC4KClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUu
c3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kcC5jIHwgMzMgKysrKysrKy0tLS0tLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5n
ZWQsIDkgaW5zZXJ0aW9ucygrKSwgMjQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kcC5jCmluZGV4IGY1OGRmNDk5NGQ5Mi4uYTUwZTUwMmRlZGY4IDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCkBAIC01OTksNyArNTk5LDggQEAg
aW50ZWxfZHBfb3V0cHV0X2Zvcm1hdChzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yLAog
CXN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAgPSBpbnRlbF9hdHRhY2hlZF9kcCh0b19pbnRlbF9j
b25uZWN0b3IoY29ubmVjdG9yKSk7CiAJY29uc3Qgc3RydWN0IGRybV9kaXNwbGF5X2luZm8gKmlu
Zm8gPSAmY29ubmVjdG9yLT5kaXNwbGF5X2luZm87CiAKLQlpZiAoIWRybV9tb2RlX2lzXzQyMF9v
bmx5KGluZm8sIG1vZGUpKQorCWlmICghY29ubmVjdG9yLT55Y2Jjcl80MjBfYWxsb3dlZCB8fAor
CSAgICAhZHJtX21vZGVfaXNfNDIwX29ubHkoaW5mbywgbW9kZSkpCiAJCXJldHVybiBJTlRFTF9P
VVRQVVRfRk9STUFUX1JHQjsKIAogCWlmIChpbnRlbF9kcC0+ZGZwLnljYmNyXzQ0NF90b180MjAp
CkBAIC0yNDU2LDI1ICsyNDU3LDYgQEAgaW50ZWxfZHBfY29tcHV0ZV9saW5rX2NvbmZpZyhzdHJ1
Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKIAlyZXR1cm4gMDsKIH0KIAotc3RhdGljIGludAot
aW50ZWxfZHBfeWNiY3I0MjBfY29uZmlnKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0
YXRlLAotCQkJIGNvbnN0IHN0cnVjdCBkcm1fY29ubmVjdG9yX3N0YXRlICpjb25uX3N0YXRlKQot
ewotCXN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IgPSBjb25uX3N0YXRlLT5jb25uZWN0
b3I7Ci0JY29uc3Qgc3RydWN0IGRybV9kaXNwbGF5X21vZGUgKmFkanVzdGVkX21vZGUgPQotCQkm
Y3J0Y19zdGF0ZS0+aHcuYWRqdXN0ZWRfbW9kZTsKLQotCWlmICghY29ubmVjdG9yLT55Y2Jjcl80
MjBfYWxsb3dlZCkKLQkJcmV0dXJuIDA7Ci0KLQljcnRjX3N0YXRlLT5vdXRwdXRfZm9ybWF0ID0g
aW50ZWxfZHBfb3V0cHV0X2Zvcm1hdChjb25uZWN0b3IsIGFkanVzdGVkX21vZGUpOwotCi0JaWYg
KGNydGNfc3RhdGUtPm91dHB1dF9mb3JtYXQgIT0gSU5URUxfT1VUUFVUX0ZPUk1BVF9ZQ0JDUjQy
MCkKLQkJcmV0dXJuIDA7Ci0KLQlyZXR1cm4gaW50ZWxfcGNoX3BhbmVsX2ZpdHRpbmcoY3J0Y19z
dGF0ZSwgY29ubl9zdGF0ZSk7Ci19Ci0KIGJvb2wgaW50ZWxfZHBfbGltaXRlZF9jb2xvcl9yYW5n
ZShjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKIAkJCQkgIGNvbnN0
IHN0cnVjdCBkcm1fY29ubmVjdG9yX3N0YXRlICpjb25uX3N0YXRlKQogewpAQCAtMjcyNCwxMSAr
MjcwNiwxNCBAQCBpbnRlbF9kcF9jb21wdXRlX2NvbmZpZyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAq
ZW5jb2RlciwKIAlpZiAoSEFTX1BDSF9TUExJVChkZXZfcHJpdikgJiYgIUhBU19EREkoZGV2X3By
aXYpICYmIHBvcnQgIT0gUE9SVF9BKQogCQlwaXBlX2NvbmZpZy0+aGFzX3BjaF9lbmNvZGVyID0g
dHJ1ZTsKIAotCXBpcGVfY29uZmlnLT5vdXRwdXRfZm9ybWF0ID0gSU5URUxfT1VUUFVUX0ZPUk1B
VF9SR0I7CisJcGlwZV9jb25maWctPm91dHB1dF9mb3JtYXQgPSBpbnRlbF9kcF9vdXRwdXRfZm9y
bWF0KCZpbnRlbF9jb25uZWN0b3ItPmJhc2UsCisJCQkJCQkJICAgIGFkanVzdGVkX21vZGUpOwog
Ci0JcmV0ID0gaW50ZWxfZHBfeWNiY3I0MjBfY29uZmlnKHBpcGVfY29uZmlnLCBjb25uX3N0YXRl
KTsKLQlpZiAocmV0KQotCQlyZXR1cm4gcmV0OworCWlmIChwaXBlX2NvbmZpZy0+b3V0cHV0X2Zv
cm1hdCA9PSBJTlRFTF9PVVRQVVRfRk9STUFUX1lDQkNSNDIwKSB7CisJCXJldCA9IGludGVsX3Bj
aF9wYW5lbF9maXR0aW5nKHBpcGVfY29uZmlnLCBjb25uX3N0YXRlKTsKKwkJaWYgKHJldCkKKwkJ
CXJldHVybiByZXQ7CisJfQogCiAJaWYgKCFpbnRlbF9kcF9wb3J0X2hhc19hdWRpbyhkZXZfcHJp
diwgcG9ydCkpCiAJCXBpcGVfY29uZmlnLT5oYXNfYXVkaW8gPSBmYWxzZTsKLS0gCjIuMjYuMgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
