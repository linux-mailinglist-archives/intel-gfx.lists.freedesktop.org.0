Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 114EFE8589
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2019 11:29:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39E866EB3D;
	Tue, 29 Oct 2019 10:29:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B36C16EB3D
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2019 10:28:57 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Oct 2019 03:28:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,243,1569308400"; d="scan'208";a="374503815"
Received: from sslose-mobl1.ger.corp.intel.com (HELO
 mwahaha-bdw.ger.corp.intel.com) ([10.252.3.112])
 by orsmga005.jf.intel.com with ESMTP; 29 Oct 2019 03:28:56 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 29 Oct 2019 10:28:47 +0000
Message-Id: <20191029102851.7497-3-matthew.auld@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191029102851.7497-1-matthew.auld@intel.com>
References: <20191029102851.7497-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 3/7] drm/i915: set num_fence_regs to 0 if
 there is no aperture
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

RnJvbTogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVs
LmNvbT4KCldlIGNhbid0IGZlbmNlIGFueXRoaW5nIHdpdGhvdXQgYXBlcnR1cmUuCgpTaWduZWQt
b2ZmLWJ5OiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50
ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBTdHVhcnQgU3VtbWVycyA8c3R1YXJ0LnN1bW1lcnNAaW50
ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5j
b20+ClJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4K
LS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9mZW5jZV9yZWcuYyB8IDYgKysrKy0t
CiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2ZlbmNlX3JlZy5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZmVuY2VfcmVnLmMKaW5kZXggMzIxMTg5ZTFiMGYyLi43
MWVmY2NmZGUxMjIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2Zl
bmNlX3JlZy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2ZlbmNlX3JlZy5j
CkBAIC04NDYsOCArODQ2LDEwIEBAIHZvaWQgaTkxNV9nZ3R0X2luaXRfZmVuY2VzKHN0cnVjdCBp
OTE1X2dndHQgKmdndHQpCiAKIAlkZXRlY3RfYml0XzZfc3dpenpsZShnZ3R0KTsKIAotCWlmIChJ
TlRFTF9HRU4oaTkxNSkgPj0gNyAmJgotCSAgICAhKElTX1ZBTExFWVZJRVcoaTkxNSkgfHwgSVNf
Q0hFUlJZVklFVyhpOTE1KSkpCisJaWYgKCFpOTE1X2dndHRfaGFzX2FwZXJ0dXJlKGdndHQpKQor
CQludW1fZmVuY2VzID0gMDsKKwllbHNlIGlmIChJTlRFTF9HRU4oaTkxNSkgPj0gNyAmJgorCQkg
IShJU19WQUxMRVlWSUVXKGk5MTUpIHx8IElTX0NIRVJSWVZJRVcoaTkxNSkpKQogCQludW1fZmVu
Y2VzID0gMzI7CiAJZWxzZSBpZiAoSU5URUxfR0VOKGk5MTUpID49IDQgfHwKIAkJIElTX0k5NDVH
KGk5MTUpIHx8IElTX0k5NDVHTShpOTE1KSB8fAotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
