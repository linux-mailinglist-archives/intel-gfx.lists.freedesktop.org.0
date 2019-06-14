Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 31CB246496
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 18:43:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 946B989ADC;
	Fri, 14 Jun 2019 16:43:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5ECB89ADC
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 16:43:54 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Jun 2019 09:43:54 -0700
X-ExtLoop1: 1
Received: from rosetta.fi.intel.com ([10.237.72.186])
 by orsmga005.jf.intel.com with ESMTP; 14 Jun 2019 09:43:53 -0700
Received: by rosetta.fi.intel.com (Postfix, from userid 1000)
 id D3D888400FD; Fri, 14 Jun 2019 19:43:50 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 Jun 2019 19:43:43 +0300
Message-Id: <20190614164350.30415-3-mika.kuoppala@linux.intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190614164350.30415-1-mika.kuoppala@linux.intel.com>
References: <20190614164350.30415-1-mika.kuoppala@linux.intel.com>
Subject: [Intel-gfx] [PATCH 03/10] drm/i915/gtt: Introduce init_pd_with_page
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

V2Ugc2V0IHRoZSBwYWdlIGRpcmVjdG9yeSBlbnRyaWVzIHRvIHBvaW50IGludG8gYSBwYWdlIHRh
YmxlLgpUaGVyZSBpcyBubyBnZW4gc3BlY2lmaWNzIGluIGhlcmUgc28gbWFrZSBpdCBzaW1wbGUg
YW5kCm9idmlvdXMuCgpTaWduZWQtb2ZmLWJ5OiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3BwYWxh
QGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQu
YyB8IDE2ICsrKysrKysrLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyks
IDggZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9n
ZW1fZ3R0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYwppbmRleCBlZjNm
YTZiNWVmMTAuLmEyYWIwYjdiYjIzNCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9nZW1fZ3R0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMK
QEAgLTcyNiwxMiArNzI2LDEyIEBAIHN0YXRpYyB2b2lkIGZyZWVfcGQoc3RydWN0IGk5MTVfYWRk
cmVzc19zcGFjZSAqdm0sCiAJa2ZyZWUocGQpOwogfQogCi1zdGF0aWMgdm9pZCBnZW44X2luaXRp
YWxpemVfcGQoc3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSAqdm0sCi0JCQkgICAgICAgc3RydWN0
IGk5MTVfcGFnZV9kaXJlY3RvcnkgKnBkKQorc3RhdGljIHZvaWQgaW5pdF9wZF93aXRoX3BhZ2Uo
c3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSAqdm0sCisJCQkgICAgICBzdHJ1Y3QgaTkxNV9wYWdl
X2RpcmVjdG9yeSAqIGNvbnN0IHBkLAorCQkJICAgICAgc3RydWN0IGk5MTVfcGFnZV90YWJsZSAq
cHQpCiB7Ci0JZmlsbF9weCh2bSwgcGQsCi0JCWdlbjhfcGRlX2VuY29kZShweF9kbWEodm0tPnNj
cmF0Y2hfcHQpLCBJOTE1X0NBQ0hFX0xMQykpOwotCW1lbXNldF9wKHBkLT5lbnRyeSwgdm0tPnNj
cmF0Y2hfcHQsIEk5MTVfUERFUyk7CisJZmlsbF9weCh2bSwgcGQsIGdlbjhfcGRlX2VuY29kZShw
eF9kbWEocHQpLCBJOTE1X0NBQ0hFX0xMQykpOworCW1lbXNldF9wKHBkLT5lbnRyeSwgcHQsIDUx
Mik7CiB9CiAKIHN0YXRpYyBzdHJ1Y3QgaTkxNV9wYWdlX2RpcmVjdG9yeSAqYWxsb2NfcGRwKHN0
cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2UgKnZtKQpAQCAtMTI2NCw3ICsxMjY0LDcgQEAgc3RhdGlj
IGludCBnZW44X2luaXRfc2NyYXRjaChzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2bSkKIAl9
CiAKIAlnZW44X2luaXRpYWxpemVfcHQodm0sIHZtLT5zY3JhdGNoX3B0KTsKLQlnZW44X2luaXRp
YWxpemVfcGQodm0sIHZtLT5zY3JhdGNoX3BkKTsKKwlpbml0X3BkX3dpdGhfcGFnZSh2bSwgdm0t
PnNjcmF0Y2hfcGQsIHZtLT5zY3JhdGNoX3B0KTsKIAlpZiAoaTkxNV92bV9pc180bHZsKHZtKSkK
IAkJZ2VuOF9pbml0aWFsaXplXzRsdmxfcGRwKHZtLCB2bS0+c2NyYXRjaF9wZHApOwogCkBAIC0x
NDQxLDcgKzE0NDEsNyBAQCBzdGF0aWMgaW50IGdlbjhfcHBndHRfYWxsb2NfcGRwKHN0cnVjdCBp
OTE1X2FkZHJlc3Nfc3BhY2UgKnZtLAogCQkJaWYgKElTX0VSUihwZCkpCiAJCQkJZ290byB1bndp
bmQ7CiAKLQkJCWdlbjhfaW5pdGlhbGl6ZV9wZCh2bSwgcGQpOworCQkJaW5pdF9wZF93aXRoX3Bh
Z2Uodm0sIHBkLCB2bS0+c2NyYXRjaF9wdCk7CiAKIAkJCW9sZCA9IGNtcHhjaGcoJnBkcC0+ZW50
cnlbcGRwZV0sIHZtLT5zY3JhdGNoX3BkLCBwZCk7CiAJCQlpZiAob2xkID09IHZtLT5zY3JhdGNo
X3BkKSB7CkBAIC0xNTYzLDcgKzE1NjMsNyBAQCBzdGF0aWMgaW50IGdlbjhfcHJlYWxsb2NhdGVf
dG9wX2xldmVsX3BkcChzdHJ1Y3QgaTkxNV9wcGd0dCAqcHBndHQpCiAJCWlmIChJU19FUlIocGQp
KQogCQkJZ290byB1bndpbmQ7CiAKLQkJZ2VuOF9pbml0aWFsaXplX3BkKHZtLCBwZCk7CisJCWlu
aXRfcGRfd2l0aF9wYWdlKHZtLCBwZCwgdm0tPnNjcmF0Y2hfcHQpOwogCQlnZW44X3BwZ3R0X3Nl
dF9wZHBlKHZtLCBwZHAsIHBkLCBwZHBlKTsKIAogCQlhdG9taWNfaW5jKCZwZHAtPnVzZWQpOwot
LSAKMi4xNy4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
