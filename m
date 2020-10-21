Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 24CA5294D93
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Oct 2020 15:32:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6A636EB1C;
	Wed, 21 Oct 2020 13:32:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F5C96EB14
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Oct 2020 13:32:31 +0000 (UTC)
IronPort-SDR: 5MibyqNc88yjvoF8nE1wgaJnAvxLvZWV8YDz5Muq3kWS04Yi+G15GfkBbLoWedMeXn/52ZlfYI
 JkiCsNvBXUtA==
X-IronPort-AV: E=McAfee;i="6000,8403,9780"; a="154317764"
X-IronPort-AV: E=Sophos;i="5.77,401,1596524400"; d="scan'208";a="154317764"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2020 06:32:31 -0700
IronPort-SDR: JGqGgLS7k/THhkIw7nC7LHKz6UHhmVbTCtooGr0m4BxymTD0kpLW09udqIJ1Vm8cTYPVc+UUxV
 0J1c7n4MsGfA==
X-IronPort-AV: E=Sophos;i="5.77,401,1596524400"; d="scan'208";a="316372484"
Received: from snadathu-mobl.amr.corp.intel.com (HELO
 aswarup-mobl.amr.corp.intel.com) ([10.252.137.153])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2020 06:32:30 -0700
From: Aditya Swarup <aditya.swarup@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Oct 2020 06:32:00 -0700
Message-Id: <20201021133213.328994-6-aditya.swarup@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20201021133213.328994-1-aditya.swarup@intel.com>
References: <20201021133213.328994-1-aditya.swarup@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 05/18] drm/i915/adl_s: Add PHYs for Alderlake S
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
Cc: Jani Nikula <jani.nikula@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogQW51c2hhIFNyaXZhdHNhIDxhbnVzaGEuc3JpdmF0c2FAaW50ZWwuY29tPgoKQWxkZXJs
YWtlLVMgaGFzIDUgY29tYm8gcGh5cywgYWRkIHJlZyBkZWZpbml0aW9ucyBmb3IKY29tYm8gcGh5
cyBhbmQgdXBkYXRlIHRoZSBwb3J0IHRvIHBoeSBoZWxwZXIgZm9yIEFETC1TLgoKQ2M6IEx1Y2Fz
IERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgpDYzogSmFuaSBOaWt1bGEgPGph
bmkubmlrdWxhQGludGVsLmNvbT4KQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+CkNjOiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+CkNjOiBN
YXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBBbnVz
aGEgU3JpdmF0c2EgPGFudXNoYS5zcml2YXRzYUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEFk
aXR5YSBTd2FydXAgPGFkaXR5YS5zd2FydXBAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgOCArKysrKystLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAgICAgICAgICAgfCA1ICsrKystCiAyIGZpbGVzIGNoYW5n
ZWQsIDEwIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwppbmRleCA2MGJhY2RiZTdmOTIuLjcwY2E1ZDJl
NWIwYSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMK
QEAgLTczMzMsNiArNzMzMyw4IEBAIGJvb2wgaW50ZWxfcGh5X2lzX2NvbWJvKHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdiwgZW51bSBwaHkgcGh5KQogewogCWlmIChwaHkgPT0gUEhZ
X05PTkUpCiAJCXJldHVybiBmYWxzZTsKKwllbHNlIGlmIChJU19BTERFUkxBS0VfUyhkZXZfcHJp
dikpCisJCXJldHVybiBwaHkgPD0gUEhZX0U7CiAJZWxzZSBpZiAoSVNfUk9DS0VUTEFLRShkZXZf
cHJpdikpCiAJCXJldHVybiBwaHkgPD0gUEhZX0Q7CiAJZWxzZSBpZiAoSVNfSlNMX0VITChkZXZf
cHJpdikpCkBAIC03MzQ1LDcgKzczNDcsNyBAQCBib29sIGludGVsX3BoeV9pc19jb21ibyhzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIGVudW0gcGh5IHBoeSkKIAogYm9vbCBpbnRl
bF9waHlfaXNfdGMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCBlbnVtIHBoeSBw
aHkpCiB7Ci0JaWYgKElTX1JPQ0tFVExBS0UoZGV2X3ByaXYpKQorCWlmIChJU19ST0NLRVRMQUtF
KGRldl9wcml2KSB8fCBJU19BTERFUkxBS0VfUyhkZXZfcHJpdikpCiAJCXJldHVybiBmYWxzZTsK
IAllbHNlIGlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEyKQogCQlyZXR1cm4gcGh5ID49IFBI
WV9EICYmIHBoeSA8PSBQSFlfSTsKQEAgLTczNTcsNyArNzM1OSw5IEBAIGJvb2wgaW50ZWxfcGh5
X2lzX3RjKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwgZW51bSBwaHkgcGh5KQog
CiBlbnVtIHBoeSBpbnRlbF9wb3J0X3RvX3BoeShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkx
NSwgZW51bSBwb3J0IHBvcnQpCiB7Ci0JaWYgKElTX1JPQ0tFVExBS0UoaTkxNSkgJiYgcG9ydCA+
PSBQT1JUX0QpCisJaWYgKElTX0FMREVSTEFLRV9TKGk5MTUpICYmIHBvcnQgPj0gUE9SVF9EKQor
CQlyZXR1cm4gKGVudW0gcGh5KXBvcnQgLSAyOworCWVsc2UgaWYgKElTX1JPQ0tFVExBS0UoaTkx
NSkgJiYgcG9ydCA+PSBQT1JUX0QpCiAJCXJldHVybiAoZW51bSBwaHkpcG9ydCAtIDE7CiAJZWxz
ZSBpZiAoSVNfSlNMX0VITChpOTE1KSAmJiBwb3J0ID09IFBPUlRfRCkKIAkJcmV0dXJuIFBIWV9B
OwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKaW5kZXggZjZiODQ0Y2E3YTlmLi44NWM1ZTRmYjNlN2Mg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaApAQCAtMTg3MCwxMCArMTg3MCwxMyBAQCBzdGF0aWMg
aW5saW5lIGJvb2wgaTkxNV9tbWlvX3JlZ192YWxpZChpOTE1X3JlZ190IHJlZykKICNkZWZpbmUg
X0lDTF9DT01CT1BIWV9CCQkJMHg2QzAwMAogI2RlZmluZSBfRUhMX0NPTUJPUEhZX0MJCQkweDE2
MDAwMAogI2RlZmluZSBfUktMX0NPTUJPUEhZX0QJCQkweDE2MTAwMAorI2RlZmluZSBfQURMX0NP
TUJPUEhZX0UJCQkweDE2QjAwMAorCiAjZGVmaW5lIF9JQ0xfQ09NQk9QSFkocGh5KQkJX1BJQ0so
cGh5LCBfSUNMX0NPTUJPUEhZX0EsIFwKIAkJCQkJICAgICAgX0lDTF9DT01CT1BIWV9CLCBcCiAJ
CQkJCSAgICAgIF9FSExfQ09NQk9QSFlfQywgXAotCQkJCQkgICAgICBfUktMX0NPTUJPUEhZX0Qp
CisJCQkJCSAgICAgIF9SS0xfQ09NQk9QSFlfRCwgXAorCQkJCQkgICAgICBfQURMX0NPTUJPUEhZ
X0UpCiAKIC8qIENOTC9JQ0wgUG9ydCBDTF9EVyByZWdpc3RlcnMgKi8KICNkZWZpbmUgX0lDTF9Q
T1JUX0NMX0RXKGR3LCBwaHkpCShfSUNMX0NPTUJPUEhZKHBoeSkgKyBcCi0tIAoyLjI3LjAKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
