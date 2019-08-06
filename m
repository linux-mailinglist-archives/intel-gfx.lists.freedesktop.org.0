Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 24A6D82F59
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Aug 2019 12:03:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C0CC16E354;
	Tue,  6 Aug 2019 10:03:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 285A96E354
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Aug 2019 10:03:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Aug 2019 03:03:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,353,1559545200"; d="scan'208";a="192631779"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 06 Aug 2019 03:03:20 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  6 Aug 2019 13:07:23 +0300
Message-Id: <5f998c72018c0f1cc5cdb239327a1281d21f4c0e.1565085691.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1565085691.git.jani.nikula@intel.com>
References: <cover.1565085691.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 02/10] drm/i915/sprite: un-inline
 icl_is_hdr_plane()
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QXZvaWQgaW5jbHVkaW5nIHRoZSBpOTE1X2Rydi5oIG1lZ2EgaGVhZGVyIGZyb20gb3RoZXIgaGVh
ZGVyIGZpbGVzIHRvCm1ha2UgZnVydGhlciBoZWFkZXIgY2xlYW51cCBlYXNpZXIuCgpTaWduZWQt
b2ZmLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMgfCA2ICsrKysrKwogZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuaCB8IDggKy0tLS0tLS0KIDIgZmlsZXMg
Y2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5jCmluZGV4IDUzYzY1OTRjNDU4OC4uMGRkMWQ2
MWU1ZTdkIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nw
cml0ZS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMK
QEAgLTMzMCw2ICszMzAsMTIgQEAgaW50IGludGVsX3BsYW5lX2NoZWNrX3NyY19jb29yZGluYXRl
cyhzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKnBsYW5lX3N0YXRlKQogCXJldHVybiAwOwogfQog
Citib29sIGljbF9pc19oZHJfcGxhbmUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
LCBlbnVtIHBsYW5lX2lkIHBsYW5lX2lkKQoreworCXJldHVybiBJTlRFTF9HRU4oZGV2X3ByaXYp
ID49IDExICYmCisJCWljbF9oZHJfcGxhbmVfbWFzaygpICYgQklUKHBsYW5lX2lkKTsKK30KKwog
c3RhdGljIHVuc2lnbmVkIGludAogc2tsX3BsYW5lX21heF9zdHJpZGUoc3RydWN0IGludGVsX3Bs
YW5lICpwbGFuZSwKIAkJICAgICB1MzIgcGl4ZWxfZm9ybWF0LCB1NjQgbW9kaWZpZXIsCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5oIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuaAppbmRleCA1MDBmNmJmZmIx
MzkuLjA5M2EyZDE1NmYxZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9zcHJpdGUuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Nwcml0ZS5oCkBAIC04LDcgKzgsNiBAQAogCiAjaW5jbHVkZSA8bGludXgvdHlwZXMuaD4KIAot
I2luY2x1ZGUgImk5MTVfZHJ2LmgiCiAjaW5jbHVkZSAiaW50ZWxfZGlzcGxheS5oIgogCiBzdHJ1
Y3QgZHJtX2RldmljZTsKQEAgLTQ5LDExICs0OCw2IEBAIHN0YXRpYyBpbmxpbmUgdTggaWNsX2hk
cl9wbGFuZV9tYXNrKHZvaWQpCiAJCUJJVChQTEFORV9TUFJJVEUwKSB8IEJJVChQTEFORV9TUFJJ
VEUxKTsKIH0KIAotc3RhdGljIGlubGluZSBib29sIGljbF9pc19oZHJfcGxhbmUoc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAotCQkJCSAgICBlbnVtIHBsYW5lX2lkIHBsYW5lX2lk
KQotewotCXJldHVybiBJTlRFTF9HRU4oZGV2X3ByaXYpID49IDExICYmCi0JCWljbF9oZHJfcGxh
bmVfbWFzaygpICYgQklUKHBsYW5lX2lkKTsKLX0KK2Jvb2wgaWNsX2lzX2hkcl9wbGFuZShzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIGVudW0gcGxhbmVfaWQgcGxhbmVfaWQpOwog
CiAjZW5kaWYgLyogX19JTlRFTF9TUFJJVEVfSF9fICovCi0tIAoyLjIwLjEKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
