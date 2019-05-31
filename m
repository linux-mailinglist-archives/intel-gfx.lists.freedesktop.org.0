Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AFF5130A42
	for <lists+intel-gfx@lfdr.de>; Fri, 31 May 2019 10:27:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B8C58929D;
	Fri, 31 May 2019 08:27:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B73F38929D
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 May 2019 08:27:07 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 May 2019 01:27:07 -0700
X-ExtLoop1: 1
Received: from ideak-desk.fi.intel.com ([10.237.72.204])
 by orsmga003.jf.intel.com with ESMTP; 31 May 2019 01:27:05 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 31 May 2019 11:26:26 +0300
Message-Id: <20190531082626.30640-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/icl: Ensure port A combo PHY HW state
 is correct
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

TWFrZSBzdXJlIHRoZSBIVyBzdGF0ZSBvZiB0aGUgcG9ydCBBIGNvbWJvIFBIWSBpcyBjb3JyZWN0
IHdydC4gdGhlCklSRUZHRU4gc2V0dGluZy4gVGhpcyB3aWxsIGZvcmNlIGEgcmVwcm9ncmFtbWlu
ZyBkdXJpbmcgaW5pdCBvciBhIFdBUk4KZHVyaW5nIHVuaW5pdCBpZiB0aGUgc2V0dGluZyBpcyBp
bmNvcnJlY3QuCgpPbiBteSBJQ0wgUlZQIEkgaGF2ZW4ndCBzZWVuIHRoaXMgY2hlY2sgZmFpbGlu
ZyBhbmQgbGVhZGluZyB0byBhIGZvcmNlZApyZWluaXQvV0FSTiwgYnV0IGxldCdzIGFkZCBpdCBz
dGlsbCBmb3IgY29uc2lzdGVuY3kuCgpDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxh
QGxpbnV4LmludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50
ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2NvbWJvX3BoeS5jIHwgNCAr
KysrCiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfY29tYm9fcGh5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF9jb21ib19waHkuYwppbmRleCA5ODIxM2NjNTg3MzYuLjg0MTcwOGRhNWE1NiAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfY29tYm9fcGh5LmMKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfY29tYm9fcGh5LmMKQEAgLTE5OCw2ICsxOTgsMTAgQEAgc3Rh
dGljIGJvb2wgaWNsX2NvbWJvX3BoeV92ZXJpZnlfc3RhdGUoc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmRldl9wcml2LAogCiAJcmV0ID0gY25sX3ZlcmlmeV9wcm9jbW9uX3JlZl92YWx1ZXMoZGV2
X3ByaXYsIHBvcnQpOwogCisJaWYgKHBvcnQgPT0gUE9SVF9BKQorCQlyZXQgJj0gY2hlY2tfcGh5
X3JlZyhkZXZfcHJpdiwgcG9ydCwgSUNMX1BPUlRfQ09NUF9EVzgocG9ydCksCisJCQkJICAgICBJ
UkVGR0VOLCBJUkVGR0VOKTsKKwogCXJldCAmPSBjaGVja19waHlfcmVnKGRldl9wcml2LCBwb3J0
LCBJQ0xfUE9SVF9DTF9EVzUocG9ydCksCiAJCQkgICAgIENMX1BPV0VSX0RPV05fRU5BQkxFLCBD
TF9QT1dFUl9ET1dOX0VOQUJMRSk7CiAKLS0gCjIuMTcuMQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
