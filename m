Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ABC2A79023
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jul 2019 18:01:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8A7689FCC;
	Mon, 29 Jul 2019 16:01:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA47689FD3
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Jul 2019 16:01:06 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Jul 2019 08:23:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,323,1559545200"; d="scan'208";a="162235302"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by orsmga007.jf.intel.com with ESMTP; 29 Jul 2019 08:23:17 -0700
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.50])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x6TFNFE7014113; Mon, 29 Jul 2019 16:23:16 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 29 Jul 2019 15:23:00 +0000
Message-Id: <20190729152301.22588-4-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
In-Reply-To: <20190729152301.22588-1-michal.wajdeczko@intel.com>
References: <20190729152301.22588-1-michal.wajdeczko@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/4] drm/i915/uc: Inject load errors into
 intel_uc_init_hw
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

SW5qZWN0IGxvYWQgZXJyb3JzIGludG8gaW50ZWxfdWNfaW5pdF9odyB0byBtYWtlIHN1cmUgd2UK
Y29ycmVjdGx5IGhhbmRsZSB1QyBpbml0aWFsaXphdGlvbiBmYWlsdXJlcy4KClRvIGF2b2lkIGNv
bXBsYWlucyBmcm9tIENJIGFib3V0IGluc2VydGVkIGVycm9ycyBvciB3YXJuaW5ncywKdXNlIGhl
bHBlciBtYWNybyB0aGF0IGNoZWNrcyBpZiB0aGVyZSB3YXMgYW4gZXJyb3IgaW5qZWN0aW9uLgoK
U2lnbmVkLW9mZi1ieTogTWljaGFsIFdhamRlY3prbyA8bWljaGFsLndhamRlY3prb0BpbnRlbC5j
b20+CkNjOiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50
ZWwuY29tPgpDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci0tLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMuYyB8IDggKysrKysrKysKIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggICAgICAgfCA3ICsrKysrKy0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZ2VtLmMgICAgICAgfCAyICstCiAzIGZpbGVzIGNoYW5nZWQsIDE1IGlu
c2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvdWMvaW50ZWxfdWMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVs
X3VjLmMKaW5kZXggZmFmYTliZTFlMTJhLi45ZTExNTZjMjljYjEgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvdWMvaW50ZWxfdWMuYwpAQCAtNDAwLDYgKzQwMCwxNCBAQCBpbnQgaW50ZWxfdWNfaW5p
dF9odyhzdHJ1Y3QgaW50ZWxfdWMgKnVjKQogCWlmICghaW50ZWxfdWNfaXNfdXNpbmdfZ3VjKHVj
KSkKIAkJcmV0dXJuIDA7CiAKKwlyZXQgPSBpOTE1X2luamVjdF9sb2FkX2Vycm9yKGk5MTUsIC1F
SU8pOworCWlmIChyZXQpCisJCXJldHVybiByZXQ7CisKKwlyZXQgPSBpOTE1X2luamVjdF9sb2Fk
X2Vycm9yKGk5MTUsIC1FTlhJTyk7CisJaWYgKHJldCkKKwkJcmV0dXJuIHJldDsKKwogCUdFTV9C
VUdfT04oIWludGVsX3VjX2Z3X3N1cHBvcnRlZCgmZ3VjLT5mdykpOwogCiAJZ3VjX3Jlc2V0X2lu
dGVycnVwdHMoZ3VjKTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2
LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCmluZGV4IDZiMDU5ZDUxYWFmZi4u
MzZmN2ExNDZmMDZhIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5o
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKQEAgLTEzNyw5ICsxMzcsMTQg
QEAgYm9vbCBpOTE1X2Vycm9yX2luamVjdGVkKHZvaWQpOwogCiAjZGVmaW5lIGk5MTVfaW5qZWN0
X3Byb2JlX2ZhaWx1cmUoaTkxNSkgaTkxNV9pbmplY3RfbG9hZF9lcnJvcigoaTkxNSksIC1FTk9E
RVYpCiAKLSNkZWZpbmUgaTkxNV9wcm9iZV9lcnJvcihpOTE1LCBmbXQsIC4uLikJCQkJICAgXAor
I2RlZmluZSBJOTE1X0VSUk9SKGk5MTUsIGZtdCwgLi4uKSBcCiAJX19pOTE1X3ByaW50ayhpOTE1
LCBpOTE1X2Vycm9yX2luamVjdGVkKCkgPyBLRVJOX0RFQlVHIDogS0VSTl9FUlIsIFwKIAkJICAg
ICAgZm10LCAjI19fVkFfQVJHU19fKQorI2RlZmluZSBJOTE1X1dBUk4oaTkxNSwgZm10LCAuLi4p
IFwKKwlfX2k5MTVfcHJpbnRrKGk5MTUsIGk5MTVfZXJyb3JfaW5qZWN0ZWQoKSA/IEtFUk5fREVC
VUcgOiBLRVJOX1dBUk5JTkcsIFwKKwkJICAgICAgZm10LCAjI19fVkFfQVJHU19fKQorCisjZGVm
aW5lIGk5MTVfcHJvYmVfZXJyb3IoaTkxNSwgZm10LCAuLi4pIEk5MTVfRVJST1IoaTkxNSwgZm10
LCAjI19fVkFfQVJHU19fKQogCiBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdDsKIApkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZ2VtLmMKaW5kZXggMzJiNGZhNWM1NzljLi5jNDM3YWI1NTU0ZWMgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9nZW0uYwpAQCAtMTI0OCw3ICsxMjQ4LDcgQEAgaW50IGk5MTVfZ2VtX2luaXRf
aHcoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCiAJLyogV2UgY2FuJ3QgZW5hYmxlIGNv
bnRleHRzIHVudGlsIGFsbCBmaXJtd2FyZSBpcyBsb2FkZWQgKi8KIAlyZXQgPSBpbnRlbF91Y19p
bml0X2h3KCZpOTE1LT5ndC51Yyk7CiAJaWYgKHJldCkgewotCQlEUk1fRVJST1IoIkVuYWJsaW5n
IHVjIGZhaWxlZCAoJWQpXG4iLCByZXQpOworCQlJOTE1X0VSUk9SKGk5MTUsICJFbmFibGluZyB1
YyBmYWlsZWQgKCVkKVxuIiwgcmV0KTsKIAkJZ290byBvdXQ7CiAJfQogCi0tIAoyLjE5LjIKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
