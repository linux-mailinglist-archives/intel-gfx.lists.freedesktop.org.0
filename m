Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0D1F6C0C8
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jul 2019 20:06:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BAA9D6E237;
	Wed, 17 Jul 2019 18:06:46 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91BD76E237
 for <Intel-gfx@lists.freedesktop.org>; Wed, 17 Jul 2019 18:06:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jul 2019 11:06:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,275,1559545200"; d="scan'208";a="343110848"
Received: from esulliva-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.251.94.109])
 by orsmga005.jf.intel.com with ESMTP; 17 Jul 2019 11:06:33 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Wed, 17 Jul 2019 19:06:23 +0100
Message-Id: <20190717180624.20354-6-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190717180624.20354-1-tvrtko.ursulin@linux.intel.com>
References: <20190717180624.20354-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/6] drm/i915/icl: Verify engine workarounds in
 GEN8_L3SQCREG4
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCkhhdmluZyBm
aXhlZCB0aGUgaW5jb3JlY3QgTUNSIHByb2dyYW1taW5nIGluIGFuIGVhcmxpZXIgcGF0Y2gsIHdl
IGNhbiBub3cKc3RvcCBpZ25vcmluZyByZWFkIGJhY2sgb2YgR0VOOF9MM1NRQ1JFRzQgZHVyaW5n
IGVuZ2luZSB3b3JrYXJvdW5kCnZlcmlmaWNhdGlvbi4KClNpZ25lZC1vZmYtYnk6IFR2cnRrbyBV
cnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+ClJldmlld2VkLWJ5OiBDaHJpcyBXaWxz
b24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF93b3JrYXJvdW5kcy5jIHwgMjcgKysrKystLS0tLS0tLS0tLS0tLS0tCiAxIGZpbGUg
Y2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCAyMSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYwppbmRleCA2MTlkNDJhMmI4MWIuLmZmNTMy
ZmY1ZDU3NCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fy
b3VuZHMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5j
CkBAIC0xNzcsMTkgKzE3Nyw2IEBAIHdhX3dyaXRlX29yKHN0cnVjdCBpOTE1X3dhX2xpc3QgKndh
bCwgaTkxNV9yZWdfdCByZWcsIHUzMiB2YWwpCiAJd2Ffd3JpdGVfbWFza2VkX29yKHdhbCwgcmVn
LCB2YWwsIHZhbCk7CiB9CiAKLXN0YXRpYyB2b2lkCi1pZ25vcmVfd2Ffd3JpdGVfb3Ioc3RydWN0
IGk5MTVfd2FfbGlzdCAqd2FsLCBpOTE1X3JlZ190IHJlZywgdTMyIG1hc2ssIHUzMiB2YWwpCi17
Ci0Jc3RydWN0IGk5MTVfd2Egd2EgPSB7Ci0JCS5yZWcgID0gcmVnLAotCQkubWFzayA9IG1hc2ss
Ci0JCS52YWwgID0gdmFsLAotCQkvKiBCb25rZXJzIEhXLCBza2lwIHZlcmlmeWluZyAqLwotCX07
Ci0KLQlfd2FfYWRkKHdhbCwgJndhKTsKLX0KLQogI2RlZmluZSBXQV9TRVRfQklUX01BU0tFRChh
ZGRyLCBtYXNrKSBcCiAJd2Ffd3JpdGVfbWFza2VkX29yKHdhbCwgKGFkZHIpLCAobWFzayksIF9N
QVNLRURfQklUX0VOQUJMRShtYXNrKSkKIApAQCAtMTI2MCwxMCArMTI0Nyw5IEBAIHJjc19lbmdp
bmVfd2FfaW5pdChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUsIHN0cnVjdCBpOTE1X3dh
X2xpc3QgKndhbCkKIAkJCSAgICAgXzNEX0NISUNLRU4zX0FBX0xJTkVfUVVBTElUWV9GSVhfRU5B
QkxFKTsKIAogCQkvKiBXYVBpcGVsaW5lRmx1c2hDb2hlcmVudExpbmVzOmljbCAqLwotCQlpZ25v
cmVfd2Ffd3JpdGVfb3Iod2FsLAotCQkJCSAgIEdFTjhfTDNTUUNSRUc0LAotCQkJCSAgIEdFTjhf
TFFTQ19GTFVTSF9DT0hFUkVOVF9MSU5FUywKLQkJCQkgICBHRU44X0xRU0NfRkxVU0hfQ09IRVJF
TlRfTElORVMpOworCQl3YV93cml0ZV9vcih3YWwsCisJCQkgICAgR0VOOF9MM1NRQ1JFRzQsCisJ
CQkgICAgR0VOOF9MUVNDX0ZMVVNIX0NPSEVSRU5UX0xJTkVTKTsKIAogCQkvKgogCQkgKiBXYV8x
NDA1NTQzNjIyOmljbApAQCAtMTI5MCwxMCArMTI3Niw5IEBAIHJjc19lbmdpbmVfd2FfaW5pdChz
dHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUsIHN0cnVjdCBpOTE1X3dhX2xpc3QgKndhbCkK
IAkJICogV2FfMTQwNTczMzIxNjppY2wKIAkJICogRm9ybWVybHkga25vd24gYXMgV2FEaXNhYmxl
Q2xlYW5FdmljdHMKIAkJICovCi0JCWlnbm9yZV93YV93cml0ZV9vcih3YWwsCi0JCQkJICAgR0VO
OF9MM1NRQ1JFRzQsCi0JCQkJICAgR0VOMTFfTFFTQ19DTEVBTl9FVklDVF9ESVNBQkxFLAotCQkJ
CSAgIEdFTjExX0xRU0NfQ0xFQU5fRVZJQ1RfRElTQUJMRSk7CisJCXdhX3dyaXRlX29yKHdhbCwK
KwkJCSAgICBHRU44X0wzU1FDUkVHNCwKKwkJCSAgICBHRU4xMV9MUVNDX0NMRUFOX0VWSUNUX0RJ
U0FCTEUpOwogCiAJCS8qIFdhRm9yd2FyZFByb2dyZXNzU29mdFJlc2V0OmljbCAqLwogCQl3YV93
cml0ZV9vcih3YWwsCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
