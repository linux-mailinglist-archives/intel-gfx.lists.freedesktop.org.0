Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 43D0711A35
	for <lists+intel-gfx@lfdr.de>; Thu,  2 May 2019 15:31:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 574A2895E1;
	Thu,  2 May 2019 13:31:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 313E8895E1
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 May 2019 13:31:34 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 May 2019 06:31:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,421,1549958400"; d="scan'208";a="154144287"
Received: from vandita-desktop.iind.intel.com ([10.223.74.201])
 by FMSMGA003.fm.intel.com with ESMTP; 02 May 2019 06:31:32 -0700
From: Vandita Kulkarni <vandita.kulkarni@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 May 2019 18:40:42 +0530
Message-Id: <1556802643-19788-3-git-send-email-vandita.kulkarni@intel.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1556802643-19788-1-git-send-email-vandita.kulkarni@intel.com>
References: <1556802643-19788-1-git-send-email-vandita.kulkarni@intel.com>
Subject: [Intel-gfx] [v4 3/4] drm/i915: Fix pipe config mismatch for bpp,
 output format
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
Cc: jani.nikula@intel.com, ville.syrjala@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UmVhZCBiYWNrIHRoZSBwaXhlbCBmb21yYXQgcmVnaXN0ZXIgYW5kIGdldCB0aGUgYnBwLgoKdjI6
IFJlYWQgdGhlIFBJUEVfTUlTQyByZWdpc3RlciAoSmFuaSkuCgpTaWduZWQtb2ZmLWJ5OiBWYW5k
aXRhIEt1bGthcm5pIDx2YW5kaXRhLmt1bGthcm5pQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pY2xfZHNpLmMgfCAzICsrKwogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9u
cygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ljbF9kc2kuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2ljbF9kc2kuYwppbmRleCA0NWZlNjljLi5jZDZhNGYzIDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pY2xfZHNpLmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaWNsX2RzaS5jCkBAIC0xMjI2LDYgKzEyMjYsNyBAQCBzdGF0aWMgdm9pZCBnZW4xMV9k
c2lfZ2V0X2NvbmZpZyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKIAkJCQkgc3RydWN0
IGludGVsX2NydGNfc3RhdGUgKnBpcGVfY29uZmlnKQogewogCXN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoZW5jb2Rlci0+YmFzZS5kZXYpOworCXN0cnVjdCBpbnRl
bF9jcnRjICpjcnRjID0gdG9faW50ZWxfY3J0YyhwaXBlX2NvbmZpZy0+YmFzZS5jcnRjKTsKIAlz
dHJ1Y3QgaW50ZWxfZHNpICppbnRlbF9kc2kgPSBlbmNfdG9faW50ZWxfZHNpKCZlbmNvZGVyLT5i
YXNlKTsKIAogCS8qIEZJWE1FOiBhZGFwdCBpY2xfZGRpX2Nsb2NrX2dldCgpIGZvciBEU0kgYW5k
IHVzZSB0aGF0PyAqLwpAQCAtMTIzNCw2ICsxMjM1LDcgQEAgc3RhdGljIHZvaWQgZ2VuMTFfZHNp
X2dldF9jb25maWcoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCiAJcGlwZV9jb25maWct
PmJhc2UuYWRqdXN0ZWRfbW9kZS5jcnRjX2Nsb2NrID0gaW50ZWxfZHNpLT5wY2xrOwogCWdlbjEx
X2RzaV9nZXRfdGltaW5ncyhlbmNvZGVyLCBwaXBlX2NvbmZpZyk7CiAJcGlwZV9jb25maWctPm91
dHB1dF90eXBlcyB8PSBCSVQoSU5URUxfT1VUUFVUX0RTSSk7CisJcGlwZV9jb25maWctPnBpcGVf
YnBwID0gYmR3X2dldF9waXBlbWlzY19icHAoY3J0Yyk7CiB9CiAKIHN0YXRpYyBpbnQgZ2VuMTFf
ZHNpX2NvbXB1dGVfY29uZmlnKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLApAQCAtMTI0
OSw2ICsxMjUxLDcgQEAgc3RhdGljIGludCBnZW4xMV9kc2lfY29tcHV0ZV9jb25maWcoc3RydWN0
IGludGVsX2VuY29kZXIgKmVuY29kZXIsCiAJc3RydWN0IGRybV9kaXNwbGF5X21vZGUgKmFkanVz
dGVkX21vZGUgPQogCQkJCQkmcGlwZV9jb25maWctPmJhc2UuYWRqdXN0ZWRfbW9kZTsKIAorCXBp
cGVfY29uZmlnLT5vdXRwdXRfZm9ybWF0ID0gSU5URUxfT1VUUFVUX0ZPUk1BVF9SR0I7CiAJaW50
ZWxfZml4ZWRfcGFuZWxfbW9kZShmaXhlZF9tb2RlLCBhZGp1c3RlZF9tb2RlKTsKIAlpbnRlbF9w
Y2hfcGFuZWxfZml0dGluZyhjcnRjLCBwaXBlX2NvbmZpZywgY29ubl9zdGF0ZS0+c2NhbGluZ19t
b2RlKTsKIAotLSAKMS45LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
