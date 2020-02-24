Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 47C7516A67C
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2020 13:52:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 814266E471;
	Mon, 24 Feb 2020 12:52:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C4226E463
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Feb 2020 12:52:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Feb 2020 04:52:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,480,1574150400"; d="scan'208";a="225967615"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.178])
 by orsmga007.jf.intel.com with ESMTP; 24 Feb 2020 04:52:41 -0800
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 24 Feb 2020 18:10:02 +0530
Message-Id: <20200224124004.26712-6-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200224124004.26712-1-anshuman.gupta@intel.com>
References: <20200224124004.26712-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 5/7] drm/i915: Get first crtc instead of
 PIPE_A crtc
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

aW50ZWxfcGxhbmVfZmJfbWF4X3N0cmlkZSBzaG91bGQgcmV0dXJuIHRoZSBtYXggc3RyaWRlIG9m
CnByaW1hcnkgcGxhbmUgZm9yIGZpcnN0IGF2YWlsYWJsZSBwaXBlIGluIGludGVsIGRldmljZSBp
bmZvCnBpcGVfbWFzay4KU2ltaWxhcmx5IGdsa19mb3JjZV9hdWRpb19jZGNsaygpIHNob3VsZCBh
bHNvIHVzZSB0aGUgZmlyc3QKYXZhaWxhYmxlIENSVEMgaW5zdGVhZCBvZiBwaXBlICdBJyBjcnRj
IHRvIGZvcmNlIHRoZSBjZGNsawpjaGFuZ2VzLgoKY2hhbmdlcyBzaW5jZSBSRkM6Ci0gSW50cm9k
dWNlZCBhIGhlbHBlciB0byBnZXQgZmlyc3QgaW50ZWxfY3J0YyBpbnRlbF9nZXRfZmlyc3RfY3J0
Yy4gW1ZpbGxlXQp2MToKLSBVc2VkIGludGVsX2dldF9maXJzdF9jcnRjKCkgaW5zdGVhZCBvZiBQ
SVBFX0EgY3J0YyBpbgogIGdsa19mb3JjZV9hdWRpb19jZGNsaygpLiBbVmlsbGVdCgpDYzogVmls
bGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KUmV2aWV3ZWQtYnk6
IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+ClNpZ25lZC1v
ZmYtYnk6IEFuc2h1bWFuIEd1cHRhIDxhbnNodW1hbi5ndXB0YUBpbnRlbC5jb20+Ci0tLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdWRpby5jICAgICAgICAgfCAyICstCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyAgICAgICB8IDUgKysr
LS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oIHwg
NiArKysrKysKIDMgZmlsZXMgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMo
LSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F1ZGlv
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F1ZGlvLmMKaW5kZXggMzBm
YjdjODg3ZmYwLi4xOWJmMjA2MDM3YzIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfYXVkaW8uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2F1ZGlvLmMKQEAgLTg0NCw3ICs4NDQsNyBAQCBzdGF0aWMgdm9pZCBnbGtfZm9yY2Vf
YXVkaW9fY2RjbGsoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogCXN0cnVjdCBp
bnRlbF9jcnRjICpjcnRjOwogCWludCByZXQ7CiAKLQljcnRjID0gaW50ZWxfZ2V0X2NydGNfZm9y
X3BpcGUoZGV2X3ByaXYsIFBJUEVfQSk7CisJY3J0YyA9IGludGVsX2dldF9maXJzdF9jcnRjKGRl
dl9wcml2KTsKIAlpZiAoIWNydGMpCiAJCXJldHVybjsKIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwppbmRleCA0MWEwZjJlOWI2YjkuLjE3MmRiZTgyNjBj
MSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKQEAg
LTI3MjksOSArMjcyOSwxMCBAQCB1MzIgaW50ZWxfcGxhbmVfZmJfbWF4X3N0cmlkZShzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAKIAkvKgogCSAqIFdlIGFzc3VtZSB0aGUgcHJp
bWFyeSBwbGFuZSBmb3IgcGlwZSBBIGhhcwotCSAqIHRoZSBoaWdoZXN0IHN0cmlkZSBsaW1pdHMg
b2YgdGhlbSBhbGwuCisJICogdGhlIGhpZ2hlc3Qgc3RyaWRlIGxpbWl0cyBvZiB0aGVtIGFsbCwK
KwkgKiBpZiBpbiBjYXNlIHBpcGUgQSBpcyBkaXNhYmxlZCwgdXNlIHRoZSBmaXJzdCBwaXBlIGZy
b20gcGlwZV9tYXNrLgogCSAqLwotCWNydGMgPSBpbnRlbF9nZXRfY3J0Y19mb3JfcGlwZShkZXZf
cHJpdiwgUElQRV9BKTsKKwljcnRjID0gaW50ZWxfZ2V0X2ZpcnN0X2NydGMoZGV2X3ByaXYpOwog
CWlmICghY3J0YykKIAkJcmV0dXJuIDA7CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgKaW5kZXggMzgwZWJlNWVlMjZkLi4zY2E2Y2Y3
ZjM5ODYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheV90eXBlcy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheV90eXBlcy5oCkBAIC0xNDA2LDYgKzE0MDYsMTIgQEAgdmx2X3BpcGVfdG9fY2hhbm5lbChl
bnVtIHBpcGUgcGlwZSkKIAl9CiB9CiAKK3N0YXRpYyBpbmxpbmUgc3RydWN0IGludGVsX2NydGMg
KgoraW50ZWxfZ2V0X2ZpcnN0X2NydGMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
KQoreworCXJldHVybiB0b19pbnRlbF9jcnRjKGRybV9jcnRjX2Zyb21faW5kZXgoJmRldl9wcml2
LT5kcm0sIDApKTsKK30KKwogc3RhdGljIGlubGluZSBzdHJ1Y3QgaW50ZWxfY3J0YyAqCiBpbnRl
bF9nZXRfY3J0Y19mb3JfcGlwZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIGVu
dW0gcGlwZSBwaXBlKQogewotLSAKMi4yNC4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZngK
