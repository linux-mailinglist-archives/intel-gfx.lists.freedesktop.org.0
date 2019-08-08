Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 266CD8635C
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Aug 2019 15:44:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F6076E83E;
	Thu,  8 Aug 2019 13:44:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 283C66E83B
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Aug 2019 13:44:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Aug 2019 06:38:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,361,1559545200"; d="scan'208";a="193158153"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 08 Aug 2019 06:38:54 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Aug 2019 16:42:45 +0300
Message-Id: <2276d0401a52389fe3aafe7e62b07a198353045e.1565271681.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1565271681.git.jani.nikula@intel.com>
References: <cover.1565271681.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 06/10] drm/i915: extract i915_sysfs.h from
 i915_drv.h
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

SXQgdXNlZCB0byBiZSBoYW5keSB0aGF0IHdlIG9ubHkgaGFkIGEgY291cGxlIG9mIGhlYWRlcnMs
IGJ1dCBvdmVyIHRpbWUKaTkxNV9kcnYuaCBoYXMgYmVjb21lIHVud2llbGR5LiBFeHRyYWN0IGRl
Y2xhcmF0aW9ucyB0byBhIHNlcGFyYXRlCmhlYWRlciBmaWxlIGNvcnJlc3BvbmRpbmcgdG8gdGhl
IGltcGxlbWVudGF0aW9uIG1vZHVsZSwgY2xhcmlmeWluZyB0aGUKbW9kdWxhcml0eSBvZiB0aGUg
ZHJpdmVyLgoKRW5zdXJlIHRoZSBuZXcgaGVhZGVyIGlzIHNlbGYtY29udGFpbmVkLCBhbmQgZG8g
c28gd2l0aCBtaW5pbWFsIGZ1cnRoZXIKaW5jbHVkZXMsIHVzaW5nIGZvcndhcmQgZGVjbGFyYXRp
b25zIGFzIG5lZWRlZC4gSW5jbHVkZSB0aGUgbmV3IGhlYWRlcgpvbmx5IHdoZXJlIG5lZWRlZCwg
YW5kIHNvcnQgdGhlIG1vZGlmaWVkIGluY2x1ZGUgZGlyZWN0aXZlcyB3aGlsZSBhdCBpdAphbmQg
YXMgbmVlZGVkLgoKTm8gZnVuY3Rpb25hbCBjaGFuZ2VzLgoKU2lnbmVkLW9mZi1ieTogSmFuaSBO
aWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2Rydi5jICAgfCAgMSArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oICAgfCAg
NCAtLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3N5c2ZzLmMgfCAgMSArCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3N5c2ZzLmggfCAxNCArKysrKysrKysrKysrKwogNCBmaWxlcyBj
aGFuZ2VkLCAxNiBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQogY3JlYXRlIG1vZGUgMTAw
NjQ0IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfc3lzZnMuaAoKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Ry
di5jCmluZGV4IGMwZmVlNzQ0NmNlMC4uNjYyMWRhNGY0ZjE4IDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
ZHJ2LmMKQEAgLTcwLDYgKzcwLDcgQEAKICNpbmNsdWRlICJpOTE1X2lycS5oIgogI2luY2x1ZGUg
Imk5MTVfcGVyZi5oIgogI2luY2x1ZGUgImk5MTVfcXVlcnkuaCIKKyNpbmNsdWRlICJpOTE1X3N5
c2ZzLmgiCiAjaW5jbHVkZSAiaTkxNV90cmFjZS5oIgogI2luY2x1ZGUgImk5MTVfdmdwdS5oIgog
I2luY2x1ZGUgImludGVsX2Nzci5oIgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9kcnYuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKaW5kZXggMzJmZWI1
ZDY0ODU5Li5iOWY2YzQ0M2VmN2MgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZHJ2LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaApAQCAtMjUwMiwx
MCArMjUwMiw2IEBAIGludCBpbnRlbF9lbmdpbmVfY21kX3BhcnNlcihzdHJ1Y3QgaW50ZWxfZW5n
aW5lX2NzICplbmdpbmUsCiBpbnQgaTkxNV9zYXZlX3N0YXRlKHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdik7CiBpbnQgaTkxNV9yZXN0b3JlX3N0YXRlKHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdik7CiAKLS8qIGk5MTVfc3lzZnMuYyAqLwotdm9pZCBpOTE1X3NldHVw
X3N5c2ZzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdik7Ci12b2lkIGk5MTVfdGVh
cmRvd25fc3lzZnMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KTsKLQogLyogaW50
ZWxfZGV2aWNlX2luZm8uYyAqLwogc3RhdGljIGlubGluZSBzdHJ1Y3QgaW50ZWxfZGV2aWNlX2lu
Zm8gKgogbWt3cml0ZV9kZXZpY2VfaW5mbyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYpCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3N5c2ZzLmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3N5c2ZzLmMKaW5kZXggMDEzYzgwYWE4NDhlLi5kOGEzYjE4
MGMwODQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfc3lzZnMuYworKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3N5c2ZzLmMKQEAgLTMxLDYgKzMxLDcgQEAKICNp
bmNsdWRlIDxsaW51eC9zeXNmcy5oPgogCiAjaW5jbHVkZSAiaTkxNV9kcnYuaCIKKyNpbmNsdWRl
ICJpOTE1X3N5c2ZzLmgiCiAjaW5jbHVkZSAiaW50ZWxfcG0uaCIKICNpbmNsdWRlICJpbnRlbF9z
aWRlYmFuZC5oIgogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3N5c2Zz
LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3N5c2ZzLmgKbmV3IGZpbGUgbW9kZSAxMDA2
NDQKaW5kZXggMDAwMDAwMDAwMDAwLi40MWFmZDQzNjY0MTYKLS0tIC9kZXYvbnVsbAorKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3N5c2ZzLmgKQEAgLTAsMCArMSwxNCBAQAorLyogU1BE
WC1MaWNlbnNlLUlkZW50aWZpZXI6IE1JVCAqLworLyoKKyAqIENvcHlyaWdodCDCqSAyMDE5IElu
dGVsIENvcnBvcmF0aW9uCisgKi8KKworI2lmbmRlZiBfX0k5MTVfU1lTRlNfSF9fCisjZGVmaW5l
IF9fSTkxNV9TWVNGU19IX18KKworc3RydWN0IGRybV9pOTE1X3ByaXZhdGU7CisKK3ZvaWQgaTkx
NV9zZXR1cF9zeXNmcyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSk7Cit2b2lkIGk5MTVf
dGVhcmRvd25fc3lzZnMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpOworCisjZW5kaWYg
LyogX19JOTE1X1NZU0ZTX0hfXyAqLwotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
