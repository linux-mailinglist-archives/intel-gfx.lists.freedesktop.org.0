Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AF9F109F6D
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Nov 2019 14:43:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B5FE6E3D6;
	Tue, 26 Nov 2019 13:43:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 664BF6E3D6
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Nov 2019 13:43:54 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Nov 2019 05:43:53 -0800
X-IronPort-AV: E=Sophos;i="5.69,245,1571727600"; d="scan'208";a="408664954"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Nov 2019 05:43:51 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 26 Nov 2019 15:42:46 +0200
Message-Id: <728b5ba192a02dfa5143af9a7971e18cf3278541.1574775655.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1574775655.git.jani.nikula@intel.com>
References: <cover.1574775655.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH v3 11/13] drm/i915/dsi: use compressed pixel
 format with DSC
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

V2hlbiBjb21wcmVzc2lvbiBpcyBlbmFibGVkLCBjb25maWd1cmUgdGhlIERTSSB0cmFuc2NvZGVy
IHRvIHVzZQpjb21wcmVzc2VkIGZvcm1hdC4KClN1Z2dlc3RlZC1ieTogVmFuZGl0YSBLdWxrYXJu
aSA8dmFuZGl0YS5rdWxrYXJuaUBpbnRlbC5jb20+CkNjOiBWYW5kaXRhIEt1bGthcm5pIDx2YW5k
aXRhLmt1bGthcm5pQGludGVsLmNvbT4KQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFs
YUBsaW51eC5pbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3Vs
YUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pY2xfZHNpLmMg
fCAzNiArKysrKysrKysrKysrKy0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDIwIGluc2Vy
dGlvbnMoKyksIDE2IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaWNsX2RzaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pY2xf
ZHNpLmMKaW5kZXggNTE0OWEyOGE4NzRiLi40NjA3NTk5MTM3MDggMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaWNsX2RzaS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaWNsX2RzaS5jCkBAIC02ODIsMjIgKzY4MiwyNiBAQCBnZW4xMV9kc2lfY29u
ZmlndXJlX3RyYW5zY29kZXIoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCiAKIAkJLyog
c2VsZWN0IHBpeGVsIGZvcm1hdCAqLwogCQl0bXAgJj0gflBJWF9GTVRfTUFTSzsKLQkJc3dpdGNo
IChpbnRlbF9kc2ktPnBpeGVsX2Zvcm1hdCkgewotCQlkZWZhdWx0OgotCQkJTUlTU0lOR19DQVNF
KGludGVsX2RzaS0+cGl4ZWxfZm9ybWF0KTsKLQkJCS8qIGZhbGx0aHJvdWdoICovCi0JCWNhc2Ug
TUlQSV9EU0lfRk1UX1JHQjU2NToKLQkJCXRtcCB8PSBQSVhfRk1UX1JHQjU2NTsKLQkJCWJyZWFr
OwotCQljYXNlIE1JUElfRFNJX0ZNVF9SR0I2NjZfUEFDS0VEOgotCQkJdG1wIHw9IFBJWF9GTVRf
UkdCNjY2X1BBQ0tFRDsKLQkJCWJyZWFrOwotCQljYXNlIE1JUElfRFNJX0ZNVF9SR0I2NjY6Ci0J
CQl0bXAgfD0gUElYX0ZNVF9SR0I2NjZfTE9PU0U7Ci0JCQlicmVhazsKLQkJY2FzZSBNSVBJX0RT
SV9GTVRfUkdCODg4OgotCQkJdG1wIHw9IFBJWF9GTVRfUkdCODg4OwotCQkJYnJlYWs7CisJCWlm
IChwaXBlX2NvbmZpZy0+ZHNjLmNvbXByZXNzaW9uX2VuYWJsZSkgeworCQkJdG1wIHw9IFBJWF9G
TVRfQ09NUFJFU1NFRDsKKwkJfSBlbHNlIHsKKwkJCXN3aXRjaCAoaW50ZWxfZHNpLT5waXhlbF9m
b3JtYXQpIHsKKwkJCWRlZmF1bHQ6CisJCQkJTUlTU0lOR19DQVNFKGludGVsX2RzaS0+cGl4ZWxf
Zm9ybWF0KTsKKwkJCQkvKiBmYWxsdGhyb3VnaCAqLworCQkJY2FzZSBNSVBJX0RTSV9GTVRfUkdC
NTY1OgorCQkJCXRtcCB8PSBQSVhfRk1UX1JHQjU2NTsKKwkJCQlicmVhazsKKwkJCWNhc2UgTUlQ
SV9EU0lfRk1UX1JHQjY2Nl9QQUNLRUQ6CisJCQkJdG1wIHw9IFBJWF9GTVRfUkdCNjY2X1BBQ0tF
RDsKKwkJCQlicmVhazsKKwkJCWNhc2UgTUlQSV9EU0lfRk1UX1JHQjY2NjoKKwkJCQl0bXAgfD0g
UElYX0ZNVF9SR0I2NjZfTE9PU0U7CisJCQkJYnJlYWs7CisJCQljYXNlIE1JUElfRFNJX0ZNVF9S
R0I4ODg6CisJCQkJdG1wIHw9IFBJWF9GTVRfUkdCODg4OworCQkJCWJyZWFrOworCQkJfQogCQl9
CiAKIAkJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTIpIHsKLS0gCjIuMjAuMQoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
