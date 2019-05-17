Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 79D4421B21
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2019 18:03:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 622E789933;
	Fri, 17 May 2019 16:03:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B410898F1
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 May 2019 16:03:27 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 May 2019 09:03:27 -0700
X-ExtLoop1: 1
Received: from linuxpresi1-desktop.iind.intel.com ([10.223.74.121])
 by orsmga008.jf.intel.com with ESMTP; 17 May 2019 09:03:25 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 May 2019 22:00:33 +0530
Message-Id: <1558110633-3723-4-git-send-email-uma.shankar@intel.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1558110633-3723-1-git-send-email-uma.shankar@intel.com>
References: <1558110633-3723-1-git-send-email-uma.shankar@intel.com>
Subject: [Intel-gfx] [v3 3/3] drm/i915/icl: Fixed Input CSC Co-efficients
 for BT601/709
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
