Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ACFA19071
	for <lists+intel-gfx@lfdr.de>; Thu,  9 May 2019 20:45:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9A6089EEB;
	Thu,  9 May 2019 18:44:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 461E289EEB
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 May 2019 18:44:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 May 2019 11:44:58 -0700
X-ExtLoop1: 1
Received: from linuxpresi1-desktop.iind.intel.com ([10.223.74.121])
 by fmsmga004.fm.intel.com with ESMTP; 09 May 2019 11:44:56 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 May 2019 00:41:48 +0530
Message-Id: <1557429108-8004-4-git-send-email-uma.shankar@intel.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1557429108-8004-1-git-send-email-uma.shankar@intel.com>
References: <1557429108-8004-1-git-send-email-uma.shankar@intel.com>
Subject: [Intel-gfx] [PATCH 3/3] drm/i915/icl: Fixed Input CSC Co-efficients
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
Y29udmVyc2lvbiB3ZXJlIHNsaWdodGx5IG9mZi4gRml4ZWQgdGhlIHNhbWUuCgpTaWduZWQtb2Zm
LWJ5OiBVbWEgU2hhbmthciA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX3Nwcml0ZS5jIHwgMjQgKysrKysrKysrKysrLS0tLS0tLS0tLS0tCiAx
IGZpbGUgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygrKSwgMTIgZGVsZXRpb25zKC0pCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfc3ByaXRlLmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF9zcHJpdGUuYwppbmRleCBjOWM5NzBmLi4xMjM5NDU3IDEwMDY0NAotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9zcHJpdGUuYworKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF9zcHJpdGUuYwpAQCAtNDMwLDcgKzQzMCw3IEBAIGludCBpbnRlbF9wbGFu
ZV9jaGVja19zcmNfY29vcmRpbmF0ZXMoc3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpwbGFuZV9z
dGF0ZSkKIAkJICovCiAJCVtEUk1fQ09MT1JfWUNCQ1JfQlQ3MDldID0gewogCQkJMHg3Qzk4LCAw
eDc4MDAsIDB4MCwKLQkJCTB4OUVGOCwgMHg3ODAwLCAweEFCRjgsCisJCQkweDlFRjgsIDB4Nzgw
MCwgMHhBQzAwLAogCQkJMHgwLCAweDc4MDAsICAweDdFRDgsCiAJCX0sCiAJCS8qCkBAIC00NTMs
MjUgKzQ1MywyNSBAQCBpbnQgaW50ZWxfcGxhbmVfY2hlY2tfc3JjX2Nvb3JkaW5hdGVzKHN0cnVj
dCBpbnRlbF9wbGFuZV9zdGF0ZSAqcGxhbmVfc3RhdGUpCiAJCSAqIEJULjYwMSBMaW10ZWQgcmFu
Z2UgWUNiQ3IgLT4gZnVsbCByYW5nZSBSR0IKIAkJICogVGhlIG1hdHJpeCByZXF1aXJlZCBpcyA6
CiAJCSAqIFsxLjE2NDM4NCwgMC4wMDAsIDEuNTk2MzcwLAotCQkgKiAgMS4xMzgzOTMsIC0wLjM4
MjUwMCwgLTAuNzk0NTk4LAotCQkgKiAgMS4xMzgzOTMsIDEuOTcxNjk2LCAwLjAwMDBdCisJCSAq
ICAxLjE2NDM4NCwgLTAuMzgyNTAwLCAtMC43OTQ1OTgsCisJCSAqICAxLjE2NDM4NCwgMS45NzE2
OTYsIDAuMDAwMF0KIAkJICovCiAJCVtEUk1fQ09MT1JfWUNCQ1JfQlQ2MDFdID0gewotCQkJMHg3
Q0M4LCAweDc5NTAsIDB4MCwKLQkJCTB4OENCOCwgMHg3OTE4LCAweDlDNDAsCi0JCQkweDAsIDB4
NzkxOCwgMHg3RkM4LAorCQkJMHg3QzgwLCAweDc5NTAsIDB4MCwKKwkJCTB4OENCOCwgMHg3OTUw
LCAweDlDNDAsCisJCQkweDAsIDB4Nzk1MCwgMHg3RkM4LAogCQl9LAogCQkvKgogCQkgKiBCVC43
MDkgTGltaXRlZCByYW5nZSBZQ2JDciAtPiBmdWxsIHJhbmdlIFJHQgogCQkgKiBUaGUgbWF0cml4
IHJlcXVpcmVkIGlzIDoKLQkJICogWzEuMTY0LCAwLjAwMCwgMS44MzM2NzEsCi0JCSAqICAxLjEz
ODM5MywgLTAuMjEzMjQ5LCAtMC41MzI5MDksCi0JCSAqICAxLjEzODM5MywgMi4xMTI0MDIsIDAu
MDAwMF0KKwkJICogWzEuMTY0Mzg0LCAwLjAwMCwgMS43OTI3NDEsCisJCSAqICAxLjE2NDM4NCwg
LTAuMjEzMjQ5LCAtMC41MzI5MDksCisJCSAqICAxLjE2NDM4NCwgMi4xMTI0MDIsIDAuMDAwMF0K
IAkJICovCiAJCVtEUk1fQ09MT1JfWUNCQ1JfQlQ3MDldID0gewotCQkJMHg3RUE4LCAweDc5NTAs
IDB4MCwKLQkJCTB4ODg4OCwgMHg3OTE4LCAweEFEQTgsCi0JCQkweDAsIDB4NzkxOCwgIDB4Njg3
MCwKKwkJCTB4N0U1OCwgMHg3OTUwLCAweDAsCisJCQkweDg4ODgsIDB4Nzk1MCwgMHhBREE4LAor
CQkJMHgwLCAweDc5NTAsICAweDY4NzAsCiAJCX0sCiAJCS8qCiAJCSAqIEJULjIwMjAgTGltaXRl
ZCByYW5nZSBZQ2JDciAtPiBmdWxsIHJhbmdlIFJHQgotLSAKMS45LjEKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
