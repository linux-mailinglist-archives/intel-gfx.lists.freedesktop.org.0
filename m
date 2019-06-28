Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DED95942E
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jun 2019 08:28:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 140E56E87F;
	Fri, 28 Jun 2019 06:28:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B6D736E87F
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jun 2019 06:28:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jun 2019 23:28:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,426,1557212400"; d="scan'208";a="164975000"
Received: from linuxpresi1-desktop.iind.intel.com ([10.223.74.143])
 by orsmga003.jf.intel.com with ESMTP; 27 Jun 2019 23:28:45 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Jun 2019 12:23:59 +0530
Message-Id: <20190628065359.10375-4-uma.shankar@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190628065359.10375-1-uma.shankar@intel.com>
References: <20190628065359.10375-1-uma.shankar@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [v4 3/3] drm/i915/icl: Fixed Input CSC Co-efficients
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SW5wdXQgQ1NDIENvLWVmZmljaWVudHMgZm9yIEJUNjAxIGFuZCBCVDcwOSBZQ2JDUiB0byBSR0IK
Y29udmVyc2lvbiB3ZXJlIHNsaWdodGx5IG9mZi4gRml4ZWQgdGhlIHNhbWUuCgp2MjogRml4ZWQg
dGhlIGNvLWVmaWNpZW50cyBhcyB0aGVyZSB3YXMgaXNzdWUgd2l0aCByZWZlcmVuY2UKbWF0cml4
LCBzcG90dGVkIGJ5IFZpbGxlLgoKdjM6IFJlYmFzZQoKU2lnbmVkLW9mZi1ieTogVW1hIFNoYW5r
YXIgPHVtYS5zaGFua2FyQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3Nwcml0ZS5jIHwgMjQgKysrKysrKysrKy0tLS0tLS0tLS0tCiAxIGZpbGUgY2hh
bmdlZCwgMTIgaW5zZXJ0aW9ucygrKSwgMTIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMKaW5kZXggYWJkODliZGY4YzVlLi4xM2U3MDE3
MDc0NWMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3By
aXRlLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYwpA
QCAtNDQxLDcgKzQ0MSw3IEBAIGljbF9wcm9ncmFtX2lucHV0X2NzYyhzdHJ1Y3QgaW50ZWxfcGxh
bmUgKnBsYW5lLAogCQkgKi8KIAkJW0RSTV9DT0xPUl9ZQ0JDUl9CVDcwOV0gPSB7CiAJCQkweDdD
OTgsIDB4NzgwMCwgMHgwLAotCQkJMHg5RUY4LCAweDc4MDAsIDB4QUJGOCwKKwkJCTB4OUVGOCwg
MHg3ODAwLCAweEFDMDAsCiAJCQkweDAsIDB4NzgwMCwgIDB4N0VEOCwKIAkJfSwKIAkJLyoKQEAg
LTQ2MywyNiArNDYzLDI2IEBAIGljbF9wcm9ncmFtX2lucHV0X2NzYyhzdHJ1Y3QgaW50ZWxfcGxh
bmUgKnBsYW5lLAogCQkvKgogCQkgKiBCVC42MDEgTGltdGVkIHJhbmdlIFlDYkNyIC0+IGZ1bGwg
cmFuZ2UgUkdCCiAJCSAqIFRoZSBtYXRyaXggcmVxdWlyZWQgaXMgOgotCQkgKiBbMS4xNjQzODQs
IDAuMDAwLCAxLjU5NjM3MCwKLQkJICogIDEuMTM4MzkzLCAtMC4zODI1MDAsIC0wLjc5NDU5OCwK
LQkJICogIDEuMTM4MzkzLCAxLjk3MTY5NiwgMC4wMDAwXQorCQkgKiBbMS4xNjQzODQsIDAuMDAw
LCAxLjU5NjAyNywKKwkJICogIDEuMTY0Mzg0LCAtMC4zOTE3NSwgLTAuODEyODEzLAorCQkgKiAg
MS4xNjQzODQsIDIuMDE3MjMyLCAwLjAwMDBdCiAJCSAqLwogCQlbRFJNX0NPTE9SX1lDQkNSX0JU
NjAxXSA9IHsKIAkJCTB4N0NDOCwgMHg3OTUwLCAweDAsCi0JCQkweDhDQjgsIDB4NzkxOCwgMHg5
QzQwLAotCQkJMHgwLCAweDc5MTgsIDB4N0ZDOCwKKwkJCTB4OEQwMCwgMHg3OTUwLCAweDlDODgs
CisJCQkweDAsIDB4Nzk1MCwgMHg2ODEwLAogCQl9LAogCQkvKgogCQkgKiBCVC43MDkgTGltaXRl
ZCByYW5nZSBZQ2JDciAtPiBmdWxsIHJhbmdlIFJHQgogCQkgKiBUaGUgbWF0cml4IHJlcXVpcmVk
IGlzIDoKLQkJICogWzEuMTY0LCAwLjAwMCwgMS44MzM2NzEsCi0JCSAqICAxLjEzODM5MywgLTAu
MjEzMjQ5LCAtMC41MzI5MDksCi0JCSAqICAxLjEzODM5MywgMi4xMTI0MDIsIDAuMDAwMF0KKwkJ
ICogWzEuMTY0Mzg0LCAwLjAwMCwgMS43OTI3NDEsCisJCSAqICAxLjE2NDM4NCwgLTAuMjEzMjQ5
LCAtMC41MzI5MDksCisJCSAqICAxLjE2NDM4NCwgMi4xMTI0MDIsIDAuMDAwMF0KIAkJICovCiAJ
CVtEUk1fQ09MT1JfWUNCQ1JfQlQ3MDldID0gewotCQkJMHg3RUE4LCAweDc5NTAsIDB4MCwKLQkJ
CTB4ODg4OCwgMHg3OTE4LCAweEFEQTgsCi0JCQkweDAsIDB4NzkxOCwgIDB4Njg3MCwKKwkJCTB4
N0U1OCwgMHg3OTUwLCAweDAsCisJCQkweDg4ODgsIDB4Nzk1MCwgMHhBREE4LAorCQkJMHgwLCAw
eDc5NTAsICAweDY4NzAsCiAJCX0sCiAJCS8qCiAJCSAqIEJULjIwMjAgTGltaXRlZCByYW5nZSBZ
Q2JDciAtPiBmdWxsIHJhbmdlIFJHQgotLSAKMi4yMi4wCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
