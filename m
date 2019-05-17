Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AFEFC21E47
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2019 21:31:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32AA18999E;
	Fri, 17 May 2019 19:31:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B18E8999E
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 May 2019 19:31:49 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 May 2019 12:31:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,481,1549958400"; d="scan'208";a="172913985"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 17 May 2019 12:31:47 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 17 May 2019 22:31:46 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 May 2019 22:31:24 +0300
Message-Id: <20190517193132.8140-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190517193132.8140-1-ville.syrjala@linux.intel.com>
References: <20190517193132.8140-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 06/14] drm/i915: Don't pass the crtc to
 intel_dump_pipe_config()
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCldl
IGFscmVhZHkgcGFzcyB0aGUgY3J0YydzIHN0YXRlIHRvIGludGVsX2R1bXBfcGlwZV9jb25maWco
KQpzbyBwYXNzaW5nIHRoZSBjcnRjIGFzIHdlbGwgaXMgcmVkdW5kYW50LgoKU2lnbmVkLW9mZi1i
eTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kaXNwbGF5LmMgfCAxOCArKysrKysrLS0tLS0tLS0t
LS0KIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDExIGRlbGV0aW9ucygtKQoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX2Rpc3BsYXkuYwppbmRleCBkZGRjOWE4Y2ZmYTEuLjBlNTA5ZjVh
MjhhMyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGlzcGxheS5jCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rpc3BsYXkuYwpAQCAtMTE0NzYsMTAgKzEx
NDc2LDEwIEBAIHN0YXRpYyBjb25zdCBjaGFyICpvdXRwdXRfZm9ybWF0cyhlbnVtIGludGVsX291
dHB1dF9mb3JtYXQgZm9ybWF0KQogCXJldHVybiBvdXRwdXRfZm9ybWF0X3N0cltmb3JtYXRdOwog
fQogCi1zdGF0aWMgdm9pZCBpbnRlbF9kdW1wX3BpcGVfY29uZmlnKHN0cnVjdCBpbnRlbF9jcnRj
ICpjcnRjLAotCQkJCSAgIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpwaXBlX2NvbmZpZywKK3N0
YXRpYyB2b2lkIGludGVsX2R1bXBfcGlwZV9jb25maWcoc3RydWN0IGludGVsX2NydGNfc3RhdGUg
KnBpcGVfY29uZmlnLAogCQkJCSAgIGNvbnN0IGNoYXIgKmNvbnRleHQpCiB7CisJc3RydWN0IGlu
dGVsX2NydGMgKmNydGMgPSB0b19pbnRlbF9jcnRjKHBpcGVfY29uZmlnLT5iYXNlLmNydGMpOwog
CXN0cnVjdCBkcm1fZGV2aWNlICpkZXYgPSBjcnRjLT5iYXNlLmRldjsKIAlzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGRldik7CiAJc3RydWN0IGRybV9wbGFuZSAq
cGxhbmU7CkBAIC0xMjU4NSwxMCArMTI1ODUsOCBAQCB2ZXJpZnlfY3J0Y19zdGF0ZShzdHJ1Y3Qg
ZHJtX2NydGMgKmNydGMsCiAJaWYgKCFpbnRlbF9waXBlX2NvbmZpZ19jb21wYXJlKGRldl9wcml2
LCBzd19jb25maWcsCiAJCQkJICAgICAgIHBpcGVfY29uZmlnLCBmYWxzZSkpIHsKIAkJSTkxNV9T
VEFURV9XQVJOKDEsICJwaXBlIHN0YXRlIGRvZXNuJ3QgbWF0Y2ghXG4iKTsKLQkJaW50ZWxfZHVt
cF9waXBlX2NvbmZpZyhpbnRlbF9jcnRjLCBwaXBlX2NvbmZpZywKLQkJCQkgICAgICAgIltodyBz
dGF0ZV0iKTsKLQkJaW50ZWxfZHVtcF9waXBlX2NvbmZpZyhpbnRlbF9jcnRjLCBzd19jb25maWcs
Ci0JCQkJICAgICAgICJbc3cgc3RhdGVdIik7CisJCWludGVsX2R1bXBfcGlwZV9jb25maWcocGlw
ZV9jb25maWcsICJbaHcgc3RhdGVdIik7CisJCWludGVsX2R1bXBfcGlwZV9jb25maWcoc3dfY29u
ZmlnLCAiW3N3IHN0YXRlXSIpOwogCX0KIH0KIApAQCAtMTMwNzQsOCArMTMwNzIsNyBAQCBzdGF0
aWMgaW50IGludGVsX2F0b21pY19jaGVjayhzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LAogCQlpZiAo
cmV0ID09IC1FREVBRExLKQogCQkJcmV0dXJuIHJldDsKIAkJaWYgKHJldCkgewotCQkJaW50ZWxf
ZHVtcF9waXBlX2NvbmZpZyh0b19pbnRlbF9jcnRjKGNydGMpLAotCQkJCQkgICAgICAgcGlwZV9j
b25maWcsICJbZmFpbGVkXSIpOworCQkJaW50ZWxfZHVtcF9waXBlX2NvbmZpZyhwaXBlX2NvbmZp
ZywgIltmYWlsZWRdIik7CiAJCQlyZXR1cm4gcmV0OwogCQl9CiAKQEAgLTEzMDg5LDcgKzEzMDg2
LDcgQEAgc3RhdGljIGludCBpbnRlbF9hdG9taWNfY2hlY2soc3RydWN0IGRybV9kZXZpY2UgKmRl
diwKIAkJaWYgKG5lZWRzX21vZGVzZXQoY3J0Y19zdGF0ZSkpCiAJCQlhbnlfbXMgPSB0cnVlOwog
Ci0JCWludGVsX2R1bXBfcGlwZV9jb25maWcodG9faW50ZWxfY3J0YyhjcnRjKSwgcGlwZV9jb25m
aWcsCisJCWludGVsX2R1bXBfcGlwZV9jb25maWcocGlwZV9jb25maWcsCiAJCQkJICAgICAgIG5l
ZWRzX21vZGVzZXQoY3J0Y19zdGF0ZSkgPwogCQkJCSAgICAgICAiW21vZGVzZXRdIiA6ICJbZmFz
dHNldF0iKTsKIAl9CkBAIC0xNjMyNyw4ICsxNjMyNCw3IEBAIGludGVsX21vZGVzZXRfc2V0dXBf
aHdfc3RhdGUoc3RydWN0IGRybV9kZXZpY2UgKmRldiwKIAlmb3JfZWFjaF9pbnRlbF9jcnRjKCZk
ZXZfcHJpdi0+ZHJtLCBjcnRjKSB7CiAJCWNydGNfc3RhdGUgPSB0b19pbnRlbF9jcnRjX3N0YXRl
KGNydGMtPmJhc2Uuc3RhdGUpOwogCQlpbnRlbF9zYW5pdGl6ZV9jcnRjKGNydGMsIGN0eCk7Ci0J
CWludGVsX2R1bXBfcGlwZV9jb25maWcoY3J0YywgY3J0Y19zdGF0ZSwKLQkJCQkgICAgICAgIltz
ZXR1cF9od19zdGF0ZV0iKTsKKwkJaW50ZWxfZHVtcF9waXBlX2NvbmZpZyhjcnRjX3N0YXRlLCAi
W3NldHVwX2h3X3N0YXRlXSIpOwogCX0KIAogCWludGVsX21vZGVzZXRfdXBkYXRlX2Nvbm5lY3Rv
cl9hdG9taWNfc3RhdGUoZGV2KTsKLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
