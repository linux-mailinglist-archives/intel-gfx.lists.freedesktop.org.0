Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CDA8510ECCD
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Dec 2019 17:02:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 277476E227;
	Mon,  2 Dec 2019 16:02:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0A5D6E227
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Dec 2019 16:02:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Dec 2019 08:02:00 -0800
X-IronPort-AV: E=Sophos;i="5.69,268,1571727600"; d="scan'208";a="208171416"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Dec 2019 08:01:59 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  2 Dec 2019 18:00:58 +0200
Message-Id: <3b3d80095643b5aab517e42324523303a50e0080.1575302334.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1575302334.git.jani.nikula@intel.com>
References: <cover.1575302334.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 10/10] drm/i915: remove I915_READ_FW() and
 I915_WRITE_FW() macros
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

V2UndmUgdHJhbnNpdGlvbmVkIGFsbCB1c2VycyB0byBlaXRoZXIgc3BlY2lmaWMgaW50ZWwgZGUg
dW5jb3JlCmZ1bmN0aW9ucyBvciB0aGUgbW9yZSBnZW5lcmljIGludGVsIHVuY29yZSBmdW5jdGlv
bnMuIFJlbW92ZSB0aGUgbWFjcm9zLgoKU2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1bGEgPGphbmku
bmlrdWxhQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oIHwg
MjkgLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAyOSBkZWxl
dGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAppbmRleCA5MTUwZDE2MjM1ZWEuLjJkMTlj
NTc3YzAyZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAorKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCkBAIC0xOTc4LDM1ICsxOTc4LDYgQEAg
aW50IGk5MTVfcmVnX3JlYWRfaW9jdGwoc3RydWN0IGRybV9kZXZpY2UgKmRldiwgdm9pZCAqZGF0
YSwKIAogI2RlZmluZSBQT1NUSU5HX1JFQUQocmVnX18pCV9fSTkxNV9SRUdfT1AocG9zdGluZ19y
ZWFkLCBkZXZfcHJpdiwgKHJlZ19fKSkKIAotLyogVGhlc2UgYXJlIHVudHJhY2VkIG1taW8tYWNj
ZXNzb3JzIHRoYXQgYXJlIG9ubHkgdmFsaWQgdG8gYmUgdXNlZCBpbnNpZGUKLSAqIGNyaXRpY2Fs
IHNlY3Rpb25zLCBzdWNoIGFzIGluc2lkZSBJUlEgaGFuZGxlcnMsIHdoZXJlIGZvcmNld2FrZSBp
cyBleHBsaWNpdGx5Ci0gKiBjb250cm9sbGVkLgotICoKLSAqIFRoaW5rIHR3aWNlLCBhbmQgdGhp
bmsgYWdhaW4sIGJlZm9yZSB1c2luZyB0aGVzZS4KLSAqCi0gKiBBcyBhbiBleGFtcGxlLCB0aGVz
ZSBhY2Nlc3NvcnMgY2FuIHBvc3NpYmx5IGJlIHVzZWQgYmV0d2VlbjoKLSAqCi0gKiBzcGluX2xv
Y2tfaXJxKCZkZXZfcHJpdi0+dW5jb3JlLmxvY2spOwotICogaW50ZWxfdW5jb3JlX2ZvcmNld2Fr
ZV9nZXRfX2xvY2tlZCgpOwotICoKLSAqIGFuZAotICoKLSAqIGludGVsX3VuY29yZV9mb3JjZXdh
a2VfcHV0X19sb2NrZWQoKTsKLSAqIHNwaW5fdW5sb2NrX2lycSgmZGV2X3ByaXYtPnVuY29yZS5s
b2NrKTsKLSAqCi0gKgotICogTm90ZTogc29tZSByZWdpc3RlcnMgbWF5IG5vdCBuZWVkIGZvcmNl
d2FrZSBoZWxkLCBzbwotICogaW50ZWxfdW5jb3JlX2ZvcmNld2FrZV97Z2V0LHB1dH0gY2FuIGJl
IG9taXR0ZWQsIHNlZQotICogaW50ZWxfdW5jb3JlX2ZvcmNld2FrZV9mb3JfcmVnKCkuCi0gKgot
ICogQ2VydGFpbiBhcmNoaXRlY3R1cmVzIHdpbGwgZGllIGlmIHRoZSBzYW1lIGNhY2hlbGluZSBp
cyBjb25jdXJyZW50bHkgYWNjZXNzZWQKLSAqIGJ5IGRpZmZlcmVudCBjbGllbnRzIChlLmcuIG9u
IEl2eWJyaWRnZSkuIEFjY2VzcyB0byByZWdpc3RlcnMgc2hvdWxkCi0gKiB0aGVyZWZvcmUgZ2Vu
ZXJhbGx5IGJlIHNlcmlhbGlzZWQsIGJ5IGVpdGhlciB0aGUgZGV2X3ByaXYtPnVuY29yZS5sb2Nr
IG9yCi0gKiBhIG1vcmUgbG9jYWxpc2VkIGxvY2sgZ3VhcmRpbmcgYWxsIGFjY2VzcyB0byB0aGF0
IGJhbmsgb2YgcmVnaXN0ZXJzLgotICovCi0jZGVmaW5lIEk5MTVfUkVBRF9GVyhyZWdfXykgX19J
OTE1X1JFR19PUChyZWFkX2Z3LCBkZXZfcHJpdiwgKHJlZ19fKSkKLSNkZWZpbmUgSTkxNV9XUklU
RV9GVyhyZWdfXywgdmFsX18pIF9fSTkxNV9SRUdfT1Aod3JpdGVfZncsIGRldl9wcml2LCAocmVn
X18pLCAodmFsX18pKQotCiAvKiBpOTE1X21tLmMgKi8KIGludCByZW1hcF9pb19tYXBwaW5nKHN0
cnVjdCB2bV9hcmVhX3N0cnVjdCAqdm1hLAogCQkgICAgIHVuc2lnbmVkIGxvbmcgYWRkciwgdW5z
aWduZWQgbG9uZyBwZm4sIHVuc2lnbmVkIGxvbmcgc2l6ZSwKLS0gCjIuMjAuMQoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
