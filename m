Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A256318F3D
	for <lists+intel-gfx@lfdr.de>; Thu,  9 May 2019 19:35:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAFB589F31;
	Thu,  9 May 2019 17:35:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C52589F1B
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 May 2019 17:35:14 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 May 2019 10:35:13 -0700
X-ExtLoop1: 1
Received: from ideak-desk.fi.intel.com ([10.237.72.204])
 by orsmga003.jf.intel.com with ESMTP; 09 May 2019 10:35:12 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  9 May 2019 20:34:40 +0300
Message-Id: <20190509173446.31095-6-imre.deak@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190509173446.31095-1-imre.deak@intel.com>
References: <20190509173446.31095-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 05/11] drm/i915: Disable power asynchronously
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
YWtAaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxh
QGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcC5jIHwg
MTEgKysrKysrKystLS0KIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyksIDMgZGVsZXRp
b25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHAuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RwLmMKaW5kZXggNTNjYzRhZmVhMjU2Li43MDBjZWFj
YjgyZTYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RwLmMKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHAuYwpAQCAtMTIyMSw3ICsxMjIxLDEwIEBAIGlu
dGVsX2RwX2F1eF94ZmVyKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsCiAJCQl0b19pOTE1KGlu
dGVsX2RpZ19wb3J0LT5iYXNlLmJhc2UuZGV2KTsKIAlpOTE1X3JlZ190IGNoX2N0bCwgY2hfZGF0
YVs1XTsKIAl1MzIgYXV4X2Nsb2NrX2RpdmlkZXI7Ci0JaW50ZWxfd2FrZXJlZl90IHdha2VyZWY7
CisJZW51bSBpbnRlbF9kaXNwbGF5X3Bvd2VyX2RvbWFpbiBhdXhfZG9tYWluID0KKwkJaW50ZWxf
YXV4X3Bvd2VyX2RvbWFpbihpbnRlbF9kaWdfcG9ydCk7CisJaW50ZWxfd2FrZXJlZl90IGF1eF93
YWtlcmVmOworCWludGVsX3dha2VyZWZfdCBwcHNfd2FrZXJlZjsKIAlpbnQgaSwgcmV0LCByZWN2
X2J5dGVzOwogCWludCB0cnksIGNsb2NrID0gMDsKIAl1MzIgc3RhdHVzOwpAQCAtMTIzMSw3ICsx
MjM0LDggQEAgaW50ZWxfZHBfYXV4X3hmZXIoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwKIAlm
b3IgKGkgPSAwOyBpIDwgQVJSQVlfU0laRShjaF9kYXRhKTsgaSsrKQogCQljaF9kYXRhW2ldID0g
aW50ZWxfZHAtPmF1eF9jaF9kYXRhX3JlZyhpbnRlbF9kcCwgaSk7CiAKLQl3YWtlcmVmID0gcHBz
X2xvY2soaW50ZWxfZHApOworCWF1eF93YWtlcmVmID0gaW50ZWxfZGlzcGxheV9wb3dlcl9nZXQo
ZGV2X3ByaXYsIGF1eF9kb21haW4pOworCXBwc193YWtlcmVmID0gcHBzX2xvY2soaW50ZWxfZHAp
OwogCiAJLyoKIAkgKiBXZSB3aWxsIGJlIGNhbGxlZCB3aXRoIFZERCBhbHJlYWR5IGVuYWJsZWQg
Zm9yIGRwY2QvZWRpZC9vdWkgcmVhZHMuCkBAIC0xMzc3LDcgKzEzODEsOCBAQCBpbnRlbF9kcF9h
dXhfeGZlcihzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLAogCWlmICh2ZGQpCiAJCWVkcF9wYW5l
bF92ZGRfb2ZmKGludGVsX2RwLCBmYWxzZSk7CiAKLQlwcHNfdW5sb2NrKGludGVsX2RwLCB3YWtl
cmVmKTsKKwlwcHNfdW5sb2NrKGludGVsX2RwLCBwcHNfd2FrZXJlZik7CisJaW50ZWxfZGlzcGxh
eV9wb3dlcl9wdXRfYXN5bmMoZGV2X3ByaXYsIGF1eF9kb21haW4sIGF1eF93YWtlcmVmKTsKIAog
CXJldHVybiByZXQ7CiB9Ci0tIAoyLjE3LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
