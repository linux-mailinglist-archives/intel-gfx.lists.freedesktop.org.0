Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A97C3D409
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jun 2019 19:27:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6216F89220;
	Tue, 11 Jun 2019 17:27:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89852891D4
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jun 2019 17:27:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Jun 2019 10:27:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,362,1557212400"; d="scan'208";a="183872738"
Received: from rosetta.fi.intel.com ([10.237.72.186])
 by fmsmga002.fm.intel.com with ESMTP; 11 Jun 2019 10:27:35 -0700
Received: by rosetta.fi.intel.com (Postfix, from userid 1000)
 id 3762684064E; Tue, 11 Jun 2019 20:27:33 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 11 Jun 2019 20:27:29 +0300
Message-Id: <20190611172731.19174-7-mika.kuoppala@linux.intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190611172731.19174-1-mika.kuoppala@linux.intel.com>
References: <20190611172731.19174-1-mika.kuoppala@linux.intel.com>
Subject: [Intel-gfx] [PATCH 7/9] drm/i915/gtt: Check for physical page for
 pd entry always
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

Q2hlY2sgdGhlIHBoeXNpY2FsIHBhZ2UgYmVmb3JlIHdyaXRpbmcgdGhlIGVudHJ5IGludG8KdGhl
IHBoeXNpY2FsIHBhZ2UuIFRoaXMgZnVydGhlciBnZW5lcmFsaXplcyB0aGUgcGQgc28gdGhhdApt
YW5pcHVsYXRpb24gaW4gY2FsbHNpdGVzIHdpbGwgYmUgaWRlbnRpY2FsLCByZW1vdmluZyB0aGUg
bmVlZCB0bwpoYW5kbGUgcGRwcyBkaWZmZXJlbnRseSBmb3IgZ2VuOC4KClNpZ25lZC1vZmYtYnk6
IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jIHwgMjAgKysrKysrKy0tLS0tLS0tLS0tLS0K
IDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDEzIGRlbGV0aW9ucygtKQoKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMKaW5kZXggODE1OTUwNjU4YjEyLi5mMWQ3ODc0ODM0ZTIg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCkBAIC03NDcsMTcgKzc0NywxMSBAQCBz
dGF0aWMgdm9pZCBfX3NldF9wZF9lbnRyeShzdHJ1Y3QgaTkxNV9wYWdlX2RpcmVjdG9yeSAqIGNv
bnN0IHBkLAogCiAjZGVmaW5lIHNldF9wZF9lbnRyeShwZCwgcGRlLCB0bykgKHsJCQkJCVwKIAko
cGQpLT5lbnRyeVsocGRlKV0gPSAodG8pOwkJCQkJXAotCV9fc2V0X3BkX2VudHJ5KChwZCksIChw
ZGUpLAkJCQkJXAorCWlmIChsaWtlbHkocGRfaGFzX3BoeXNfcGFnZShwZCkpKQkJCQlcCisJCV9f
c2V0X3BkX2VudHJ5KChwZCksIChwZGUpLAkJCQlcCiAJCSAgICAgICBnZW44X3BkZV9lbmNvZGUo
cHhfZG1hKHRvKSwgSTkxNV9DQUNIRV9MTEMpKTsJXAogfSkKIAotI2RlZmluZSBzZXRfcGRwX2Vu
dHJ5KHBkcCwgcGRwZSwgdG8pICh7CQlcCi0JKHBkcCktPmVudHJ5WyhwZHBlKV0gPSAodG8pOwkJ
XAotCWlmIChwZF9oYXNfcGh5c19wYWdlKHBkcCkpCQkJCQlcCi0JCV9fc2V0X3BkX2VudHJ5KChw
ZHApLCAocGRwZSksCQkJCVwKLQkJCSAgICAgICBnZW44X3BkZV9lbmNvZGUocHhfZG1hKHRvKSwg
STkxNV9DQUNIRV9MTEMpKTtcCi19KQotCiAvKgogICogUERFIFRMQnMgYXJlIGEgcGFpbiB0byBp
bnZhbGlkYXRlIG9uIEdFTjgrLiBXaGVuIHdlIG1vZGlmeQogICogdGhlIHBhZ2UgdGFibGUgc3Ry
dWN0dXJlcywgd2UgbWFyayB0aGVtIGRpcnR5IHNvIHRoYXQKQEAgLTgzOCw3ICs4MzIsNyBAQCBz
dGF0aWMgYm9vbCBnZW44X3BwZ3R0X2NsZWFyX3BkcChzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNl
ICp2bSwKIAogCQlzcGluX2xvY2soJnBkcC0+bG9jayk7CiAJCWlmICghYXRvbWljX3JlYWQoJnBk
LT51c2VkKSkgewotCQkJc2V0X3BkcF9lbnRyeShwZHAsIHBkcGUsIHZtLT5zY3JhdGNoX3BkKTsK
KwkJCXNldF9wZF9lbnRyeShwZHAsIHBkcGUsIHZtLT5zY3JhdGNoX3BkKTsKIAogCQkJR0VNX0JV
R19PTighYXRvbWljX3JlYWQoJnBkcC0+dXNlZCkpOwogCQkJYXRvbWljX2RlYygmcGRwLT51c2Vk
KTsKQEAgLTEzNzksNyArMTM3Myw3IEBAIHN0YXRpYyBpbnQgZ2VuOF9wcGd0dF9hbGxvY19wZHAo
c3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSAqdm0sCiAKIAkJCW9sZCA9IGNtcHhjaGcoJnBkcC0+
ZW50cnlbcGRwZV0sIHZtLT5zY3JhdGNoX3BkLCBwZCk7CiAJCQlpZiAob2xkID09IHZtLT5zY3Jh
dGNoX3BkKSB7Ci0JCQkJc2V0X3BkcF9lbnRyeShwZHAsIHBkcGUsIHBkKTsKKwkJCQlzZXRfcGRf
ZW50cnkocGRwLCBwZHBlLCBwZCk7CiAJCQkJYXRvbWljX2luYygmcGRwLT51c2VkKTsKIAkJCX0g
ZWxzZSB7CiAJCQkJZnJlZV9wZCh2bSwgcGQpOwpAQCAtMTQwNSw3ICsxMzk5LDcgQEAgc3RhdGlj
IGludCBnZW44X3BwZ3R0X2FsbG9jX3BkcChzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2bSwK
IHVud2luZF9wZDoKIAlzcGluX2xvY2soJnBkcC0+bG9jayk7CiAJaWYgKGF0b21pY19kZWNfYW5k
X3Rlc3QoJnBkLT51c2VkKSkgewotCQlzZXRfcGRwX2VudHJ5KHBkcCwgcGRwZSwgdm0tPnNjcmF0
Y2hfcGQpOworCQlzZXRfcGRfZW50cnkocGRwLCBwZHBlLCB2bS0+c2NyYXRjaF9wZCk7CiAJCUdF
TV9CVUdfT04oIWF0b21pY19yZWFkKCZwZHAtPnVzZWQpKTsKIAkJYXRvbWljX2RlYygmcGRwLT51
c2VkKTsKIAkJZnJlZV9wZCh2bSwgcGQpOwpAQCAtMTQ5Nyw3ICsxNDkxLDcgQEAgc3RhdGljIGlu
dCBnZW44X3ByZWFsbG9jYXRlX3RvcF9sZXZlbF9wZHAoc3RydWN0IGk5MTVfcHBndHQgKnBwZ3R0
KQogCQkJZ290byB1bndpbmQ7CiAKIAkJaW5pdF9wZCh2bSwgcGQsIHZtLT5zY3JhdGNoX3B0KTsK
LQkJc2V0X3BkcF9lbnRyeShwZHAsIHBkcGUsIHBkKTsKKwkJc2V0X3BkX2VudHJ5KHBkcCwgcGRw
ZSwgcGQpOwogCiAJCWF0b21pY19pbmMoJnBkcC0+dXNlZCk7CiAJfQpAQCAtMTUwOSw3ICsxNTAz
LDcgQEAgc3RhdGljIGludCBnZW44X3ByZWFsbG9jYXRlX3RvcF9sZXZlbF9wZHAoc3RydWN0IGk5
MTVfcHBndHQgKnBwZ3R0KQogdW53aW5kOgogCXN0YXJ0IC09IGZyb207CiAJZ2VuOF9mb3JfZWFj
aF9wZHBlKHBkLCBwZHAsIGZyb20sIHN0YXJ0LCBwZHBlKSB7Ci0JCXNldF9wZHBfZW50cnkocGRw
LCBwZHBlLCB2bS0+c2NyYXRjaF9wZCk7CisJCXNldF9wZF9lbnRyeShwZHAsIHBkcGUsIHZtLT5z
Y3JhdGNoX3BkKTsKIAkJZnJlZV9wZCh2bSwgcGQpOwogCX0KIAlhdG9taWNfc2V0KCZwZHAtPnVz
ZWQsIDApOwotLSAKMi4xNy4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
