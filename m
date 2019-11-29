Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EFE710D9C7
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Nov 2019 19:55:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79C906EA53;
	Fri, 29 Nov 2019 18:55:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E125B6EA4F
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Nov 2019 18:54:57 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Nov 2019 10:54:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,258,1571727600"; d="scan'208";a="203808219"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 29 Nov 2019 10:54:55 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 29 Nov 2019 20:54:54 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 29 Nov 2019 20:54:32 +0200
Message-Id: <20191129185434.25549-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191129185434.25549-1-ville.syrjala@linux.intel.com>
References: <20191129185434.25549-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 7/9] drm/i915: Use the canonical
 [CRTC:%d:%s]/etc. format in i915_display_info
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClVz
ZSB0aGUgY2Fub25pY2FsdCAiW0NSVEM6JWQ6JXNdIiBmb3JtYXQgZm9yIHRoZSBvYmogaWQvbmFt
ZQppbiB0aGUgZGVidWdmcyBkaXNwbGF5X2luZm8gZHVtcC4gRXZlcnlvbmUgc2hvdWxkIGFscmVh
ZHkgYmUKZmFtaWxpYXIgd2l0aCB0aGUgZm9ybWF0IHNpbmNlIGl0J3MgdXNlZCBpbiB0aGUgZGVi
dWcgbG9ncwpleHRlbnNpdmVseS4KClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmls
bGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9kZWJ1Z2ZzLmMgfCAxNCArKysrKysrLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0
aW9ucygrKSwgNyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2RlYnVnZnMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jCmlu
ZGV4IDNiZjdkNGUyZjk0MC4uNGRmZmJmZjFiOGJkIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2RlYnVnZnMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rl
YnVnZnMuYwpAQCAtMjM4NSwxMSArMjM4NSwxMSBAQCBzdGF0aWMgdm9pZCBpbnRlbF9lbmNvZGVy
X2luZm8oc3RydWN0IHNlcV9maWxlICptLAogCXN0cnVjdCBkcm1fZGV2aWNlICpkZXYgPSAmZGV2
X3ByaXYtPmRybTsKIAlzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3I7CiAKLQlzZXFf
cHJpbnRmKG0sICJcdGVuY29kZXIgJWQ6IHR5cGU6ICVzLCBjb25uZWN0b3JzOlxuIiwKKwlzZXFf
cHJpbnRmKG0sICJcdFtFTkNPREVSOiVkOiVzXTogY29ubmVjdG9yczpcbiIsCiAJCSAgIGVuY29k
ZXItPmJhc2UuYmFzZS5pZCwgZW5jb2Rlci0+YmFzZS5uYW1lKTsKIAogCWZvcl9lYWNoX2Nvbm5l
Y3Rvcl9vbl9lbmNvZGVyKGRldiwgJmVuY29kZXItPmJhc2UsIGNvbm5lY3RvcikKLQkJc2VxX3By
aW50ZihtLCAiXHRcdGNvbm5lY3RvciAlZDogdHlwZTogJXNcbiIsCisJCXNlcV9wcmludGYobSwg
Ilx0XHRbQ09OTkVDVE9SOiVkOiVzXVxuIiwKIAkJCSAgIGNvbm5lY3Rvci0+YmFzZS5iYXNlLmlk
LCBjb25uZWN0b3ItPmJhc2UubmFtZSk7CiB9CiAKQEAgLTI0NzgsNyArMjQ3OCw3IEBAIHN0YXRp
YyB2b2lkIGludGVsX2Nvbm5lY3Rvcl9pbmZvKHN0cnVjdCBzZXFfZmlsZSAqbSwKIAlzdHJ1Y3Qg
aW50ZWxfZW5jb2RlciAqaW50ZWxfZW5jb2RlciA9IGludGVsX2Nvbm5lY3Rvci0+ZW5jb2RlcjsK
IAlzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSAqbW9kZTsKIAotCXNlcV9wcmludGYobSwgImNvbm5l
Y3RvciAlZDogdHlwZSAlcywgc3RhdHVzOiAlc1xuIiwKKwlzZXFfcHJpbnRmKG0sICJbQ09OTkVD
VE9SOiVkOiVzXTogc3RhdHVzOiAlc1xuIiwKIAkJICAgY29ubmVjdG9yLT5iYXNlLmlkLCBjb25u
ZWN0b3ItPm5hbWUsCiAJCSAgIGRybV9nZXRfY29ubmVjdG9yX3N0YXR1c19uYW1lKGNvbm5lY3Rv
ci0+c3RhdHVzKSk7CiAKQEAgLTI1ODUsOCArMjU4NSw4IEBAIHN0YXRpYyB2b2lkIGludGVsX3Bs
YW5lX2luZm8oc3RydWN0IHNlcV9maWxlICptLCBzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YykKIAkJ
cGxhbmVfcm90YXRpb24ocm90X3N0ciwgc2l6ZW9mKHJvdF9zdHIpLAogCQkJICAgICAgIHBsYW5l
X3N0YXRlLT51YXBpLnJvdGF0aW9uKTsKIAotCQlzZXFfcHJpbnRmKG0sICJcdC0tUGxhbmUgaWQg
JWQ6IHR5cGU9JXMsIGZiPSVkLCVzLCVkeCVkLCBzcmM9IiBEUk1fUkVDVF9GUF9GTVQgIiwgZHN0
PSIgRFJNX1JFQ1RfRk1UICIsIHJvdGF0aW9uPSVzXG4iLAotCQkJICAgcGxhbmUtPmJhc2UuYmFz
ZS5pZCwKKwkJc2VxX3ByaW50ZihtLCAiXHRbUExBTkU6JWQ6JXNdOiB0eXBlPSVzLCBmYj0lZCwl
cywlZHglZCwgc3JjPSIgRFJNX1JFQ1RfRlBfRk1UICIsIGRzdD0iIERSTV9SRUNUX0ZNVCAiLCBy
b3RhdGlvbj0lc1xuIiwKKwkJCSAgIHBsYW5lLT5iYXNlLmJhc2UuaWQsIHBsYW5lLT5iYXNlLm5h
bWUsCiAJCQkgICBwbGFuZV90eXBlKHBsYW5lLT5iYXNlLnR5cGUpLAogCQkJICAgZmIgPyBmYi0+
YmFzZS5pZCA6IDAsCiAJCQkgICBmYiA/IGZvcm1hdF9uYW1lLnN0ciA6ICJuL2EiLApAQCAtMjYz
MSw4ICsyNjMxLDggQEAgc3RhdGljIHZvaWQgaW50ZWxfY3J0Y19pbmZvKHN0cnVjdCBzZXFfZmls
ZSAqbSwgc3RydWN0IGludGVsX2NydGMgKmNydGMpCiAJY29uc3Qgc3RydWN0IGludGVsX2NydGNf
c3RhdGUgKmNydGNfc3RhdGUgPQogCQl0b19pbnRlbF9jcnRjX3N0YXRlKGNydGMtPmJhc2Uuc3Rh
dGUpOwogCi0Jc2VxX3ByaW50ZihtLCAiQ1JUQyAlZDogcGlwZTogJWMsIGFjdGl2ZT0lcywgKHNp
emU9JWR4JWQpLCBkaXRoZXI9JXMsIGJwcD0lZFxuIiwKLQkJICAgY3J0Yy0+YmFzZS5iYXNlLmlk
LCBwaXBlX25hbWUoY3J0Yy0+cGlwZSksCisJc2VxX3ByaW50ZihtLCAiW0NSVEM6JWQ6JXNdOiBh
Y3RpdmU9JXMsIChzaXplPSVkeCVkKSwgZGl0aGVyPSVzLCBicHA9JWRcbiIsCisJCSAgIGNydGMt
PmJhc2UuYmFzZS5pZCwgY3J0Yy0+YmFzZS5uYW1lLAogCQkgICB5ZXNubyhjcnRjX3N0YXRlLT5o
dy5hY3RpdmUpLAogCQkgICBjcnRjX3N0YXRlLT5waXBlX3NyY193LCBjcnRjX3N0YXRlLT5waXBl
X3NyY19oLAogCQkgICB5ZXNubyhjcnRjX3N0YXRlLT5kaXRoZXIpLCBjcnRjX3N0YXRlLT5waXBl
X2JwcCk7Ci0tIAoyLjIzLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
