Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C5F0514D05B
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jan 2020 19:20:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 226106F629;
	Wed, 29 Jan 2020 18:20:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 678446F628
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Jan 2020 18:20:46 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Jan 2020 10:20:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,378,1574150400"; d="scan'208";a="277539113"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 29 Jan 2020 10:20:44 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 29 Jan 2020 20:20:43 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Jan 2020 20:20:29 +0200
Message-Id: <20200129182034.26138-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200129182034.26138-1-ville.syrjala@linux.intel.com>
References: <20200129182034.26138-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/9] drm/i915/dsb: Stop with the RMW
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCldl
IGRvbid0IHdhbnQgdG8ga2VlcCByYW5kb20gYml0cyBzZXQgaW4gRFNCX0NUUkwuIFN0b3AgdGhl
Cmhhcm1mdWwgUk1XLgoKQWxzbyBmbGlwIHRoZSByZXZlcnNlICYgYXJvdW5kIHRvIGFwcGVhc2Ug
bXkgb2NkLgoKU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxp
bnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rz
Yi5jIHwgMjAgKysrKysrKy0tLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlv
bnMoKyksIDEzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHNiLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RzYi5jCmluZGV4IDViYjRhYzE2MTBhNS4uOGIzNTdiMzVjNDFmIDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMKQEAgLTQwLDcgKzQwLDcgQEAgc3RhdGljIGlubGlu
ZSBib29sIGlzX2RzYl9idXN5KHN0cnVjdCBpbnRlbF9kc2IgKmRzYikKIAlzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNydGMtPmJhc2UuZGV2KTsKIAllbnVtIHBp
cGUgcGlwZSA9IGNydGMtPnBpcGU7CiAKLQlyZXR1cm4gRFNCX1NUQVRVUyAmIGludGVsX2RlX3Jl
YWQoZGV2X3ByaXYsIERTQl9DVFJMKHBpcGUsIGRzYi0+aWQpKTsKKwlyZXR1cm4gaW50ZWxfZGVf
cmVhZChkZXZfcHJpdiwgRFNCX0NUUkwocGlwZSwgZHNiLT5pZCkpICYgRFNCX1NUQVRVUzsKIH0K
IAogc3RhdGljIGlubGluZSBib29sIGludGVsX2RzYl9lbmFibGVfZW5naW5lKHN0cnVjdCBpbnRl
bF9kc2IgKmRzYikKQEAgLTQ4LDE4ICs0OCwxNSBAQCBzdGF0aWMgaW5saW5lIGJvb2wgaW50ZWxf
ZHNiX2VuYWJsZV9lbmdpbmUoc3RydWN0IGludGVsX2RzYiAqZHNiKQogCXN0cnVjdCBpbnRlbF9j
cnRjICpjcnRjID0gY29udGFpbmVyX29mKGRzYiwgdHlwZW9mKCpjcnRjKSwgZHNiKTsKIAlzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNydGMtPmJhc2UuZGV2KTsK
IAllbnVtIHBpcGUgcGlwZSA9IGNydGMtPnBpcGU7Ci0JdTMyIGRzYl9jdHJsOwogCi0JZHNiX2N0
cmwgPSBpbnRlbF9kZV9yZWFkKGRldl9wcml2LCBEU0JfQ1RSTChwaXBlLCBkc2ItPmlkKSk7Ci0J
aWYgKERTQl9TVEFUVVMgJiBkc2JfY3RybCkgeworCWlmIChpc19kc2JfYnVzeShkc2IpKSB7CiAJ
CURSTV9FUlJPUigiRFNCIGVuZ2luZSBpcyBidXN5LlxuIik7CiAJCXJldHVybiBmYWxzZTsKIAl9
CiAKLQlkc2JfY3RybCB8PSBEU0JfRU5BQkxFOwotCWludGVsX2RlX3dyaXRlKGRldl9wcml2LCBE
U0JfQ1RSTChwaXBlLCBkc2ItPmlkKSwgZHNiX2N0cmwpOwotCisJaW50ZWxfZGVfd3JpdGUoZGV2
X3ByaXYsIERTQl9DVFJMKHBpcGUsIGRzYi0+aWQpLCBEU0JfRU5BQkxFKTsKIAlpbnRlbF9kZV9w
b3N0aW5nX3JlYWQoZGV2X3ByaXYsIERTQl9DVFJMKHBpcGUsIGRzYi0+aWQpKTsKKwogCXJldHVy
biB0cnVlOwogfQogCkBAIC02OCwxOCArNjUsMTUgQEAgc3RhdGljIGlubGluZSBib29sIGludGVs
X2RzYl9kaXNhYmxlX2VuZ2luZShzdHJ1Y3QgaW50ZWxfZHNiICpkc2IpCiAJc3RydWN0IGludGVs
X2NydGMgKmNydGMgPSBjb250YWluZXJfb2YoZHNiLCB0eXBlb2YoKmNydGMpLCBkc2IpOwogCXN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoY3J0Yy0+YmFzZS5kZXYp
OwogCWVudW0gcGlwZSBwaXBlID0gY3J0Yy0+cGlwZTsKLQl1MzIgZHNiX2N0cmw7CiAKLQlkc2Jf
Y3RybCA9IGludGVsX2RlX3JlYWQoZGV2X3ByaXYsIERTQl9DVFJMKHBpcGUsIGRzYi0+aWQpKTsK
LQlpZiAoRFNCX1NUQVRVUyAmIGRzYl9jdHJsKSB7CisJaWYgKGlzX2RzYl9idXN5KGRzYikpIHsK
IAkJRFJNX0RFQlVHX0tNUygiRFNCIGVuZ2luZSBpcyBidXN5LlxuIik7CiAJCXJldHVybiBmYWxz
ZTsKIAl9CiAKLQlkc2JfY3RybCAmPSB+RFNCX0VOQUJMRTsKLQlpbnRlbF9kZV93cml0ZShkZXZf
cHJpdiwgRFNCX0NUUkwocGlwZSwgZHNiLT5pZCksIGRzYl9jdHJsKTsKLQorCWludGVsX2RlX3dy
aXRlKGRldl9wcml2LCBEU0JfQ1RSTChwaXBlLCBkc2ItPmlkKSwgMCk7CiAJaW50ZWxfZGVfcG9z
dGluZ19yZWFkKGRldl9wcml2LCBEU0JfQ1RSTChwaXBlLCBkc2ItPmlkKSk7CisKIAlyZXR1cm4g
dHJ1ZTsKIH0KIAotLSAKMi4yNC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZngK
