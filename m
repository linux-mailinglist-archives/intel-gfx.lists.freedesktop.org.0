Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 23AAF146939
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2020 14:36:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C0E66FCB8;
	Thu, 23 Jan 2020 13:36:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D15596FCB7
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Jan 2020 13:36:34 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Jan 2020 05:36:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,354,1574150400"; d="scan'208";a="216259559"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.178])
 by orsmga007.jf.intel.com with ESMTP; 23 Jan 2020 05:36:32 -0800
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Jan 2020 18:56:56 +0530
Message-Id: <20200123132659.725-4-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200123132659.725-1-anshuman.gupta@intel.com>
References: <20200123132659.725-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 3/6] drm/i915: Fix wrongly populated plane
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QXMgYSBkaXNhYmxlZCBwaXBlIGluIHBpcGVfbWFzayBpcyBub3QgaGF2aW5nIGEgdmFsaWQgaW50
ZWwgY3J0YywKZHJpdmVyIHdyb25nbHkgcG9wdWxhdGVzIHRoZSBwb3NzaWJsZV9jcnRjcyBtYXNr
IHdoaWxlIGluaXRpYWxpemluZwp0aGUgcGxhbmUgZm9yIGEgQ1JUQy4gRml4aW5nIHVwIHRoZSBw
bGFuZSBwb3NzaWJsZV9jcnRjIG1hc2suCgpDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJq
YWxhQGxpbnV4LmludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogQW5zaHVtYW4gR3VwdGEgPGFuc2h1
bWFuLmd1cHRhQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXkuYyB8IDIzICsrKysrKysrKysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwg
MjMgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5LmMKaW5kZXggYWZkOGQ0MzE2MGM2Li5iMjUwYjMxZjYwMDAgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCkBAIC0xNjQwNyw2ICsxNjQwNywy
OCBAQCBzdGF0aWMgdm9pZCBpbnRlbF9jcnRjX2ZyZWUoc3RydWN0IGludGVsX2NydGMgKmNydGMp
CiAJa2ZyZWUoY3J0Yyk7CiB9CiAKK3N0YXRpYyB2b2lkIGludGVsX3BsYW5lX3Bvc3NpYmxlX2Ny
dGNfZml4dXAoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQoreworCXN0cnVjdCBp
bnRlbF9jcnRjICpjcnRjOworCXN0cnVjdCBpbnRlbF9wbGFuZSAqcGxhbmU7CisKKwkvKgorCSAq
IGlmIGluIGNhc2UgdGhlIGRpc2FibGVkIGZ1c2VkIHBpcGUgaXMgbm90IHRoZSBsYXN0IHBpcGUs
CisJICogaXQgcmVxdWlyZXMgdG8gZml4IHRoZSB3cm9uZyBwb3B1bGF0ZWQgcG9zc2libGVfY3J0
Y3MgbWFzay4KKwkgKi8KKwlpZiAoaXNfcG93ZXJfb2ZfMihJTlRFTF9JTkZPKGRldl9wcml2KS0+
cGlwZV9tYXNrICsgMSkpCisJCXJldHVybjsKKworCWZvcl9lYWNoX2ludGVsX2NydGMoJmRldl9w
cml2LT5kcm0sIGNydGMpIHsKKwkJZm9yX2VhY2hfaW50ZWxfcGxhbmVfb25fY3J0YygmZGV2X3By
aXYtPmRybSwgY3J0YywgcGxhbmUpIHsKKwkJCWlmIChXQVJOX09OKCEocGxhbmUtPmJhc2UucG9z
c2libGVfY3J0Y3MgJiBCSVQoY3J0Yy0+cGlwZSkpKSkKKwkJCQlyZXR1cm47CisJCQlwbGFuZS0+
YmFzZS5wb3NzaWJsZV9jcnRjcyA9CisJCQkJCWRybV9jcnRjX21hc2soJmNydGMtPmJhc2UpOwor
CQl9CisJfQorfQorCiBzdGF0aWMgaW50IGludGVsX2NydGNfaW5pdChzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYsIGVudW0gcGlwZSBwaXBlKQogewogCXN0cnVjdCBpbnRlbF9wbGFu
ZSAqcHJpbWFyeSwgKmN1cnNvcjsKQEAgLTE3NTQ0LDYgKzE3NTY2LDcgQEAgaW50IGludGVsX21v
ZGVzZXRfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKIAkJfQogCX0KIAorCWlu
dGVsX3BsYW5lX3Bvc3NpYmxlX2NydGNfZml4dXAoaTkxNSk7CiAJaW50ZWxfc2hhcmVkX2RwbGxf
aW5pdChkZXYpOwogCWludGVsX3VwZGF0ZV9mZGlfcGxsX2ZyZXEoaTkxNSk7CiAKLS0gCjIuMjQu
MAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
