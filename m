Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 94A7B97266
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2019 08:40:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79C5C6E912;
	Wed, 21 Aug 2019 06:40:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93A906E90E
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Aug 2019 06:40:26 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Aug 2019 23:40:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,411,1559545200"; d="scan'208";a="195935807"
Received: from amanna.iind.intel.com ([10.223.74.216])
 by fmsmga001.fm.intel.com with ESMTP; 20 Aug 2019 23:40:24 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Aug 2019 12:02:31 +0530
Message-Id: <20190821063236.19705-12-animesh.manna@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190821063236.19705-1-animesh.manna@intel.com>
References: <20190821063236.19705-1-animesh.manna@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 11/15] drm/i915/dsb: function to destroy DSB
 context.
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

RnJlZWQgdGhlIGdlbSBvYmplY3QgYWZ0ZXIgY29tcGxldGlvbiBvZiBkc2Igd29ya2xvYWQuCgpD
YzogU2hhc2hhbmsgU2hhcm1hIDxzaGFzaGFuay5zaGFybWFAaW50ZWwuY29tPgpDYzogSmFuaSBO
aWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KQ2M6IFJvZHJpZ28gVml2aSA8cm9kcmlnby52
aXZpQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogQW5pbWVzaCBNYW5uYSA8YW5pbWVzaC5tYW5u
YUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2Iu
YyB8IDIzICsrKysrKysrKysrKysrKysrKysrKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RzYi5oIHwgIDEgKwogMiBmaWxlcyBjaGFuZ2VkLCAyNCBpbnNlcnRpb25zKCsp
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMKaW5kZXggN2UwYTliMzdm
NzAyLi5iZmIxMzg5NTJmNjEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHNiLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
c2IuYwpAQCAtMjM0LDMgKzIzNCwyNiBAQCB2b2lkIGludGVsX2RzYl9jb21taXQoc3RydWN0IGlu
dGVsX2RzYiAqZHNiKQogCWRzYi0+ZnJlZV9wb3MgPSAwOwogCWludGVsX2RzYl9kaXNhYmxlX2Vu
Z2luZShkc2IpOwogfQorCit2b2lkIGludGVsX2RzYl9wdXQoc3RydWN0IGludGVsX2RzYiAqZHNi
KQoreworCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjOworCXN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICppOTE1OworCXN0cnVjdCBpOTE1X3ZtYSAqdm1hOworCisJaWYgKCFkc2IpCisJCXJldHVybjsK
KworCWNydGMgPSBkc2ItPmNydGM7CisJaTkxNSA9IHRvX2k5MTUoY3J0Yy0+YmFzZS5kZXYpOwor
CisJaWYgKGRzYi0+Y21kX2J1ZikgeworCQl2bWEgPSBkc2ItPnZtYTsKKwkJbXV0ZXhfbG9jaygm
aTkxNS0+ZHJtLnN0cnVjdF9tdXRleCk7CisJCWNydGMtPmRzYl9pbl91c2UtLTsKKwkJaTkxNV9n
ZW1fb2JqZWN0X3VucGluX21hcCh2bWEtPm9iaik7CisJCWk5MTVfdm1hX3VucGluX2FuZF9yZWxl
YXNlKCZ2bWEsIDApOworCQlkc2ItPmNtZF9idWYgPSBOVUxMOworCQltdXRleF91bmxvY2soJmk5
MTUtPmRybS5zdHJ1Y3RfbXV0ZXgpOworCX0KK30KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RzYi5oCmluZGV4IDczMzBhZGQzYzk2Zi4uN2I5NGZkOWJjMDY3IDEwMDY0NAotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5oCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmgKQEAgLTQzLDUgKzQzLDYgQEAgc3RydWN0
IGludGVsX2RzYiAqCiBpbnRlbF9kc2JfZ2V0KHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKTsKIHZv
aWQgaW50ZWxfZHNiX3JlZ193cml0ZShzdHJ1Y3QgaW50ZWxfZHNiICpkc2IsIGk5MTVfcmVnX3Qg
cmVnLCB1MzIgdmFsKTsKIHZvaWQgaW50ZWxfZHNiX2NvbW1pdChzdHJ1Y3QgaW50ZWxfZHNiICpk
c2IpOwordm9pZCBpbnRlbF9kc2JfcHV0KHN0cnVjdCBpbnRlbF9kc2IgKmRzYik7CiAKICNlbmRp
ZgotLSAKMi4yMi4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
