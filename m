Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C256D2CDC
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Oct 2019 16:51:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95CD06E02A;
	Thu, 10 Oct 2019 14:51:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A82396E02A
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Oct 2019 14:51:30 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Oct 2019 07:51:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,280,1566889200"; d="scan'208";a="223988464"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 10 Oct 2019 07:51:27 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 10 Oct 2019 17:51:27 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Oct 2019 17:51:23 +0300
Message-Id: <20191010145127.7487-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/5] drm/i915: Shrink eDRAM ways/sets arrays
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCk1h
a2UgdGhlIHdheXMvc2V0cyBhcnJheXMgc3RhdGljIGNvc250IHU4IHRvIHNocmluayB0aGluZ3Mg
YSBiaXQuCgogICAgdGV4dAkgICBkYXRhCSAgICBic3MJICAgIGRlYwkgICAgaGV4CWZpbGVuYW1l
Ci0gIDIzOTM1CSAgICA2MjkJICAgIDEyOAkgIDI0NjkyCSAgIDYwNzQJaTkxNV9kcnYubworICAy
MzgxOAkgICAgNjI5CSAgICAxMjgJICAyNDU3NQkgICA1ZmZmCWk5MTVfZHJ2Lm8KClNpZ25lZC1v
ZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0t
LQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYyB8IDQgKystLQogMSBmaWxlIGNoYW5n
ZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYu
YwppbmRleCBmMDJhMzQ3MjIyMTcuLjBiOGMxM2FlNDg1NyAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9kcnYuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Ry
di5jCkBAIC0xMDczLDggKzEwNzMsOCBAQCBpbnRlbF9nZXRfZHJhbV9pbmZvKHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAogc3RhdGljIHUzMiBnZW45X2VkcmFtX3NpemVfbWIo
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCB1MzIgY2FwKQogewotCWNvbnN0IHVu
c2lnbmVkIGludCB3YXlzWzhdID0geyA0LCA4LCAxMiwgMTYsIDE2LCAxNiwgMTYsIDE2IH07Ci0J
Y29uc3QgdW5zaWduZWQgaW50IHNldHNbNF0gPSB7IDEsIDEsIDIsIDIgfTsKKwlzdGF0aWMgY29u
c3QgdTggd2F5c1s4XSA9IHsgNCwgOCwgMTIsIDE2LCAxNiwgMTYsIDE2LCAxNiB9OworCXN0YXRp
YyBjb25zdCB1OCBzZXRzWzRdID0geyAxLCAxLCAyLCAyIH07CiAKIAlyZXR1cm4gRURSQU1fTlVN
X0JBTktTKGNhcCkgKgogCQl3YXlzW0VEUkFNX1dBWVNfSURYKGNhcCldICoKLS0gCjIuMjEuMAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
