Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 06EA3328E76
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Mar 2021 20:34:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60C796E88C;
	Mon,  1 Mar 2021 19:34:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECCCD6E88C
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Mar 2021 19:34:35 +0000 (UTC)
IronPort-SDR: zm1B6s5A/fHLY6+ybQUzulBVDoJu5aUPOOKmfphMjHOfyR+H0NeUr6Ocws95wIzD6Y/3Us2FPe
 bxcet8MyPkxA==
X-IronPort-AV: E=McAfee;i="6000,8403,9910"; a="247985772"
X-IronPort-AV: E=Sophos;i="5.81,215,1610438400"; d="scan'208";a="247985772"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2021 11:34:35 -0800
IronPort-SDR: 0VZRJ4wKFZLpijwqOyDpTIlzxtlVvzCkZLErsRlfY9nki1NzJ1r+Hl4zlog8pSZ5fptDxyE2TZ
 6jikk6wLIUwg==
X-IronPort-AV: E=Sophos;i="5.81,215,1610438400"; d="scan'208";a="435483822"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2021 11:34:14 -0800
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  1 Mar 2021 11:31:45 -0800
Message-Id: <20210301193200.1369-2-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210301193200.1369-1-daniele.ceraolospurio@intel.com>
References: <20210301193200.1369-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 01/16] drm/i915/pxp: Define PXP component
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
bT4KLS0tCiBpbmNsdWRlL2RybS9pOTE1X2NvbXBvbmVudC5oICAgICAgICAgfCAgMSArCiBpbmNs
dWRlL2RybS9pOTE1X3B4cF90ZWVfaW50ZXJmYWNlLmggfCA0NSArKysrKysrKysrKysrKysrKysr
KysrKysrKysrCiAyIGZpbGVzIGNoYW5nZWQsIDQ2IGluc2VydGlvbnMoKykKIGNyZWF0ZSBtb2Rl
IDEwMDY0NCBpbmNsdWRlL2RybS9pOTE1X3B4cF90ZWVfaW50ZXJmYWNlLmgKCmRpZmYgLS1naXQg
YS9pbmNsdWRlL2RybS9pOTE1X2NvbXBvbmVudC5oIGIvaW5jbHVkZS9kcm0vaTkxNV9jb21wb25l
bnQuaAppbmRleCA1NWMzYjEyMzU4MWIuLmMxZTJhNDNkMmQxZSAxMDA2NDQKLS0tIGEvaW5jbHVk
ZS9kcm0vaTkxNV9jb21wb25lbnQuaAorKysgYi9pbmNsdWRlL2RybS9pOTE1X2NvbXBvbmVudC5o
CkBAIC0yOSw2ICsyOSw3IEBACiBlbnVtIGk5MTVfY29tcG9uZW50X3R5cGUgewogCUk5MTVfQ09N
UE9ORU5UX0FVRElPID0gMSwKIAlJOTE1X0NPTVBPTkVOVF9IRENQLAorCUk5MTVfQ09NUE9ORU5U
X1BYUAogfTsKIAogLyogTUFYX1BPUlQgaXMgdGhlIG51bWJlciBvZiBwb3J0CmRpZmYgLS1naXQg
YS9pbmNsdWRlL2RybS9pOTE1X3B4cF90ZWVfaW50ZXJmYWNlLmggYi9pbmNsdWRlL2RybS9pOTE1
X3B4cF90ZWVfaW50ZXJmYWNlLmgKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwMDAw
MDAwLi4wOWI4Mzg5MTUyYWYKLS0tIC9kZXYvbnVsbAorKysgYi9pbmNsdWRlL2RybS9pOTE1X3B4
cF90ZWVfaW50ZXJmYWNlLmgKQEAgLTAsMCArMSw0NSBAQAorLyogU1BEWC1MaWNlbnNlLUlkZW50
aWZpZXI6IE1JVCAqLworLyoKKyAqIENvcHlyaWdodCDCqSAyMDIwIEludGVsIENvcnBvcmF0aW9u
CisgKgorICogQXV0aG9yczoKKyAqIFZpdGFseSBMdWJhcnQgPHZpdGFseS5sdWJhcnRAaW50ZWwu
Y29tPgorICovCisKKyNpZm5kZWYgX0k5MTVfUFhQX1RFRV9JTlRFUkZBQ0VfSF8KKyNkZWZpbmUg
X0k5MTVfUFhQX1RFRV9JTlRFUkZBQ0VfSF8KKworI2luY2x1ZGUgPGxpbnV4L211dGV4Lmg+Cisj
aW5jbHVkZSA8bGludXgvZGV2aWNlLmg+CisKKy8qKgorICogc3RydWN0IGk5MTVfcHhwX2NvbXBv
bmVudF9vcHMgLSBvcHMgZm9yIFBYUCBzZXJ2aWNlcy4KKyAqIEBvd25lcjogTW9kdWxlIHByb3Zp
ZGluZyB0aGUgb3BzCisgKiBAc2VuZDogc2VuZHMgZGF0YSB0byBQWFAKKyAqIEByZWNlaXZlOiBy
ZWNlaXZlcyBkYXRhIGZyb20gUFhQCisgKi8KK3N0cnVjdCBpOTE1X3B4cF9jb21wb25lbnRfb3Bz
IHsKKwkvKioKKwkgKiBAb3duZXI6IG93bmVyIG9mIHRoZSBtb2R1bGUgcHJvdmRpbmcgdGhlIG9w
cworCSAqLworCXN0cnVjdCBtb2R1bGUgKm93bmVyOworCisJaW50ICgqc2VuZCkoc3RydWN0IGRl
dmljZSAqZGV2LCBjb25zdCB2b2lkICptZXNzYWdlLCBzaXplX3Qgc2l6ZSk7CisJaW50ICgqcmVj
dikoc3RydWN0IGRldmljZSAqZGV2LCB2b2lkICpidWZmZXIsIHNpemVfdCBzaXplKTsKK307CisK
Ky8qKgorICogc3RydWN0IGk5MTVfcHhwX2NvbXBvbmVudCAtIFVzZWQgZm9yIGNvbW11bmljYXRp
b24gYmV0d2VlbiBpOTE1IGFuZCBURUUKKyAqIGRyaXZlcnMgZm9yIHRoZSBQWFAgc2VydmljZXMK
KyAqIEB0ZWVfZGV2OiBkZXZpY2UgdGhhdCBwcm92aWRlIHRoZSBQWFAgc2VydmljZSBmcm9tIFRF
RSBCdXMuCisgKiBAcHhwX29wczogT3BzIGltcGxlbWVudGVkIGJ5IFRFRSBkcml2ZXIsIHVzZWQg
YnkgaTkxNSBkcml2ZXIuCisgKi8KK3N0cnVjdCBpOTE1X3B4cF9jb21wb25lbnQgeworCXN0cnVj
dCBkZXZpY2UgKnRlZV9kZXY7CisJY29uc3Qgc3RydWN0IGk5MTVfcHhwX2NvbXBvbmVudF9vcHMg
Km9wczsKKworCS8qIFRvIHByb3RlY3QgdGhlIGFib3ZlIG1lbWJlcnMuICovCisJc3RydWN0IG11
dGV4IG11dGV4OworfTsKKworI2VuZGlmIC8qIF9JOTE1X1RFRV9QWFBfSU5URVJGQUNFX0hfICov
Ci0tIAoyLjI5LjIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eAo=
