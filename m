Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 20FE6E8B9F
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2019 16:16:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 964FA6E421;
	Tue, 29 Oct 2019 15:16:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E22986E421
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2019 15:16:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Oct 2019 08:16:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,244,1569308400"; d="scan'208";a="205496911"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 29 Oct 2019 08:16:15 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 29 Oct 2019 17:16:14 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 29 Oct 2019 17:16:10 +0200
Message-Id: <20191029151614.16929-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/5] drm/i915: Use drm_rect to simplify plane
 {crtc, src}_{x, y, w, h} printing
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
ZSBEUk1fUkVDVF9GTVQgJiBjby4gdG8gc2ltcGlmeSB0aGUgY29kZS4KClNpZ25lZC1vZmYtYnk6
IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMgfCAxOCArKysrKysrLS0tLS0tLS0tLS0K
IDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDExIGRlbGV0aW9ucygtKQoKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMKaW5kZXggODAxNjQ4NGViY2QzLi44MzY1YzBiMTVlOWQg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jCkBAIC0yNTk5LDYgKzI1OTksNyBAQCBz
dGF0aWMgdm9pZCBpbnRlbF9wbGFuZV9pbmZvKHN0cnVjdCBzZXFfZmlsZSAqbSwgc3RydWN0IGlu
dGVsX2NydGMgKmludGVsX2NydGMpCiAJCXN0cnVjdCBkcm1fcGxhbmVfc3RhdGUgKnN0YXRlOwog
CQlzdHJ1Y3QgZHJtX3BsYW5lICpwbGFuZSA9ICZpbnRlbF9wbGFuZS0+YmFzZTsKIAkJc3RydWN0
IGRybV9mb3JtYXRfbmFtZV9idWYgZm9ybWF0X25hbWU7CisJCXN0cnVjdCBkcm1fcmVjdCBzcmMs
IGRzdDsKIAkJY2hhciByb3Rfc3RyWzQ4XTsKIAogCQlpZiAoIXBsYW5lLT5zdGF0ZSkgewpAQCAt
MjYwOCw2ICsyNjA5LDkgQEAgc3RhdGljIHZvaWQgaW50ZWxfcGxhbmVfaW5mbyhzdHJ1Y3Qgc2Vx
X2ZpbGUgKm0sIHN0cnVjdCBpbnRlbF9jcnRjICppbnRlbF9jcnRjKQogCiAJCXN0YXRlID0gcGxh
bmUtPnN0YXRlOwogCisJCXNyYyA9IGRybV9wbGFuZV9zdGF0ZV9zcmMoc3RhdGUpOworCQlkc3Qg
PSBkcm1fcGxhbmVfc3RhdGVfZGVzdChzdGF0ZSk7CisKIAkJaWYgKHN0YXRlLT5mYikgewogCQkJ
ZHJtX2dldF9mb3JtYXRfbmFtZShzdGF0ZS0+ZmItPmZvcm1hdC0+Zm9ybWF0LAogCQkJCQkgICAg
JmZvcm1hdF9uYW1lKTsKQEAgLTI2MTcsMTkgKzI2MjEsMTEgQEAgc3RhdGljIHZvaWQgaW50ZWxf
cGxhbmVfaW5mbyhzdHJ1Y3Qgc2VxX2ZpbGUgKm0sIHN0cnVjdCBpbnRlbF9jcnRjICppbnRlbF9j
cnRjKQogCiAJCXBsYW5lX3JvdGF0aW9uKHJvdF9zdHIsIHNpemVvZihyb3Rfc3RyKSwgc3RhdGUt
PnJvdGF0aW9uKTsKIAotCQlzZXFfcHJpbnRmKG0sICJcdC0tUGxhbmUgaWQgJWQ6IHR5cGU9JXMs
IGNydGNfcG9zPSU0ZHglNGQsIGNydGNfc2l6ZT0lNGR4JTRkLCBzcmNfcG9zPSVkLiUwNHV4JWQu
JTA0dSwgc3JjX3NpemU9JWQuJTA0dXglZC4lMDR1LCBmb3JtYXQ9JXMsIHJvdGF0aW9uPSVzXG4i
LAorCQlzZXFfcHJpbnRmKG0sICJcdC0tUGxhbmUgaWQgJWQ6IHR5cGU9JXMsIGRzdD0iIERSTV9S
RUNUX0ZNVCAiLCBzcmM9IiBEUk1fUkVDVF9GUF9GTVQgIiwgZm9ybWF0PSVzLCByb3RhdGlvbj0l
c1xuIiwKIAkJCSAgIHBsYW5lLT5iYXNlLmlkLAogCQkJICAgcGxhbmVfdHlwZShpbnRlbF9wbGFu
ZS0+YmFzZS50eXBlKSwKLQkJCSAgIHN0YXRlLT5jcnRjX3gsIHN0YXRlLT5jcnRjX3ksCi0JCQkg
ICBzdGF0ZS0+Y3J0Y193LCBzdGF0ZS0+Y3J0Y19oLAotCQkJICAgKHN0YXRlLT5zcmNfeCA+PiAx
NiksCi0JCQkgICAoKHN0YXRlLT5zcmNfeCAmIDB4ZmZmZikgKiAxNTYyNSkgPj4gMTAsCi0JCQkg
ICAoc3RhdGUtPnNyY195ID4+IDE2KSwKLQkJCSAgICgoc3RhdGUtPnNyY195ICYgMHhmZmZmKSAq
IDE1NjI1KSA+PiAxMCwKLQkJCSAgIChzdGF0ZS0+c3JjX3cgPj4gMTYpLAotCQkJICAgKChzdGF0
ZS0+c3JjX3cgJiAweGZmZmYpICogMTU2MjUpID4+IDEwLAotCQkJICAgKHN0YXRlLT5zcmNfaCA+
PiAxNiksCi0JCQkgICAoKHN0YXRlLT5zcmNfaCAmIDB4ZmZmZikgKiAxNTYyNSkgPj4gMTAsCisJ
CQkgICBEUk1fUkVDVF9BUkcoJmRzdCksCisJCQkgICBEUk1fUkVDVF9GUF9BUkcoJnNyYyksCiAJ
CQkgICBmb3JtYXRfbmFtZS5zdHIsCiAJCQkgICByb3Rfc3RyKTsKIAl9Ci0tIAoyLjIzLjAKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
