Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FFEA3D40C
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jun 2019 19:27:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 430B689226;
	Tue, 11 Jun 2019 17:27:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38B1D89204
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jun 2019 17:27:37 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Jun 2019 10:27:36 -0700
X-ExtLoop1: 1
Received: from rosetta.fi.intel.com ([10.237.72.186])
 by orsmga002.jf.intel.com with ESMTP; 11 Jun 2019 10:27:35 -0700
Received: by rosetta.fi.intel.com (Postfix, from userid 1000)
 id 3E4DF840688; Tue, 11 Jun 2019 20:27:33 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 11 Jun 2019 20:27:31 +0300
Message-Id: <20190611172731.19174-9-mika.kuoppala@linux.intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190611172731.19174-1-mika.kuoppala@linux.intel.com>
References: <20190611172731.19174-1-mika.kuoppala@linux.intel.com>
Subject: [Intel-gfx] [PATCH 9/9] drm/i915/gtt: Tear down setup and cleanup
 macros for page dma
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

V2UgZG9uJ3QgdXNlIGNvbW1vbiBjb2RlcGF0aHMgdG8gc2V0dXAgYW5kIGNsZWFudXAgcGFnZQpk
aXJlY3RvcmllcyB2cyBwYWdlIHRhYmxlcy4gU28gdGhlaXIgc2V0dXAgYW5kIGNsZWFudXAgbWFj
cm9zCmFyZSBvZiBubyB1c2UuCgpTaWduZWQtb2ZmLWJ5OiBNaWthIEt1b3BwYWxhIDxtaWthLmt1
b3BwYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dl
bV9ndHQuYyB8IDE0ICsrKysrKy0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25z
KCspLCA4IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZ2VtX2d0dC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMKaW5kZXgg
OWIwZDBhMDc3ZTMxLi5hMjAyMmYyNDBmYjYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZ2VtX2d0dC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0
dC5jCkBAIC01NTAsOCArNTUwLDYgQEAgc3RhdGljIHZvaWQgY2xlYW51cF9wYWdlX2RtYShzdHJ1
Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2bSwKIAogI2RlZmluZSBrbWFwX2F0b21pY19weChweCkg
a21hcF9hdG9taWMocHhfYmFzZShweCktPnBhZ2UpCiAKLSNkZWZpbmUgc2V0dXBfcHgodm0sIHB4
KSBzZXR1cF9wYWdlX2RtYSgodm0pLCBweF9iYXNlKHB4KSkKLSNkZWZpbmUgY2xlYW51cF9weCh2
bSwgcHgpIGNsZWFudXBfcGFnZV9kbWEoKHZtKSwgcHhfYmFzZShweCkpCiAjZGVmaW5lIGZpbGxf
cHgodm0sIHB4LCB2KSBmaWxsX3BhZ2VfZG1hKCh2bSksIHB4X2Jhc2UocHgpLCAodikpCiAjZGVm
aW5lIGZpbGwzMl9weCh2bSwgcHgsIHYpIGZpbGxfcGFnZV9kbWFfMzIoKHZtKSwgcHhfYmFzZShw
eCksICh2KSkKIApAQCAtNjUzLDcgKzY1MSw3IEBAIHN0YXRpYyBzdHJ1Y3QgaTkxNV9wYWdlX3Rh
YmxlICphbGxvY19wdChzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2bSkKIAlpZiAodW5saWtl
bHkoIXB0KSkKIAkJcmV0dXJuIEVSUl9QVFIoLUVOT01FTSk7CiAKLQlpZiAodW5saWtlbHkoc2V0
dXBfcHgodm0sIHB0KSkpIHsKKwlpZiAodW5saWtlbHkoc2V0dXBfcGFnZV9kbWEodm0sICZwdC0+
YmFzZSkpKSB7CiAJCWtmcmVlKHB0KTsKIAkJcmV0dXJuIEVSUl9QVFIoLUVOT01FTSk7CiAJfQpA
QCAtNjY1LDcgKzY2Myw3IEBAIHN0YXRpYyBzdHJ1Y3QgaTkxNV9wYWdlX3RhYmxlICphbGxvY19w
dChzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2bSkKIAogc3RhdGljIHZvaWQgZnJlZV9wdChz
dHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2bSwgc3RydWN0IGk5MTVfcGFnZV90YWJsZSAqcHQp
CiB7Ci0JY2xlYW51cF9weCh2bSwgcHQpOworCWNsZWFudXBfcGFnZV9kbWEodm0sICZwdC0+YmFz
ZSk7CiAJa2ZyZWUocHQpOwogfQogCkBAIC03MDYsNyArNzA0LDcgQEAgc3RhdGljIHN0cnVjdCBp
OTE1X3BhZ2VfZGlyZWN0b3J5ICphbGxvY19wZChzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2
bSkKIAlpZiAodW5saWtlbHkoIXBkKSkKIAkJcmV0dXJuIEVSUl9QVFIoLUVOT01FTSk7CiAKLQlp
ZiAodW5saWtlbHkoc2V0dXBfcHgodm0sIHBkKSkpIHsKKwlpZiAodW5saWtlbHkoc2V0dXBfcGFn
ZV9kbWEodm0sICZwZC0+YmFzZSkpKSB7CiAJCWtmcmVlKHBkKTsKIAkJcmV0dXJuIEVSUl9QVFIo
LUVOT01FTSk7CiAJfQpAQCAtNzIzLDcgKzcyMSw3IEBAIHN0YXRpYyB2b2lkIGZyZWVfcGQoc3Ry
dWN0IGk5MTVfYWRkcmVzc19zcGFjZSAqdm0sCiAJCSAgICBzdHJ1Y3QgaTkxNV9wYWdlX2RpcmVj
dG9yeSAqcGQpCiB7CiAJaWYgKGxpa2VseShwZF9oYXNfcGh5c19wYWdlKHBkKSkpCi0JCWNsZWFu
dXBfcHgodm0sIHBkKTsKKwkJY2xlYW51cF9wYWdlX2RtYSh2bSwgJnBkLT5iYXNlKTsKIAogCWtm
cmVlKHBkKTsKIH0KQEAgLTEzMDQsNyArMTMwMiw3IEBAIHN0YXRpYyB2b2lkIGdlbjhfcHBndHRf
Y2xlYW51cF80bHZsKHN0cnVjdCBpOTE1X3BwZ3R0ICpwcGd0dCkKIAkJZ2VuOF9wcGd0dF9jbGVh
bnVwXzNsdmwoJnBwZ3R0LT52bSwgcGRwKTsKIAl9CiAKLQljbGVhbnVwX3B4KCZwcGd0dC0+dm0s
IHBtbDQpOworCWNsZWFudXBfcGFnZV9kbWEoJnBwZ3R0LT52bSwgJnBtbDQtPmJhc2UpOwogfQog
CiBzdGF0aWMgdm9pZCBnZW44X3BwZ3R0X2NsZWFudXAoc3RydWN0IGk5MTVfYWRkcmVzc19zcGFj
ZSAqdm0pCkBAIC0xNTgxLDcgKzE1NzksNyBAQCBzdGF0aWMgc3RydWN0IGk5MTVfcHBndHQgKmdl
bjhfcHBndHRfY3JlYXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQogCX0KIAogCWlm
IChpOTE1X3ZtX2lzXzRsdmwoJnBwZ3R0LT52bSkpIHsKLQkJcmV0ID0gc2V0dXBfcHgoJnBwZ3R0
LT52bSwgcHBndHQtPnBkKTsKKwkJcmV0ID0gc2V0dXBfcGFnZV9kbWEoJnBwZ3R0LT52bSwgJnBw
Z3R0LT5wZC0+YmFzZSk7CiAJCWlmIChyZXQpCiAJCQlnb3RvIGVycl9mcmVlX3BkcDsKIAotLSAK
Mi4xNy4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
