Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91FEF786CD
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jul 2019 09:59:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97A83899A5;
	Mon, 29 Jul 2019 07:59:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D64689996;
 Mon, 29 Jul 2019 07:59:06 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Jul 2019 00:57:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,322,1559545200"; d="scan'208";a="255150048"
Received: from vca-bj102.bj.intel.com ([10.240.193.76])
 by orsmga001.jf.intel.com with ESMTP; 29 Jul 2019 00:57:40 -0700
From: Xiaolin Zhang <xiaolin.zhang@intel.com>
To: intel-gvt-dev@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Tue, 30 Jul 2019 00:32:35 +0800
Message-Id: <1564417962-74325-3-git-send-email-xiaolin.zhang@intel.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1564417962-74325-1-git-send-email-xiaolin.zhang@intel.com>
References: <1564417962-74325-1-git-send-email-xiaolin.zhang@intel.com>
Subject: [Intel-gfx] [PATCH v9 2/9] drm/i915: vgpu shared memory setup for
 pv optimization
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
Cc: zhenyu.z.wang@intel.com, hang.yuan@intel.com, zhiyuan.lv@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VG8gZW5hYmxlIHZncHUgcHYgZmVhdHVyZXMsIHdlIG5lZWQgdG8gc2V0dXAgYSBzaGFyZWQgbWVt
b3J5IHBhZ2UKd2hpY2ggd2lsbCBiZSB1c2VkIGZvciBkYXRhIGV4Y2hhbmdlIGRpcmVjdGx5IGFj
Y2Vzc2VkIGJldHdlZW4gYm90aApndWVzdCBhbmQgYmFja2VuZCBpOTE1IGRyaXZlciB0byBhdm9p
ZCBlbXVsYXRpb24gdHJhcCBjb3N0LgoKZ3Vlc3QgaTkxNSB3aWxsIGFsbG9jYXRlIHRoaXMgcGFn
ZSBtZW1vcnkgYW5kIHRoZW4gcGFzcyBpdCdzIHBoeXNpY2FsCmFkZHJlc3MgdG8gYmFja2VuZCBp
OTE1IGRyaXZlciB0aHJvdWdoIFBWSU5GTyByZWdpc3RlciBzbyB0aGF0IGJhY2tlbmQgaTkxNQpk
cml2ZXIgY2FuIGFjY2VzcyB0aGlzIHNoYXJlZCBwYWdlIG1lb3J5IHdpdGhvdXQgYW55IHRyYXAg
Y29zdCB3aXRoIHRoZQpoZWxwIGZvcm0gaHlwZXJ2aXNlcidzIHJlYWQgZ3Vlc3QgZ3BhIGZ1bmN0
aW9uYWxpdHkuCgpndWVzdCBpOTE1IHdpbGwgc2VuZCBWR1RfRzJWX1NIQVJFRF9QQUdFX1NFVFVQ
IG5vdGlmaWNhdGlvbiB0byBob3N0IEdWVApvbmNlIHNoYXJlZCBtZW1vcnkgc2V0dXAgZmluaXNo
ZWQuCgp0aGUgbGF5b3V0IG9mIHRoZSBzaGFyZWRfcGFnZSBhbHNvIGRlZmluZWQgYXMgd2VsbCBp
biB0aGlzIHBhdGNoIHdoaWNoCmlzIHVzZWQgZm9yIHB2IGZlYXR1cmVzIGltcGxlbWVudGF0aW9u
LgoKdjA6IFJGQy4KdjE6IGFkZHJlc3NlZCBSRkMgY29tbWVudCB0byBtb3ZlIGJvdGggc2hhcmVk
X3BhZ2VfbG9jayBhbmQgc2hhcmVkX3BhZ2UKdG8gaTkxNV92aXJ0dWFsX2dwdSBzdHJ1Y3R1cmUu
CnYyOiBwYWNrZWQgaTkxNV92aXJ0dWFsX2dwdSBzdHJ1Y3R1cmUuCnYzOiBhZGRlZCBTSEFSRURf
UEFHRV9TRVRVUCBnMnYgbm90aWZpY2F0aW9uIGZvciBwdiBzaGFyZWRfcGFnZSBzZXR1cAp2NDog
YWRkZWQgaW50ZWxfdmdwdV9zZXR1cF9zaGFyZWRfcGFnZSgpIGluIGk5MTVfdmdwdV9wdi5jLgp2
NTogcGVyIGVuZ2luZSBkZXNjIGRhdGEgaW4gc2hhcmVkIG1lbW9yeS4KdjY6IGFkZGVkIHZlcnNp
b24gc3VwcG9ydCBpbiBzaGFyZWQgbWVtb3J5IChaaGVueXUpLgp2NzogYWRkZWQgbmV3IGZ1bmN0
aW9uIGk5MTVfZGVzdHJveV92Z3B1IHRvIGZyZWUgc2hhcmVkIG1lbW9yeS4KClNpZ25lZC1vZmYt
Ynk6IFhpYW9saW4gWmhhbmcgPHhpYW9saW4uemhhbmdAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMgICAgfCAgMiArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2Rydi5oICAgIHwgIDQgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcHZpbmZvLmgg
fCAgNSArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV92Z3B1LmMgICB8IDk2ICsrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKystCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3ZncHUuaCAgIHwgMTggKysrKysrKwogNSBmaWxlcyBjaGFuZ2VkLCAxMjIgaW5zZXJ0aW9ucygr
KSwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2Rydi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYwppbmRleCBmMmQzZDc1NC4u
NGVkNGJhYyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYworKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jCkBAIC0xOTk1LDYgKzE5OTUsOCBAQCBz
dGF0aWMgdm9pZCBpOTE1X2RyaXZlcl9yZWxlYXNlKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYpCiAK
IAlkaXNhYmxlX3JwbV93YWtlcmVmX2Fzc2VydHMocnBtKTsKIAorCWk5MTVfZGVzdHJveV92Z3B1
KGRldl9wcml2KTsKKwogCWk5MTVfZ2VtX2RyaXZlcl9yZWxlYXNlKGRldl9wcml2KTsKIAogCWk5
MTVfZ2d0dF9kcml2ZXJfcmVsZWFzZShkZXZfcHJpdik7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2Rydi5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaApp
bmRleCAzYWU5MGVlLi5kMjJhNWNkIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2Rydi5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKQEAgLTEwODAs
NyArMTA4MCw5IEBAIHN0cnVjdCBpOTE1X3ZpcnR1YWxfZ3B1IHsKIAlib29sIGFjdGl2ZTsKIAl1
MzIgY2FwczsKIAl1MzIgcHZfY2FwczsKLX07CisKKwlzdHJ1Y3QgaTkxNV92aXJ0dWFsX2dwdV9w
diAqcHY7Cit9IF9fcGFja2VkOwogCiAvKiB1c2VkIGluIGNvbXB1dGluZyB0aGUgbmV3IHdhdGVy
bWFya3Mgc3RhdGUgKi8KIHN0cnVjdCBpbnRlbF93bV9jb25maWcgewpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wdmluZm8uaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfcHZpbmZvLmgKaW5kZXggYWQzOThiNC4uM2M2MzYwMyAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9wdmluZm8uaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3B2aW5mby5oCkBAIC00OCw2ICs0OCw3IEBAIGVudW0gdmd0X2cydl90eXBlIHsKIAlWR1RfRzJW
X1BQR1RUX0w0X1BBR0VfVEFCTEVfREVTVFJPWSwKIAlWR1RfRzJWX0VYRUNMSVNUX0NPTlRFWFRf
Q1JFQVRFLAogCVZHVF9HMlZfRVhFQ0xJU1RfQ09OVEVYVF9ERVNUUk9ZLAorCVZHVF9HMlZfU0hB
UkVEX1BBR0VfU0VUVVAsCiAJVkdUX0cyVl9NQVgsCiB9OwogCkBAIC0xMTIsNyArMTEzLDkgQEAg
c3RydWN0IHZndF9pZiB7CiAKIAl1MzIgcHZfY2FwczsKIAotCXUzMiAgcnN2N1sweDIwMCAtIDI1
XTsgICAgLyogcGFkIHRvIG9uZSBwYWdlICovCisJdTY0IHNoYXJlZF9wYWdlX2dwYTsKKworCXUz
MiAgcnN2N1sweDIwMCAtIDI3XTsgICAgLyogcGFkIHRvIG9uZSBwYWdlICovCiB9IF9fcGFja2Vk
OwogCiAjZGVmaW5lIHZndGlmX29mZnNldCh4KSAob2Zmc2V0b2Yoc3RydWN0IHZndF9pZiwgeCkp
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3ZncHUuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfdmdwdS5jCmluZGV4IDFjMjZhOTUuLjEzZTYyYTUgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdmdwdS5jCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfdmdwdS5jCkBAIC05OCw3ICs5OCw3IEBAIHZvaWQgaTkxNV9kZXRlY3Rfdmdw
dShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAKIAlpZiAoIWludGVsX3ZncHVf
Y2hlY2tfcHZfY2FwcyhkZXZfcHJpdiwgc2hhcmVkX2FyZWEpKSB7CiAJCURSTV9JTkZPKCJWaXJ0
dWFsIEdQVSBmb3IgSW50ZWwgR1ZULWcgZGV0ZWN0ZWQuXG4iKTsKLQkJcmV0dXJuOworCQlnb3Rv
IG91dDsKIAl9CiAKIAlEUk1fSU5GTygiVmlydHVhbCBHUFUgZm9yIEludGVsIEdWVC1nIGRldGVj
dGVkIHdpdGggUFYgT3B0aW1pemVkLlxuIik7CkBAIC0xMDcsNiArMTA3LDE2IEBAIHZvaWQgaTkx
NV9kZXRlY3RfdmdwdShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJcGNpX2lv
dW5tYXAocGRldiwgc2hhcmVkX2FyZWEpOwogfQogCit2b2lkIGk5MTVfZGVzdHJveV92Z3B1KHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKK3sKKwlzdHJ1Y3QgaTkxNV92aXJ0dWFs
X2dwdV9wdiAqcHYgPSBkZXZfcHJpdi0+dmdwdS5wdjsKKworCWlmICghaW50ZWxfdmdwdV9hY3Rp
dmUoZGV2X3ByaXYpIHx8ICFwdikKKwkJcmV0dXJuOworCisJX19mcmVlX3BhZ2UodmlydF90b19w
YWdlKHB2LT5zaGFyZWRfcGFnZSkpOworfQorCiBib29sIGludGVsX3ZncHVfaGFzX2Z1bGxfcHBn
dHQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogewogCXJldHVybiBkZXZfcHJp
di0+dmdwdS5jYXBzICYgVkdUX0NBUFNfRlVMTF9QUEdUVDsKQEAgLTMwOCw2ICszMTgsODQgQEAg
aW50IGludGVsX3ZndF9iYWxsb29uKHN0cnVjdCBpOTE1X2dndHQgKmdndHQpCiAgKiBpOTE1IHZn
cHUgUFYgc3VwcG9ydCBmb3IgTGludXgKICAqLwogCisvKgorICogc2hhcmVkX3BhZ2Ugc2V0dXAg
Zm9yIFZHUFUgUFYgZmVhdHVyZXMKKyAqLworc3RhdGljIGludCBpbnRlbF92Z3B1X3NldHVwX3No
YXJlZF9wYWdlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKKwkJdm9pZCBfX2lv
bWVtICpzaGFyZWRfYXJlYSkKK3sKKwl2b2lkIF9faW9tZW0gKmFkZHI7CisJc3RydWN0IGk5MTVf
dmlydHVhbF9ncHVfcHYgKnB2OworCXN0cnVjdCBndnRfc2hhcmVkX3BhZ2UgKmJhc2U7CisJdTY0
IGdwYTsKKwl1MTYgdmVyX21haiwgdmVyX21pbjsKKwlpbnQgcmV0ID0gMDsKKworCS8qIFdlIGFs
bG9jYXRlIDEgcGFnZSBzaGFyZWQgYmV0d2VlbiBndWVzdCBhbmQgR1ZUIGZvciBkYXRhIGV4Y2hh
bmdlLgorCSAqICAgICAgIF9fX19fX19fX19fLi4uLi4uLi4uLi4uLi4uLi4uLi4uCisJICogICAg
ICB8aGVhZCAgICAgICB8ICAgICAgICAgICAgICAgICAgIHwKKwkgKiAgICAgIHxfX19fX19fX19f
X3wuLi4uLi4uLi4uLi4uLi4uLi4gUEFHRS84CisJICogICAgICB8UFYgRUxTUCAgICAgICAgICAg
ICAgICAgICAgICAgIHwKKwkgKiAgICAgIDpfX19fX19fX19fXy4uLi4uLi4uLi4uLi4uLi4uLi4u
UEFHRS80CisJICogICAgICB8ZGVzYyAoU0VORCkgICAgICAgICAgICAgICAgICAgIHwKKwkgKiAg
ICAgIHwJCQkJfAorCSAqICAgICAgOl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19QQUdF
LzIKKwkgKiAgICAgIHxjbWRzIChTRU5EKSAgICAgICAgICAgICAgICAgICAgfAorCSAqICAgICAg
fCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8CisJICogICAgICB8ICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIHwKKwkgKiAgICAgIHwgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgfAorCSAqICAgICAgfCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8CisJICog
ICAgICB8X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX3wKKwkgKgorCSAqIDAgb2Zmc2V0
OiBQViB2ZXJzaW9uIGFyZWEKKwkgKiBQQUdFLzggb2Zmc2V0OiBwZXIgZW5naW5lIHdvcmtsb2Fk
IHN1Ym1pc3Npb24gZGF0YSBhcmVhCisJICogUEFHRS80IG9mZnNldDogUFYgY29tbWFuZCBidWZm
ZXIgY29tbWFuZCBkZXNjcmlwdG9yIGFyZWEKKwkgKiBQQUdFLzIgb2Zmc2V0OiBQViBjb21tYW5k
IGJ1ZmZlciBjb21tYW5kIGRhdGEgYXJlYQorCSAqLworCisJYmFzZSA9ICAoc3RydWN0IGd2dF9z
aGFyZWRfcGFnZSAqKWdldF96ZXJvZWRfcGFnZShHRlBfS0VSTkVMKTsKKwlpZiAoIWJhc2UpIHsK
KwkJZGV2X2luZm8oZGV2X3ByaXYtPmRybS5kZXYsICJvdXQgb2YgbWVtb3J5IGZvciBzaGFyZWQg
bWVtb3J5XG4iKTsKKwkJcmV0dXJuIC1FTk9NRU07CisJfQorCisJLyogcGFzcyBndWVzdCBtZW1v
cnkgcGEgYWRkcmVzcyB0byBHVlQgYW5kIHRoZW4gcmVhZCBiYWNrIHRvIHZlcmlmeSAqLworCWdw
YSA9IF9fcGEoYmFzZSk7CisJYWRkciA9IHNoYXJlZF9hcmVhICsgdmd0aWZfb2Zmc2V0KHNoYXJl
ZF9wYWdlX2dwYSk7CisJd3JpdGVxKGdwYSwgYWRkcik7CisJaWYgKGdwYSAhPSByZWFkcShhZGRy
KSkgeworCQlkZXZfaW5mbyhkZXZfcHJpdi0+ZHJtLmRldiwgInBhc3NlZCBzaGFyZWRfcGFnZV9n
cGEgZmFpbGVkXG4iKTsKKwkJcmV0ID0gLUVJTzsKKwkJZ290byBlcnI7CisJfQorCisJYWRkciA9
IHNoYXJlZF9hcmVhICsgdmd0aWZfb2Zmc2V0KGcydl9ub3RpZnkpOworCXdyaXRlbChWR1RfRzJW
X1NIQVJFRF9QQUdFX1NFVFVQLCBhZGRyKTsKKworCXZlcl9tYWogPSBiYXNlLT52ZXJfbWFqb3I7
CisJdmVyX21pbiA9IGJhc2UtPnZlcl9taW5vcjsKKwlpZiAodmVyX21haiAhPSBQVl9NQUpPUiB8
fCB2ZXJfbWluICE9IFBWX01JTk9SKSB7CisJCWRldl9pbmZvKGRldl9wcml2LT5kcm0uZGV2LCAi
VkdQVSBQViB2ZXJzaW9uIGluY29tcGF0aWJsZVxuIik7CisJCXJldCA9IC1FSU87CisJCWdvdG8g
ZXJyOworCX0KKworCXB2ID0ga3phbGxvYyhzaXplb2Yoc3RydWN0IGk5MTVfdmlydHVhbF9ncHVf
cHYpLCBHRlBfS0VSTkVMKTsKKwlpZiAoIXB2KSB7CisJCXJldCA9IC1FTk9NRU07CisJCWdvdG8g
ZXJyOworCX0KKworCURSTV9JTkZPKCJ2Z3B1IFBWIHZlciBtYWpvciAlZCBhbmQgbWlub3IgJWRc
biIsIHZlcl9tYWosIHZlcl9taW4pOworCWRldl9wcml2LT52Z3B1LnB2ID0gcHY7CisJcHYtPnNo
YXJlZF9wYWdlID0gYmFzZTsKKwlwdi0+ZW5hYmxlZCA9IHRydWU7CisJcmV0dXJuIHJldDsKK2Vy
cjoKKwlfX2ZyZWVfcGFnZSh2aXJ0X3RvX3BhZ2UoYmFzZSkpOworCXJldHVybiByZXQ7Cit9CisK
IC8qKgogICogaW50ZWxfdmdwdV9jaGVja19wdl9jYXBzIC0gZGV0ZWN0IHZpcnR1YWwgR1BVIFBW
IGNhcGFiaWxpdGllcwogICogQGRldl9wcml2OiBpOTE1IGRldmljZSBwcml2YXRlCkBAIC0zMzYs
NSArNDI0LDExIEBAIGJvb2wgaW50ZWxfdmdwdV9jaGVja19wdl9jYXBzKHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdiwKIAlpZiAoIXB2Y2FwcykKIAkJcmV0dXJuIGZhbHNlOwogCisJ
aWYgKGludGVsX3ZncHVfc2V0dXBfc2hhcmVkX3BhZ2UoZGV2X3ByaXYsIHNoYXJlZF9hcmVhKSkg
eworCQlkZXZfcHJpdi0+dmdwdS5wdl9jYXBzID0gMDsKKwkJd3JpdGVsKDAsIHNoYXJlZF9hcmVh
ICsgdmd0aWZfb2Zmc2V0KHB2X2NhcHMpKTsKKwkJcmV0dXJuIGZhbHNlOworCX0KKwogCXJldHVy
biB0cnVlOwogfQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV92Z3B1Lmgg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3ZncHUuaAppbmRleCBiYmU1NmI1Li40MDFhZjI0
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3ZncHUuaAorKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3ZncHUuaApAQCAtMjcsNyArMjcsMjUgQEAKICNpbmNsdWRl
ICJpOTE1X2Rydi5oIgogI2luY2x1ZGUgImk5MTVfcHZpbmZvLmgiCiAKKyNkZWZpbmUgUFZfTUFK
T1IJCTEKKyNkZWZpbmUgUFZfTUlOT1IJCTAKKworLyoKKyAqIEEgc2hhcmVkIHBhZ2UoNEtCKSBi
ZXR3ZWVuIGd2dCBhbmQgVk0sIGNvdWxkIGJlIGFsbG9jYXRlZCBieSBndWVzdCBkcml2ZXIKKyAq
IG9yIGEgZml4ZWQgbG9jYXRpb24gaW4gUENJIGJhciAwIHJlZ2lvbgorICovCitzdHJ1Y3QgZ3Z0
X3NoYXJlZF9wYWdlIHsKKwl1MTYgdmVyX21ham9yOworCXUxNiB2ZXJfbWlub3I7Cit9OworCitz
dHJ1Y3QgaTkxNV92aXJ0dWFsX2dwdV9wdiB7CisJc3RydWN0IGd2dF9zaGFyZWRfcGFnZSAqc2hh
cmVkX3BhZ2U7CisJYm9vbCBlbmFibGVkOworfTsKKwogdm9pZCBpOTE1X2RldGVjdF92Z3B1KHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdik7Cit2b2lkIGk5MTVfZGVzdHJveV92Z3B1
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdik7CiAKIGJvb2wgaW50ZWxfdmdwdV9o
YXNfZnVsbF9wcGd0dChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpOwogCi0tIAox
LjguMy4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
