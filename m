Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 04A4021E4C
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2019 21:32:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64351899AB;
	Fri, 17 May 2019 19:32:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A29D1899B0
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 May 2019 19:32:01 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 May 2019 12:32:01 -0700
X-ExtLoop1: 1
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 17 May 2019 12:31:59 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 17 May 2019 22:31:58 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 May 2019 22:31:28 +0300
Message-Id: <20190517193132.8140-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190517193132.8140-1-ville.syrjala@linux.intel.com>
References: <20190517193132.8140-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 10/14] drm/i915: Move state dump to the end of
 atomic_check()
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkN1
cnJlbnRseSB3ZSdyZSBkdW1waW5nIHRoZSBjcnRjIHN0YXRlcyBiZWZvcmUgdGhleSBoYXZlCmJl
ZW4gZnVsbHkgY2FsY3VsYXRlZC4gTW92ZSB0aGUgZHVtcGluZyB0byB0aGUgZW5kIG9mCi5hdG9t
aWNfY2hlY2soKSBzbyB3ZSBnZXQgYSBmdWxseSB1cCB0byBkYXRlIGR1bXAuCgpMZXQncyBhbHNv
IGRvIHRoZSBkdW1wIGZvciBmdWxseSBkaXNhYmxlZCBwaXBlcywgYnV0IHdlJ2xsCmxpbWl0IHRo
YXQgdG8ganVzdCBzYXlpbmcgdGhhdCB0aGUgcGlwZSBpcyBkaXNhYmxlZCBzaW5jZQp0aGUgcmVz
dCBvZiB0aGUgc3RhdGUgaXMgZ29pbmcgdG8gYmUgbm9uc2Vuc2UgaW4gdGhhdCBjYXNlLgoKU2ln
bmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNv
bT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kaXNwbGF5LmMgfCAyNyArKysrKysr
KysrKysrKysrKysrKy0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAyMCBpbnNlcnRpb25zKCspLCA3
IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rp
c3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rpc3BsYXkuYwppbmRleCBlNzFh
OTBhNDdkM2EuLjVmZmI0ZjVjNGZhNyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfZGlzcGxheS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rpc3BsYXku
YwpAQCAtMTE0ODgsOCArMTE0ODgsOSBAQCBzdGF0aWMgdm9pZCBpbnRlbF9kdW1wX3BpcGVfY29u
ZmlnKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpwaXBlX2NvbmZpZywKIAlzdHJ1Y3QgZHJtX2Zy
YW1lYnVmZmVyICpmYjsKIAljaGFyIGJ1Zls2NF07CiAKLQlEUk1fREVCVUdfS01TKCJbQ1JUQzol
ZDolc10lc1xuIiwKLQkJICAgICAgY3J0Yy0+YmFzZS5iYXNlLmlkLCBjcnRjLT5iYXNlLm5hbWUs
IGNvbnRleHQpOworCURSTV9ERUJVR19LTVMoIltDUlRDOiVkOiVzXSBlbmFibGU6ICVzICVzXG4i
LAorCQkgICAgICBjcnRjLT5iYXNlLmJhc2UuaWQsIGNydGMtPmJhc2UubmFtZSwKKwkJICAgICAg
eWVzbm8ocGlwZV9jb25maWctPmJhc2UuZW5hYmxlKSwgY29udGV4dCk7CiAKIAlzbnByaW50Zl9v
dXRwdXRfdHlwZXMoYnVmLCBzaXplb2YoYnVmKSwgcGlwZV9jb25maWctPm91dHB1dF90eXBlcyk7
CiAJRFJNX0RFQlVHX0tNUygib3V0cHV0X3R5cGVzOiAlcyAoMHgleClcbiIsCkBAIC0xMzA4MSwx
MCArMTMwODIsNiBAQCBzdGF0aWMgaW50IGludGVsX2F0b21pY19jaGVjayhzdHJ1Y3QgZHJtX2Rl
dmljZSAqZGV2LAogCiAJCWlmIChuZWVkc19tb2Rlc2V0KCZuZXdfY3J0Y19zdGF0ZS0+YmFzZSkp
CiAJCQlhbnlfbXMgPSB0cnVlOwotCi0JCWludGVsX2R1bXBfcGlwZV9jb25maWcobmV3X2NydGNf
c3RhdGUsCi0JCQkJICAgICAgIG5lZWRzX21vZGVzZXQoJm5ld19jcnRjX3N0YXRlLT5iYXNlKSA/
Ci0JCQkJICAgICAgICJbbW9kZXNldF0iIDogIltmYXN0c2V0XSIpOwogCX0KIAogCXJldCA9IGRy
bV9kcF9tc3RfYXRvbWljX2NoZWNrKCZzdGF0ZS0+YmFzZSk7CkBAIC0xMzEwOCw3ICsxMzEwNSwy
MyBAQCBzdGF0aWMgaW50IGludGVsX2F0b21pY19jaGVjayhzdHJ1Y3QgZHJtX2RldmljZSAqZGV2
LAogCQlyZXR1cm4gcmV0OwogCiAJaW50ZWxfZmJjX2Nob29zZV9jcnRjKGRldl9wcml2LCBzdGF0
ZSk7Ci0JcmV0dXJuIGNhbGNfd2F0ZXJtYXJrX2RhdGEoc3RhdGUpOworCisJcmV0ID0gY2FsY193
YXRlcm1hcmtfZGF0YShzdGF0ZSk7CisJaWYgKHJldCkKKwkJcmV0dXJuIHJldDsKKworCWZvcl9l
YWNoX29sZG5ld19pbnRlbF9jcnRjX2luX3N0YXRlKHN0YXRlLCBjcnRjLCBvbGRfY3J0Y19zdGF0
ZSwKKwkJCQkJICAgIG5ld19jcnRjX3N0YXRlLCBpKSB7CisJCWlmICghbmVlZHNfbW9kZXNldCgm
bmV3X2NydGNfc3RhdGUtPmJhc2UpICYmCisJCSAgICAhbmV3X2NydGNfc3RhdGUtPnVwZGF0ZV9w
aXBlKQorCQkJY29udGludWU7CisKKwkJaW50ZWxfZHVtcF9waXBlX2NvbmZpZyhuZXdfY3J0Y19z
dGF0ZSwKKwkJCQkgICAgICAgbmVlZHNfbW9kZXNldCgmbmV3X2NydGNfc3RhdGUtPmJhc2UpID8K
KwkJCQkgICAgICAgIlttb2Rlc2V0XSIgOiAiW2Zhc3RzZXRdIik7CisJfQorCisJcmV0dXJuIDA7
CiB9CiAKIHN0YXRpYyBpbnQgaW50ZWxfYXRvbWljX3ByZXBhcmVfY29tbWl0KHN0cnVjdCBkcm1f
ZGV2aWNlICpkZXYsCi0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
