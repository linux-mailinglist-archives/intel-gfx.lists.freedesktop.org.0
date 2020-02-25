Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CE0D216EC31
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2020 18:12:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 289276EB4A;
	Tue, 25 Feb 2020 17:12:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 57AB26EB4A
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Feb 2020 17:12:08 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Feb 2020 09:12:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,484,1574150400"; d="scan'208";a="284725035"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 25 Feb 2020 09:12:05 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 25 Feb 2020 19:12:05 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Feb 2020 19:11:18 +0200
Message-Id: <20200225171125.28885-14-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200225171125.28885-1-ville.syrjala@linux.intel.com>
References: <20200225171125.28885-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 13/20] drm/i915: Pass the crtc to
 skl_compute_dbuf_slices()
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCnNr
bF9jb21wdXRlX2RidWZfc2xpY2VzKCkgaGFzIG5vIHVzZSBmb3IgdGhlIGNydGMgc3RhdGUsIHNv
Cmp1c3QgcGFzcyB0aGUgY3J0YyBpdHNlbGYuCgpDYzogU3RhbmlzbGF2IExpc292c2tpeSA8c3Rh
bmlzbGF2Lmxpc292c2tpeUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzD
pCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfcG0uYyB8IDIyICsrKysrKysrKystLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2Vk
LCAxMCBpbnNlcnRpb25zKCspLCAxMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0u
YwppbmRleCAzZjQ4Y2U3NTE3ZTIuLjI1NjYyMmI2MDNjZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaW50ZWxfcG0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9w
bS5jCkBAIC0zODYxLDcgKzM4NjEsNyBAQCBzdGF0aWMgdW5zaWduZWQgaW50IGludGVsX2NydGNf
ZGRiX3dlaWdodChjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdAogCXJldHVy
biBoZGlzcGxheTsKIH0KIAotc3RhdGljIHU4IHNrbF9jb21wdXRlX2RidWZfc2xpY2VzKGNvbnN0
IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAorc3RhdGljIHU4IHNrbF9jb21w
dXRlX2RidWZfc2xpY2VzKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLAogCQkJCSAgdTggYWN0aXZl
X3BpcGVzKTsKIAogc3RhdGljIGludApAQCAtMzg3MywxMCArMzg3MywxMCBAQCBza2xfZGRiX2dl
dF9waXBlX2FsbG9jYXRpb25fbGltaXRzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJp
diwKIHsKIAlzdHJ1Y3QgZHJtX2F0b21pY19zdGF0ZSAqc3RhdGUgPSBjcnRjX3N0YXRlLT51YXBp
LnN0YXRlOwogCXN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKmludGVsX3N0YXRlID0gdG9faW50
ZWxfYXRvbWljX3N0YXRlKHN0YXRlKTsKLQlzdHJ1Y3QgZHJtX2NydGMgKmZvcl9jcnRjID0gY3J0
Y19zdGF0ZS0+dWFwaS5jcnRjOwotCWNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjOworCXN0
cnVjdCBpbnRlbF9jcnRjICpmb3JfY3J0YyA9IHRvX2ludGVsX2NydGMoY3J0Y19zdGF0ZS0+dWFw
aS5jcnRjKTsKKwlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YzsKIAl1bnNpZ25lZCBpbnQgcGlwZV93
ZWlnaHQgPSAwLCB0b3RhbF93ZWlnaHQgPSAwLCB3ZWlnaHRfYmVmb3JlX3BpcGUgPSAwOwotCWVu
dW0gcGlwZSBmb3JfcGlwZSA9IHRvX2ludGVsX2NydGMoZm9yX2NydGMpLT5waXBlOworCWVudW0g
cGlwZSBmb3JfcGlwZSA9IGZvcl9jcnRjLT5waXBlOwogCXN0cnVjdCBpbnRlbF9kYnVmX3N0YXRl
ICpuZXdfZGJ1Zl9zdGF0ZSA9CiAJCWludGVsX2F0b21pY19nZXRfbmV3X2RidWZfc3RhdGUoaW50
ZWxfc3RhdGUpOwogCWNvbnN0IHN0cnVjdCBpbnRlbF9kYnVmX3N0YXRlICpvbGRfZGJ1Zl9zdGF0
ZSA9CkBAIC0zOTIwLDE0ICszOTIwLDE0IEBAIHNrbF9kZGJfZ2V0X3BpcGVfYWxsb2NhdGlvbl9s
aW1pdHMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogCQkgKgogCQkgKiBGSVhN
RSBnZXQgcmlkIG9mIHRoaXMgbWVzcwogCQkgKi8KLQkJKmFsbG9jID0gdG9faW50ZWxfY3J0Y19z
dGF0ZShmb3JfY3J0Yy0+c3RhdGUpLT53bS5za2wuZGRiOworCQkqYWxsb2MgPSB0b19pbnRlbF9j
cnRjX3N0YXRlKGZvcl9jcnRjLT5iYXNlLnN0YXRlKS0+d20uc2tsLmRkYjsKIAkJcmV0dXJuIDA7
CiAJfQogCiAJLyoKIAkgKiBHZXQgYWxsb3dlZCBEQnVmIHNsaWNlcyBmb3IgY29ycmVzcG9uZGVu
dCBwaXBlIGFuZCBwbGF0Zm9ybS4KIAkgKi8KLQlkYnVmX3NsaWNlX21hc2sgPSBza2xfY29tcHV0
ZV9kYnVmX3NsaWNlcyhjcnRjX3N0YXRlLCBhY3RpdmVfcGlwZXMpOworCWRidWZfc2xpY2VfbWFz
ayA9IHNrbF9jb21wdXRlX2RidWZfc2xpY2VzKGZvcl9jcnRjLCBhY3RpdmVfcGlwZXMpOwogCiAJ
LyoKIAkgKiBGaWd1cmUgb3V0IGF0IHdoaWNoIERCdWYgc2xpY2Ugd2Ugc3RhcnQsIGkuZSBpZiB3
ZSBzdGFydCBhdCBEYnVmIFMyCkBAIC0zOTUzLDggKzM5NTMsOCBAQCBza2xfZGRiX2dldF9waXBl
X2FsbG9jYXRpb25fbGltaXRzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAkJ
aWYgKCFjcnRjX3N0YXRlLT5ody5hY3RpdmUpCiAJCQljb250aW51ZTsKIAotCQlwaXBlX2RidWZf
c2xpY2VfbWFzayA9IHNrbF9jb21wdXRlX2RidWZfc2xpY2VzKGNydGNfc3RhdGUsCi0JCQkJCQkJ
ICAgICAgIGFjdGl2ZV9waXBlcyk7CisJCXBpcGVfZGJ1Zl9zbGljZV9tYXNrID0KKwkJCXNrbF9j
b21wdXRlX2RidWZfc2xpY2VzKGNydGMsIGFjdGl2ZV9waXBlcyk7CiAKIAkJLyoKIAkJICogQWNj
b3JkaW5nIHRvIEJTcGVjIHBpcGUgY2FuIHNoYXJlIG9uZSBkYnVmIHNsaWNlIHdpdGggYW5vdGhl
cgpAQCAtNDAwNCw3ICs0MDA0LDcgQEAgc2tsX2RkYl9nZXRfcGlwZV9hbGxvY2F0aW9uX2xpbWl0
cyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAKIAlkcm1fZGJnX2ttcygmZGV2
X3ByaXYtPmRybSwKIAkJICAgICJbQ1JUQzolZDolc10gZGJ1ZiBzbGljZXMgMHgleCwgZGRiICgl
ZCAtICVkKSwgYWN0aXZlIHBpcGVzIDB4JXhcbiIsCi0JCSAgICBmb3JfY3J0Yy0+YmFzZS5pZCwg
Zm9yX2NydGMtPm5hbWUsCisJCSAgICBmb3JfY3J0Yy0+YmFzZS5iYXNlLmlkLCBmb3JfY3J0Yy0+
YmFzZS5uYW1lLAogCQkgICAgZGJ1Zl9zbGljZV9tYXNrLCBhbGxvYy0+c3RhcnQsIGFsbG9jLT5l
bmQsIGFjdGl2ZV9waXBlcyk7CiAKIAlyZXR1cm4gMDsKQEAgLTQ0MDIsMTAgKzQ0MDIsOCBAQCBz
dGF0aWMgdTggdGdsX2NvbXB1dGVfZGJ1Zl9zbGljZXMoZW51bSBwaXBlIHBpcGUsIHU4IGFjdGl2
ZV9waXBlcykKIAlyZXR1cm4gY29tcHV0ZV9kYnVmX3NsaWNlcyhwaXBlLCBhY3RpdmVfcGlwZXMs
IHRnbF9hbGxvd2VkX2RidWZzKTsKIH0KIAotc3RhdGljIHU4IHNrbF9jb21wdXRlX2RidWZfc2xp
Y2VzKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAotCQkJCSAgdTgg
YWN0aXZlX3BpcGVzKQorc3RhdGljIHU4IHNrbF9jb21wdXRlX2RidWZfc2xpY2VzKHN0cnVjdCBp
bnRlbF9jcnRjICpjcnRjLCB1OCBhY3RpdmVfcGlwZXMpCiB7Ci0Jc3RydWN0IGludGVsX2NydGMg
KmNydGMgPSB0b19pbnRlbF9jcnRjKGNydGNfc3RhdGUtPnVhcGkuY3J0Yyk7CiAJc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShjcnRjLT5iYXNlLmRldik7CiAJZW51
bSBwaXBlIHBpcGUgPSBjcnRjLT5waXBlOwogCi0tIAoyLjI0LjEKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
