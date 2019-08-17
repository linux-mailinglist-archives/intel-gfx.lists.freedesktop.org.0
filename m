Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DA22390FD8
	for <lists+intel-gfx@lfdr.de>; Sat, 17 Aug 2019 11:40:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 032396E9E5;
	Sat, 17 Aug 2019 09:40:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D39186E4B6
 for <intel-gfx@lists.freedesktop.org>; Sat, 17 Aug 2019 09:40:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Aug 2019 02:40:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,396,1559545200"; d="scan'208";a="376950809"
Received: from vidyashr-mobl1.amr.corp.intel.com (HELO
 ldmartin-desk1.intel.com) ([10.251.152.227])
 by fmsmga005.fm.intel.com with ESMTP; 17 Aug 2019 02:39:59 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 17 Aug 2019 02:38:53 -0700
Message-Id: <20190817093902.2171-32-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190817093902.2171-1-lucas.demarchi@intel.com>
References: <20190817093902.2171-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 31/40] rm/i915/tgl: Move GTCR register to
 cope with GAM MMIO address remap
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
Cc: Michel Thierry <michel.thierry@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogTWljaGVsIFRoaWVycnkgPG1pY2hlbC50aGllcnJ5QGludGVsLmNvbT4KCkdBTSByZWdp
c3RlcnMgbG9jYXRlZCBpbiB0aGUgMHg0eHh4IHJhbmdlIGhhdmUgYmVlbiByZWxvY2F0ZWQgdG8g
MHhDeHh4Owp0aGlzIGlzIHRvIG1ha2Ugc3BhY2UgZm9yIGdsb2JhbCBNT0NTIHJlZ2lzdGVycy4K
CkhTRDogMzk5Mzc5CkNjOiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9z
cHVyaW9AaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBNaWNoZWwgVGhpZXJyeSA8bWljaGVsLnRo
aWVycnlAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRl
bWFyY2hpQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9n
dWNfcmVnLmggfCAxICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jICAgICAg
ICB8IDcgKysrKysrLQogMiBmaWxlcyBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDEgZGVsZXRp
b24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNf
cmVnLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfcmVnLmgKaW5kZXgg
ZWRmMTk0ZDIzYzZiLi43NzE5ZmFkZmU3ODUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L3VjL2ludGVsX2d1Y19yZWcuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91
Yy9pbnRlbF9ndWNfcmVnLmgKQEAgLTgxLDYgKzgxLDcgQEAKICNkZWZpbmUgICBHVF9ET09SQkVM
TF9FTkFCTEUJCSAgKDE8PDApCiAKICNkZWZpbmUgR0VOOF9HVENSCQkJX01NSU8oMHg0Mjc0KQor
I2RlZmluZSBHRU4xMl9HVENSCQkJX01NSU8oMHhjZWU4KQogI2RlZmluZSAgIEdFTjhfR1RDUl9J
TlZBTElEQVRFCQkgICgxPDwwKQogCiAjZGVmaW5lIEdVQ19BUkFUX0M2RElTCQkJX01NSU8oMHhB
MTc4KQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYwppbmRleCA2ZjZmMDY4N2QwYmIuLjVj
Yjk4NjBjYjAyZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0
LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMKQEAgLTEzMSw5ICsx
MzEsMTQgQEAgc3RhdGljIHZvaWQgZ2VuNl9nZ3R0X2ludmFsaWRhdGUoc3RydWN0IGk5MTVfZ2d0
dCAqZ2d0dCkKIHN0YXRpYyB2b2lkIGd1Y19nZ3R0X2ludmFsaWRhdGUoc3RydWN0IGk5MTVfZ2d0
dCAqZ2d0dCkKIHsKIAlzdHJ1Y3QgaW50ZWxfdW5jb3JlICp1bmNvcmUgPSBnZ3R0LT52bS5ndC0+
dW5jb3JlOworCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gZ2d0dC0+dm0uaTkxNTsK
IAogCWdlbjZfZ2d0dF9pbnZhbGlkYXRlKGdndHQpOwotCWludGVsX3VuY29yZV93cml0ZV9mdyh1
bmNvcmUsIEdFTjhfR1RDUiwgR0VOOF9HVENSX0lOVkFMSURBVEUpOworCisJaWYgKElOVEVMX0dF
TihpOTE1KSA+PSAxMikKKwkJaW50ZWxfdW5jb3JlX3dyaXRlX2Z3KHVuY29yZSwgR0VOMTJfR1RD
UiwgR0VOOF9HVENSX0lOVkFMSURBVEUpOworCWVsc2UKKwkJaW50ZWxfdW5jb3JlX3dyaXRlX2Z3
KHVuY29yZSwgR0VOOF9HVENSLCBHRU44X0dUQ1JfSU5WQUxJREFURSk7CiB9CiAKIHN0YXRpYyB2
b2lkIGdtY2hfZ2d0dF9pbnZhbGlkYXRlKHN0cnVjdCBpOTE1X2dndHQgKmdndHQpCi0tIAoyLjIx
LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
