Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA20F4C070
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2019 20:03:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CD396E444;
	Wed, 19 Jun 2019 18:03:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D50AC6E444
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2019 18:03:16 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Jun 2019 11:03:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,393,1557212400"; d="scan'208";a="243386305"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 19 Jun 2019 11:03:13 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 19 Jun 2019 21:03:12 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 19 Jun 2019 21:03:07 +0300
Message-Id: <20190619180312.31817-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/6] drm/i915/sdvo: Fix handling if zero hbuf
 size
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClRo
ZSBzcGVjIHNheXM6CiJBIHZhbHVlIG9mIDAgaW5kaWNhdGVzIHRoYXQgdGhpcyBidWZmZXIgZG9l
cyBub3QgZXhpc3QiClNvIHdlIHNob3VsZCBub3QgY29udmVydCBhIGhidWZfc2l6ZSBvZiAwIGlu
dG8gMS4KCkFsc28gcHVsbCB0aGUgcmVsZXZhbnQgY29kZSBpbnRvIGEgaGVscGVyIHRvIGF2b2lk
IG1ha2luZyB0aGUKc2FtZSBtaXN0YWtlIG11bHRpcGxlIHRpbWVzLgoKQW5kIHdoaWxlIGF0IGl0
IGZpeCB0aGUgZGVidWcgcHJpbnRzIHRvIG5vdCBzYXkgImhidWZfbGVuIiB0d2ljZS4KClNpZ25l
ZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+
Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zZHZvLmMgfCAzMiArKysr
KysrKysrKysrKy0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDE5IGluc2VydGlvbnMoKyksIDEz
IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfc2R2by5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zZHZvLmMK
aW5kZXggY2VkYTAzZTVhM2Q0Li42ODE0MTFhYWU3NTQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc2R2by5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfc2R2by5jCkBAIC05MjksNiArOTI5LDIwIEBAIHN0YXRpYyBib29sIGlu
dGVsX3Nkdm9fc2V0X2F1ZGlvX3N0YXRlKHN0cnVjdCBpbnRlbF9zZHZvICppbnRlbF9zZHZvLAog
CQkJCSAgICAmYXVkaW9fc3RhdGUsIDEpOwogfQogCitzdGF0aWMgYm9vbCBpbnRlbF9zZHZvX2dl
dF9oYnVmX3NpemUoc3RydWN0IGludGVsX3Nkdm8gKmludGVsX3Nkdm8sCisJCQkJICAgICB1OCAq
aGJ1Zl9zaXplKQoreworCWlmICghaW50ZWxfc2R2b19nZXRfdmFsdWUoaW50ZWxfc2R2bywgU0RW
T19DTURfR0VUX0hCVUZfSU5GTywKKwkJCQkgIGhidWZfc2l6ZSwgMSkpCisJCXJldHVybiBmYWxz
ZTsKKworCS8qIEJ1ZmZlciBzaXplIGlzIDAgYmFzZWQsIGhvb3JheSEgSG93ZXZlciB6ZXJvIG1l
YW5zIHplcm8uICovCisJaWYgKCpoYnVmX3NpemUpCisJCSgqaGJ1Zl9zaXplKSsrOworCisJcmV0
dXJuIHRydWU7Cit9CisKICNpZiAwCiBzdGF0aWMgdm9pZCBpbnRlbF9zZHZvX2R1bXBfaGRtaV9i
dWYoc3RydWN0IGludGVsX3Nkdm8gKmludGVsX3Nkdm8pCiB7CkBAIC05NzIsMTQgKzk4NiwxMCBA
QCBzdGF0aWMgYm9vbCBpbnRlbF9zZHZvX3dyaXRlX2luZm9mcmFtZShzdHJ1Y3QgaW50ZWxfc2R2
byAqaW50ZWxfc2R2bywKIAkJCQkgIHNldF9idWZfaW5kZXgsIDIpKQogCQlyZXR1cm4gZmFsc2U7
CiAKLQlpZiAoIWludGVsX3Nkdm9fZ2V0X3ZhbHVlKGludGVsX3Nkdm8sIFNEVk9fQ01EX0dFVF9I
QlVGX0lORk8sCi0JCQkJICAmaGJ1Zl9zaXplLCAxKSkKKwlpZiAoIWludGVsX3Nkdm9fZ2V0X2hi
dWZfc2l6ZShpbnRlbF9zZHZvLCAmaGJ1Zl9zaXplKSkKIAkJcmV0dXJuIGZhbHNlOwogCi0JLyog
QnVmZmVyIHNpemUgaXMgMCBiYXNlZCwgaG9vcmF5ISAqLwotCWhidWZfc2l6ZSsrOwotCi0JRFJN
X0RFQlVHX0tNUygid3JpdGluZyBzZHZvIGhidWY6ICVpLCBoYnVmX3NpemUgJWksIGhidWZfc2l6
ZTogJWlcbiIsCisJRFJNX0RFQlVHX0tNUygid3JpdGluZyBzZHZvIGhidWY6ICVpLCBsZW5ndGgg
JWksIGhidWZfc2l6ZTogJWlcbiIsCiAJCSAgICAgIGlmX2luZGV4LCBsZW5ndGgsIGhidWZfc2l6
ZSk7CiAKIAlpZiAoaGJ1Zl9zaXplIDwgbGVuZ3RoKQpAQCAtMTAzMCwxNCArMTA0MCwxMCBAQCBz
dGF0aWMgc3NpemVfdCBpbnRlbF9zZHZvX3JlYWRfaW5mb2ZyYW1lKHN0cnVjdCBpbnRlbF9zZHZv
ICppbnRlbF9zZHZvLAogCWlmICh0eF9yYXRlID09IFNEVk9fSEJVRl9UWF9ESVNBQkxFRCkKIAkJ
cmV0dXJuIDA7CiAKLQlpZiAoIWludGVsX3Nkdm9fZ2V0X3ZhbHVlKGludGVsX3Nkdm8sIFNEVk9f
Q01EX0dFVF9IQlVGX0lORk8sCi0JCQkJICAmaGJ1Zl9zaXplLCAxKSkKLQkJcmV0dXJuIC1FTlhJ
TzsKLQotCS8qIEJ1ZmZlciBzaXplIGlzIDAgYmFzZWQsIGhvb3JheSEgKi8KLQloYnVmX3NpemUr
KzsKKwlpZiAoIWludGVsX3Nkdm9fZ2V0X2hidWZfc2l6ZShpbnRlbF9zZHZvLCAmaGJ1Zl9zaXpl
KSkKKwkJcmV0dXJuIGZhbHNlOwogCi0JRFJNX0RFQlVHX0tNUygicmVhZGluZyBzZHZvIGhidWY6
ICVpLCBoYnVmX3NpemUgJWksIGhidWZfc2l6ZTogJWlcbiIsCisJRFJNX0RFQlVHX0tNUygicmVh
ZGluZyBzZHZvIGhidWY6ICVpLCBsZW5ndGggJWksIGhidWZfc2l6ZTogJWlcbiIsCiAJCSAgICAg
IGlmX2luZGV4LCBsZW5ndGgsIGhidWZfc2l6ZSk7CiAKIAloYnVmX3NpemUgPSBtaW5fdCh1bnNp
Z25lZCBpbnQsIGxlbmd0aCwgaGJ1Zl9zaXplKTsKLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
