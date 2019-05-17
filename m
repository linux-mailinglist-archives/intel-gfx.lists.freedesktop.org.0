Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5195321E4D
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2019 21:32:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75B70899B0;
	Fri, 17 May 2019 19:32:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 246D2899B0
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 May 2019 19:32:04 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 May 2019 12:32:04 -0700
X-ExtLoop1: 1
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 17 May 2019 12:32:02 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 17 May 2019 22:32:01 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 May 2019 22:31:29 +0300
Message-Id: <20190517193132.8140-11-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190517193132.8140-1-ville.syrjala@linux.intel.com>
References: <20190517193132.8140-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 11/14] drm/i915: Include crtc_state.active in
 crtc state dumps
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkN1
cnJlbnRseSB3ZSdyZSBub3QgZHVtcGluZyBvdXQgd2hldGhlciB0aGUgY3J0YyBpcyBhY3R1YWxs
eQphY3RpdmUgb3IgaW4gZHBtcyBvZmYgc3RhdGUuIExldCdzIGluY2x1ZGUgdGhhdCBpbiB0aGUg
ZHVtcHMuCkFuZCB3aGlsZSBhdCBpdCBjb21wcmVzcyBvdXQgYSBmZXcgbGluZXMgZnJvbSB0aGUg
c3RhdGUgZHVtcC4KClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFs
YUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGlzcGxh
eS5jIHwgMTMgKysrKystLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwg
OCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9k
aXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kaXNwbGF5LmMKaW5kZXggNWZm
YjRmNWM0ZmE3Li41OWIwMTJiZTlhNGYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kaXNwbGF5
LmMKQEAgLTExNDkzLDEwICsxMTQ5Myw5IEBAIHN0YXRpYyB2b2lkIGludGVsX2R1bXBfcGlwZV9j
b25maWcoc3RydWN0IGludGVsX2NydGNfc3RhdGUgKnBpcGVfY29uZmlnLAogCQkgICAgICB5ZXNu
byhwaXBlX2NvbmZpZy0+YmFzZS5lbmFibGUpLCBjb250ZXh0KTsKIAogCXNucHJpbnRmX291dHB1
dF90eXBlcyhidWYsIHNpemVvZihidWYpLCBwaXBlX2NvbmZpZy0+b3V0cHV0X3R5cGVzKTsKLQlE
Uk1fREVCVUdfS01TKCJvdXRwdXRfdHlwZXM6ICVzICgweCV4KVxuIiwKLQkJICAgICAgYnVmLCBw
aXBlX2NvbmZpZy0+b3V0cHV0X3R5cGVzKTsKLQotCURSTV9ERUJVR19LTVMoIm91dHB1dCBmb3Jt
YXQ6ICVzXG4iLAorCURSTV9ERUJVR19LTVMoImFjdGl2ZTogJXMsIG91dHB1dF90eXBlczogJXMg
KDB4JXgpLCBvdXRwdXQgZm9ybWF0OiAlc1xuIiwKKwkJICAgICAgeWVzbm8ocGlwZV9jb25maWct
PmJhc2UuYWN0aXZlKSwKKwkJICAgICAgYnVmLCBwaXBlX2NvbmZpZy0+b3V0cHV0X3R5cGVzLAog
CQkgICAgICBvdXRwdXRfZm9ybWF0cyhwaXBlX2NvbmZpZy0+b3V0cHV0X2Zvcm1hdCkpOwogCiAJ
RFJNX0RFQlVHX0tNUygiY3B1X3RyYW5zY29kZXI6ICVzLCBwaXBlIGJwcDogJWksIGRpdGhlcmlu
ZzogJWlcbiIsCkBAIC0xMTUxNywxMCArMTE1MTYsOCBAQCBzdGF0aWMgdm9pZCBpbnRlbF9kdW1w
X3BpcGVfY29uZmlnKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpwaXBlX2NvbmZpZywKIAkJCQkJ
ICAgICAgJnBpcGVfY29uZmlnLT5kcF9tMl9uMik7CiAJfQogCi0JRFJNX0RFQlVHX0tNUygiYXVk
aW86ICVpLCBpbmZvZnJhbWVzOiAlaVxuIiwKLQkJICAgICAgcGlwZV9jb25maWctPmhhc19hdWRp
bywgcGlwZV9jb25maWctPmhhc19pbmZvZnJhbWUpOwotCi0JRFJNX0RFQlVHX0tNUygiaW5mb2Zy
YW1lcyBlbmFibGVkOiAweCV4XG4iLAorCURSTV9ERUJVR19LTVMoImF1ZGlvOiAlaSwgaW5mb2Zy
YW1lczogJWksIGluZm9mcmFtZXMgZW5hYmxlZDogMHgleFxuIiwKKwkJICAgICAgcGlwZV9jb25m
aWctPmhhc19hdWRpbywgcGlwZV9jb25maWctPmhhc19pbmZvZnJhbWUsCiAJCSAgICAgIHBpcGVf
Y29uZmlnLT5pbmZvZnJhbWVzLmVuYWJsZSk7CiAKIAlpZiAocGlwZV9jb25maWctPmluZm9mcmFt
ZXMuZW5hYmxlICYKLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
