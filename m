Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C47D43D40A
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jun 2019 19:27:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9460189202;
	Tue, 11 Jun 2019 17:27:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5510689218
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jun 2019 17:27:37 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Jun 2019 10:27:37 -0700
X-ExtLoop1: 1
Received: from rosetta.fi.intel.com ([10.237.72.186])
 by orsmga001.jf.intel.com with ESMTP; 11 Jun 2019 10:27:35 -0700
Received: by rosetta.fi.intel.com (Postfix, from userid 1000)
 id 3ACDE840684; Tue, 11 Jun 2019 20:27:33 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 11 Jun 2019 20:27:30 +0300
Message-Id: <20190611172731.19174-8-mika.kuoppala@linux.intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190611172731.19174-1-mika.kuoppala@linux.intel.com>
References: <20190611172731.19174-1-mika.kuoppala@linux.intel.com>
Subject: [Intel-gfx] [PATCH 8/9] drm/i915/gtt: Make swapping the pd entry
 generic
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
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

U3dhcHBpbmcgYSBwZCBlbnRyeSBpcyBzYW1lIGFjcm9zcyB0aGUgcGFnZSBkaXJlY3Rvcmllcywg
aWYKd2Ugc3VjY2VlZCB3ZSBuZWVkIHRvIGluY3JlbWVudCB0aGUgY291bnQgYW5kIHdyaXRlIHRo
ZSBwaHlzIHBhZ2UKZW50cnkuIE1ha2UgYSBjb21tb24gZnVuY3Rpb24gZm9yIGl0LgoKU2lnbmVk
LW9mZi1ieTogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+Ci0t
LQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMgfCA0MSArKysrKysrKysrKysr
KysrKysrLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDI3IGluc2VydGlvbnMoKyksIDE0IGRl
bGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0
dC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMKaW5kZXggZjFkNzg3NDgz
NGUyLi45YjBkMGEwNzdlMzEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
Z2VtX2d0dC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCkBAIC03
NTIsNiArNzUyLDI3IEBAIHN0YXRpYyB2b2lkIF9fc2V0X3BkX2VudHJ5KHN0cnVjdCBpOTE1X3Bh
Z2VfZGlyZWN0b3J5ICogY29uc3QgcGQsCiAJCSAgICAgICBnZW44X3BkZV9lbmNvZGUocHhfZG1h
KHRvKSwgSTkxNV9DQUNIRV9MTEMpKTsJXAogfSkKIAorc3RhdGljIHZvaWQgKl9fc3dhcF9wZF9l
bnRyeShzdHJ1Y3QgaTkxNV9wYWdlX2RpcmVjdG9yeSAqIGNvbnN0IHBkLAorCQkJICAgICBjb25z
dCB1bnNpZ25lZCBzaG9ydCBwZGUsCisJCQkgICAgIHZvaWQgKiBjb25zdCBvbGRfdmFsLAorCQkJ
ICAgICB2b2lkICogY29uc3QgbmV3X3ZhbCwKKwkJCSAgICAgY29uc3QgdTY0IGVuY29kZWRfZW50
cnkpCit7CisJdm9pZCAqIGNvbnN0IG9sZCA9IGNtcHhjaGcoJnBkLT5lbnRyeVtwZGVdLCBvbGRf
dmFsLCBuZXdfdmFsKTsKKworCWlmIChsaWtlbHkob2xkID09IG9sZF92YWwpKSB7CisJCWF0b21p
Y19pbmMoJnBkLT51c2VkKTsKKwkJaWYgKGxpa2VseShwZF9oYXNfcGh5c19wYWdlKHBkKSkpCisJ
CQlfX3NldF9wZF9lbnRyeShwZCwgcGRlLCBlbmNvZGVkX2VudHJ5KTsKKwl9CisKKwlyZXR1cm4g
b2xkOworfQorCisjZGVmaW5lIHN3YXBfcGRfZW50cnkocGQsIHBkZSwgb2xkLCB0bykgXAorCV9f
c3dhcF9wZF9lbnRyeSgocGQpLCAocGRlKSwgKG9sZCksICh0byksIFwKKwkJCWdlbjhfcGRlX2Vu
Y29kZShweF9kbWEodG8pLCBJOTE1X0NBQ0hFX0xMQykpCisKIC8qCiAgKiBQREUgVExCcyBhcmUg
YSBwYWluIHRvIGludmFsaWRhdGUgb24gR0VOOCsuIFdoZW4gd2UgbW9kaWZ5CiAgKiB0aGUgcGFn
ZSB0YWJsZSBzdHJ1Y3R1cmVzLCB3ZSBtYXJrIHRoZW0gZGlydHkgc28gdGhhdApAQCAtMTMyNiwx
MSArMTM0Nyw4IEBAIHN0YXRpYyBpbnQgZ2VuOF9wcGd0dF9hbGxvY19wZChzdHJ1Y3QgaTkxNV9h
ZGRyZXNzX3NwYWNlICp2bSwKIAkJCWlmIChjb3VudCA8IEdFTjhfUFRFUyB8fCBpbnRlbF92Z3B1
X2FjdGl2ZSh2bS0+aTkxNSkpCiAJCQkJZ2VuOF9pbml0aWFsaXplX3B0KHZtLCBwdCk7CiAKLQkJ
CW9sZCA9IGNtcHhjaGcoJnBkLT5lbnRyeVtwZGVdLCB2bS0+c2NyYXRjaF9wdCwgcHQpOwotCQkJ
aWYgKG9sZCA9PSB2bS0+c2NyYXRjaF9wdCkgewotCQkJCXNldF9wZF9lbnRyeShwZCwgcGRlLCBw
dCk7Ci0JCQkJYXRvbWljX2luYygmcGQtPnVzZWQpOwotCQkJfSBlbHNlIHsKKwkJCW9sZCA9IHN3
YXBfcGRfZW50cnkocGQsIHBkZSwgdm0tPnNjcmF0Y2hfcHQsIHB0KTsKKwkJCWlmICh1bmxpa2Vs
eShvbGQgIT0gdm0tPnNjcmF0Y2hfcHQpKSB7CiAJCQkJZnJlZV9wdCh2bSwgcHQpOwogCQkJCXB0
ID0gb2xkOwogCQkJfQpAQCAtMTM3MSwxMSArMTM4OSw4IEBAIHN0YXRpYyBpbnQgZ2VuOF9wcGd0
dF9hbGxvY19wZHAoc3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSAqdm0sCiAKIAkJCWluaXRfcGQo
dm0sIHBkLCB2bS0+c2NyYXRjaF9wdCk7CiAKLQkJCW9sZCA9IGNtcHhjaGcoJnBkcC0+ZW50cnlb
cGRwZV0sIHZtLT5zY3JhdGNoX3BkLCBwZCk7Ci0JCQlpZiAob2xkID09IHZtLT5zY3JhdGNoX3Bk
KSB7Ci0JCQkJc2V0X3BkX2VudHJ5KHBkcCwgcGRwZSwgcGQpOwotCQkJCWF0b21pY19pbmMoJnBk
cC0+dXNlZCk7Ci0JCQl9IGVsc2UgeworCQkJb2xkID0gc3dhcF9wZF9lbnRyeShwZHAsIHBkcGUs
IHZtLT5zY3JhdGNoX3BkLCBwZCk7CisJCQlpZiAodW5saWtlbHkob2xkICE9IHZtLT5zY3JhdGNo
X3BkKSkgewogCQkJCWZyZWVfcGQodm0sIHBkKTsKIAkJCQlwZCA9IG9sZDsKIAkJCX0KQEAgLTE0
NDAsMTAgKzE0NTUsOCBAQCBzdGF0aWMgaW50IGdlbjhfcHBndHRfYWxsb2NfNGx2bChzdHJ1Y3Qg
aTkxNV9hZGRyZXNzX3NwYWNlICp2bSwKIAogCQkJaW5pdF9wZCh2bSwgcGRwLCB2bS0+c2NyYXRj
aF9wZCk7CiAKLQkJCW9sZCA9IGNtcHhjaGcoJnBtbDQtPmVudHJ5W3BtbDRlXSwgdm0tPnNjcmF0
Y2hfcGRwLCBwZHApOwotCQkJaWYgKG9sZCA9PSB2bS0+c2NyYXRjaF9wZHApIHsKLQkJCQlzZXRf
cGRfZW50cnkocG1sNCwgcG1sNGUsIHBkcCk7Ci0JCQl9IGVsc2UgeworCQkJb2xkID0gc3dhcF9w
ZF9lbnRyeShwbWw0LCBwbWw0ZSwgdm0tPnNjcmF0Y2hfcGRwLCBwZHApOworCQkJaWYgKHVubGlr
ZWx5KG9sZCAhPSB2bS0+c2NyYXRjaF9wZHApKSB7CiAJCQkJZnJlZV9wZCh2bSwgcGRwKTsKIAkJ
CQlwZHAgPSBvbGQ7CiAJCQl9Ci0tIAoyLjE3LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
