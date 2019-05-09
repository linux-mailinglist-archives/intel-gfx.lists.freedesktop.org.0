Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E55718F43
	for <lists+intel-gfx@lfdr.de>; Thu,  9 May 2019 19:35:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D752B89F6B;
	Thu,  9 May 2019 17:35:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91E5D89F3B
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 May 2019 17:35:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 May 2019 10:35:21 -0700
X-ExtLoop1: 1
Received: from ideak-desk.fi.intel.com ([10.237.72.204])
 by orsmga003.jf.intel.com with ESMTP; 09 May 2019 10:35:20 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  9 May 2019 20:34:46 +0300
Message-Id: <20190509173446.31095-12-imre.deak@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190509173446.31095-1-imre.deak@intel.com>
References: <20190509173446.31095-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 11/11] drm/i915: Assert that TypeC ports are
 not used for eDP
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

QWRkIGFuIGFzc2VydCB0aGF0IHdlIGRvbid0IHVzZSBUeXBlQyBwb3J0cyBmb3IgZURQLiBUaGF0
IG1heSBpbiB0aGVvcnkKYmUgcG9zc2libGUgb24gVHlwZUMgbGVnYWN5IHBvcnRzLCBidXQgSSdt
IG5vdCBzdXJlIGlmIHRoYXQncyBhCnByYWN0aWNhbCBzY2VuYXJpbywgc28gbGV0J3MgZGVhbCB3
aXRoIHRoYXQgb25seSBpZiB0aGVyZSdzIGEgdXNlIGNhc2UuCkFkZGluZyBzdXBwb3J0IGZvciB0
aGF0IHdvdWxkbid0IGJlIHRvbyBkaWZmaWN1bHQsIHNpbmNlIFR5cGVDIG1vZGUKc3dpdGNoaW5n
IGlzIG5vdCBwb3NzaWJsZSBvbiBUeXBlQyBsZWdhY3kgcG9ydHMuCgpDYzogVmlsbGUgU3lyamFs
YSA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEltcmUgRGVh
ayA8aW1yZS5kZWFrQGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmls
bGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50
ZWxfZHAuYyB8IDEwICsrKysrKysrLS0KIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyks
IDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
ZHAuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RwLmMKaW5kZXggNTI0NTIxNTUyNTBm
Li5lM2U3MTljMDQ0NDAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rw
LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHAuYwpAQCAtNzIwNiwxMCArNzIw
NiwxNiBAQCBpbnRlbF9kcF9pbml0X2Nvbm5lY3RvcihzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0
ICppbnRlbF9kaWdfcG9ydCwKIAlpbnRlbF9kcC0+RFAgPSBJOTE1X1JFQUQoaW50ZWxfZHAtPm91
dHB1dF9yZWcpOwogCWludGVsX2RwLT5hdHRhY2hlZF9jb25uZWN0b3IgPSBpbnRlbF9jb25uZWN0
b3I7CiAKLQlpZiAoaW50ZWxfZHBfaXNfcG9ydF9lZHAoZGV2X3ByaXYsIHBvcnQpKQorCWlmIChp
bnRlbF9kcF9pc19wb3J0X2VkcChkZXZfcHJpdiwgcG9ydCkpIHsKKwkJLyoKKwkJICogQ3VycmVu
dGx5IHdlIGRvbid0IHN1cHBvcnQgZURQIG9uIFR5cGVDIHBvcnRzLCBhbHRob3VnaCBpbgorCQkg
KiB0aGVvcnkgaXQgY291bGQgd29yayBvbiBUeXBlQyBsZWdhY3kgcG9ydHMuCisJCSAqLworCQlX
QVJOX09OKGludGVsX3BvcnRfaXNfdGMoZGV2X3ByaXYsIHBvcnQpKTsKIAkJdHlwZSA9IERSTV9N
T0RFX0NPTk5FQ1RPUl9lRFA7Ci0JZWxzZQorCX0gZWxzZSB7CiAJCXR5cGUgPSBEUk1fTU9ERV9D
T05ORUNUT1JfRGlzcGxheVBvcnQ7CisJfQogCiAJaWYgKElTX1ZBTExFWVZJRVcoZGV2X3ByaXYp
IHx8IElTX0NIRVJSWVZJRVcoZGV2X3ByaXYpKQogCQlpbnRlbF9kcC0+YWN0aXZlX3BpcGUgPSB2
bHZfYWN0aXZlX3BpcGUoaW50ZWxfZHApOwotLSAKMi4xNy4xCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
