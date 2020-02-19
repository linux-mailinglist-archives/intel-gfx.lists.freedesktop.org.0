Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E0C1016500E
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2020 21:36:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A5986ECA5;
	Wed, 19 Feb 2020 20:36:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 84A796ECA4;
 Wed, 19 Feb 2020 20:36:10 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Feb 2020 12:36:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,461,1574150400"; d="scan'208";a="228709281"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga007.fm.intel.com with SMTP; 19 Feb 2020 12:36:07 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 19 Feb 2020 22:36:06 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: dri-devel@lists.freedesktop.org
Date: Wed, 19 Feb 2020 22:35:37 +0200
Message-Id: <20200219203544.31013-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200219203544.31013-1-ville.syrjala@linux.intel.com>
References: <20200219203544.31013-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 05/12] drm/msm/dpu: Stop copying around
 mode->private_flags
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
Cc: linux-arm-msm@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 freedreno@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClRo
ZSBkcml2ZXIgbmV2ZXIgc2V0cyBtb2RlLT5wcml2YXRlX2ZsYWdzIHNvIGNvcHlpbmcKaXQgYmFj
ayBhbmQgZm9ydGggaXMgZW50aXJlbHkgcG9pbnRsZXNzLiBTdG9wIGRvaW5nIGl0LgoKQWxzbyBk
cm9wIHByaXZhdGVfZmxhZ3MgZnJvbSB0aGUgdHJhY2Vwb2ludC4KCkNjOiBSb2IgQ2xhcmsgPHJv
YmRjbGFya0BnbWFpbC5jb20+CkNjOiBTZWFuIFBhdWwgPHNlYW5AcG9vcmx5LnJ1bj4KQ2M6IGxp
bnV4LWFybS1tc21Admdlci5rZXJuZWwub3JnCkNjOiBmcmVlZHJlbm9AbGlzdHMuZnJlZWRlc2t0
b3Aub3JnClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51
eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL21zbS9kaXNwL2RwdTEvZHB1X2VuY29k
ZXIuYyB8IDI5ICstLS0tLS0tLS0tLS0tLS0tLS0tLQogZHJpdmVycy9ncHUvZHJtL21zbS9kaXNw
L2RwdTEvZHB1X3RyYWNlLmggICB8IDEwICsrKy0tLS0KIDIgZmlsZXMgY2hhbmdlZCwgNSBpbnNl
cnRpb25zKCspLCAzNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
bXNtL2Rpc3AvZHB1MS9kcHVfZW5jb2Rlci5jIGIvZHJpdmVycy9ncHUvZHJtL21zbS9kaXNwL2Rw
dTEvZHB1X2VuY29kZXIuYwppbmRleCA1OGQzNDAwNjY4ZjUuLjQ1MTFlMmJhMzY4MCAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL21zbS9kaXNwL2RwdTEvZHB1X2VuY29kZXIuYworKysgYi9k
cml2ZXJzL2dwdS9kcm0vbXNtL2Rpc3AvZHB1MS9kcHVfZW5jb2Rlci5jCkBAIC01MDAsMjMgKzUw
MCw2IEBAIHZvaWQgZHB1X2VuY29kZXJfaGVscGVyX3NwbGl0X2NvbmZpZygKIAl9CiB9CiAKLXN0
YXRpYyB2b2lkIF9kcHVfZW5jb2Rlcl9hZGp1c3RfbW9kZShzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAq
Y29ubmVjdG9yLAotCQlzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSAqYWRqX21vZGUpCi17Ci0Jc3Ry
dWN0IGRybV9kaXNwbGF5X21vZGUgKmN1cl9tb2RlOwotCi0JaWYgKCFjb25uZWN0b3IgfHwgIWFk
al9tb2RlKQotCQlyZXR1cm47Ci0KLQlsaXN0X2Zvcl9lYWNoX2VudHJ5KGN1cl9tb2RlLCAmY29u
bmVjdG9yLT5tb2RlcywgaGVhZCkgewotCQlpZiAoY3VyX21vZGUtPnZkaXNwbGF5ID09IGFkal9t
b2RlLT52ZGlzcGxheSAmJgotCQkgICAgY3VyX21vZGUtPmhkaXNwbGF5ID09IGFkal9tb2RlLT5o
ZGlzcGxheSAmJgotCQkgICAgZHJtX21vZGVfdnJlZnJlc2goY3VyX21vZGUpID09IGRybV9tb2Rl
X3ZyZWZyZXNoKGFkal9tb2RlKSkgewotCQkJYWRqX21vZGUtPnByaXZhdGVfZmxhZ3MgfD0gY3Vy
X21vZGUtPnByaXZhdGVfZmxhZ3M7Ci0JCX0KLQl9Ci19Ci0KIHN0YXRpYyBzdHJ1Y3QgbXNtX2Rp
c3BsYXlfdG9wb2xvZ3kgZHB1X2VuY29kZXJfZ2V0X3RvcG9sb2d5KAogCQkJc3RydWN0IGRwdV9l
bmNvZGVyX3ZpcnQgKmRwdV9lbmMsCiAJCQlzdHJ1Y3QgZHB1X2ttcyAqZHB1X2ttcywKQEAgLTU4
MCwxNSArNTYzLDYgQEAgc3RhdGljIGludCBkcHVfZW5jb2Rlcl92aXJ0X2F0b21pY19jaGVjaygK
IAlhZGpfbW9kZSA9ICZjcnRjX3N0YXRlLT5hZGp1c3RlZF9tb2RlOwogCXRyYWNlX2RwdV9lbmNf
YXRvbWljX2NoZWNrKERSTUlEKGRybV9lbmMpKTsKIAotCS8qCi0JICogZGlzcGxheSBkcml2ZXJz
IG1heSBwb3B1bGF0ZSBwcml2YXRlIGZpZWxkcyBvZiB0aGUgZHJtIGRpc3BsYXkgbW9kZQotCSAq
IHN0cnVjdHVyZSB3aGlsZSByZWdpc3RlcmluZyBwb3NzaWJsZSBtb2RlcyBvZiBhIGNvbm5lY3Rv
ciB3aXRoIERSTS4KLQkgKiBUaGVzZSBwcml2YXRlIGZpZWxkcyBhcmUgbm90IHBvcHVsYXRlZCBi
YWNrIHdoaWxlIERSTSBpbnZva2VzCi0JICogdGhlIG1vZGVfc2V0IGNhbGxiYWNrcy4gVGhpcyBt
b2R1bGUgcmV0cmlldmVzIGFuZCBwb3B1bGF0ZXMgdGhlCi0JICogcHJpdmF0ZSBmaWVsZHMgb2Yg
dGhlIGdpdmVuIG1vZGUuCi0JICovCi0JX2RwdV9lbmNvZGVyX2FkanVzdF9tb2RlKGNvbm5fc3Rh
dGUtPmNvbm5lY3RvciwgYWRqX21vZGUpOwotCiAJLyogcGVyZm9ybSBhdG9taWMgY2hlY2sgb24g
dGhlIGZpcnN0IHBoeXNpY2FsIGVuY29kZXIgKG1hc3RlcikgKi8KIAlmb3IgKGkgPSAwOyBpIDwg
ZHB1X2VuYy0+bnVtX3BoeXNfZW5jczsgaSsrKSB7CiAJCXN0cnVjdCBkcHVfZW5jb2Rlcl9waHlz
ICpwaHlzID0gZHB1X2VuYy0+cGh5c19lbmNzW2ldOwpAQCAtNjIzLDggKzU5Nyw3IEBAIHN0YXRp
YyBpbnQgZHB1X2VuY29kZXJfdmlydF9hdG9taWNfY2hlY2soCiAJCX0KIAl9CiAKLQl0cmFjZV9k
cHVfZW5jX2F0b21pY19jaGVja19mbGFncyhEUk1JRChkcm1fZW5jKSwgYWRqX21vZGUtPmZsYWdz
LAotCQkJYWRqX21vZGUtPnByaXZhdGVfZmxhZ3MpOworCXRyYWNlX2RwdV9lbmNfYXRvbWljX2No
ZWNrX2ZsYWdzKERSTUlEKGRybV9lbmMpLCBhZGpfbW9kZS0+ZmxhZ3MpOwogCiAJcmV0dXJuIHJl
dDsKIH0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9tc20vZGlzcC9kcHUxL2RwdV90cmFj
ZS5oIGIvZHJpdmVycy9ncHUvZHJtL21zbS9kaXNwL2RwdTEvZHB1X3RyYWNlLmgKaW5kZXggZWVj
ZmU5YjMxOTllLi42NzE0YjA4ODk3MGYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9tc20v
ZGlzcC9kcHUxL2RwdV90cmFjZS5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9tc20vZGlzcC9kcHUx
L2RwdV90cmFjZS5oCkBAIC0zMjcsMjAgKzMyNywxOCBAQCBERUZJTkVfRVZFTlQoZHB1X2VuY19r
ZXl2YWxfdGVtcGxhdGUsIGRwdV9lbmNfdHJpZ2dlcl9zdGFydCwKICk7CiAKIFRSQUNFX0VWRU5U
KGRwdV9lbmNfYXRvbWljX2NoZWNrX2ZsYWdzLAotCVRQX1BST1RPKHVpbnQzMl90IGRybV9pZCwg
dW5zaWduZWQgaW50IGZsYWdzLCBpbnQgcHJpdmF0ZV9mbGFncyksCi0JVFBfQVJHUyhkcm1faWQs
IGZsYWdzLCBwcml2YXRlX2ZsYWdzKSwKKwlUUF9QUk9UTyh1aW50MzJfdCBkcm1faWQsIHVuc2ln
bmVkIGludCBmbGFncyksCisJVFBfQVJHUyhkcm1faWQsIGZsYWdzKSwKIAlUUF9TVFJVQ1RfX2Vu
dHJ5KAogCQlfX2ZpZWxkKAl1aW50MzJfdCwJCWRybV9pZAkJKQogCQlfX2ZpZWxkKAl1bnNpZ25l
ZCBpbnQsCQlmbGFncwkJKQotCQlfX2ZpZWxkKAlpbnQsCQkJcHJpdmF0ZV9mbGFncwkpCiAJKSwK
IAlUUF9mYXN0X2Fzc2lnbigKIAkJX19lbnRyeS0+ZHJtX2lkID0gZHJtX2lkOwogCQlfX2VudHJ5
LT5mbGFncyA9IGZsYWdzOwotCQlfX2VudHJ5LT5wcml2YXRlX2ZsYWdzID0gcHJpdmF0ZV9mbGFn
czsKIAkpLAotCVRQX3ByaW50aygiaWQ9JXUsIGZsYWdzPSV1LCBwcml2YXRlX2ZsYWdzPSVkIiwK
LQkJICBfX2VudHJ5LT5kcm1faWQsIF9fZW50cnktPmZsYWdzLCBfX2VudHJ5LT5wcml2YXRlX2Zs
YWdzKQorCVRQX3ByaW50aygiaWQ9JXUsIGZsYWdzPSV1IiwKKwkJICBfX2VudHJ5LT5kcm1faWQs
IF9fZW50cnktPmZsYWdzKQogKTsKIAogREVDTEFSRV9FVkVOVF9DTEFTUyhkcHVfZW5jX2lkX2Vu
YWJsZV90ZW1wbGF0ZSwKLS0gCjIuMjQuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4Cg==
