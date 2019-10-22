Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D20CEE0533
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2019 15:36:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 31D976E7D2;
	Tue, 22 Oct 2019 13:36:56 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E8AF26E7D2
 for <Intel-gfx@lists.freedesktop.org>; Tue, 22 Oct 2019 13:36:54 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Oct 2019 06:36:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,327,1566889200"; d="scan'208";a="372528704"
Received: from mdlugoke-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.251.81.75])
 by orsmga005.jf.intel.com with ESMTP; 22 Oct 2019 06:36:53 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Tue, 22 Oct 2019 14:36:50 +0100
Message-Id: <20191022133650.19839-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Use uabi engines for the default
 engine map
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCkRlZmF1bHQg
ZW5naW5lIG1hcCBpcyBleGFjdGx5IGFib3V0IHVhYmkgZW5naW5lcyBzbyBubyBleGN1c2Ugbm90
IHRvIHVzZQp0aGUgYXBwcm9wcmlhdGUgaXRlcmF0b3IgdG8gcG9wdWxhdGUgaXQuCgpTaWduZWQt
b2ZmLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgotLS0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmMgfCA5ICsrKystLS0tLQog
MSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHQuYwppbmRleCA3YjAxZjQ2MDVmMjEu
LjE5N2I0YzNhOTU3NCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVf
Z2VtX2NvbnRleHQuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29u
dGV4dC5jCkBAIC0xOTAsMjMgKzE5MCwyMiBAQCBzdGF0aWMgdm9pZCBmcmVlX2VuZ2luZXNfcmN1
KHN0cnVjdCByY3VfaGVhZCAqcmN1KQogCiBzdGF0aWMgc3RydWN0IGk5MTVfZ2VtX2VuZ2luZXMg
KmRlZmF1bHRfZW5naW5lcyhzdHJ1Y3QgaTkxNV9nZW1fY29udGV4dCAqY3R4KQogewotCWNvbnN0
IHN0cnVjdCBpbnRlbF9ndCAqZ3QgPSAmY3R4LT5pOTE1LT5ndDsKKwljb25zdCB1bnNpZ25lZCBp
bnQgbWF4ID0gSTkxNV9OVU1fRU5HSU5FUzsKIAlzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdp
bmU7CiAJc3RydWN0IGk5MTVfZ2VtX2VuZ2luZXMgKmU7Ci0JZW51bSBpbnRlbF9lbmdpbmVfaWQg
aWQ7CiAKLQllID0ga3phbGxvYyhzdHJ1Y3Rfc2l6ZShlLCBlbmdpbmVzLCBJOTE1X05VTV9FTkdJ
TkVTKSwgR0ZQX0tFUk5FTCk7CisJZSA9IGt6YWxsb2Moc3RydWN0X3NpemUoZSwgZW5naW5lcywg
bWF4KSwgR0ZQX0tFUk5FTCk7CiAJaWYgKCFlKQogCQlyZXR1cm4gRVJSX1BUUigtRU5PTUVNKTsK
IAogCWluaXRfcmN1X2hlYWQoJmUtPnJjdSk7Ci0JZm9yX2VhY2hfZW5naW5lKGVuZ2luZSwgZ3Qs
IGlkKSB7CisJZm9yX2VhY2hfdWFiaV9lbmdpbmUoZW5naW5lLCBjdHgtPmk5MTUpIHsKIAkJc3Ry
dWN0IGludGVsX2NvbnRleHQgKmNlOwogCiAJCWlmIChlbmdpbmUtPmxlZ2FjeV9pZHggPT0gSU5W
QUxJRF9FTkdJTkUpCiAJCQljb250aW51ZTsKIAotCQlHRU1fQlVHX09OKGVuZ2luZS0+bGVnYWN5
X2lkeCA+PSBJOTE1X05VTV9FTkdJTkVTKTsKKwkJR0VNX0JVR19PTihlbmdpbmUtPmxlZ2FjeV9p
ZHggPj0gbWF4KTsKIAkJR0VNX0JVR19PTihlLT5lbmdpbmVzW2VuZ2luZS0+bGVnYWN5X2lkeF0p
OwogCiAJCWNlID0gaW50ZWxfY29udGV4dF9jcmVhdGUoY3R4LCBlbmdpbmUpOwotLSAKMi4yMC4x
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
