Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9843121FE6E
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2020 22:19:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDEC86E897;
	Tue, 14 Jul 2020 20:19:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A7C16E897
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jul 2020 20:19:48 +0000 (UTC)
IronPort-SDR: z2leQedOBGA1Ok//ltAHSw1dY3N1iAYO1UmzGwCTzO7616ysN9L3+e0fRwPZnmS9tDWSc2eq1x
 ncxEbf9gvfNg==
X-IronPort-AV: E=McAfee;i="6000,8403,9682"; a="233877072"
X-IronPort-AV: E=Sophos;i="5.75,352,1589266800"; d="scan'208";a="233877072"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2020 13:19:48 -0700
IronPort-SDR: kNSAk9wZIaGmNz71i64mATguYC+G2vVi7CvXzLm5xQP0Xe24lRPg6Dn0P9DyeAQVaMe8bkvFRN
 P1knk4JTe5gQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,352,1589266800"; d="scan'208";a="324646818"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 14 Jul 2020 13:19:46 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 14 Jul 2020 23:19:45 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Jul 2020 23:19:45 +0300
Message-Id: <20200714201945.18959-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200714185128.18616-1-ville.syrjala@linux.intel.com>
References: <20200714185128.18616-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915/fbc: Limit cfb to the first 256MiB
 of stolen on g4x+
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClNp
bmNlIGc0eCB0aGUgQ0ZCIGJhc2Ugb25seSB0YWtlcyBhIDI4Yml0IG9mZnNldCBpbnRvIHN0b2xl
bi4KTm90IHN1cmUgaWYgdGhlIENGQiBpcyBhbGxvd2VkIHRvIHN0YXJ0IGJlbG93IHRoYXQgbGlt
aXQgYnV0CnRoZW4gZXh0ZW5kIGJleW9uZCBpdC4gTGV0J3MgYXNzdW1lIG5vdCBhbmQganVzdCBy
ZXN0cmljdCB0aGUKYWxsb2NhdGlvbiB0byB0aGUgZmlyc3QgMjU2TWlCIChpbiB0aGUgdW5saWtl
bHkgY2FzZQp3ZSBoYXZlIG1vcmUgc3RvbGVuIHRoYW4gdGhhdCkuCgp2Mjogcy9CSVQvQklUX1VM
TC8gKENocmlzKQoKQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpT
aWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwu
Y29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMgfCAxMCAr
KysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jCmluZGV4IDg1NzIzZmJhNjAwMi4uM2E0Zjk4MDc4
OGE2IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5j
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMKQEAgLTQyNCw2
ICs0MjQsMTQgQEAgc3RhdGljIHZvaWQgaW50ZWxfZmJjX2RlYWN0aXZhdGUoc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmRldl9wcml2LAogCWZiYy0+bm9fZmJjX3JlYXNvbiA9IHJlYXNvbjsKIH0K
IAorc3RhdGljIHU2NCBpbnRlbF9mYmNfY2ZiX2Jhc2VfbWF4KHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICppOTE1KQoreworCWlmIChJTlRFTF9HRU4oaTkxNSkgPj0gNSB8fCBJU19HNFgoaTkxNSkp
CisJCXJldHVybiBCSVRfVUxMKDI4KTsKKwllbHNlCisJCXJldHVybiBCSVRfVUxMKDMyKTsKK30K
Kwogc3RhdGljIGludCBmaW5kX2NvbXByZXNzaW9uX3RocmVzaG9sZChzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYsCiAJCQkJICAgICAgc3RydWN0IGRybV9tbV9ub2RlICpub2RlLAog
CQkJCSAgICAgIHVuc2lnbmVkIGludCBzaXplLApAQCAtNDQyLDYgKzQ1MCw4IEBAIHN0YXRpYyBp
bnQgZmluZF9jb21wcmVzc2lvbl90aHJlc2hvbGQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2LAogCWVsc2UKIAkJZW5kID0gVTY0X01BWDsKIAorCWVuZCA9IG1pbihlbmQsIGludGVs
X2ZiY19jZmJfYmFzZV9tYXgoZGV2X3ByaXYpKTsKKwogCS8qIEhBQ0s6IFRoaXMgY29kZSBkZXBl
bmRzIG9uIHdoYXQgd2Ugd2lsbCBkbyBpbiAqX2VuYWJsZV9mYmMuIElmIHRoYXQKIAkgKiBjb2Rl
IGNoYW5nZXMsIHRoaXMgY29kZSBuZWVkcyB0byBjaGFuZ2UgYXMgd2VsbC4KIAkgKgotLSAKMi4y
Ni4yCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
