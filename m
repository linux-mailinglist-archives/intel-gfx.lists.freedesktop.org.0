Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 09CBBB8B5D
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Sep 2019 09:04:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 543096E038;
	Fri, 20 Sep 2019 07:04:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 141176E038
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Sep 2019 07:04:50 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Sep 2019 00:04:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,527,1559545200"; d="scan'208";a="362764813"
Received: from amanna.iind.intel.com ([10.223.74.216])
 by orsmga005.jf.intel.com with ESMTP; 20 Sep 2019 00:04:47 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 20 Sep 2019 12:26:23 +0530
Message-Id: <20190920065626.3525-8-animesh.manna@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190920065626.3525-1-animesh.manna@intel.com>
References: <20190920065626.3525-1-animesh.manna@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v8 07/10] drm/i915/dsb: function to trigger
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
T3B0aW1pemVkIGNvZGUgZmV3IHBsYWNlcy4gKENocmlzKQp2MzogVVNlZCBEUk1fRVJST1IgZm9y
IGRzYiBoZWFkL3RhaWwgcHJvZ3JhbW1pbmcgZmFpbHVyZS4gKFNoYXNoYW5rKQp2NDogcmVzZXQg
aW5zX3N0YXJ0X29mZnNldCBhZnRlciBjb21taXQuIChKYW5pKQoKQ2M6IEltcmUgRGVhayA8aW1y
ZS5kZWFrQGludGVsLmNvbT4KQ2M6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+
CkNjOiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+CkNjOiBTaGFzaGFuayBT
aGFybWEgPHNoYXNoYW5rLnNoYXJtYUBpbnRlbC5jb20+ClJldmlld2VkLWJ5OiBTaGFzaGFuayBT
aGFybWEgPHNoYXNoYW5rLnNoYXJtYUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEFuaW1lc2gg
TWFubmEgPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHNiLmMgfCA0MyArKysrKysrKysrKysrKysrKysrKysrKysKIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmggfCAgMSArCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3JlZy5oICAgICAgICAgIHwgIDIgKysKIDMgZmlsZXMgY2hhbmdlZCwgNDYg
aW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHNiLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jCmlu
ZGV4IGUwMGVjMTk2MTMzZS4uMDAwMjkxYzEwMGEwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHNiLmMKQEAgLTIyMywzICsyMjMsNDYgQEAgdm9pZCBpbnRlbF9kc2JfcmVn
X3dyaXRlKHN0cnVjdCBpbnRlbF9kc2IgKmRzYiwgaTkxNV9yZWdfdCByZWcsIHUzMiB2YWwpCiAJ
CQkgICAgICAgKERTQl9CWVRFX0VOIDw8IERTQl9CWVRFX0VOX1NISUZUKSB8CiAJCQkgICAgICAg
aTkxNV9tbWlvX3JlZ19vZmZzZXQocmVnKTsKIH0KKwordm9pZCBpbnRlbF9kc2JfY29tbWl0KHN0
cnVjdCBpbnRlbF9kc2IgKmRzYikKK3sKKwlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YyA9IGNvbnRh
aW5lcl9vZihkc2IsIHR5cGVvZigqY3J0YyksIGRzYik7CisJc3RydWN0IGRybV9kZXZpY2UgKmRl
diA9IGNydGMtPmJhc2UuZGV2OworCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9
IHRvX2k5MTUoZGV2KTsKKwllbnVtIHBpcGUgcGlwZSA9IGNydGMtPnBpcGU7CisJdTMyIHRhaWw7
CisKKwlpZiAoIWRzYi0+ZnJlZV9wb3MpCisJCXJldHVybjsKKworCWlmICghaW50ZWxfZHNiX2Vu
YWJsZV9lbmdpbmUoZHNiKSkKKwkJZ290byByZXNldDsKKworCWlmIChpc19kc2JfYnVzeShkc2Ip
KSB7CisJCURSTV9FUlJPUigiSEVBRF9QVFIgd3JpdGUgZmFpbGVkIC0gZHNiIGVuZ2luZSBpcyBi
dXN5LlxuIik7CisJCWdvdG8gcmVzZXQ7CisJfQorCUk5MTVfV1JJVEUoRFNCX0hFQUQocGlwZSwg
ZHNiLT5pZCksIGk5MTVfZ2d0dF9vZmZzZXQoZHNiLT52bWEpKTsKKworCXRhaWwgPSBBTElHTihk
c2ItPmZyZWVfcG9zICogNCwgQ0FDSEVMSU5FX0JZVEVTKTsKKwlpZiAodGFpbCA+IGRzYi0+ZnJl
ZV9wb3MgKiA0KQorCQltZW1zZXQoJmRzYi0+Y21kX2J1Zltkc2ItPmZyZWVfcG9zXSwgMCwKKwkJ
ICAgICAgICh0YWlsIC0gZHNiLT5mcmVlX3BvcyAqIDQpKTsKKworCWlmIChpc19kc2JfYnVzeShk
c2IpKSB7CisJCURSTV9FUlJPUigiVEFJTF9QVFIgd3JpdGUgZmFpbGVkIC0gZHNiIGVuZ2luZSBp
cyBidXN5LlxuIik7CisJCWdvdG8gcmVzZXQ7CisJfQorCURSTV9ERUJVR19LTVMoIkRTQiBleGVj
dXRpb24gc3RhcnRlZCAtIGhlYWQgMHgleCwgdGFpbCAweCV4XG4iLAorCQkgICAgICBpOTE1X2dn
dHRfb2Zmc2V0KGRzYi0+dm1hKSwgdGFpbCk7CisJSTkxNV9XUklURShEU0JfVEFJTChwaXBlLCBk
c2ItPmlkKSwgaTkxNV9nZ3R0X29mZnNldChkc2ItPnZtYSkgKyB0YWlsKTsKKwlpZiAod2FpdF9m
b3IoIWlzX2RzYl9idXN5KGRzYiksIDEpKSB7CisJCURSTV9FUlJPUigiVGltZWQgb3V0IHdhaXRp
bmcgZm9yIERTQiB3b3JrbG9hZCBjb21wbGV0aW9uLlxuIik7CisJCWdvdG8gcmVzZXQ7CisJfQor
CityZXNldDoKKwlkc2ItPmZyZWVfcG9zID0gMDsKKwlkc2ItPmluc19zdGFydF9vZmZzZXQgPSAw
OworCWludGVsX2RzYl9kaXNhYmxlX2VuZ2luZShkc2IpOworfQpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHNiLmgKaW5kZXggZDZjZWQ0NDIyODE0Li5kY2E0ZTYzMmRkM2MgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmgKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuaApAQCAtNDQsNSArNDQsNiBA
QCB2b2lkIGludGVsX2RzYl9wdXQoc3RydWN0IGludGVsX2RzYiAqZHNiKTsKIHZvaWQgaW50ZWxf
ZHNiX3JlZ193cml0ZShzdHJ1Y3QgaW50ZWxfZHNiICpkc2IsIGk5MTVfcmVnX3QgcmVnLCB1MzIg
dmFsKTsKIHZvaWQgaW50ZWxfZHNiX2luZGV4ZWRfcmVnX3dyaXRlKHN0cnVjdCBpbnRlbF9kc2Ig
KmRzYiwgaTkxNV9yZWdfdCByZWcsCiAJCQkJIHUzMiB2YWwpOwordm9pZCBpbnRlbF9kc2JfY29t
bWl0KHN0cnVjdCBpbnRlbF9kc2IgKmRzYik7CiAKICNlbmRpZgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVn
LmgKaW5kZXggNWNhOTBmNjYzOTNjLi5mMzc0MjhlOTlhNWEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9y
ZWcuaApAQCAtMTE2OTEsNiArMTE2OTEsOCBAQCBlbnVtIHNrbF9wb3dlcl9nYXRlIHsKICNkZWZp
bmUgX0RTQlNMX0lOU1RBTkNFX0JBU0UJCTB4NzBCMDAKICNkZWZpbmUgRFNCU0xfSU5TVEFOQ0Uo
cGlwZSwgaWQpCShfRFNCU0xfSU5TVEFOQ0VfQkFTRSArIFwKIAkJCQkJIChwaXBlKSAqIDB4MTAw
MCArIChpZCkgKiAxMDApCisjZGVmaW5lIERTQl9IRUFEKHBpcGUsIGlkKQkJX01NSU8oRFNCU0xf
SU5TVEFOQ0UocGlwZSwgaWQpICsgMHgwKQorI2RlZmluZSBEU0JfVEFJTChwaXBlLCBpZCkJCV9N
TUlPKERTQlNMX0lOU1RBTkNFKHBpcGUsIGlkKSArIDB4NCkKICNkZWZpbmUgRFNCX0NUUkwocGlw
ZSwgaWQpCQlfTU1JTyhEU0JTTF9JTlNUQU5DRShwaXBlLCBpZCkgKyAweDgpCiAjZGVmaW5lICAg
RFNCX0VOQUJMRQkJCSgxIDw8IDMxKQogI2RlZmluZSAgIERTQl9TVEFUVVMJCQkoMSA8PCAwKQot
LSAKMi4yMi4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
