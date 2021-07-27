Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D1C13D7704
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jul 2021 15:44:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 903896E85B;
	Tue, 27 Jul 2021 13:44:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C00E66E85B
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Jul 2021 13:44:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10057"; a="192723709"
X-IronPort-AV: E=Sophos;i="5.84,273,1620716400"; d="scan'208";a="192723709"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2021 06:44:04 -0700
X-IronPort-AV: E=Sophos;i="5.84,273,1620716400"; d="scan'208";a="505727997"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2021 06:44:02 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 27 Jul 2021 16:44:00 +0300
Message-Id: <20210727134400.101290-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/adlp: Add workaround to disable CMTG
 clock gating
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlIGRyaXZlciBkb2Vzbid0IGRlcGVuZCBhdG0gb24gdGhlIGNvbW1vbiBtb2RlIHRpbWluZyBn
ZW5lcmF0b3IKZnVuY3Rpb25hbGl0eSAoaXQgd291bGQgYmUgdXNlZCBmb3Igc29tZSBwb3dlciBz
YXZpbmcgZmVhdHVyZSBhbmQgcGFuZWwKdGltaW5nIHN5bmNocm9uaXphdGlvbiksIGhvd2V2ZXIg
RE1DIHdpbGwgY29ycnVwdCB0aGUgQ01URyByZWdpc3RlcnMKYWNyb3NzIERDNSBlbnRyeS9leGl0
IHNlcXVlbmNlcyB1bmxlc3MgdGhlIENNVEcgY2xvY2sgZ2F0aW5nIGlzCmRpc2FibGVkLiBUaGlz
IGluIHR1cm4gY2FuIGxlYWQgdG8gYXQgbGVhc3QgdGhlIERQTEwwLzEgY29uZmlndXJhdGlvbgpn
ZXR0aW5nIHN0dWNrIGF0IHRoZWlyIGxhc3Qgc3RhdGUsIHdoaWNoIG1lYW5zIHdlIGNhbid0IHJl
cHJvZ3JhbSB0aGVtCnRvIGEgbmV3IGNvbmZpZy4KCkFkZCB0aGUgY29ycmVzcG9uZGluZyBCc3Bl
YyB3b3JrYXJvdW5kIHRvIHByZXZlbnQgdGhlIGFib3ZlLgoKQ2M6IFVtYSBTaGFua2FyIDx1bWEu
c2hhbmthckBpbnRlbC5jb20+CkNjOiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXph
QGludGVsLmNvbT4KQ2M6IEFuc2h1bWFuIEd1cHRhIDxhbnNodW1hbi5ndXB0YUBpbnRlbC5jb20+
ClNpZ25lZC1vZmYtYnk6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4KLS0tCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDE4ICsrKysrKysrKysr
KysrKysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAgICAgICAgICAgfCAg
MyArKysKIDIgZmlsZXMgY2hhbmdlZCwgMjEgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKaW5kZXggYmIwYWViY2MzZWNkMy4uNDc0
ZDcyM2EzNzQ1NCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5LmMKQEAgLTEzMTk4LDYgKzEzMTk4LDI0IEBAIHN0YXRpYyB2b2lkIGludGVsX2Vhcmx5X2Rp
c3BsYXlfd2FzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAkJCSAgICAgS0JM
X0FSQl9GSUxMX1NQQVJFXzEzIHwgS0JMX0FSQl9GSUxMX1NQQVJFXzE0LAogCQkJICAgICBLQkxf
QVJCX0ZJTExfU1BBUkVfMTQpOwogCX0KKworCWlmIChJU19BRExQX0RJU1BMQVlfU1RFUChkZXZf
cHJpdiwgU1RFUF9BMCwgU1RFUF9CMCkpIHsKKwkJdWludDMyX3QgdmFsOworCisJCS8qCisJCSAq
IFdhXzE2MDExMDY5NTE2OmFkbC1wW2EwXQorCQkgKgorCQkgKiBBbGwgQ01URyByZWdzIGFyZSB1
bnJlbGlhYmxlIHVudGlsIENNVEcgY2xvY2sgZ2F0aW5nIGlzCisJCSAqIGRpc2FibGVkLCBzbyB3
ZSBjYW4gb25seSBhc3N1bWUgdGhlIGRlZmF1bHQgQ01UR19DSElDS0VOCisJCSAqIHJlZyB2YWx1
ZSBhbmQgc2FuaXR5IGNoZWNrIHRoaXMgYXNzdW1wdGlvbiB3aXRoIGEgZG91YmxlCisJCSAqIHJl
YWQsIHdoaWNoIHByZXN1bWFibHkgcmV0dXJucyB0aGUgY29ycmVjdCB2YWx1ZSBldmVuIHdpdGgK
KwkJICogY2xvY2sgZ2F0aW5nIG9uLgorCQkgKi8KKwkJdmFsID0gaW50ZWxfZGVfcmVhZChkZXZf
cHJpdiwgVFJBTlNfQ01UR19DSElDS0VOKTsKKwkJdmFsID0gaW50ZWxfZGVfcmVhZChkZXZfcHJp
diwgVFJBTlNfQ01UR19DSElDS0VOKTsKKwkJaW50ZWxfZGVfd3JpdGUoZGV2X3ByaXYsIFRSQU5T
X0NNVEdfQ0hJQ0tFTiwgRElTQUJMRV9EUFRfQ0xLX0dBVElORyk7CisJCWRybV9XQVJOX09OKCZk
ZXZfcHJpdi0+ZHJtLCB2YWwgJn4gRElTQUJMRV9EUFRfQ0xLX0dBVElORyk7CisJfQogfQogCiBz
dGF0aWMgdm9pZCBpYnhfc2FuaXRpemVfcGNoX2hkbWlfcG9ydChzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqZGV2X3ByaXYsCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Jl
Zy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAppbmRleCBjNDFmOTA4M2UyMzM4
Li5lMDJiZDc1ZGQxMDY0IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Jl
Zy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKQEAgLTEwMjA4LDYgKzEw
MjA4LDkgQEAgZW51bSBza2xfcG93ZXJfZ2F0ZSB7CiAjZGVmaW5lICBQT1JUX1NZTkNfTU9ERV9N
QVNURVJfU0VMRUNUX01BU0sJUkVHX0dFTk1BU0soMiwgMCkKICNkZWZpbmUgIFBPUlRfU1lOQ19N
T0RFX01BU1RFUl9TRUxFQ1QoeCkJUkVHX0ZJRUxEX1BSRVAoUE9SVF9TWU5DX01PREVfTUFTVEVS
X1NFTEVDVF9NQVNLLCAoeCkpCiAKKyNkZWZpbmUgVFJBTlNfQ01UR19DSElDS0VOCQlfTU1JTygw
eDZmYTkwKQorI2RlZmluZSAgRElTQUJMRV9EUFRfQ0xLX0dBVElORwkJUkVHX0JJVCgxKQorCiAv
KiBEaXNwbGF5UG9ydCBUcmFuc3BvcnQgQ29udHJvbCAqLwogI2RlZmluZSBfRFBfVFBfQ1RMX0EJ
CQkweDY0MDQwCiAjZGVmaW5lIF9EUF9UUF9DVExfQgkJCTB4NjQxNDAKLS0gCjIuMjcuMAoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
