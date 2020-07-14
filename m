Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 86E9121FA3C
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2020 20:51:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C7526E3CB;
	Tue, 14 Jul 2020 18:51:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 900DD6E3CB
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jul 2020 18:51:31 +0000 (UTC)
IronPort-SDR: 1C7oSRaxFt21/qPXuo9EvU8h078HOQzRksd+ZLU62R+eWqywhAAhBy84WTRed3hUi5h1iVFXfB
 N3HX2x9YHN2w==
X-IronPort-AV: E=McAfee;i="6000,8403,9682"; a="146517481"
X-IronPort-AV: E=Sophos;i="5.75,352,1589266800"; d="scan'208";a="146517481"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2020 11:51:31 -0700
IronPort-SDR: 3n8IUnWHjEfh31riEe/a55MYppAtYN0MzXBF1Pyo6rrCIZbDyISMUhcuT3rZ7Y/UO6/BAKnMc9
 AbKPugsLtHuQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,352,1589266800"; d="scan'208";a="324629078"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 14 Jul 2020 11:51:29 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 14 Jul 2020 21:51:28 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Jul 2020 21:51:28 +0300
Message-Id: <20200714185128.18616-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/fbc: Limit cfb to the first 256MiB of
 stolen on g4x+
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClNp
bmNlIGc0eCB0aGUgQ0ZCIGJhc2Ugb25seSB0YWtlcyBhIDI4Yml0IG9mZnNldCBpbnRvIHN0b2xl
bi4KTm90IHN1cmUgaWYgdGhlIENGQiBpcyBhbGxvd2VkIHRvIHN0YXJ0IGJlbG93IHRoYXQgbGlt
aXQgYnV0CnRoZW4gZXh0ZW5kIGJleW9uZCBpdC4gTGV0J3MgYXNzdW1lIG5vdCBhbmQganVzdCBy
ZXN0cmljdCB0aGUKYWxsb2NhdGlvbiB0byB0aGUgZmlyc3QgMjU2TWlCIChpbiB0aGUgdW5saWtl
bHkgY2FzZQp3ZSBoYXZlIG1vcmUgc3RvbGVuIHRoYW4gdGhhdCkuCgpTaWduZWQtb2ZmLWJ5OiBW
aWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMgfCAxMCArKysrKysrKysrCiAxIGZp
bGUgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2ZiYy5jCmluZGV4IDg1NzIzZmJhNjAwMi4uNDQ4ZTk2NmJhZDExIDEwMDY0NAotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMKQEAgLTQyNCw2ICs0MjQsMTQgQEAgc3Rh
dGljIHZvaWQgaW50ZWxfZmJjX2RlYWN0aXZhdGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2LAogCWZiYy0+bm9fZmJjX3JlYXNvbiA9IHJlYXNvbjsKIH0KIAorc3RhdGljIHU2NCBp
bnRlbF9mYmNfY2ZiX2Jhc2VfbWF4KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQorewor
CWlmIChJTlRFTF9HRU4oaTkxNSkgPj0gNSB8fCBJU19HNFgoaTkxNSkpCisJCXJldHVybiBCSVQo
MjgpOworCWVsc2UKKwkJcmV0dXJuIEJJVCgzMik7Cit9CisKIHN0YXRpYyBpbnQgZmluZF9jb21w
cmVzc2lvbl90aHJlc2hvbGQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogCQkJ
CSAgICAgIHN0cnVjdCBkcm1fbW1fbm9kZSAqbm9kZSwKIAkJCQkgICAgICB1bnNpZ25lZCBpbnQg
c2l6ZSwKQEAgLTQ0Miw2ICs0NTAsOCBAQCBzdGF0aWMgaW50IGZpbmRfY29tcHJlc3Npb25fdGhy
ZXNob2xkKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAllbHNlCiAJCWVuZCA9
IFU2NF9NQVg7CiAKKwllbmQgPSBtaW4oZW5kLCBpbnRlbF9mYmNfY2ZiX2Jhc2VfbWF4KGRldl9w
cml2KSk7CisKIAkvKiBIQUNLOiBUaGlzIGNvZGUgZGVwZW5kcyBvbiB3aGF0IHdlIHdpbGwgZG8g
aW4gKl9lbmFibGVfZmJjLiBJZiB0aGF0CiAJICogY29kZSBjaGFuZ2VzLCB0aGlzIGNvZGUgbmVl
ZHMgdG8gY2hhbmdlIGFzIHdlbGwuCiAJICoKLS0gCjIuMjYuMgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
