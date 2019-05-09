Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6620918F42
	for <lists+intel-gfx@lfdr.de>; Thu,  9 May 2019 19:35:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 801EA89F5B;
	Thu,  9 May 2019 17:35:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 58B1489F33
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 May 2019 17:35:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 May 2019 10:35:20 -0700
X-ExtLoop1: 1
Received: from ideak-desk.fi.intel.com ([10.237.72.204])
 by orsmga003.jf.intel.com with ESMTP; 09 May 2019 10:35:19 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  9 May 2019 20:34:45 +0300
Message-Id: <20190509173446.31095-11-imre.deak@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190509173446.31095-1-imre.deak@intel.com>
References: <20190509173446.31095-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 10/11] drm/i915: Avoid taking the PPS lock
 for non-eDP/VLV/CHV
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

T24gSUNMIHdlIGhhdmUgdG8gbWFrZSBzdXJlIHRoYXQgd2UgZW5hYmxlIHRoZSBBVVggcG93ZXIg
ZG9tYWluIGluIGEKY29udHJvbGxlZCB3YXkgKGNvcnJlc3BvbmRpbmcgdG8gdGhlIHBvcnQncyBh
Y3R1YWwgVHlwZUMgbW9kZSkuIFNpbmNlCnRoZSBQUFMgbG9jayAtIHdoaWNoIHRha2VzIGFuIEFV
WCBwb3dlciByZWYgLSBpcyBvbmx5IG5lZWRlZCBvbgplRFAgb24gYWxsIHBsYXRmb3JtcyBhbmQg
ZURQL0RQIG9uIFZMVi9DSFYgYXZvaWQgdGFraW5nIGl0IGluIGFsbApvdGhlciBjYXNlcy4KCnYy
OgotIENsYXJpZnkgY29tbWl0IGxvZyBhYm91dCB0aGUgY29uZGl0aW9uIGZvciB0YWtpbmcgdGhl
IFBQUyBsb2NrLgogIChWaWxsZSkKCkNjOiBWaWxsZSBTeXJqYWxhIDx2aWxsZS5zeXJqYWxhQGxp
bnV4LmludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwu
Y29tPgpSZXZpZXdlZC1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4Lmlu
dGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcC5jIHwgNCArKysrCiAx
IGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfZHAuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RwLmMKaW5k
ZXggOGE5MWI0NTNiMmU5Li41MjQ1MjE1NTI1MGYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX2RwLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHAuYwpA
QCAtNjI1OSw2ICs2MjU5LDEwIEBAIHZvaWQgaW50ZWxfZHBfZW5jb2Rlcl9yZXNldChzdHJ1Y3Qg
ZHJtX2VuY29kZXIgKmVuY29kZXIpCiAKIAlpbnRlbF9kcC0+cmVzZXRfbGlua19wYXJhbXMgPSB0
cnVlOwogCisJaWYgKCFJU19WQUxMRVlWSUVXKGRldl9wcml2KSAmJiAhSVNfQ0hFUlJZVklFVyhk
ZXZfcHJpdikgJiYKKwkgICAgIWludGVsX2RwX2lzX2VkcChpbnRlbF9kcCkpCisJCXJldHVybjsK
KwogCXdpdGhfcHBzX2xvY2soaW50ZWxfZHAsIHdha2VyZWYpIHsKIAkJaWYgKElTX1ZBTExFWVZJ
RVcoZGV2X3ByaXYpIHx8IElTX0NIRVJSWVZJRVcoZGV2X3ByaXYpKQogCQkJaW50ZWxfZHAtPmFj
dGl2ZV9waXBlID0gdmx2X2FjdGl2ZV9waXBlKGludGVsX2RwKTsKLS0gCjIuMTcuMQoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
