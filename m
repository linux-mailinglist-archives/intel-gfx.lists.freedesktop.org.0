Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 41BB3151A37
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2020 13:01:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A48BF6EE58;
	Tue,  4 Feb 2020 12:01:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A59556EE58
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Feb 2020 12:01:27 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Feb 2020 03:39:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,401,1574150400"; d="scan'208";a="225481739"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.178])
 by fmsmga008.fm.intel.com with ESMTP; 04 Feb 2020 03:39:47 -0800
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  4 Feb 2020 16:59:24 +0530
Message-Id: <20200204112927.17391-5-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200204112927.17391-1-anshuman.gupta@intel.com>
References: <20200204112927.17391-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/7] drm/i915: Fix wrongly populated plane
 possible_crtcs bit mask
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

QXMgYSBkaXNhYmxlZCBwaXBlIGluIHBpcGVfbWFzayBpcyBub3QgaGF2aW5nIGEgdmFsaWQgaW50
ZWwgY3J0YywKZHJpdmVyIHdyb25nbHkgcG9wdWxhdGVzIHRoZSBwb3NzaWJsZV9jcnRjcyBtYXNr
IHdoaWxlIGluaXRpYWxpemluZwp0aGUgcGxhbmUgZm9yIGEgQ1JUQy4gRml4aW5nIHVwIHRoZSBw
bGFuZSBwb3NzaWJsZV9jcnRjIG1hc2suCgpjaGFuZ2VzIHNpbmNlIFJGQzoKLSBTaW1wbGlmeSB0
aGUgcG9zc2libGVfY3J0Y3MgaW5pdGlhbGl6YXRpb24uIFtWaWxsZV0KCkNjOiBWaWxsZSBTeXJq
w6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBBbnNo
dW1hbiBHdXB0YSA8YW5zaHVtYW4uZ3VwdGFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgMTIgKysrKysrKysrKysrCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5jICB8ICAyIC0tCiAyIGZpbGVzIGNo
YW5nZWQsIDEyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwppbmRleCBjZjM2YzNkMGY4ZmMuLjdjNTFl
YjNmYWViMyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmMKQEAgLTE2NDA3LDYgKzE2NDA3LDE3IEBAIHN0YXRpYyB2b2lkIGludGVsX2NydGNfZnJlZShz
dHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YykKIAlrZnJlZShjcnRjKTsKIH0KIAorc3RhdGljIHZvaWQg
aW50ZWxfcGxhbmVfcG9zc2libGVfY3J0Y19pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdikKK3sKKwlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YzsKKwlzdHJ1Y3QgaW50ZWxfcGxh
bmUgKnBsYW5lOworCisJZm9yX2VhY2hfaW50ZWxfcGxhbmUoJmRldl9wcml2LT5kcm0sIHBsYW5l
KSB7CisJCWNydGMgPSBpbnRlbF9nZXRfY3J0Y19mb3JfcGlwZShkZXZfcHJpdiwgcGxhbmUtPnBp
cGUpOworCQlwbGFuZS0+YmFzZS5wb3NzaWJsZV9jcnRjcyA9IGRybV9jcnRjX21hc2soJmNydGMt
PmJhc2UpOworCX0KK30KKwogc3RhdGljIGludCBpbnRlbF9jcnRjX2luaXQoc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmRldl9wcml2LCBlbnVtIHBpcGUgcGlwZSkKIHsKIAlzdHJ1Y3QgaW50ZWxf
cGxhbmUgKnByaW1hcnksICpjdXJzb3I7CkBAIC0xNzU0Niw2ICsxNzU1Nyw3IEBAIGludCBpbnRl
bF9tb2Rlc2V0X2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCiAJCX0KIAl9CiAK
KwlpbnRlbF9wbGFuZV9wb3NzaWJsZV9jcnRjX2luaXQoaTkxNSk7CiAJaW50ZWxfc2hhcmVkX2Rw
bGxfaW5pdChkZXYpOwogCWludGVsX3VwZGF0ZV9mZGlfcGxsX2ZyZXEoaTkxNSk7CiAKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5jCmluZGV4IGZjYTc3ZWMxZTBk
ZC4uNGE1YjE5MjY3OGJmIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Nwcml0ZS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
c3ByaXRlLmMKQEAgLTMwMjMsOCArMzAyMyw2IEBAIHNrbF91bml2ZXJzYWxfcGxhbmVfY3JlYXRl
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAllbHNlCiAJCXBsYW5lX3R5cGUg
PSBEUk1fUExBTkVfVFlQRV9PVkVSTEFZOwogCi0JcG9zc2libGVfY3J0Y3MgPSBCSVQocGlwZSk7
Ci0KIAlyZXQgPSBkcm1fdW5pdmVyc2FsX3BsYW5lX2luaXQoJmRldl9wcml2LT5kcm0sICZwbGFu
ZS0+YmFzZSwKIAkJCQkgICAgICAgcG9zc2libGVfY3J0Y3MsIHBsYW5lX2Z1bmNzLAogCQkJCSAg
ICAgICBmb3JtYXRzLCBudW1fZm9ybWF0cywgbW9kaWZpZXJzLAotLSAKMi4yNC4wCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
