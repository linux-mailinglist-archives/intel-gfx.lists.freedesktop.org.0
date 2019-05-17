Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 92E7521E44
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2019 21:31:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E891F89998;
	Fri, 17 May 2019 19:31:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5852589998
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 May 2019 19:31:41 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 May 2019 12:31:40 -0700
X-ExtLoop1: 1
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 17 May 2019 12:31:38 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 17 May 2019 22:31:38 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 May 2019 22:31:21 +0300
Message-Id: <20190517193132.8140-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190517193132.8140-1-ville.syrjala@linux.intel.com>
References: <20190517193132.8140-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 03/14] drm/i915: Pass intel_atomic state to
 check_digital_port_conflicts()
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClBh
c3MgYXJvdW5kIGludGVsX2F0b21pY19zdGF0ZSByYXRoZXIgdGhhbiBkcm1fYXRvbWljX3N0YXRl
LgpUaGlzIGF2b2lkcyBzb21lIGV4dHJhIGNhc3RzIGFuZCBhbm5vaW5nIGFsaWFzaW5nIHZhcmlh
Ymxlcy4KClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51
eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGlzcGxheS5jIHwg
MTAgKysrKysrLS0tLQogMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlv
bnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kaXNwbGF5LmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kaXNwbGF5LmMKaW5kZXggMjczY2E4N2NjZjhi
Li4xOWYwMTk4NGM1NTAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rp
c3BsYXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kaXNwbGF5LmMKQEAgLTEx
NjAwLDkgKzExNjAwLDkgQEAgc3RhdGljIHZvaWQgaW50ZWxfZHVtcF9waXBlX2NvbmZpZyhzdHJ1
Y3QgaW50ZWxfY3J0YyAqY3J0YywKIAl9CiB9CiAKLXN0YXRpYyBib29sIGNoZWNrX2RpZ2l0YWxf
cG9ydF9jb25mbGljdHMoc3RydWN0IGRybV9hdG9taWNfc3RhdGUgKnN0YXRlKQorc3RhdGljIGJv
b2wgY2hlY2tfZGlnaXRhbF9wb3J0X2NvbmZsaWN0cyhzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRl
ICpzdGF0ZSkKIHsKLQlzdHJ1Y3QgZHJtX2RldmljZSAqZGV2ID0gc3RhdGUtPmRldjsKKwlzdHJ1
Y3QgZHJtX2RldmljZSAqZGV2ID0gc3RhdGUtPmJhc2UuZGV2OwogCXN0cnVjdCBkcm1fY29ubmVj
dG9yICpjb25uZWN0b3I7CiAJc3RydWN0IGRybV9jb25uZWN0b3JfbGlzdF9pdGVyIGNvbm5faXRl
cjsKIAl1bnNpZ25lZCBpbnQgdXNlZF9wb3J0cyA9IDA7CkBAIC0xMTYxOSw3ICsxMTYxOSw5IEBA
IHN0YXRpYyBib29sIGNoZWNrX2RpZ2l0YWxfcG9ydF9jb25mbGljdHMoc3RydWN0IGRybV9hdG9t
aWNfc3RhdGUgKnN0YXRlKQogCQlzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9zdGF0ZSAqY29ubmVjdG9y
X3N0YXRlOwogCQlzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlcjsKIAotCQljb25uZWN0b3Jf
c3RhdGUgPSBkcm1fYXRvbWljX2dldF9uZXdfY29ubmVjdG9yX3N0YXRlKHN0YXRlLCBjb25uZWN0
b3IpOworCQljb25uZWN0b3Jfc3RhdGUgPQorCQkJZHJtX2F0b21pY19nZXRfbmV3X2Nvbm5lY3Rv
cl9zdGF0ZSgmc3RhdGUtPmJhc2UsCisJCQkJCQkJICAgY29ubmVjdG9yKTsKIAkJaWYgKCFjb25u
ZWN0b3Jfc3RhdGUpCiAJCQljb25uZWN0b3Jfc3RhdGUgPSBjb25uZWN0b3ItPnN0YXRlOwogCkBA
IC0xMjkxNyw3ICsxMjkxOSw3IEBAIHN0YXRpYyBpbnQgaW50ZWxfbW9kZXNldF9jaGVja3Moc3Ry
dWN0IGRybV9hdG9taWNfc3RhdGUgKnN0YXRlKQogCXN0cnVjdCBkcm1fY3J0Y19zdGF0ZSAqb2xk
X2NydGNfc3RhdGUsICpuZXdfY3J0Y19zdGF0ZTsKIAlpbnQgcmV0ID0gMCwgaTsKIAotCWlmICgh
Y2hlY2tfZGlnaXRhbF9wb3J0X2NvbmZsaWN0cyhzdGF0ZSkpIHsKKwlpZiAoIWNoZWNrX2RpZ2l0
YWxfcG9ydF9jb25mbGljdHMoaW50ZWxfc3RhdGUpKSB7CiAJCURSTV9ERUJVR19LTVMoInJlamVj
dGluZyBjb25mbGljdGluZyBkaWdpdGFsIHBvcnQgY29uZmlndXJhdGlvblxuIik7CiAJCXJldHVy
biAtRUlOVkFMOwogCX0KLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
