Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EEB74C2257
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Sep 2019 15:42:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D436E6E439;
	Mon, 30 Sep 2019 13:42:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA1B76E030;
 Mon, 30 Sep 2019 13:42:24 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Sep 2019 06:42:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,567,1559545200"; d="scan'208";a="274664263"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 30 Sep 2019 06:42:22 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 30 Sep 2019 16:42:21 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: dri-devel@lists.freedesktop.org
Date: Mon, 30 Sep 2019 16:42:13 +0300
Message-Id: <20190930134214.24702-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190930134214.24702-1-ville.syrjala@linux.intel.com>
References: <20190930134214.24702-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/4] drm/i915: Use drm_rect_translate_to()
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClVz
ZSB0aGUgbmV3bHkgaW50cm9kdWNlZCBkcm1fcmVjdF90cmFuc2xhdGVfdG8oKSBpbnN0ZWFkCm9m
IGhhbmQgcm9sbGluZyBpdC4KClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUu
c3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5LmMgfCAxMCArKysrLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNl
cnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5LmMKaW5kZXggZjEzMjhjMDhmNGFkLi43ZTAzMWI3NjY5NGEgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCkBAIC0zNDg1LDkg
KzM0ODUsOCBAQCBzdGF0aWMgaW50IHNrbF9jaGVja19tYWluX3N1cmZhY2Uoc3RydWN0IGludGVs
X3BsYW5lX3N0YXRlICpwbGFuZV9zdGF0ZSkKIAkgKiBQdXQgdGhlIGZpbmFsIGNvb3JkaW5hdGVz
IGJhY2sgc28gdGhhdCB0aGUgc3JjCiAJICogY29vcmRpbmF0ZSBjaGVja3Mgd2lsbCBzZWUgdGhl
IHJpZ2h0IHZhbHVlcy4KIAkgKi8KLQlkcm1fcmVjdF90cmFuc2xhdGUoJnBsYW5lX3N0YXRlLT5i
YXNlLnNyYywKLQkJCSAgICh4IDw8IDE2KSAtIHBsYW5lX3N0YXRlLT5iYXNlLnNyYy54MSwKLQkJ
CSAgICh5IDw8IDE2KSAtIHBsYW5lX3N0YXRlLT5iYXNlLnNyYy55MSk7CisJZHJtX3JlY3RfdHJh
bnNsYXRlX3RvKCZwbGFuZV9zdGF0ZS0+YmFzZS5zcmMsCisJCQkgICAgICB4IDw8IDE2LCB5IDw8
IDE2KTsKIAogCXJldHVybiAwOwogfQpAQCAtMzcwOSw5ICszNzA4LDggQEAgaW50IGk5eHhfY2hl
Y2tfcGxhbmVfc3VyZmFjZShzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKnBsYW5lX3N0YXRlKQog
CSAqIFB1dCB0aGUgZmluYWwgY29vcmRpbmF0ZXMgYmFjayBzbyB0aGF0IHRoZSBzcmMKIAkgKiBj
b29yZGluYXRlIGNoZWNrcyB3aWxsIHNlZSB0aGUgcmlnaHQgdmFsdWVzLgogCSAqLwotCWRybV9y
ZWN0X3RyYW5zbGF0ZSgmcGxhbmVfc3RhdGUtPmJhc2Uuc3JjLAotCQkJICAgKHNyY194IDw8IDE2
KSAtIHBsYW5lX3N0YXRlLT5iYXNlLnNyYy54MSwKLQkJCSAgIChzcmNfeSA8PCAxNikgLSBwbGFu
ZV9zdGF0ZS0+YmFzZS5zcmMueTEpOworCWRybV9yZWN0X3RyYW5zbGF0ZV90bygmcGxhbmVfc3Rh
dGUtPmJhc2Uuc3JjLAorCQkJICAgICAgc3JjX3ggPDwgMTYsIHNyY195IDw8IDE2KTsKIAogCS8q
IEhTVy9CRFcgZG8gdGhpcyBhdXRvbWFnaWNhbGx5IGluIGhhcmR3YXJlICovCiAJaWYgKCFJU19I
QVNXRUxMKGRldl9wcml2KSAmJiAhSVNfQlJPQURXRUxMKGRldl9wcml2KSkgewotLSAKMi4yMS4w
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
