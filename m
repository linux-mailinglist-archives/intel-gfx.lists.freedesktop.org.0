Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BE50104563
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2019 21:57:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C52926E7AB;
	Wed, 20 Nov 2019 20:57:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A693A6E7AB
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Nov 2019 20:57:24 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Nov 2019 12:57:23 -0800
X-IronPort-AV: E=Sophos;i="5.69,223,1571727600"; d="scan'208";a="200869627"
Received: from zimmerma-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.32.60])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Nov 2019 12:57:21 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Jani Nikula <jani.nikula@intel.com>,
	intel-gfx@lists.freedesktop.org
Date: Wed, 20 Nov 2019 22:57:28 +0200
Message-Id: <20191120205729.15919-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1573831924.git.jani.nikula@intel.com>
References: <cover.1573831924.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/dsi: use compressed pixel format
 for DSC
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

RklYTUU6IFRvIGJlIHNxdWFzaGVkIHRvIGFub3RoZXIgcGF0Y2guCgpDYzogVmFuZGl0YSBLdWxr
YXJuaSA8dmFuZGl0YS5rdWxrYXJuaUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEphbmkgTmlr
dWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pY2xfZHNpLmMgfCAzNiArKysrKysrKysrKysrKy0tLS0tLS0tLS0tLQogMSBmaWxlIGNo
YW5nZWQsIDIwIGluc2VydGlvbnMoKyksIDE2IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaWNsX2RzaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pY2xfZHNpLmMKaW5kZXggZGM4NzEzNGY1YzI3Li5mMDllMmUzN2Q0NDIgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaWNsX2RzaS5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaWNsX2RzaS5jCkBAIC02ODMsMjIgKzY4MywyNiBA
QCBnZW4xMV9kc2lfY29uZmlndXJlX3RyYW5zY29kZXIoc3RydWN0IGludGVsX2VuY29kZXIgKmVu
Y29kZXIsCiAKIAkJLyogc2VsZWN0IHBpeGVsIGZvcm1hdCAqLwogCQl0bXAgJj0gflBJWF9GTVRf
TUFTSzsKLQkJc3dpdGNoIChpbnRlbF9kc2ktPnBpeGVsX2Zvcm1hdCkgewotCQlkZWZhdWx0Ogot
CQkJTUlTU0lOR19DQVNFKGludGVsX2RzaS0+cGl4ZWxfZm9ybWF0KTsKLQkJCS8qIGZhbGx0aHJv
dWdoICovCi0JCWNhc2UgTUlQSV9EU0lfRk1UX1JHQjU2NToKLQkJCXRtcCB8PSBQSVhfRk1UX1JH
QjU2NTsKLQkJCWJyZWFrOwotCQljYXNlIE1JUElfRFNJX0ZNVF9SR0I2NjZfUEFDS0VEOgotCQkJ
dG1wIHw9IFBJWF9GTVRfUkdCNjY2X1BBQ0tFRDsKLQkJCWJyZWFrOwotCQljYXNlIE1JUElfRFNJ
X0ZNVF9SR0I2NjY6Ci0JCQl0bXAgfD0gUElYX0ZNVF9SR0I2NjZfTE9PU0U7Ci0JCQlicmVhazsK
LQkJY2FzZSBNSVBJX0RTSV9GTVRfUkdCODg4OgotCQkJdG1wIHw9IFBJWF9GTVRfUkdCODg4Owot
CQkJYnJlYWs7CisJCWlmIChwaXBlX2NvbmZpZy0+ZHNjLmNvbXByZXNzaW9uX2VuYWJsZSkgewor
CQkJdG1wIHw9IFBJWF9GTVRfQ09NUFJFU1NFRDsKKwkJfSBlbHNlIHsKKwkJCXN3aXRjaCAoaW50
ZWxfZHNpLT5waXhlbF9mb3JtYXQpIHsKKwkJCWRlZmF1bHQ6CisJCQkJTUlTU0lOR19DQVNFKGlu
dGVsX2RzaS0+cGl4ZWxfZm9ybWF0KTsKKwkJCQkvKiBmYWxsdGhyb3VnaCAqLworCQkJY2FzZSBN
SVBJX0RTSV9GTVRfUkdCNTY1OgorCQkJCXRtcCB8PSBQSVhfRk1UX1JHQjU2NTsKKwkJCQlicmVh
azsKKwkJCWNhc2UgTUlQSV9EU0lfRk1UX1JHQjY2Nl9QQUNLRUQ6CisJCQkJdG1wIHw9IFBJWF9G
TVRfUkdCNjY2X1BBQ0tFRDsKKwkJCQlicmVhazsKKwkJCWNhc2UgTUlQSV9EU0lfRk1UX1JHQjY2
NjoKKwkJCQl0bXAgfD0gUElYX0ZNVF9SR0I2NjZfTE9PU0U7CisJCQkJYnJlYWs7CisJCQljYXNl
IE1JUElfRFNJX0ZNVF9SR0I4ODg6CisJCQkJdG1wIHw9IFBJWF9GTVRfUkdCODg4OworCQkJCWJy
ZWFrOworCQkJfQogCQl9CiAKIAkJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTIpIHsKLS0g
CjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
