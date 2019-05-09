Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 23A791930D
	for <lists+intel-gfx@lfdr.de>; Thu,  9 May 2019 21:51:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27EFF89C61;
	Thu,  9 May 2019 19:51:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7279789C61
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 May 2019 19:51:27 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 May 2019 12:51:27 -0700
X-ExtLoop1: 1
Received: from linuxpresi1-desktop.iind.intel.com ([10.223.74.121])
 by orsmga006.jf.intel.com with ESMTP; 09 May 2019 12:51:25 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 May 2019 01:48:23 +0530
Message-Id: <1557433103-4006-1-git-send-email-uma.shankar@intel.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <20190509192402.GK24299@intel.com>
References: <20190509192402.GK24299@intel.com>
Subject: [Intel-gfx] [v2] drm/i915/icl: Fixed Input CSC Co-efficients for
 BT601/709
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
Cc: ville.syrjala@intel.com, maarten.lankhorst@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SW5wdXQgQ1NDIENvLWVmZmljaWVudHMgZm9yIEJUNjAxIGFuZCBCVDcwOSBZQ2JDUiB0byBSR0IK
Y29udmVyc2lvbiB3ZXJlIHNsaWdodGx5IG9mZi4gRml4ZWQgdGhlIHNhbWUuCgp2MjogRml4ZWQg
dGhlIGNvLWVmaWNpZW50cyBhcyB0aGVyZSB3YXMgaXNzdWUgd2l0aCByZWZlcmVuY2UKbWF0cml4
LCBzcG90dGVkIGJ5IFZpbGxlLgoKU2lnbmVkLW9mZi1ieTogVW1hIFNoYW5rYXIgPHVtYS5zaGFu
a2FyQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9zcHJpdGUuYyB8
IDI0ICsrKysrKysrKysrKy0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDEyIGluc2VydGlv
bnMoKyksIDEyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX3Nwcml0ZS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfc3ByaXRlLmMKaW5k
ZXggYzljOTcwZi4uY2ExNTc5OSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50
ZWxfc3ByaXRlLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfc3ByaXRlLmMKQEAg
LTQzMCw3ICs0MzAsNyBAQCBpbnQgaW50ZWxfcGxhbmVfY2hlY2tfc3JjX2Nvb3JkaW5hdGVzKHN0
cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAqcGxhbmVfc3RhdGUpCiAJCSAqLwogCQlbRFJNX0NPTE9S
X1lDQkNSX0JUNzA5XSA9IHsKIAkJCTB4N0M5OCwgMHg3ODAwLCAweDAsCi0JCQkweDlFRjgsIDB4
NzgwMCwgMHhBQkY4LAorCQkJMHg5RUY4LCAweDc4MDAsIDB4QUMwMCwKIAkJCTB4MCwgMHg3ODAw
LCAgMHg3RUQ4LAogCQl9LAogCQkvKgpAQCAtNDUyLDI2ICs0NTIsMjYgQEAgaW50IGludGVsX3Bs
YW5lX2NoZWNrX3NyY19jb29yZGluYXRlcyhzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKnBsYW5l
X3N0YXRlKQogCQkvKgogCQkgKiBCVC42MDEgTGltdGVkIHJhbmdlIFlDYkNyIC0+IGZ1bGwgcmFu
Z2UgUkdCCiAJCSAqIFRoZSBtYXRyaXggcmVxdWlyZWQgaXMgOgotCQkgKiBbMS4xNjQzODQsIDAu
MDAwLCAxLjU5NjM3MCwKLQkJICogIDEuMTM4MzkzLCAtMC4zODI1MDAsIC0wLjc5NDU5OCwKLQkJ
ICogIDEuMTM4MzkzLCAxLjk3MTY5NiwgMC4wMDAwXQorCQkgKiBbMS4xNjQzODQsIDAuMDAwLCAx
LjU5NjAyNywKKwkJICogIDEuMTY0Mzg0LCAtMC4zOTE3NSwgLTAuODEyODEzLAorCQkgKiAgMS4x
NjQzODQsIDIuMDE3MjMyLCAwLjAwMDBdCiAJCSAqLwogCQlbRFJNX0NPTE9SX1lDQkNSX0JUNjAx
XSA9IHsKIAkJCTB4N0NDOCwgMHg3OTUwLCAweDAsCi0JCQkweDhDQjgsIDB4NzkxOCwgMHg5QzQw
LAotCQkJMHgwLCAweDc5MTgsIDB4N0ZDOCwKKwkJCTB4OEQwMCwgMHg3OTUwLCAweDlDODgsCisJ
CQkweDAsIDB4Nzk1MCwgMHg2ODEwLAogCQl9LAogCQkvKgogCQkgKiBCVC43MDkgTGltaXRlZCBy
YW5nZSBZQ2JDciAtPiBmdWxsIHJhbmdlIFJHQgogCQkgKiBUaGUgbWF0cml4IHJlcXVpcmVkIGlz
IDoKLQkJICogWzEuMTY0LCAwLjAwMCwgMS44MzM2NzEsCi0JCSAqICAxLjEzODM5MywgLTAuMjEz
MjQ5LCAtMC41MzI5MDksCi0JCSAqICAxLjEzODM5MywgMi4xMTI0MDIsIDAuMDAwMF0KKwkJICog
WzEuMTY0Mzg0LCAwLjAwMCwgMS43OTI3NDEsCisJCSAqICAxLjE2NDM4NCwgLTAuMjEzMjQ5LCAt
MC41MzI5MDksCisJCSAqICAxLjE2NDM4NCwgMi4xMTI0MDIsIDAuMDAwMF0KIAkJICovCiAJCVtE
Uk1fQ09MT1JfWUNCQ1JfQlQ3MDldID0gewotCQkJMHg3RUE4LCAweDc5NTAsIDB4MCwKLQkJCTB4
ODg4OCwgMHg3OTE4LCAweEFEQTgsCi0JCQkweDAsIDB4NzkxOCwgIDB4Njg3MCwKKwkJCTB4N0U1
OCwgMHg3OTUwLCAweDAsCisJCQkweDg4ODgsIDB4Nzk1MCwgMHhBREE4LAorCQkJMHgwLCAweDc5
NTAsICAweDY4NzAsCiAJCX0sCiAJCS8qCiAJCSAqIEJULjIwMjAgTGltaXRlZCByYW5nZSBZQ2JD
ciAtPiBmdWxsIHJhbmdlIFJHQgotLSAKMS45LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
