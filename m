Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF1B510D9BF
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Nov 2019 19:54:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04DD56E9ED;
	Fri, 29 Nov 2019 18:54:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 625156E9ED
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Nov 2019 18:54:40 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Nov 2019 10:54:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,258,1571727600"; d="scan'208";a="217830512"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 29 Nov 2019 10:54:38 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 29 Nov 2019 20:54:37 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 29 Nov 2019 20:54:26 +0200
Message-Id: <20191129185434.25549-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191129185434.25549-1-ville.syrjala@linux.intel.com>
References: <20191129185434.25549-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 1/9] drm/i915: Use drm_rect to simplify plane
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
ZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMKaW5kZXggY2FiNjMyNzkxZjczLi4zZjU0ZTY2YWI3NjIg
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
