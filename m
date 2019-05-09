Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5324118556
	for <lists+intel-gfx@lfdr.de>; Thu,  9 May 2019 08:20:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9398789B29;
	Thu,  9 May 2019 06:20:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDCF189A5D
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 May 2019 06:20:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 May 2019 23:20:21 -0700
X-ExtLoop1: 1
Received: from ideak-desk.fi.intel.com ([10.237.72.204])
 by orsmga003.jf.intel.com with ESMTP; 08 May 2019 23:20:20 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  9 May 2019 09:19:48 +0300
Message-Id: <20190509061954.10379-6-imre.deak@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190509061954.10379-1-imre.deak@intel.com>
References: <20190509061954.10379-1-imre.deak@intel.com>
Subject: [Intel-gfx] [PATCH v2 05/11] drm/i915: Disable power asynchronously
 during DP AUX transfers
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
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SW4gYSBmb2xsb3ctdXAgcGF0Y2ggd2Ugd2lsbCByZXN0cmljdCBob2xkaW5nIHRoZSByZWZlcmVu
Y2Ugb24gdGhlIEFVWApwb3dlciBkb21haW4gdG8gdGhlIEFVWCB0cmFuc2ZlciBmdW5jdGlvbi4g
VG8gYXZvaWQgdGhlIHVubmVjZXNzYXJ5Cm9uLW9mZi1vbiBwb3dlciB0b2dnbGluZ3MgZHJvcCB0
aGUgcmVmZXJlbmNlIGFzeW5jaHJvbm91c2x5LgoKVGhlcmUgaXMgbm8gcmVhc29uIHdlIGNvdWxk
bid0IGRvIHRoaXMgaW4gZ2VuZXJhbCBhbmQgYWxzbyBwdXQgdGhlCnJlZmVyZW5jZSBhc3luY2hy
b25vdXNseSBpbiBwcHNfdW5sb2NrKCk7IGJ1dCB0aGF0J3MgYSBzZXBhcmF0ZSBjaGFuZ2UKdGhh
dCBjYW4gYmUgZG9uZSBhcyBhIGZvbGxvdy11cC4KCkNjOiBWaWxsZSBTeXJqYWxhIDx2aWxsZS5z
eXJqYWxhQGxpbnV4LmludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogSW1yZSBEZWFrIDxpbXJlLmRl
YWtAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RwLmMgfCAxMSAr
KysrKysrKy0tLQogMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMo
LSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcC5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfZHAuYwppbmRleCA1M2NjNGFmZWEyNTYuLjcwMGNlYWNiODJl
NiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHAuYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcC5jCkBAIC0xMjIxLDcgKzEyMjEsMTAgQEAgaW50ZWxf
ZHBfYXV4X3hmZXIoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwKIAkJCXRvX2k5MTUoaW50ZWxf
ZGlnX3BvcnQtPmJhc2UuYmFzZS5kZXYpOwogCWk5MTVfcmVnX3QgY2hfY3RsLCBjaF9kYXRhWzVd
OwogCXUzMiBhdXhfY2xvY2tfZGl2aWRlcjsKLQlpbnRlbF93YWtlcmVmX3Qgd2FrZXJlZjsKKwll
bnVtIGludGVsX2Rpc3BsYXlfcG93ZXJfZG9tYWluIGF1eF9kb21haW4gPQorCQlpbnRlbF9hdXhf
cG93ZXJfZG9tYWluKGludGVsX2RpZ19wb3J0KTsKKwlpbnRlbF93YWtlcmVmX3QgYXV4X3dha2Vy
ZWY7CisJaW50ZWxfd2FrZXJlZl90IHBwc193YWtlcmVmOwogCWludCBpLCByZXQsIHJlY3ZfYnl0
ZXM7CiAJaW50IHRyeSwgY2xvY2sgPSAwOwogCXUzMiBzdGF0dXM7CkBAIC0xMjMxLDcgKzEyMzQs
OCBAQCBpbnRlbF9kcF9hdXhfeGZlcihzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLAogCWZvciAo
aSA9IDA7IGkgPCBBUlJBWV9TSVpFKGNoX2RhdGEpOyBpKyspCiAJCWNoX2RhdGFbaV0gPSBpbnRl
bF9kcC0+YXV4X2NoX2RhdGFfcmVnKGludGVsX2RwLCBpKTsKIAotCXdha2VyZWYgPSBwcHNfbG9j
ayhpbnRlbF9kcCk7CisJYXV4X3dha2VyZWYgPSBpbnRlbF9kaXNwbGF5X3Bvd2VyX2dldChkZXZf
cHJpdiwgYXV4X2RvbWFpbik7CisJcHBzX3dha2VyZWYgPSBwcHNfbG9jayhpbnRlbF9kcCk7CiAK
IAkvKgogCSAqIFdlIHdpbGwgYmUgY2FsbGVkIHdpdGggVkREIGFscmVhZHkgZW5hYmxlZCBmb3Ig
ZHBjZC9lZGlkL291aSByZWFkcy4KQEAgLTEzNzcsNyArMTM4MSw4IEBAIGludGVsX2RwX2F1eF94
ZmVyKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsCiAJaWYgKHZkZCkKIAkJZWRwX3BhbmVsX3Zk
ZF9vZmYoaW50ZWxfZHAsIGZhbHNlKTsKIAotCXBwc191bmxvY2soaW50ZWxfZHAsIHdha2VyZWYp
OworCXBwc191bmxvY2soaW50ZWxfZHAsIHBwc193YWtlcmVmKTsKKwlpbnRlbF9kaXNwbGF5X3Bv
d2VyX3B1dF9hc3luYyhkZXZfcHJpdiwgYXV4X2RvbWFpbiwgYXV4X3dha2VyZWYpOwogCiAJcmV0
dXJuIHJldDsKIH0KLS0gCjIuMTcuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
