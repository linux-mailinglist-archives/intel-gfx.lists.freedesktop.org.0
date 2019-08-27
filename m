Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D4BF9F32B
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Aug 2019 21:18:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50FB989C03;
	Tue, 27 Aug 2019 19:18:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A83FB89BFC
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Aug 2019 19:18:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Aug 2019 12:18:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,438,1559545200"; d="scan'208";a="209863428"
Received: from amanna.iind.intel.com ([10.223.74.216])
 by fmsmga002.fm.intel.com with ESMTP; 27 Aug 2019 12:18:16 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 28 Aug 2019 00:40:22 +0530
Message-Id: <20190827191026.26175-9-animesh.manna@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190827191026.26175-1-animesh.manna@intel.com>
References: <20190827191026.26175-1-animesh.manna@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 08/11] drm/i915/dsb: function to trigger
 workload execution of DSB.
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

QmF0Y2ggYnVmZmVyIHdpbGwgYmUgY3JlYXRlZCB0aHJvdWdoIGRzYi1yZWctd3JpdGUgZnVuY3Rp
b24gd2hpY2ggY2FuIGhhdmUKc2luZ2xlL211bHRpcGxlIHJlcXVlc3QgYmFzZWQgb24gdXNlY2Fz
ZSBhbmQgb25jZSB0aGUgYnVmZmVyIGlzIHJlYWR5CmNvbW1pdCBmdW5jdGlvbiB3aWxsIHRyaWdn
ZXIgdGhlIGV4ZWN1dGlvbiBvZiB0aGUgYmF0Y2ggYnVmZmVyLiBBbGwKdGhlIHJlZ2lzdGVycyB3
aWxsIGJlIHVwZGF0ZWQgc2ltdWx0YW5lb3VzbHkuCgp2MTogSW5pdGlhbCB2ZXJzaW9uLgp2Mjog
T3B0aW1pemVkIGNvZGUgZmV3IHBsYWNlcy4gKENocmlzKQoKQ2M6IEltcmUgRGVhayA8aW1yZS5k
ZWFrQGludGVsLmNvbT4KQ2M6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+CkNj
OiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEFu
aW1lc2ggTWFubmEgPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMgfCA0MiArKysrKysrKysrKysrKysrKysrKysrKysK
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmggfCAgMSArCiAyIGZpbGVz
IGNoYW5nZWQsIDQzIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kc2IuYwppbmRleCAyZDZlNzg4NjhmMmQuLmJjMTczNDA3MmYzNCAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYworKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jCkBAIC0yMTQsMyArMjE0LDQ1IEBAIHZvaWQg
aW50ZWxfZHNiX3JlZ193cml0ZShzdHJ1Y3QgaW50ZWxfZHNiICpkc2IsIGk5MTVfcmVnX3QgcmVn
LCB1MzIgdmFsKQogCQkJCURTQl9PUENPREVfU0hJRlQpIHwgRFNCX0JZVEVfRU4gfAogCQkJCWk5
MTVfbW1pb19yZWdfb2Zmc2V0KHJlZyk7CiB9CisKK3ZvaWQgaW50ZWxfZHNiX2NvbW1pdChzdHJ1
Y3QgaW50ZWxfZHNiICpkc2IpCit7CisJc3RydWN0IGludGVsX2NydGMgKmNydGMgPSBkc2ItPmNy
dGM7CisJc3RydWN0IGRybV9kZXZpY2UgKmRldiA9IGNydGMtPmJhc2UuZGV2OworCXN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoZGV2KTsKKwllbnVtIHBpcGUgcGlw
ZSA9IGNydGMtPnBpcGU7CisJdTMyIHRhaWw7CisKKwlpZiAoIWRzYi0+ZnJlZV9wb3MpCisJCXJl
dHVybjsKKworCWlmICghaW50ZWxfZHNiX2VuYWJsZV9lbmdpbmUoZHNiKSkKKwkJZ290byByZXNl
dDsKKworCWlmIChpc19kc2JfYnVzeShkc2IpKSB7CisJCURSTV9ERUJVR19LTVMoIkhFQURfUFRS
IHdyaXRlIGZhaWxlZCAtIGRzYiBlbmdpbmUgaXMgYnVzeS5cbiIpOworCQlnb3RvIHJlc2V0Owor
CX0KKwlJOTE1X1dSSVRFKERTQl9IRUFEKHBpcGUsIGRzYi0+aWQpLCBpOTE1X2dndHRfb2Zmc2V0
KGRzYi0+dm1hKSk7CisKKwl0YWlsID0gQUxJR04oZHNiLT5mcmVlX3BvcyAqIDQsIENBQ0hFTElO
RV9CWVRFUyk7CisJaWYgKHRhaWwgPiBkc2ItPmZyZWVfcG9zICogNCkKKwkJbWVtc2V0KCZkc2It
PmNtZF9idWZbZHNiLT5mcmVlX3Bvc10sIDAsCisJCSAgICAgICAodGFpbCAtIGRzYi0+ZnJlZV9w
b3MgKiA0KSk7CisKKwlpZiAoaXNfZHNiX2J1c3koZHNiKSkgeworCQlEUk1fREVCVUdfS01TKCJU
QUlMX1BUUiB3cml0ZSBmYWlsZWQgLSBkc2IgZW5naW5lIGlzIGJ1c3kuXG4iKTsKKwkJZ290byBy
ZXNldDsKKwl9CisJRFJNX0RFQlVHX0tNUygiRFNCIGV4ZWN1dGlvbiBzdGFydGVkIC0gaGVhZCAw
eCV4LCB0YWlsIDB4JXhcbiIsCisJCSAgICAgIGk5MTVfZ2d0dF9vZmZzZXQoZHNiLT52bWEpLCB0
YWlsKTsKKwlJOTE1X1dSSVRFKERTQl9UQUlMKHBpcGUsIGRzYi0+aWQpLCBpOTE1X2dndHRfb2Zm
c2V0KGRzYi0+dm1hKSArIHRhaWwpOworCWlmICh3YWl0X2ZvcighaXNfZHNiX2J1c3koZHNiKSwg
MSkpIHsKKwkJRFJNX0VSUk9SKCJUaW1lZCBvdXQgd2FpdGluZyBmb3IgRFNCIHdvcmtsb2FkIGNv
bXBsZXRpb24uXG4iKTsKKwkJZ290byByZXNldDsKKwl9CisKK3Jlc2V0OgorCWRzYi0+ZnJlZV9w
b3MgPSAwOworCWludGVsX2RzYl9kaXNhYmxlX2VuZ2luZShkc2IpOworfQpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuaCBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmgKaW5kZXggYzg0ODc0N2Y1MmQ5Li5mNWQxZjFiZWRj
MTIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmgK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuaApAQCAtNDQsNSAr
NDQsNiBAQCB2b2lkIGludGVsX2RzYl9wdXQoc3RydWN0IGludGVsX2RzYiAqZHNiKTsKIHZvaWQg
aW50ZWxfZHNiX3JlZ193cml0ZShzdHJ1Y3QgaW50ZWxfZHNiICpkc2IsIGk5MTVfcmVnX3QgcmVn
LCB1MzIgdmFsKTsKIHZvaWQgaW50ZWxfZHNiX2luZGV4ZWRfcmVnX3dyaXRlKHN0cnVjdCBpbnRl
bF9kc2IgKmRzYiwgaTkxNV9yZWdfdCByZWcsCiAJCQkJIHUzMiB2YWwpOwordm9pZCBpbnRlbF9k
c2JfY29tbWl0KHN0cnVjdCBpbnRlbF9kc2IgKmRzYik7CiAKICNlbmRpZgotLSAKMi4yMi4wCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
