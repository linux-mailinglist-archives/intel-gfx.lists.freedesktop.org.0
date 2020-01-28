Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 90B8F14C3C4
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jan 2020 00:52:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C53D6E16B;
	Tue, 28 Jan 2020 23:52:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 83B4D6E16B
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jan 2020 23:52:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Jan 2020 15:52:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,375,1574150400"; d="scan'208";a="252435114"
Received: from josouza-mobl.jf.intel.com (HELO josouza-MOBL.intel.com)
 ([10.24.12.252])
 by fmsmga004.fm.intel.com with ESMTP; 28 Jan 2020 15:52:44 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 28 Jan 2020 15:52:40 -0800
Message-Id: <20200128235241.169694-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/display/fbc: Make fences a
 nice-to-have for GEN9+
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
Cc: Daniel Vetter <daniel.vetter@intel.com>,
 Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

ZEdGWCBoYXZlIGxvY2FsIG1lbW9yeSBzbyBpdCBkbyBub3QgaGF2ZSBhcGVydHVyZSBhbmQgZG8g
bm90IHN1cHBvcnQKQ1BVIGZlbmNlcyBidXQgZXZlbiBmb3IgaUdGWCBpdCBoYXZlIGEgc21hbGwg
bnVtYmVyIG9mIGZlbmNlcy4KCkFzIHJlcGxhY2VtZW50IGZvciBmZW5jZXMgdG8gdHJhY2sgZnJv
bnRidWZmZXIgbW9kaWZpY2F0aW9ucyBieSBDUFUKd2UgaGF2ZSBhIHNvZnR3YXJlIHRyYWNraW5n
IHRoYXQgaXMgYWxyZWFkeSBpbiB1c2VkIGJ5IEZCQyBhbmQgUFNSLgpQU1IgZG9uJ3Qgc3VwcG9y
dCBmZW5jZXMgc28gaXQgc2hvd3MgdGhhdCB0aGlzIHRyYWNraW5nIGlzIHJlbGlhYmxlLgoKU28g
bGV0cyBtYWtlIGZlbmNlcyBhIG5pY2UtdG8taGF2ZSB0byBhY3RpdmF0ZSBGQkMgZm9yIEdFTjkr
KGFzIHdlCm9ubHkgaGF2ZSBhIGdvb2QgQ0kgY292ZXJhZ2UgZm9yIEdFTjkrKSwgdGhpcyB3aWxs
IGFsbG93IHVzIHRvIGVuYWJsZQpGQkMgZm9yIGRHRlhzIGFuZCBpR0ZYcyBldmVuIHdoZW4gdGhl
cmUgaXMgbm8gYXZhaWxhYmxlIGZlbmNlLgoKaW50ZWxfZmJjX2h3X3RyYWNraW5nX2NvdmVyc19z
Y3JlZW4oKSBtYXliZSBjYW4gYWxzbyBoYXZlIHRoZSBzYW1lCnRyZWF0bWVudCBhcyBmZW5jZXMg
YnV0IEJTcGVjIGlzIG5vdCBjbGVhciBpZiB0aGUgc2l6ZSBsaW1pdGF0aW9uIGlzCmZvciBoYXJk
d2FyZSB0cmFja2luZyBvciBnZW5lcmFsIHVzZSBvZiBGQkMgYW5kIEkgZG9uJ3QgaGF2ZSBhIDVL
CmRpc3BsYXkgdG8gdGVzdCBpdCwgc28ga2VlcGluZyBhcyBpcyBmb3Igc2FmZXR5LgoKQ2M6IERh
bmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwuY29tPgpDYzogRGhpbmFrYXJhbiBQYW5k
aXlhbiA8ZGhpbmFrYXJhbi5wYW5kaXlhbkBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEpvc8Op
IFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMgfCAxMiArKysrKysrKy0tLS0KIDEgZmlsZSBj
aGFuZ2VkLCA4IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMKaW5kZXggMmEzZjEzMzNjOGZmLi4xZjBkMjRhMWRlYzEg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMKKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYwpAQCAtNzE3LDExICs3
MTcsMTUgQEAgc3RhdGljIGJvb2wgaW50ZWxfZmJjX2Nhbl9hY3RpdmF0ZShzdHJ1Y3QgaW50ZWxf
Y3J0YyAqY3J0YykKIAkJcmV0dXJuIGZhbHNlOwogCX0KIAotCS8qIFRoZSB1c2Ugb2YgYSBDUFUg
ZmVuY2UgaXMgbWFuZGF0b3J5IGluIG9yZGVyIHRvIGRldGVjdCB3cml0ZXMKLQkgKiBieSB0aGUg
Q1BVIHRvIHRoZSBzY2Fub3V0IGFuZCB0cmlnZ2VyIHVwZGF0ZXMgdG8gdGhlIEZCQy4KKwkvKiBU
aGUgdXNlIG9mIGEgQ1BVIGZlbmNlIGlzIG9uZSBvZiB0d28gd2F5cyB0byBkZXRlY3Qgd3JpdGVz
IGJ5IHRoZQorCSAqIENQVSB0byB0aGUgc2Nhbm91dCBhbmQgdHJpZ2dlciB1cGRhdGVzIHRvIHRo
ZSBGQkMuCisJICoKKwkgKiBUaGUgb3RoZXIgbWV0aG9kIGlzIGJ5IHNvZnR3YXJlIHRyYWNraW5n
KHNlZQorCSAqIGludGVsX2ZiY19pbnZhbGlkYXRlL2ZsdXNoKCkpLCBpdCB3aWxsIG1hbnVhbGx5
IG5vdGlmeSBGQkMgYW5kIG51a2UKKwkgKiB0aGUgY3VycmVudCBjb21wcmVzc2VkIGJ1ZmZlciBh
bmQgcmVjb21wcmVzcyBpdC4KIAkgKgogCSAqIE5vdGUgdGhhdCBpcyBwb3NzaWJsZSBmb3IgYSB0
aWxlZCBzdXJmYWNlIHRvIGJlIHVubWFwcGFibGUgKGFuZAotCSAqIHNvIGhhdmUgbm8gZmVuY2Ug
YXNzb2NpYXRlZCB3aXRoIGl0KSBkdWUgdG8gYXBlcnR1cmUgY29uc3RhaW50cworCSAqIHNvIGhh
dmUgbm8gZmVuY2UgYXNzb2NpYXRlZCB3aXRoIGl0KSBkdWUgdG8gYXBlcnR1cmUgY29uc3RyYWlu
dHMKIAkgKiBhdCB0aGUgdGltZSBvZiBwaW5uaW5nLgogCSAqCiAJICogRklYTUUgd2l0aCA5MC8y
NzAgZGVncmVlIHJvdGF0aW9uIHdlIHNob3VsZCB1c2UgdGhlIGZlbmNlIG9uCkBAIC03MzAsNyAr
NzM0LDcgQEAgc3RhdGljIGJvb2wgaW50ZWxfZmJjX2Nhbl9hY3RpdmF0ZShzdHJ1Y3QgaW50ZWxf
Y3J0YyAqY3J0YykKIAkgKiBGb3Igbm93IHRoaXMgd2lsbCBlZmZlY2l2ZWx5IGRpc2FibGUgRkJD
IHdpdGggOTAvMjcwIGRlZ3JlZQogCSAqIHJvdGF0aW9uLgogCSAqLwotCWlmIChjYWNoZS0+ZmVu
Y2VfaWQgPCAwKSB7CisJaWYgKGNhY2hlLT5mZW5jZV9pZCA8IDAgJiYgSU5URUxfR0VOKGRldl9w
cml2KSA8IDkpIHsKIAkJZmJjLT5ub19mYmNfcmVhc29uID0gImZyYW1lYnVmZmVyIG5vdCB0aWxl
ZCBvciBmZW5jZWQiOwogCQlyZXR1cm4gZmFsc2U7CiAJfQotLSAKMi4yNS4wCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
