Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FA479F327
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Aug 2019 21:18:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDA8289BA9;
	Tue, 27 Aug 2019 19:18:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4394489BA9
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Aug 2019 19:18:10 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Aug 2019 12:18:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,438,1559545200"; d="scan'208";a="209863402"
Received: from amanna.iind.intel.com ([10.223.74.216])
 by fmsmga002.fm.intel.com with ESMTP; 27 Aug 2019 12:18:08 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 28 Aug 2019 00:40:19 +0530
Message-Id: <20190827191026.26175-6-animesh.manna@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190827191026.26175-1-animesh.manna@intel.com>
References: <20190827191026.26175-1-animesh.manna@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 05/11] drm/i915/dsb: Register definition of
 DSB registers.
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

QWRkZWQga2V5IHJlZ2lzdGVyIGRlZmluaXRpb25zIG9mIERTQi4KCmRzYi1jdHJsIHJlZ2lzdGVy
IGlzIHJlcXVpcmVkIHRvIGVuYWJsZSBkc2ItZW5naW5lLgoKaGVhZC1wdHIgcmVnaXN0ZXIgaG9s
ZCB0aGUgaGVhZCBvZiBidWZmZXIgYWRkcmVzcyBmcm9tIHdoZXJlIHRoZQpleGVjdXRpb24gd2ls
bCBzdGFydC4KClByb2dyYW1taW5nIHRhaWwtcHRyIHJlZ2lzdGVyIGlzIGEgdHJpZ2dlciBwb2lu
dCB0byBzdGFydCBleGVjdXRpb24uCgpDYzogVW1hIFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVs
LmNvbT4KQ2M6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+CkNjOiBSb2RyaWdv
IFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEFuaW1lc2ggTWFu
bmEgPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfcmVnLmggfCAxNSArKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAxNSBpbnNlcnRp
b25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKaW5kZXggMDJlMWVmMTBjNDdlLi43MWM2YzIz
ODA0NDMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaApAQCAtMTE1NjQsNCArMTE1NjQsMTkgQEAg
ZW51bSBza2xfcG93ZXJfZ2F0ZSB7CiAjZGVmaW5lIFBPUlRfVFhfREZMRVhEUENTU1MoZmlhKQkJ
X01NSU9fRklBKChmaWEpLCAweDAwODk0KQogI2RlZmluZSAgIERQX1BIWV9NT0RFX1NUQVRVU19O
T1RfU0FGRSh0Y19wb3J0KQkJKDEgPDwgKHRjX3BvcnQpKQogCisvKiBUaGlzIHJlZ2lzdGVyIGNv
bnRyb2xzIHRoZSBEaXNwbGF5IFN0YXRlIEJ1ZmZlciAoRFNCKSBlbmdpbmVzLiAqLworI2RlZmlu
ZSBfRFNCU0xfSU5TVEFOQ0VfQkFTRQkJMHg3MEIwMAorI2RlZmluZSBEU0JTTF9JTlNUQU5DRShw
aXBlLCBpZCkJKF9EU0JTTF9JTlNUQU5DRV9CQVNFICsgXAorCQkJCQkgKHBpcGUpICogMHgxMDAw
ICsgKGlkKSAqIDEwMCkKKyNkZWZpbmUgRFNCX0hFQUQocGlwZSwgaWQpCQlfTU1JTyhEU0JTTF9J
TlNUQU5DRShwaXBlLCBpZCkgKyAweDApCisjZGVmaW5lIERTQl9UQUlMKHBpcGUsIGlkKQkJX01N
SU8oRFNCU0xfSU5TVEFOQ0UocGlwZSwgaWQpICsgMHg0KQorI2RlZmluZSBEU0JfQ1RSTChwaXBl
LCBpZCkJCV9NTUlPKERTQlNMX0lOU1RBTkNFKHBpcGUsIGlkKSArIDB4OCkKKyNkZWZpbmUgICBE
U0JfRU5BQkxFCQkJKDEgPDwgMzEpCisjZGVmaW5lICAgRFNCX0JVRkZFUl9SRUlURVJBVEUJCSgx
IDw8IDI5KQorI2RlZmluZSAgIERTQl9XQUlUX0ZPUl9WQkxBTksJCSgxIDw8IDI4KQorI2RlZmlu
ZSAgIERTQl9XQUlUX0ZPUl9MSU5FX0lOX1JBTkdFCSgxIDw8IDI3KQorI2RlZmluZSAgIERTQl9I
QUxUCQkJKDEgPDwgMTYpCisjZGVmaW5lICAgRFNCX05PTl9QT1NURURfRU5BQkxFCQkoMSA8PCA4
KQorI2RlZmluZSAgIERTQl9TVEFUVVMJCQkoMSA8PCAwKQorCiAjZW5kaWYgLyogX0k5MTVfUkVH
X0hfICovCi0tIAoyLjIyLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
