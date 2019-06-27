Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 93D6558C4D
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jun 2019 22:58:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59FCB6E839;
	Thu, 27 Jun 2019 20:58:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 081C26E86D
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jun 2019 20:57:25 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jun 2019 13:57:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,425,1557212400"; d="scan'208";a="164455841"
Received: from unknown (HELO mwahaha-bdw.ger.corp.intel.com) ([10.252.4.227])
 by fmsmga007.fm.intel.com with ESMTP; 27 Jun 2019 13:57:19 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Jun 2019 21:56:33 +0100
Message-Id: <20190627205633.1143-38-matthew.auld@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190627205633.1143-1-matthew.auld@intel.com>
References: <20190627205633.1143-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 37/37] HAX drm/i915/lmem: default userspace
 allocations to LMEM
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGFjayBwYXRjaCB0byBkZWZhdWx0IGFsbCB1c2Vyc3BhY2UgYWxsb2NhdGlvbnMgdG8gTE1FTS4g
VXNlZnVsIGZvcgp0ZXN0aW5nIHB1cnBvc2VzLgoKU2lnbmVkLW9mZi1ieTogTWF0dGhldyBBdWxk
IDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgpDYzogSm9vbmFzIExhaHRpbmVuIDxqb29uYXMubGFo
dGluZW5AbGludXguaW50ZWwuY29tPgpDYzogQWJkaWVsIEphbnVsZ3VlIDxhYmRpZWwuamFudWxn
dWVAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMg
fCAzNyArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAz
NyBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9n
ZW0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMKaW5kZXggZWNkYWNhNDM3Nzk3
Li5hNmYyOWFjZmIzMDAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2Vt
LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYwpAQCAtNDQsNiArNDQsNyBA
QAogI2luY2x1ZGUgImdlbS9pOTE1X2dlbV9jbGZsdXNoLmgiCiAjaW5jbHVkZSAiZ2VtL2k5MTVf
Z2VtX2NvbnRleHQuaCIKICNpbmNsdWRlICJnZW0vaTkxNV9nZW1faW9jdGxzLmgiCisjaW5jbHVk
ZSAiZ2VtL2k5MTVfZ2VtX29iamVjdF9ibHQuaCIKICNpbmNsdWRlICJnZW0vaTkxNV9nZW1fcG0u
aCIKICNpbmNsdWRlICJndC9pbnRlbF9ndC5oIgogI2luY2x1ZGUgImd0L2ludGVsX2d0X3BtLmgi
CkBAIC0xNjQsOSArMTY1LDQ1IEBAIGk5MTVfZ2VtX2NyZWF0ZShzdHJ1Y3QgZHJtX2ZpbGUgKmZp
bGUsCiAKIAkvKiBBbGxvY2F0ZSB0aGUgbmV3IG9iamVjdCAqLwogCW9iaiA9IGk5MTVfZ2VtX29i
amVjdF9jcmVhdGVfc2htZW0oZGV2X3ByaXYsIHNpemUpOworCWlmIChIQVNfTE1FTShkZXZfcHJp
dikpCisJCW9iaiA9IGk5MTVfZ2VtX29iamVjdF9jcmVhdGVfbG1lbShkZXZfcHJpdiwgc2l6ZSwg
MCk7CisJZWxzZQorCQlvYmogPSBpOTE1X2dlbV9vYmplY3RfY3JlYXRlX3NobWVtKGRldl9wcml2
LCBzaXplKTsKIAlpZiAoSVNfRVJSKG9iaikpCiAJCXJldHVybiBQVFJfRVJSKG9iaik7CiAKKwlp
ZiAoaTkxNV9nZW1fb2JqZWN0X2lzX2xtZW0ob2JqKSkgeworCQlzdHJ1Y3QgaW50ZWxfY29udGV4
dCAqY2UgPQorCQkJZGV2X3ByaXYtPmVuZ2luZVtCQ1MwXS0+a2VybmVsX2NvbnRleHQ7CisKKwkJ
LyoKKwkJICogWFhYOiBXZSByZWFsbHkgd2FudCB0byBtb3ZlIHRoaXMgdG8gZ2V0X3BhZ2VzKCks
IGJ1dCB3ZQorCQkgKiByZXF1aXJlIGdyYWJiaW5nIHRoZSBCS0wgZm9yIHRoZSBibGl0dGluZyBv
cGVyYXRpb24gd2hpY2ggaXMKKwkJICogYW5ub3lpbmcuIEluIHRoZSBwaXBlbGluZSBpcyBzdXBw
b3J0IGZvciBhc3luYyBnZXRfcGFnZXMoKQorCQkgKiB3aGljaCBzaG91bGQgZml0IG5pY2VseSBm
b3IgdGhpcy4gQWxzbyBub3RlIHRoYXQgdGhlIGFjdHVhbAorCQkgKiBjbGVhciBzaG91bGQgYmUg
ZG9uZSBhc3luYyh3ZSBjdXJyZW50bHkgZG8gYW4gb2JqZWN0X3dhaXQKKwkJICogd2hpY2ggaXMg
cHVyZSBnYXJiYWdlKSwgd2UganVzdCBuZWVkIHRvIHRha2UgY2FyZSBpZgorCQkgKiB1c2Vyc3Bh
Y2Ugb3B0cyBvZiBpbXBsaWNpdCBzeW5jIGZvciB0aGUgZXhlY2J1ZiwgdG8gYXZvaWQgYW55CisJ
CSAqIHBvdGVudGlhbCBpbmZvIGxlYWsuCisJCSAqLworCisJCW11dGV4X2xvY2soJmRldl9wcml2
LT5kcm0uc3RydWN0X211dGV4KTsKKwkJcmV0ID0gaTkxNV9nZW1fb2JqZWN0X2ZpbGxfYmx0KG9i
aiwgY2UsIDApOworCQltdXRleF91bmxvY2soJmRldl9wcml2LT5kcm0uc3RydWN0X211dGV4KTsK
KwkJaWYgKHJldCkgeworCQkJaTkxNV9nZW1fb2JqZWN0X3B1dChvYmopOworCQkJcmV0dXJuIHJl
dDsKKwkJfQorCisJCWk5MTVfZ2VtX29iamVjdF9sb2NrKG9iaik7CisJCXJldCA9IGk5MTVfZ2Vt
X29iamVjdF9zZXRfdG9fY3B1X2RvbWFpbihvYmosIGZhbHNlKTsKKwkJaTkxNV9nZW1fb2JqZWN0
X3VubG9jayhvYmopOworCQlpZiAocmV0KSB7CisJCQlpOTE1X2dlbV9vYmplY3RfcHV0KG9iaik7
CisJCQlyZXR1cm4gcmV0OworCQl9CisJfQorCiAJcmV0ID0gZHJtX2dlbV9oYW5kbGVfY3JlYXRl
KGZpbGUsICZvYmotPmJhc2UsICZoYW5kbGUpOwogCS8qIGRyb3AgcmVmZXJlbmNlIGZyb20gYWxs
b2NhdGUgLSBoYW5kbGUgaG9sZHMgaXQgbm93ICovCiAJaTkxNV9nZW1fb2JqZWN0X3B1dChvYmop
OwotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
