Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 944E53D9B6C
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jul 2021 04:02:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B44CF6EAAA;
	Thu, 29 Jul 2021 02:02:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15FB56E415;
 Thu, 29 Jul 2021 02:02:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10059"; a="298370388"
X-IronPort-AV: E=Sophos;i="5.84,276,1620716400"; d="scan'208";a="298370388"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2021 19:02:26 -0700
X-IronPort-AV: E=Sophos;i="5.84,276,1620716400"; d="scan'208";a="417467967"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2021 19:02:25 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 28 Jul 2021 19:00:52 -0700
Message-Id: <20210729020106.18346-2-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210729020106.18346-1-daniele.ceraolospurio@intel.com>
References: <20210729020106.18346-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v6 01/15] drm/i915/pxp: Define PXP component
 interface
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
Cc: dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhpcyB3aWxsIGJlIHVzZWQgZm9yIGNvbW11bmljYXRpb24gYmV0d2VlbiB0aGUgaTkxNSBkcml2
ZXIgYW5kIHRoZSBtZWkKb25lLiBEZWZpbmluZyBpdCBpbiBhIHN0YW5kLWFsb25lIHBhdGNoIHRv
IGF2b2lkIGNpcmN1YWxyIGRlcGVuZGVkZW5jaWVzCmJldHdlZW4gdGhlIHBhdGNoZXMgbW9kaWZ5
aW5nIHRoZSAyIGRyaXZlcnMuCgpTcGxpdCBvdXQgZnJvbSBhbiBvcmlnaW5hbCBwYXRjaCBmcm9t
ICBIdWFuZywgU2VhbiBaCgp2MjogcmVuYW1lIHRoZSBjb21wb25lbnQgc3RydWN0IChSb2RyaWdv
KQoKU2lnbmVkLW9mZi1ieTogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xv
c3B1cmlvQGludGVsLmNvbT4KQ2M6IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGludGVsLmNv
bT4KUmV2aWV3ZWQtYnk6IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4KLS0t
CiBpbmNsdWRlL2RybS9pOTE1X2NvbXBvbmVudC5oICAgICAgICAgfCAgMSArCiBpbmNsdWRlL2Ry
bS9pOTE1X3B4cF90ZWVfaW50ZXJmYWNlLmggfCA0NSArKysrKysrKysrKysrKysrKysrKysrKysr
KysrCiAyIGZpbGVzIGNoYW5nZWQsIDQ2IGluc2VydGlvbnMoKykKIGNyZWF0ZSBtb2RlIDEwMDY0
NCBpbmNsdWRlL2RybS9pOTE1X3B4cF90ZWVfaW50ZXJmYWNlLmgKCmRpZmYgLS1naXQgYS9pbmNs
dWRlL2RybS9pOTE1X2NvbXBvbmVudC5oIGIvaW5jbHVkZS9kcm0vaTkxNV9jb21wb25lbnQuaApp
bmRleCA1NWMzYjEyMzU4MWIuLmMxZTJhNDNkMmQxZSAxMDA2NDQKLS0tIGEvaW5jbHVkZS9kcm0v
aTkxNV9jb21wb25lbnQuaAorKysgYi9pbmNsdWRlL2RybS9pOTE1X2NvbXBvbmVudC5oCkBAIC0y
OSw2ICsyOSw3IEBACiBlbnVtIGk5MTVfY29tcG9uZW50X3R5cGUgewogCUk5MTVfQ09NUE9ORU5U
X0FVRElPID0gMSwKIAlJOTE1X0NPTVBPTkVOVF9IRENQLAorCUk5MTVfQ09NUE9ORU5UX1BYUAog
fTsKIAogLyogTUFYX1BPUlQgaXMgdGhlIG51bWJlciBvZiBwb3J0CmRpZmYgLS1naXQgYS9pbmNs
dWRlL2RybS9pOTE1X3B4cF90ZWVfaW50ZXJmYWNlLmggYi9pbmNsdWRlL2RybS9pOTE1X3B4cF90
ZWVfaW50ZXJmYWNlLmgKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwMDAwMDAwLi4w
OWI4Mzg5MTUyYWYKLS0tIC9kZXYvbnVsbAorKysgYi9pbmNsdWRlL2RybS9pOTE1X3B4cF90ZWVf
aW50ZXJmYWNlLmgKQEAgLTAsMCArMSw0NSBAQAorLyogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6
IE1JVCAqLworLyoKKyAqIENvcHlyaWdodCDCqSAyMDIwIEludGVsIENvcnBvcmF0aW9uCisgKgor
ICogQXV0aG9yczoKKyAqIFZpdGFseSBMdWJhcnQgPHZpdGFseS5sdWJhcnRAaW50ZWwuY29tPgor
ICovCisKKyNpZm5kZWYgX0k5MTVfUFhQX1RFRV9JTlRFUkZBQ0VfSF8KKyNkZWZpbmUgX0k5MTVf
UFhQX1RFRV9JTlRFUkZBQ0VfSF8KKworI2luY2x1ZGUgPGxpbnV4L211dGV4Lmg+CisjaW5jbHVk
ZSA8bGludXgvZGV2aWNlLmg+CisKKy8qKgorICogc3RydWN0IGk5MTVfcHhwX2NvbXBvbmVudF9v
cHMgLSBvcHMgZm9yIFBYUCBzZXJ2aWNlcy4KKyAqIEBvd25lcjogTW9kdWxlIHByb3ZpZGluZyB0
aGUgb3BzCisgKiBAc2VuZDogc2VuZHMgZGF0YSB0byBQWFAKKyAqIEByZWNlaXZlOiByZWNlaXZl
cyBkYXRhIGZyb20gUFhQCisgKi8KK3N0cnVjdCBpOTE1X3B4cF9jb21wb25lbnRfb3BzIHsKKwkv
KioKKwkgKiBAb3duZXI6IG93bmVyIG9mIHRoZSBtb2R1bGUgcHJvdmRpbmcgdGhlIG9wcworCSAq
LworCXN0cnVjdCBtb2R1bGUgKm93bmVyOworCisJaW50ICgqc2VuZCkoc3RydWN0IGRldmljZSAq
ZGV2LCBjb25zdCB2b2lkICptZXNzYWdlLCBzaXplX3Qgc2l6ZSk7CisJaW50ICgqcmVjdikoc3Ry
dWN0IGRldmljZSAqZGV2LCB2b2lkICpidWZmZXIsIHNpemVfdCBzaXplKTsKK307CisKKy8qKgor
ICogc3RydWN0IGk5MTVfcHhwX2NvbXBvbmVudCAtIFVzZWQgZm9yIGNvbW11bmljYXRpb24gYmV0
d2VlbiBpOTE1IGFuZCBURUUKKyAqIGRyaXZlcnMgZm9yIHRoZSBQWFAgc2VydmljZXMKKyAqIEB0
ZWVfZGV2OiBkZXZpY2UgdGhhdCBwcm92aWRlIHRoZSBQWFAgc2VydmljZSBmcm9tIFRFRSBCdXMu
CisgKiBAcHhwX29wczogT3BzIGltcGxlbWVudGVkIGJ5IFRFRSBkcml2ZXIsIHVzZWQgYnkgaTkx
NSBkcml2ZXIuCisgKi8KK3N0cnVjdCBpOTE1X3B4cF9jb21wb25lbnQgeworCXN0cnVjdCBkZXZp
Y2UgKnRlZV9kZXY7CisJY29uc3Qgc3RydWN0IGk5MTVfcHhwX2NvbXBvbmVudF9vcHMgKm9wczsK
KworCS8qIFRvIHByb3RlY3QgdGhlIGFib3ZlIG1lbWJlcnMuICovCisJc3RydWN0IG11dGV4IG11
dGV4OworfTsKKworI2VuZGlmIC8qIF9JOTE1X1RFRV9QWFBfSU5URVJGQUNFX0hfICovCi0tIAoy
LjMyLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
