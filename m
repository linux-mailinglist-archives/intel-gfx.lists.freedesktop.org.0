Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 20BC6B8B59
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Sep 2019 09:04:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 793806EC28;
	Fri, 20 Sep 2019 07:04:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 764496EC28
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Sep 2019 07:04:35 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Sep 2019 00:04:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,527,1559545200"; d="scan'208";a="362764771"
Received: from amanna.iind.intel.com ([10.223.74.216])
 by orsmga005.jf.intel.com with ESMTP; 20 Sep 2019 00:04:32 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 20 Sep 2019 12:26:19 +0530
Message-Id: <20190920065626.3525-4-animesh.manna@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190920065626.3525-1-animesh.manna@intel.com>
References: <20190920065626.3525-1-animesh.manna@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v8 03/10] drm/i915/dsb: single register write
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
ZS4gKFNoYXNoYW5rKQp2Mzogc2V0IGZyZWVfcG9zIHRvIHplcm8gaW4gZHNiLXB1dCgpIGluc3Rl
YWQgZHNiLWdldCgpIGFuZAphIGNvc21ldGljIGNoYW5nZS4gKFNoYXNoYW5rKQp2NDogbWFjcm8g
b2YgaW5kZXhlZC13cml0ZSBpcyBtb3ZlZC4gKFNoYXNoYW5rKQoKQ2M6IEphbmkgTmlrdWxhIDxq
YW5pLm5pa3VsYUBpbnRlbC5jb20+CkNjOiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRl
bC5jb20+CkNjOiBTaGFzaGFuayBTaGFybWEgPHNoYXNoYW5rLnNoYXJtYUBpbnRlbC5jb20+ClJl
dmlld2VkLWJ5OiBTaGFzaGFuayBTaGFybWEgPHNoYXNoYW5rLnNoYXJtYUBpbnRlbC5jb20+ClNp
Z25lZC1vZmYtYnk6IEFuaW1lc2ggTWFubmEgPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPgotLS0K
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMgfCAyOSArKysrKysrKysr
KysrKysrKysrKysrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmgg
fCAgOSArKysrKysrKwogMiBmaWxlcyBjaGFuZ2VkLCAzOCBpbnNlcnRpb25zKCspCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMKaW5kZXggMmVkMjc3NjcwZjE1Li5mOTRj
ZDZkYzk4YjYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHNiLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYwpAQCAt
OSw2ICs5LDEyIEBACiAKICNkZWZpbmUgRFNCX0JVRl9TSVpFICAgICgyICogUEFHRV9TSVpFKQog
CisvKiBEU0Igb3Bjb2Rlcy4gKi8KKyNkZWZpbmUgRFNCX09QQ09ERV9TSElGVAkJMjQKKyNkZWZp
bmUgRFNCX09QQ09ERV9NTUlPX1dSSVRFCQkweDEKKyNkZWZpbmUgRFNCX0JZVEVfRU4JCQkweEYK
KyNkZWZpbmUgRFNCX0JZVEVfRU5fU0hJRlQJCTIwCisKIHN0cnVjdCBpbnRlbF9kc2IgKgogaW50
ZWxfZHNiX2dldChzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YykKIHsKQEAgLTc2LDUgKzgyLDI4IEBA
IHZvaWQgaW50ZWxfZHNiX3B1dChzdHJ1Y3QgaW50ZWxfZHNiICpkc2IpCiAJCWk5MTVfdm1hX3Vu
cGluX2FuZF9yZWxlYXNlKCZkc2ItPnZtYSwgMCk7CiAJCW11dGV4X3VubG9jaygmaTkxNS0+ZHJt
LnN0cnVjdF9tdXRleCk7CiAJCWRzYi0+Y21kX2J1ZiA9IE5VTEw7CisJCWRzYi0+ZnJlZV9wb3Mg
PSAwOworCX0KK30KKwordm9pZCBpbnRlbF9kc2JfcmVnX3dyaXRlKHN0cnVjdCBpbnRlbF9kc2Ig
KmRzYiwgaTkxNV9yZWdfdCByZWcsIHUzMiB2YWwpCit7CisJc3RydWN0IGludGVsX2NydGMgKmNy
dGMgPSBjb250YWluZXJfb2YoZHNiLCB0eXBlb2YoKmNydGMpLCBkc2IpOworCXN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoY3J0Yy0+YmFzZS5kZXYpOworCXUzMiAq
YnVmID0gZHNiLT5jbWRfYnVmOworCisJaWYgKCFidWYpIHsKKwkJSTkxNV9XUklURShyZWcsIHZh
bCk7CisJCXJldHVybjsKKwl9CisKKwlpZiAoV0FSTl9PTihkc2ItPmZyZWVfcG9zID49IERTQl9C
VUZfU0laRSkpIHsKKwkJRFJNX0RFQlVHX0tNUygiRFNCIGJ1ZmZlciBvdmVyZmxvd1xuIik7CisJ
CXJldHVybjsKIAl9CisKKwlidWZbZHNiLT5mcmVlX3BvcysrXSA9IHZhbDsKKwlidWZbZHNiLT5m
cmVlX3BvcysrXSA9IChEU0JfT1BDT0RFX01NSU9fV1JJVEUgIDw8IERTQl9PUENPREVfU0hJRlQp
IHwKKwkJCSAgICAgICAoRFNCX0JZVEVfRU4gPDwgRFNCX0JZVEVfRU5fU0hJRlQpIHwKKwkJCSAg
ICAgICBpOTE1X21taW9fcmVnX29mZnNldChyZWcpOwogfQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHNiLmgKaW5kZXggMmMwZjYwYzVmNjZjLi4wNjg2ZDY3YjM0ZDUgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmgKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuaApAQCAtNiw2ICs2LDggQEAKICNp
Zm5kZWYgX0lOVEVMX0RTQl9ICiAjZGVmaW5lIF9JTlRFTF9EU0JfSAogCisjaW5jbHVkZSAiaTkx
NV9yZWcuaCIKKwogc3RydWN0IGludGVsX2NydGM7CiBzdHJ1Y3QgaTkxNV92bWE7CiAKQEAgLTIy
LDEwICsyNCwxNyBAQCBzdHJ1Y3QgaW50ZWxfZHNiIHsKIAllbnVtIGRzYl9pZCBpZDsKIAl1MzIg
KmNtZF9idWY7CiAJc3RydWN0IGk5MTVfdm1hICp2bWE7CisKKwkvKgorCSAqIGZyZWVfcG9zIHdp
bGwgcG9pbnQgdGhlIGZpcnN0IGZyZWUgZW50cnkgcG9zaXRpb24KKwkgKiBhbmQgaGVscCBpbiBj
YWxjdWxhdGluZyB0YWlsIG9mIGNvbW1hbmQgYnVmZmVyLgorCSAqLworCWludCBmcmVlX3BvczsK
IH07CiAKIHN0cnVjdCBpbnRlbF9kc2IgKgogaW50ZWxfZHNiX2dldChzdHJ1Y3QgaW50ZWxfY3J0
YyAqY3J0Yyk7CiB2b2lkIGludGVsX2RzYl9wdXQoc3RydWN0IGludGVsX2RzYiAqZHNiKTsKK3Zv
aWQgaW50ZWxfZHNiX3JlZ193cml0ZShzdHJ1Y3QgaW50ZWxfZHNiICpkc2IsIGk5MTVfcmVnX3Qg
cmVnLCB1MzIgdmFsKTsKIAogI2VuZGlmCi0tIAoyLjIyLjAKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
