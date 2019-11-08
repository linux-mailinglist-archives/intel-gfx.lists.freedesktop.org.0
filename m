Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E263F3CEF
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Nov 2019 01:36:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E48596F81B;
	Fri,  8 Nov 2019 00:36:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B19556F814
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Nov 2019 00:36:19 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Nov 2019 16:36:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,279,1569308400"; d="scan'208";a="205843065"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.24.10.155])
 by orsmga003.jf.intel.com with ESMTP; 07 Nov 2019 16:36:18 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  7 Nov 2019 16:35:59 -0800
Message-Id: <20191108003602.33526-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/4] drm/i915/opregion: fix leaking fw on error
 path
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

Q29udmVydCB0aGUgY29kZSB0byByZXR1cm4tZWFybHkgc3R5bGUgYW5kIGZpeCBtaXNzaW5nIGNh
bGxzCnRvIHJlbGVhc2VfZmlybXdhcmUoKSBpZiB2YnQgaXMgbm90IHZhbGlkLgoKU2lnbmVkLW9m
Zi1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+Ci0tLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9vcHJlZ2lvbi5jIHwgMjggKysrKysrKysr
KystLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDE3IGluc2VydGlvbnMoKyksIDExIGRlbGV0aW9u
cygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfb3By
ZWdpb24uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfb3ByZWdpb24uYwpp
bmRleCA5NjlhZGU2MjM2OTEuLjk3Mzg1MTExNDdiMSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9vcHJlZ2lvbi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfb3ByZWdpb24uYwpAQCAtODcyLDIzICs4NzIsMjkgQEAgc3RhdGlj
IGludCBpbnRlbF9sb2FkX3ZidF9maXJtd2FyZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2
X3ByaXYpCiAJCXJldHVybiByZXQ7CiAJfQogCi0JaWYgKGludGVsX2Jpb3NfaXNfdmFsaWRfdmJ0
KGZ3LT5kYXRhLCBmdy0+c2l6ZSkpIHsKLQkJb3ByZWdpb24tPnZidF9maXJtd2FyZSA9IGttZW1k
dXAoZnctPmRhdGEsIGZ3LT5zaXplLCBHRlBfS0VSTkVMKTsKLQkJaWYgKG9wcmVnaW9uLT52YnRf
ZmlybXdhcmUpIHsKLQkJCURSTV9ERUJVR19LTVMoIkZvdW5kIHZhbGlkIFZCVCBmaXJtd2FyZSBc
IiVzXCJcbiIsIG5hbWUpOwotCQkJb3ByZWdpb24tPnZidCA9IG9wcmVnaW9uLT52YnRfZmlybXdh
cmU7Ci0JCQlvcHJlZ2lvbi0+dmJ0X3NpemUgPSBmdy0+c2l6ZTsKLQkJCXJldCA9IDA7Ci0JCX0g
ZWxzZSB7Ci0JCQlyZXQgPSAtRU5PTUVNOwotCQl9Ci0JfSBlbHNlIHsKKwlpZiAoIWludGVsX2Jp
b3NfaXNfdmFsaWRfdmJ0KGZ3LT5kYXRhLCBmdy0+c2l6ZSkpIHsKIAkJRFJNX0RFQlVHX0tNUygi
SW52YWxpZCBWQlQgZmlybXdhcmUgXCIlc1wiXG4iLCBuYW1lKTsKIAkJcmV0ID0gLUVJTlZBTDsK
KwkJZ290byBlcnJfcmVsZWFzZV9mdzsKKwl9CisKKwlvcHJlZ2lvbi0+dmJ0X2Zpcm13YXJlID0g
a21lbWR1cChmdy0+ZGF0YSwgZnctPnNpemUsIEdGUF9LRVJORUwpOworCWlmICghb3ByZWdpb24t
PnZidF9maXJtd2FyZSkgeworCQlyZXQgPSAtRU5PTUVNOworCQlnb3RvIGVycl9yZWxlYXNlX2Z3
OwogCX0KIAorCW9wcmVnaW9uLT52YnQgPSBvcHJlZ2lvbi0+dmJ0X2Zpcm13YXJlOworCW9wcmVn
aW9uLT52YnRfc2l6ZSA9IGZ3LT5zaXplOworCisJRFJNX0RFQlVHX0tNUygiRm91bmQgdmFsaWQg
VkJUIGZpcm13YXJlIFwiJXNcIlxuIiwgbmFtZSk7CisKIAlyZWxlYXNlX2Zpcm13YXJlKGZ3KTsK
IAorCXJldHVybiAwOworCitlcnJfcmVsZWFzZV9mdzoKKwlyZWxlYXNlX2Zpcm13YXJlKGZ3KTsK
IAlyZXR1cm4gcmV0OwogfQogCi0tIAoyLjIzLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
