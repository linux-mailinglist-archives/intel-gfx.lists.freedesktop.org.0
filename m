Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 92B3518559
	for <lists+intel-gfx@lfdr.de>; Thu,  9 May 2019 08:20:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 617FF8922F;
	Thu,  9 May 2019 06:20:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 09E2589079
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 May 2019 06:20:29 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 May 2019 23:20:28 -0700
X-ExtLoop1: 1
Received: from ideak-desk.fi.intel.com ([10.237.72.204])
 by orsmga003.jf.intel.com with ESMTP; 08 May 2019 23:20:27 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  9 May 2019 09:19:53 +0300
Message-Id: <20190509061954.10379-11-imre.deak@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190509061954.10379-1-imre.deak@intel.com>
References: <20190509061954.10379-1-imre.deak@intel.com>
Subject: [Intel-gfx] [PATCH v2 10/11] drm/i915: Avoid taking the PPS lock
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
MIME-Version: 1.0
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
Y29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RwLmMgfCA0ICsrKysKIDEgZmls
ZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9kcC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHAuYwppbmRleCBk
ZTg4MWJmZWEwMTEuLmRkYjExMzViMmY1NCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfZHAuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcC5jCkBAIC02
MjY1LDYgKzYyNjUsMTAgQEAgdm9pZCBpbnRlbF9kcF9lbmNvZGVyX3Jlc2V0KHN0cnVjdCBkcm1f
ZW5jb2RlciAqZW5jb2RlcikKIAogCWludGVsX2RwLT5yZXNldF9saW5rX3BhcmFtcyA9IHRydWU7
CiAKKwlpZiAoIUlTX1ZBTExFWVZJRVcoZGV2X3ByaXYpICYmICFJU19DSEVSUllWSUVXKGRldl9w
cml2KSAmJgorCSAgICAhaW50ZWxfZHBfaXNfZWRwKGludGVsX2RwKSkKKwkJcmV0dXJuOworCiAJ
d2l0aF9wcHNfbG9jayhpbnRlbF9kcCwgd2FrZXJlZikgewogCQlpZiAoSVNfVkFMTEVZVklFVyhk
ZXZfcHJpdikgfHwgSVNfQ0hFUlJZVklFVyhkZXZfcHJpdikpCiAJCQlpbnRlbF9kcC0+YWN0aXZl
X3BpcGUgPSB2bHZfYWN0aXZlX3BpcGUoaW50ZWxfZHApOwotLSAKMi4xNy4xCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
