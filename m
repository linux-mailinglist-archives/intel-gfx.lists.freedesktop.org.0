Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9120031CD6A
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Feb 2021 17:00:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0A1E6E44D;
	Tue, 16 Feb 2021 16:00:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61EEE6E44D
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Feb 2021 16:00:43 +0000 (UTC)
IronPort-SDR: qSVYOTkXP3FGbU0k5aQAb87uxhxZOCgx7CC3SdbQ1knAO0XRZ1eVnxHtBrm9WOUV+T/4WIZTzZ
 OnsKTU6geszA==
X-IronPort-AV: E=McAfee;i="6000,8403,9897"; a="170056655"
X-IronPort-AV: E=Sophos;i="5.81,184,1610438400"; d="scan'208";a="170056655"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2021 08:00:40 -0800
IronPort-SDR: i9SSM8KgUtHuAtVyqlNfSkEni3T/FQFiFWB0GdqEmmfqK7R0pUQ0HJGbxHGlpWSFjuaY777iw8
 wuS+gNrQWn6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,184,1610438400"; d="scan'208";a="364148065"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga006.jf.intel.com with SMTP; 16 Feb 2021 08:00:37 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 16 Feb 2021 18:00:35 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 16 Feb 2021 18:00:35 +0200
Message-Id: <20210216160035.4780-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Readout conn_state->max_bpc
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClBv
cHVsYXRlIGNvbm5fc3RhdGUtPm1heF9icGMgd2l0aCBzb21ldGhpbmcgc2Vuc2libGUgZnJvbSB0
aGUgc3RhcnQuCk90aGVyd2lzZSBpdCdzIHBvc3NpYmxlIHRoYXQgd2UgZ2V0IHRvIGNvbXB1dGVf
c2lua19waXBlX2JwcCgpIHdpdGgKbWF4X2JwYz09MC4KClRoZSBzcGVjaWZpYyBzY2VuYXJpbyBn
b2VzIGFzIGZvbGxvd3M6CjEuIEluaXRpYWwgY29ubmVjdG9yIHN0YXRlIGFsbG9jYXRlZCB3aXRo
IG1heF9icGM9PTAKMi4gVHJpZ2dlciBhIG1vZGVzZXQgb24gdGhlIGNydGMgZmVlZGluZyB0aGUg
Y29ubmVjdG9yLCB3aXRob3V0CiAgIGFjdHVhbGx5IGFkZGluZyB0aGUgY29ubmVjdG9yIHRvIHRo
ZSBjb21taXQKMy4gZHJtX2F0b21pY19jb25uZWN0b3JfY2hlY2soKSBpcyBza2lwcGVkIGJlY2F1
c2UgdGhlCiAgIGNvbm5lY3RvciBoYXMgbm90IHlldCBiZWVuIGFkZGVkLCBoZW5jZSBjb25uX3N0
YXRlLT5tYXhfYnBjCiAgIHJldGFpbnMgaXRzIGN1cnJlbnQgdmFsdWUKNC4gZHJtX2F0b21pY19o
ZWxwZXJfY2hlY2tfbW9kZXNldCgpIC0+CiAgIGRybV9hdG9taWNfYWRkX2FmZmVjdGVkX2Nvbm5l
Y3RvcnMoKSAtPiB0aGUgY29ubmVjdG9yCiAgIGlzIG5vdyBwYXJ0IG9mIHRoZSBjb21taXQKNS4g
Y29tcHV0ZV9iYXNlbGluZV9waXBlX2JwcCgpIC0+IE1JU1NJTkdfQ0FTRShtYXhfYnBjPT0wKQoK
Tm90ZSB0aGF0IHBpcGVfYnBwIGl0c2VsZiBtYXkgbm90IGJlIHBvcHVsYXRlZCBvbiBwcmUtZzR4
IG1hY2hpbmVzLAppbiB3aGljaCBjYXNlIHdlIGp1c3QgZmFsbCBiYWNrIHRvIG1heF9icGM9PTgg
YW5kIGxldCAuY29tcHV0ZV9jb25maWcoKQpsaW1pdCB0aGUgcmVzdWx0aW5nIHBpcGVfYnBwIGZ1
cnRoZXIgaWYgbmVjZXNzYXJ5LgoKQ2M6IERhbmllbCBWZXR0ZXIgPGRhbmllbEBmZndsbC5jaD4K
UmVwb3J0ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpTaWdu
ZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29t
PgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgMjQg
KysrKysrKysrKysrKy0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxNiBpbnNlcnRpb25zKCspLCA4
IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5LmMKaW5kZXggMGRjNWNiMzY2NjdhLi40ZDYzZTY4YTVlYTIgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCkBAIC03OTg3LDE5ICs3OTg3LDI3IEBA
IHN0YXRpYyB2b2lkIGludGVsX21vZGVzZXRfdXBkYXRlX2Nvbm5lY3Rvcl9hdG9taWNfc3RhdGUo
c3RydWN0IGRybV9kZXZpY2UgKmRldikKIAogCWRybV9jb25uZWN0b3JfbGlzdF9pdGVyX2JlZ2lu
KGRldiwgJmNvbm5faXRlcik7CiAJZm9yX2VhY2hfaW50ZWxfY29ubmVjdG9yX2l0ZXIoY29ubmVj
dG9yLCAmY29ubl9pdGVyKSB7Ci0JCWlmIChjb25uZWN0b3ItPmJhc2Uuc3RhdGUtPmNydGMpCisJ
CXN0cnVjdCBkcm1fY29ubmVjdG9yX3N0YXRlICpjb25uX3N0YXRlID0gY29ubmVjdG9yLT5iYXNl
LnN0YXRlOworCQlzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciA9CisJCQl0b19pbnRlbF9l
bmNvZGVyKGNvbm5lY3Rvci0+YmFzZS5lbmNvZGVyKTsKKworCQlpZiAoY29ubl9zdGF0ZS0+Y3J0
YykKIAkJCWRybV9jb25uZWN0b3JfcHV0KCZjb25uZWN0b3ItPmJhc2UpOwogCi0JCWlmIChjb25u
ZWN0b3ItPmJhc2UuZW5jb2RlcikgewotCQkJY29ubmVjdG9yLT5iYXNlLnN0YXRlLT5iZXN0X2Vu
Y29kZXIgPQotCQkJCWNvbm5lY3Rvci0+YmFzZS5lbmNvZGVyOwotCQkJY29ubmVjdG9yLT5iYXNl
LnN0YXRlLT5jcnRjID0KLQkJCQljb25uZWN0b3ItPmJhc2UuZW5jb2Rlci0+Y3J0YzsKKwkJaWYg
KGVuY29kZXIpIHsKKwkJCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjID0KKwkJCQl0b19pbnRlbF9j
cnRjKGVuY29kZXItPmJhc2UuY3J0Yyk7CisJCQljb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0
ZSAqY3J0Y19zdGF0ZSA9CisJCQkJdG9faW50ZWxfY3J0Y19zdGF0ZShjcnRjLT5iYXNlLnN0YXRl
KTsKKworCQkJY29ubl9zdGF0ZS0+YmVzdF9lbmNvZGVyID0gJmVuY29kZXItPmJhc2U7CisJCQlj
b25uX3N0YXRlLT5jcnRjID0gJmNydGMtPmJhc2U7CisJCQljb25uX3N0YXRlLT5tYXhfYnBjID0g
KGNydGNfc3RhdGUtPnBpcGVfYnBwID86IDI0KSAvIDM7CiAKIAkJCWRybV9jb25uZWN0b3JfZ2V0
KCZjb25uZWN0b3ItPmJhc2UpOwogCQl9IGVsc2UgewotCQkJY29ubmVjdG9yLT5iYXNlLnN0YXRl
LT5iZXN0X2VuY29kZXIgPSBOVUxMOwotCQkJY29ubmVjdG9yLT5iYXNlLnN0YXRlLT5jcnRjID0g
TlVMTDsKKwkJCWNvbm5fc3RhdGUtPmJlc3RfZW5jb2RlciA9IE5VTEw7CisJCQljb25uX3N0YXRl
LT5jcnRjID0gTlVMTDsKIAkJfQogCX0KIAlkcm1fY29ubmVjdG9yX2xpc3RfaXRlcl9lbmQoJmNv
bm5faXRlcik7Ci0tIAoyLjI2LjIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeAo=
