Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 603E21855A
	for <lists+intel-gfx@lfdr.de>; Thu,  9 May 2019 08:20:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8246B89255;
	Thu,  9 May 2019 06:20:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0C678924B
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 May 2019 06:20:30 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 May 2019 23:20:30 -0700
X-ExtLoop1: 1
Received: from ideak-desk.fi.intel.com ([10.237.72.204])
 by orsmga003.jf.intel.com with ESMTP; 08 May 2019 23:20:28 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  9 May 2019 09:19:54 +0300
Message-Id: <20190509061954.10379-12-imre.deak@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190509061954.10379-1-imre.deak@intel.com>
References: <20190509061954.10379-1-imre.deak@intel.com>
Subject: [Intel-gfx] [PATCH v2 11/11] drm/i915: Assert that TypeC ports are
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
MIME-Version: 1.0
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
ayA8aW1yZS5kZWFrQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9k
cC5jIHwgMTAgKysrKysrKystLQogMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwgMiBk
ZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcC5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHAuYwppbmRleCBkZGIxMTM1YjJmNTQuLjJl
OWM0MjFhZWE2MCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHAuYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcC5jCkBAIC03MjEyLDEwICs3MjEyLDE2
IEBAIGludGVsX2RwX2luaXRfY29ubmVjdG9yKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmlu
dGVsX2RpZ19wb3J0LAogCWludGVsX2RwLT5EUCA9IEk5MTVfUkVBRChpbnRlbF9kcC0+b3V0cHV0
X3JlZyk7CiAJaW50ZWxfZHAtPmF0dGFjaGVkX2Nvbm5lY3RvciA9IGludGVsX2Nvbm5lY3RvcjsK
IAotCWlmIChpbnRlbF9kcF9pc19wb3J0X2VkcChkZXZfcHJpdiwgcG9ydCkpCisJaWYgKGludGVs
X2RwX2lzX3BvcnRfZWRwKGRldl9wcml2LCBwb3J0KSkgeworCQkvKgorCQkgKiBDdXJyZW50bHkg
d2UgZG9uJ3Qgc3VwcG9ydCBlRFAgb24gVHlwZUMgcG9ydHMsIGFsdGhvdWdoIGluCisJCSAqIHRo
ZW9yeSBpdCBjb3VsZCB3b3JrIG9uIFR5cGVDIGxlZ2FjeSBwb3J0cy4KKwkJICovCisJCVdBUk5f
T04oaW50ZWxfcG9ydF9pc190YyhkZXZfcHJpdiwgcG9ydCkpOwogCQl0eXBlID0gRFJNX01PREVf
Q09OTkVDVE9SX2VEUDsKLQllbHNlCisJfSBlbHNlIHsKIAkJdHlwZSA9IERSTV9NT0RFX0NPTk5F
Q1RPUl9EaXNwbGF5UG9ydDsKKwl9CiAKIAlpZiAoSVNfVkFMTEVZVklFVyhkZXZfcHJpdikgfHwg
SVNfQ0hFUlJZVklFVyhkZXZfcHJpdikpCiAJCWludGVsX2RwLT5hY3RpdmVfcGlwZSA9IHZsdl9h
Y3RpdmVfcGlwZShpbnRlbF9kcCk7Ci0tIAoyLjE3LjEKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
