Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 938E53B82AC
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Jun 2021 15:07:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A475E6E9C6;
	Wed, 30 Jun 2021 13:07:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93FA16E9C6;
 Wed, 30 Jun 2021 13:07:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10030"; a="195634533"
X-IronPort-AV: E=Sophos;i="5.83,312,1616482800"; d="scan'208";a="195634533"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2021 06:07:21 -0700
X-IronPort-AV: E=Sophos;i="5.83,312,1616482800"; d="scan'208";a="558290343"
Received: from vanderss-mobl.ger.corp.intel.com (HELO thellst-mobl1.intel.com)
 ([10.249.254.133])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2021 06:07:19 -0700
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Wed, 30 Jun 2021 15:07:01 +0200
Message-Id: <20210630130701.349458-3-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210630130701.349458-1-thomas.hellstrom@linux.intel.com>
References: <20210630130701.349458-1-thomas.hellstrom@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/gem: Migrate to system at dma-buf
 map time
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 matthew.auld@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VW50aWwgd2Ugc3VwcG9ydCBwMnAgZG1hIG9yIGFzIGEgY29tcGxlbWVudCB0byB0aGF0LCBtaWdy
YXRlIGRhdGEKdG8gc3lzdGVtIG1lbW9yeSBhdCBkbWEtYnVmIG1hcCB0aW1lIGlmIHBvc3NpYmxl
LgoKdjI6Ci0gUmViYXNlIG9uIGR5bmFtaWMgZXhwb3J0ZXIuIFVwZGF0ZSB0aGUgaWd0X2RtYWJ1
Zl9pbXBvcnRfc2FtZV9kcml2ZXIKICBzZWxmdGVzdCB0byBtaWdyYXRlIGlmIHdlIGFyZSBMTUVN
IGNhcGFibGUuCnYzOgotIE1pZ3JhdGUgYWxzbyBpbiB0aGUgcGluKCkgY2FsbGJhY2suCgpTaWdu
ZWQtb2ZmLWJ5OiBUaG9tYXMgSGVsbHN0csO2bSA8dGhvbWFzLmhlbGxzdHJvbUBsaW51eC5pbnRl
bC5jb20+ClJldmlld2VkLWJ5OiBNaWNoYWVsIEouIFJ1aGwgPG1pY2hhZWwuai5ydWhsQGludGVs
LmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZG1hYnVmLmMgICAg
fCAyMSArKysrKysrKysrKysrKysrKy0tCiAuLi4vZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1
X2dlbV9kbWFidWYuYyAgfCAgNCArKystCiAyIGZpbGVzIGNoYW5nZWQsIDIyIGluc2VydGlvbnMo
KyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2Vt
L2k5MTVfZ2VtX2RtYWJ1Zi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2Rt
YWJ1Zi5jCmluZGV4IDkxOGMxOWRmN2I2Ni4uMTMzMTJkODljMmVkIDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZG1hYnVmLmMKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2RtYWJ1Zi5jCkBAIC0zNCw3ICszNCwxNCBAQCBzdGF0aWMg
c3RydWN0IHNnX3RhYmxlICppOTE1X2dlbV9tYXBfZG1hX2J1ZihzdHJ1Y3QgZG1hX2J1Zl9hdHRh
Y2htZW50ICphdHRhY2htZQogCSAqIExldCdzIHBpbiBpdCBoZXJlIHRvIGF2b2lkIGhhdmluZyB0
byBjYWxsIHRoZSBtb3ZlX25vdGlmeQogCSAqIGNhbGxiYWNrLCBUaGUgY2FsbCBvZiB3aGljaCBp
cyBub3QgeWV0IGltcGxlbWVudGVkLgogCSAqLwotCXJldCA9IGk5MTVfZ2VtX29iamVjdF9waW5f
cGFnZXMob2JqKTsKKwlpZiAoIWk5MTVfZ2VtX29iamVjdF9jYW5fbWlncmF0ZShvYmosIElOVEVM
X1JFR0lPTl9TTUVNKSkKKwkJcmV0dXJuIEVSUl9QVFIoLUVPUE5PVFNVUFApOworCisJcmV0ID0g
aTkxNV9nZW1fb2JqZWN0X21pZ3JhdGUob2JqLCBOVUxMLCBJTlRFTF9SRUdJT05fU01FTSk7CisJ
aWYgKCFyZXQpCisJCXJldCA9IGk5MTVfZ2VtX29iamVjdF93YWl0X21pZ3JhdGlvbihvYmosIDAp
OworCWlmICghcmV0KQorCQlyZXQgPSBpOTE1X2dlbV9vYmplY3RfcGluX3BhZ2VzKG9iaik7CiAJ
aWYgKHJldCkKIAkJZ290byBlcnI7CiAKQEAgLTE4MCw5ICsxODcsMTkgQEAgc3RhdGljIGludCBp
OTE1X2dlbV9lbmRfY3B1X2FjY2VzcyhzdHJ1Y3QgZG1hX2J1ZiAqZG1hX2J1ZiwgZW51bSBkbWFf
ZGF0YV9kaXJlY3QKIHN0YXRpYyBpbnQgaTkxNV9nZW1fZG1hYnVmX3BpbihzdHJ1Y3QgZG1hX2J1
Zl9hdHRhY2htZW50ICphdHRhY2gpCiB7CiAJc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9i
aiA9IGRtYV9idWZfdG9fb2JqKGF0dGFjaC0+ZG1hYnVmKTsKKwlpbnQgcmV0OwogCiAJYXNzZXJ0
X29iamVjdF9oZWxkKG9iaik7Ci0JcmV0dXJuIGk5MTVfZ2VtX29iamVjdF9waW5fcGFnZXMob2Jq
KTsKKworCWlmICghaTkxNV9nZW1fb2JqZWN0X2Nhbl9taWdyYXRlKG9iaiwgSU5URUxfUkVHSU9O
X1NNRU0pKQorCQlyZXR1cm4gLUVPUE5PVFNVUFA7CisJcmV0ID0gaTkxNV9nZW1fb2JqZWN0X21p
Z3JhdGUob2JqLCBOVUxMLCBJTlRFTF9SRUdJT05fU01FTSk7CisJaWYgKCFyZXQpCisJCXJldCA9
IGk5MTVfZ2VtX29iamVjdF93YWl0X21pZ3JhdGlvbihvYmosIDApOworCWlmICghcmV0KQorCQly
ZXQgPSBpOTE1X2dlbV9vYmplY3RfcGluX3BhZ2VzKG9iaik7CisKKwlyZXR1cm4gcmV0OwogfQog
CiBzdGF0aWMgdm9pZCBpOTE1X2dlbV9kbWFidWZfdW5waW4oc3RydWN0IGRtYV9idWZfYXR0YWNo
bWVudCAqYXR0YWNoKQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0
ZXN0cy9pOTE1X2dlbV9kbWFidWYuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVz
dHMvaTkxNV9nZW1fZG1hYnVmLmMKaW5kZXggODY4YjM0NjllY2JkLi5iMWU4N2VjMDg3NDEgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fZG1h
YnVmLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9k
bWFidWYuYwpAQCAtMTA2LDcgKzEwNiw5IEBAIHN0YXRpYyBpbnQgaWd0X2RtYWJ1Zl9pbXBvcnRf
c2FtZV9kcml2ZXIodm9pZCAqYXJnKQogCWludCBlcnI7CiAKIAlmb3JjZV9kaWZmZXJlbnRfZGV2
aWNlcyA9IHRydWU7Ci0Jb2JqID0gaTkxNV9nZW1fb2JqZWN0X2NyZWF0ZV9zaG1lbShpOTE1LCBQ
QUdFX1NJWkUpOworCW9iaiA9IGk5MTVfZ2VtX29iamVjdF9jcmVhdGVfbG1lbShpOTE1LCBQQUdF
X1NJWkUsIDApOworCWlmIChJU19FUlIob2JqKSkKKwkJb2JqID0gaTkxNV9nZW1fb2JqZWN0X2Ny
ZWF0ZV9zaG1lbShpOTE1LCBQQUdFX1NJWkUpOwogCWlmIChJU19FUlIob2JqKSkKIAkJZ290byBv
dXRfcmV0OwogCi0tIAoyLjMxLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeAo=
