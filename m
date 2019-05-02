Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D64C122FB
	for <lists+intel-gfx@lfdr.de>; Thu,  2 May 2019 22:06:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9887189834;
	Thu,  2 May 2019 20:06:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BBCE689834
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 May 2019 20:06:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 May 2019 13:06:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,423,1549958400"; d="scan'208";a="228769020"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 02 May 2019 13:06:08 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 02 May 2019 23:06:07 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 May 2019 23:06:06 +0300
Message-Id: <20190502200607.14504-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: Move the PIPEMISC write the
 correct place
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkkg
ZnVtYmxlZCB0aGUgUElQRU1JU0Mgd3JpdGUgaW50byB0aGUgd3JvbmcgcGxhY2UuIEl0IG9ubHkg
Z2V0cwpjYWxsZWQgZm9yIGZhc3RzZXRzLCBidXQgc2luY2UgdmFsdWUgbmVlZHMgdG8gYmUgdXBk
YXRlZCBiYXNlZCBvbgp0aGUgc2V0IG9mIGFjdGl2ZSBwbGFuZXMgaXQgbmVlZHMgdG8gYmUgZG9u
ZSBmb3IgYWxsIHBsYW5lIHVwZGF0ZXMuCk1vdmUgaXQgdG8gdGhlIGNvcnJlY3Qgc3BvdC4KClRo
ZSBzeW1wdG9tcyBpbmNsdWRlIFNEUiBwbGFuZXMgbmV2ZXIgc2hvd2luZyB1cCBpZiBhIHByZXZp
b3VzCm1vZGVzZXQvZmFzdHNldCBsZWZ0IHRoZSBwaXBlIGluIEhEUiBtb2RlLiBUaGlzIHdhcyBp
bW1lZGlhdGVseQpvYnZpb3VzIHdoZW4gcnVubmluZyB0aGUga21zX3BsYW5lIHBpeGVsIGZvcm1h
dCB0ZXN0cy4gVW5mb3J0dW5hdGVseQp0aGUgdGVzdCBkaWRuJ3QgcmVhbGl6ZSBpdCB3YXMgc2Nh
bm5pbmcgb3V0IHB1cmUgYmxhY2sgYWxsIHRoZSB0aW1lCmFuZCBkZWNsYXJlZCBzdWNjZXNzIGFu
eXdheS4KCkNjOiBVbWEgU2hhbmthciA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPgpDYzogU2hhc2hh
bmsgU2hhcm1hIDxzaGFzaGFuay5zaGFybWFAaW50ZWwuY29tPgpGaXhlczogMDliMjU4MTJkYjEw
ICgiZHJtL2k5MTU6IEVuYWJsZSBwaXBlIEhEUiBtb2RlIG9uIElDTCBpZiBvbmx5IEhEUiBwbGFu
ZXMgYXJlIHVzZWQiKQpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmph
bGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rpc3Bs
YXkuYyB8IDYgKysrLS0tCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAzIGRlbGV0
aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rpc3BsYXku
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rpc3BsYXkuYwppbmRleCBkZDY1ZDdjNTIx
YzEuLjI4MDQyYTE2MDg0ZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
ZGlzcGxheS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rpc3BsYXkuYwpAQCAt
NDA5OSw5ICs0MDk5LDYgQEAgc3RhdGljIHZvaWQgaW50ZWxfdXBkYXRlX3BpcGVfY29uZmlnKGNv
bnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpvbGRfY3J0Y19zdGEKIAkJCWlyb25sYWtlX3Bm
aXRfZGlzYWJsZShvbGRfY3J0Y19zdGF0ZSk7CiAJfQogCi0JaWYgKElOVEVMX0dFTihkZXZfcHJp
dikgPj0gOSB8fCBJU19CUk9BRFdFTEwoZGV2X3ByaXYpKQotCQliZHdfc2V0X3BpcGVtaXNjKG5l
d19jcnRjX3N0YXRlKTsKLQogCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDExKQogCQlpY2xf
c2V0X3BpcGVfY2hpY2tlbihjcnRjKTsKIH0KQEAgLTE0MTU2LDYgKzE0MTUzLDkgQEAgc3RhdGlj
IHZvaWQgaW50ZWxfYmVnaW5fY3J0Y19jb21taXQoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAq
c3RhdGUsCiAJZWxzZSBpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSA5KQogCQlza2xfZGV0YWNo
X3NjYWxlcnMobmV3X2NydGNfc3RhdGUpOwogCisJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0g
OSB8fCBJU19CUk9BRFdFTEwoZGV2X3ByaXYpKQorCQliZHdfc2V0X3BpcGVtaXNjKG5ld19jcnRj
X3N0YXRlKTsKKwogb3V0OgogCWlmIChkZXZfcHJpdi0+ZGlzcGxheS5hdG9taWNfdXBkYXRlX3dh
dGVybWFya3MpCiAJCWRldl9wcml2LT5kaXNwbGF5LmF0b21pY191cGRhdGVfd2F0ZXJtYXJrcyhz
dGF0ZSwKLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
