Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A4621AE93D
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2019 13:35:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07C046E03B;
	Tue, 10 Sep 2019 11:35:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 406EE6E03B
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Sep 2019 11:35:55 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Sep 2019 04:35:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,489,1559545200"; d="scan'208";a="186826210"
Received: from rosetta.fi.intel.com ([10.237.72.194])
 by orsmga003.jf.intel.com with ESMTP; 10 Sep 2019 04:35:53 -0700
Received: by rosetta.fi.intel.com (Postfix, from userid 1000)
 id 59B08843CCA; Tue, 10 Sep 2019 14:35:49 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Sep 2019 14:35:47 +0300
Message-Id: <20190910113547.7656-1-mika.kuoppala@linux.intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH] drm/i915/tgl: Keep forcewake always for now
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

Rm9yY2V3YWtlIGhhbmRsaW5nIGlzIGEgcHJpbWUgc3VzcGVjdCBub3cuIEtlZXAgcmVmCmFsd2F5
cyBvbiB0Z2wgdG8gdGVzdCB0aGUgdGhlb3J5IGFuZCByZXZlYWwgdGhlIGNvdmVyYWdlLgoKVGVz
dGNhc2U6IGlndC9nZW1fc3luYwpDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24u
Y28udWs+ClN1Z2dlc3RlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28u
dWs+ClNpZ25lZC1vZmYtYnk6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGludXguaW50
ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMgfCA1ICsrKystCiAx
IGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZ2VtLmMKaW5kZXggMTQxMDI0YzY2ZjM2Li4yYWI5NzBiNGQ1MzQgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9nZW0uYwpAQCAtMTE0NCw3ICsxMTQ0LDEwIEBAIHZvaWQgaTkxNV9nZW1fc2FuaXRp
emUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCiAJICovCiAJaW50ZWxfZ3Rfc2FuaXRp
emUoJmk5MTUtPmd0LCBmYWxzZSk7CiAKLQlpbnRlbF91bmNvcmVfZm9yY2V3YWtlX3B1dCgmaTkx
NS0+dW5jb3JlLCBGT1JDRVdBS0VfQUxMKTsKKwkvKiBYWFggRm9yY2V3YWtlIGhhbmRsaW5nIGlz
IGEgcHJpbWUgc3VzcGVjdCBub3cgKi8KKwlpZiAoSU5URUxfR0VOKGk5MTUpIDwgMTIpCisJCWlu
dGVsX3VuY29yZV9mb3JjZXdha2VfcHV0KCZpOTE1LT51bmNvcmUsIEZPUkNFV0FLRV9BTEwpOwor
CiAJaW50ZWxfcnVudGltZV9wbV9wdXQoJmk5MTUtPnJ1bnRpbWVfcG0sIHdha2VyZWYpOwogfQog
Ci0tIAoyLjE3LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
