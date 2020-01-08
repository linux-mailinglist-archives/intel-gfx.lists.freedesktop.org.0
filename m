Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0298E134A4E
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2020 19:13:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 431ED6E27C;
	Wed,  8 Jan 2020 18:13:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6F376E27C
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jan 2020 18:13:10 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jan 2020 10:13:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,410,1571727600"; d="scan'208";a="216028572"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 08 Jan 2020 10:13:08 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 08 Jan 2020 20:13:07 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 Jan 2020 20:12:42 +0200
Message-Id: <20200108181242.13650-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200108181242.13650-1-ville.syrjala@linux.intel.com>
References: <20200108181242.13650-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 9/9] drm/i915/dvo: Make .get_modes() return the
 number of modes
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCi5n
ZXRfbW9kZXMoKSBpcyBzdXBwb3NlZCB0byByZXR1cm4gdGhlIG51bWJlciBvZiBtb2RlcyBhZGRl
ZCB0byB0aGUKcHJvYmVkX21vZGVzIGxpc3QgKG5vdCB0aGF0IGFueW9uZSBhY3R1YWxseSBjaGVj
a3MgZm9yIGFueXRoaW5nCmV4Y2VwdCB6ZXJvIHZzLiBub3QgemVybykuIExldCdzIGRvIHRoYXQu
CgpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50
ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHZvLmMgfCAx
NCArKysrKysrKy0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwgNiBkZWxl
dGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2R2by5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kdm8uYwppbmRleCBh
NzRkYzViOTE1ZDEuLjNjZTlmNzJkMTJlNSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kdm8uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2R2by5jCkBAIC0zMjIsNiArMzIyLDcgQEAgc3RhdGljIGludCBpbnRlbF9kdm9fZ2V0
X21vZGVzKHN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IpCiAJc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShjb25uZWN0b3ItPmRldik7CiAJY29uc3Qgc3Ry
dWN0IGRybV9kaXNwbGF5X21vZGUgKmZpeGVkX21vZGUgPQogCQl0b19pbnRlbF9jb25uZWN0b3Io
Y29ubmVjdG9yKS0+cGFuZWwuZml4ZWRfbW9kZTsKKwlpbnQgbnVtX21vZGVzOwogCiAJLyoKIAkg
KiBXZSBzaG91bGQgcHJvYmFibHkgaGF2ZSBhbiBpMmMgZHJpdmVyIGdldF9tb2RlcyBmdW5jdGlv
biBmb3IgdGhvc2UKQEAgLTMyOSwyMSArMzMwLDIyIEBAIHN0YXRpYyBpbnQgaW50ZWxfZHZvX2dl
dF9tb2RlcyhzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yKQogCSAqIChUVi1vdXQsIGZv
ciBleGFtcGxlKSwgYnV0IGZvciBub3cgd2l0aCBqdXN0IFRNRFMgYW5kIExWRFMsCiAJICogdGhh
dCdzIG5vdCB0aGUgY2FzZS4KIAkgKi8KLQlpbnRlbF9kZGNfZ2V0X21vZGVzKGNvbm5lY3RvciwK
LQkJCSAgICBpbnRlbF9nbWJ1c19nZXRfYWRhcHRlcihkZXZfcHJpdiwgR01CVVNfUElOX0RQQykp
OwotCWlmICghbGlzdF9lbXB0eSgmY29ubmVjdG9yLT5wcm9iZWRfbW9kZXMpKQotCQlyZXR1cm4g
MTsKKwludW1fbW9kZXMgPSBpbnRlbF9kZGNfZ2V0X21vZGVzKGNvbm5lY3RvciwKKwkJCQkJaW50
ZWxfZ21idXNfZ2V0X2FkYXB0ZXIoZGV2X3ByaXYsIEdNQlVTX1BJTl9EUEMpKTsKKwlpZiAobnVt
X21vZGVzKQorCQlyZXR1cm4gbnVtX21vZGVzOwogCiAJaWYgKGZpeGVkX21vZGUpIHsKIAkJc3Ry
dWN0IGRybV9kaXNwbGF5X21vZGUgKm1vZGU7CisKIAkJbW9kZSA9IGRybV9tb2RlX2R1cGxpY2F0
ZShjb25uZWN0b3ItPmRldiwgZml4ZWRfbW9kZSk7CiAJCWlmIChtb2RlKSB7CiAJCQlkcm1fbW9k
ZV9wcm9iZWRfYWRkKGNvbm5lY3RvciwgbW9kZSk7Ci0JCQlyZXR1cm4gMTsKKwkJCW51bV9tb2Rl
cysrOwogCQl9CiAJfQogCi0JcmV0dXJuIDA7CisJcmV0dXJuIG51bV9tb2RlczsKIH0KIAogc3Rh
dGljIGNvbnN0IHN0cnVjdCBkcm1fY29ubmVjdG9yX2Z1bmNzIGludGVsX2R2b19jb25uZWN0b3Jf
ZnVuY3MgPSB7Ci0tIAoyLjI0LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeAo=
