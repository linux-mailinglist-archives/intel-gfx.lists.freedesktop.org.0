Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6556613CCCA
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2020 20:08:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1C8D6EA82;
	Wed, 15 Jan 2020 19:08:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B01366EA82
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jan 2020 19:08:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Jan 2020 11:08:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,323,1574150400"; d="scan'208";a="218239800"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 15 Jan 2020 11:08:20 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 15 Jan 2020 21:08:19 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 15 Jan 2020 21:08:11 +0200
Message-Id: <20200115190813.17971-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200115190813.17971-1-ville.syrjala@linux.intel.com>
References: <20200115190813.17971-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/5] drm/i915: Prefer to use the pipe to index
 the ddb entries
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkxl
dCdzIHVzZSB0aGUgcGlwZSByYXRoZXIgdGhhbiB0aGUgc2lsbHkgJ2knIGl0ZXJhdG9yIGZyb20K
Zm9yX2VhY2hfb2xkbmV3X2ludGVsX2NydGNfaW5fc3RhdGUoKSBmb3IgaW5kZXhpbmcgdGhlIGRk
YgplbnRyaWVzIGFycmF5LiBNYXliZSBvbmUgZGF5IHdlIGNhbiBhc3N1bWUgYzk5IGFuZCBoaWRl
IHRoZQonaScgZW50aXJlbHkgZnJvbSBzaWdodC4KClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrD
pGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCAyMCArKysrKysrKysrKy0tLS0tLS0tLQog
MSBmaWxlIGNoYW5nZWQsIDExIGluc2VydGlvbnMoKyksIDkgZGVsZXRpb25zKC0pCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwppbmRleCBlNjhhZjAyNGUx
M2MuLjY0YTM3N2Q2MWNlMCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5LmMKQEAgLTE1MTA2LDE1ICsxNTEwNiwxNyBAQCBzdGF0aWMgdm9pZCBza2xfY29t
bWl0X21vZGVzZXRfZW5hYmxlcyhzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSkKIAlp
bnQgaTsKIAogCWZvcl9lYWNoX29sZG5ld19pbnRlbF9jcnRjX2luX3N0YXRlKHN0YXRlLCBjcnRj
LCBvbGRfY3J0Y19zdGF0ZSwgbmV3X2NydGNfc3RhdGUsIGkpIHsKKwkJZW51bSBwaXBlIHBpcGUg
PSBjcnRjLT5waXBlOworCiAJCWlmICghbmV3X2NydGNfc3RhdGUtPmh3LmFjdGl2ZSkKIAkJCWNv
bnRpbnVlOwogCiAJCS8qIGlnbm9yZSBhbGxvY2F0aW9ucyBmb3IgY3J0YydzIHRoYXQgaGF2ZSBi
ZWVuIHR1cm5lZCBvZmYuICovCiAJCWlmICghbmVlZHNfbW9kZXNldChuZXdfY3J0Y19zdGF0ZSkp
IHsKLQkJCWVudHJpZXNbaV0gPSBvbGRfY3J0Y19zdGF0ZS0+d20uc2tsLmRkYjsKLQkJCXVwZGF0
ZV9waXBlcyB8PSBCSVQoY3J0Yy0+cGlwZSk7CisJCQllbnRyaWVzW3BpcGVdID0gb2xkX2NydGNf
c3RhdGUtPndtLnNrbC5kZGI7CisJCQl1cGRhdGVfcGlwZXMgfD0gQklUKHBpcGUpOwogCQl9IGVs
c2UgewotCQkJbW9kZXNldF9waXBlcyB8PSBCSVQoY3J0Yy0+cGlwZSk7CisJCQltb2Rlc2V0X3Bp
cGVzIHw9IEJJVChwaXBlKTsKIAkJfQogCX0KIApAQCAtMTUxNDAsMTAgKzE1MTQyLDEwIEBAIHN0
YXRpYyB2b2lkIHNrbF9jb21taXRfbW9kZXNldF9lbmFibGVzKHN0cnVjdCBpbnRlbF9hdG9taWNf
c3RhdGUgKnN0YXRlKQogCQkJCWNvbnRpbnVlOwogCiAJCQlpZiAoc2tsX2RkYl9hbGxvY2F0aW9u
X292ZXJsYXBzKCZuZXdfY3J0Y19zdGF0ZS0+d20uc2tsLmRkYiwKLQkJCQkJCQllbnRyaWVzLCBu
dW1fcGlwZXMsIGkpKQorCQkJCQkJCWVudHJpZXMsIG51bV9waXBlcywgcGlwZSkpCiAJCQkJY29u
dGludWU7CiAKLQkJCWVudHJpZXNbaV0gPSBuZXdfY3J0Y19zdGF0ZS0+d20uc2tsLmRkYjsKKwkJ
CWVudHJpZXNbcGlwZV0gPSBuZXdfY3J0Y19zdGF0ZS0+d20uc2tsLmRkYjsKIAkJCXVwZGF0ZV9w
aXBlcyAmPSB+QklUKHBpcGUpOwogCiAJCQlpbnRlbF91cGRhdGVfY3J0YyhjcnRjLCBzdGF0ZSwg
b2xkX2NydGNfc3RhdGUsCkBAIC0xNTE3OCw5ICsxNTE4MCw5IEBAIHN0YXRpYyB2b2lkIHNrbF9j
b21taXRfbW9kZXNldF9lbmFibGVzKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKQog
CQkJY29udGludWU7CiAKIAkJV0FSTl9PTihza2xfZGRiX2FsbG9jYXRpb25fb3ZlcmxhcHMoJm5l
d19jcnRjX3N0YXRlLT53bS5za2wuZGRiLAotCQkJCQkJICAgIGVudHJpZXMsIG51bV9waXBlcywg
aSkpOworCQkJCQkJICAgIGVudHJpZXMsIG51bV9waXBlcywgcGlwZSkpOwogCi0JCWVudHJpZXNb
aV0gPSBuZXdfY3J0Y19zdGF0ZS0+d20uc2tsLmRkYjsKKwkJZW50cmllc1twaXBlXSA9IG5ld19j
cnRjX3N0YXRlLT53bS5za2wuZGRiOwogCQltb2Rlc2V0X3BpcGVzICY9IH5CSVQocGlwZSk7CiAK
IAkJaWYgKGlzX3RyYW5zX3BvcnRfc3luY19tb2RlKG5ld19jcnRjX3N0YXRlKSkgewpAQCAtMTUy
MTMsOSArMTUyMTUsOSBAQCBzdGF0aWMgdm9pZCBza2xfY29tbWl0X21vZGVzZXRfZW5hYmxlcyhz
dHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSkKIAkJCWNvbnRpbnVlOwogCiAJCVdBUk5f
T04oc2tsX2RkYl9hbGxvY2F0aW9uX292ZXJsYXBzKCZuZXdfY3J0Y19zdGF0ZS0+d20uc2tsLmRk
YiwKLQkJCQkJCSAgICBlbnRyaWVzLCBudW1fcGlwZXMsIGkpKTsKKwkJCQkJCSAgICBlbnRyaWVz
LCBudW1fcGlwZXMsIHBpcGUpKTsKIAotCQllbnRyaWVzW2ldID0gbmV3X2NydGNfc3RhdGUtPndt
LnNrbC5kZGI7CisJCWVudHJpZXNbcGlwZV0gPSBuZXdfY3J0Y19zdGF0ZS0+d20uc2tsLmRkYjsK
IAkJbW9kZXNldF9waXBlcyAmPSB+QklUKHBpcGUpOwogCiAJCWludGVsX3VwZGF0ZV9jcnRjKGNy
dGMsIHN0YXRlLCBvbGRfY3J0Y19zdGF0ZSwgbmV3X2NydGNfc3RhdGUpOwotLSAKMi4yNC4xCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
