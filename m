Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3348DA3723
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Aug 2019 14:53:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33D176E31D;
	Fri, 30 Aug 2019 12:53:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D23556E31D
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Aug 2019 12:53:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Aug 2019 05:53:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,447,1559545200"; d="scan'208";a="198029795"
Received: from amanna.iind.intel.com ([10.223.74.216])
 by fmsmga001.fm.intel.com with ESMTP; 30 Aug 2019 05:53:16 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 30 Aug 2019 18:15:26 +0530
Message-Id: <20190830124533.26573-4-animesh.manna@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190830124533.26573-1-animesh.manna@intel.com>
References: <20190830124533.26573-1-animesh.manna@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 03/10] drm/i915/dsb: single register write
 function for DSB.
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RFNCIHN1cHBvcnQgc2luZ2xlIHJlZ2lzdGVyIHdyaXRlIHRocm91Z2ggb3Bjb2RlIDB4MS4gR2Vu
ZXJpYwphcGkgY3JlYXRlZCB3aGljaCBhY2N1bXVsYXRlIGFsbCBzaW5nbGUgcmVnaXN0ZXIgd3Jp
dGUgaW4gYSBiYXRjaApidWZmZXIgYW5kIG9uY2UgRFNCIGlzIHRyaWdnZXJlZCwgaXQgd2lsbCBw
cm9ncmFtIGFsbCB0aGUgcmVnaXN0ZXJzCmF0IHRoZSBzYW1lIHRpbWUuCgp2MTogSW5pdGlhbCB2
ZXJzaW9uLgp2MjogVW51c2VkIG1hY3JvIHJlbW92ZWQgYW5kIGNvc21ldGljIGNoYW5nZXMgZG9u
ZS4gKFNoYXNoYW5rKQoKQ2M6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+CkNj
OiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEFu
aW1lc2ggTWFubmEgPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMgfCAyOSArKysrKysrKysrKysrKysrKysrKysrKysK
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmggfCAgOSArKysrKysrKwog
MiBmaWxlcyBjaGFuZ2VkLCAzOCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHNiLmMKaW5kZXggMDA3ZWYxMzQ4MWQ1Li41Y2RlNjQxMmE4OWIgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYwpAQCAtOSw2ICs5LDEzIEBACiAK
ICNkZWZpbmUgRFNCX0JVRl9TSVpFICAgICgyICogUEFHRV9TSVpFKQogCisvKiBEU0Igb3Bjb2Rl
cy4gKi8KKyNkZWZpbmUgRFNCX09QQ09ERV9TSElGVAkJMjQKKyNkZWZpbmUgRFNCX09QQ09ERV9N
TUlPX1dSSVRFCQkweDEKKyNkZWZpbmUgRFNCX09QQ09ERV9JTkRFWEVEX1dSSVRFCTB4OQorI2Rl
ZmluZSBEU0JfQllURV9FTgkJCTB4RgorI2RlZmluZSBEU0JfQllURV9FTl9TSElGVAkJMjAKKwog
c3RydWN0IGludGVsX2RzYiAqCiBpbnRlbF9kc2JfZ2V0KHN0cnVjdCBpbnRlbF9jcnRjICpjcnRj
KQogewpAQCAtODEsMyArODgsMjUgQEAgdm9pZCBpbnRlbF9kc2JfcHV0KHN0cnVjdCBpbnRlbF9k
c2IgKmRzYikKIAkJbXV0ZXhfdW5sb2NrKCZpOTE1LT5kcm0uc3RydWN0X211dGV4KTsKIAl9CiB9
CisKK3ZvaWQgaW50ZWxfZHNiX3JlZ193cml0ZShzdHJ1Y3QgaW50ZWxfZHNiICpkc2IsIGk5MTVf
cmVnX3QgcmVnLCB1MzIgdmFsKQoreworCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjID0gZHNiLT5j
cnRjOworCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoY3J0Yy0+
YmFzZS5kZXYpOworCXUzMiAqYnVmID0gZHNiLT5jbWRfYnVmOworCisJaWYgKCFidWYpIHsKKwkJ
STkxNV9XUklURShyZWcsIHZhbCk7CisJCXJldHVybjsKKwl9CisKKwlpZiAoV0FSTl9PTihkc2It
PmZyZWVfcG9zID49IERTQl9CVUZfU0laRSkpIHsKKwkJRFJNX0RFQlVHX0tNUygiRFNCIGJ1ZmZl
ciBvdmVyZmxvdy5cbiIpOworCQlyZXR1cm47CisJfQorCisJYnVmW2RzYi0+ZnJlZV9wb3MrK10g
PSB2YWw7CisJYnVmW2RzYi0+ZnJlZV9wb3MrK10gPSAoRFNCX09QQ09ERV9NTUlPX1dSSVRFICA8
PCBEU0JfT1BDT0RFX1NISUZUKSB8CisJCQkgICAgICAgKERTQl9CWVRFX0VOIDw8IERTQl9CWVRF
X0VOX1NISUZUKSB8CisJCQkgICAgICAgaTkxNV9tbWlvX3JlZ19vZmZzZXQocmVnKTsKK30KZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmggYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5oCmluZGV4IDRhNDA5MWNhZGMxZS4u
ODhiMmNhMDMxOTE3IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RzYi5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmgK
QEAgLTYsNiArNiw4IEBACiAjaWZuZGVmIF9JTlRFTF9EU0JfSAogI2RlZmluZSBfSU5URUxfRFNC
X0gKIAorI2luY2x1ZGUgImk5MTVfcmVnLmgiCisKIHN0cnVjdCBpbnRlbF9jcnRjOwogc3RydWN0
IGk5MTVfdm1hOwogCkBAIC0yMiwxMCArMjQsMTcgQEAgc3RydWN0IGludGVsX2RzYiB7CiAJZW51
bSBkc2JfaWQgaWQ7CiAJdTMyICpjbWRfYnVmOwogCXN0cnVjdCBpOTE1X3ZtYSAqdm1hOworCisJ
LyoKKwkgKiBmcmVlX3BvcyB3aWxsIHBvaW50IHRoZSBmaXJzdCBmcmVlIGVudHJ5IHBvc2l0aW9u
CisJICogYW5kIGhlbHAgaW4gY2FsY3VsYXRpbmcgdGFpbCBvZiBjb21tYW5kIGJ1ZmZlci4KKwkg
Ki8KKwlpbnQgZnJlZV9wb3M7CiB9OwogCiBzdHJ1Y3QgaW50ZWxfZHNiICoKIGludGVsX2RzYl9n
ZXQoc3RydWN0IGludGVsX2NydGMgKmNydGMpOwogdm9pZCBpbnRlbF9kc2JfcHV0KHN0cnVjdCBp
bnRlbF9kc2IgKmRzYik7Cit2b2lkIGludGVsX2RzYl9yZWdfd3JpdGUoc3RydWN0IGludGVsX2Rz
YiAqZHNiLCBpOTE1X3JlZ190IHJlZywgdTMyIHZhbCk7CiAKICNlbmRpZgotLSAKMi4yMi4wCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
