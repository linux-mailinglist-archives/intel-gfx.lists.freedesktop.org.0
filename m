Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A33C113B4D
	for <lists+intel-gfx@lfdr.de>; Sat,  4 May 2019 19:15:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1191891DA;
	Sat,  4 May 2019 17:15:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD9C7891DA
 for <intel-gfx@lists.freedesktop.org>; Sat,  4 May 2019 17:15:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 May 2019 10:15:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,430,1549958400"; d="scan'208";a="229328059"
Received: from genxfsim-shark-bay-client-platform.iind.intel.com
 ([10.223.74.155])
 by orsmga001.jf.intel.com with ESMTP; 04 May 2019 10:15:50 -0700
From: Swati Sharma <swati2.sharma@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat,  4 May 2019 22:41:30 +0530
Message-Id: <1556989900-21972-2-git-send-email-swati2.sharma@intel.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1556989900-21972-1-git-send-email-swati2.sharma@intel.com>
References: <1556989900-21972-1-git-send-email-swati2.sharma@intel.com>
Subject: [Intel-gfx] [v5][PATCH 01/11] drm/i915: Introduce vfunc read_luts()
 to create hw lut
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
Cc: jani.nikula@intel.com, daniel.vetter@ffwll.ch, ankit.k.nautiyal@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SW4gdGhpcyBwYXRjaCwgYSB2ZnVuYyByZWFkX2x1dHMoKSBpcyBpbnRyb2R1Y2VkIHRvIGNyZWF0
ZSBhIGh3IGx1dAppLmUuIGx1dCBoYXZpbmcgdmFsdWVzIHJlYWQgZnJvbSBnYW1tYS9kZWdhbW1h
IHJlZ2lzdGVycyB3aGljaCB3aWxsCmxhdGVyIGJlIHVzZWQgdG8gY29tcGFyZSB3aXRoIHN3IGx1
dCB0byB2YWxpZGF0ZSBnYW1tYS9kZWdhbW1hIGx1dCB2YWx1ZXMuCgp2MzogLVJlYmFzZQp2NDog
LVJlbmFtZWQgaW50ZWxfZ2V0X2NvbG9yX2NvbmZpZyB0byBpbnRlbF9jb2xvcl9nZXRfY29uZmln
IFtKYW5pXQogICAgLVdyYXBwZWQgZ2V0X2NvbG9yX2NvbmZpZygpIFtKYW5pXQp2NTogLVJlbmFt
ZWQgaW50ZWxfY29sb3JfZ2V0X2NvbmZpZygpIHRvIGludGVsX2NvbG9yX3JlYWRfbHV0cygpCiAg
ICAtUmVuYW1lZCBnZXRfY29sb3JfY29uZmlnIHRvIHJlYWRfbHV0cwoKU2lnbmVkLW9mZi1ieTog
U3dhdGkgU2hhcm1hIDxzd2F0aTIuc2hhcm1hQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2Rydi5oICAgIHwgMSArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9j
b2xvci5jIHwgOCArKysrKysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfY29sb3IuaCB8
IDEgKwogMyBmaWxlcyBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
ZHJ2LmgKaW5kZXggMWNlYTk4Zi4uMWI2ZDg5MSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9kcnYuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCkBA
IC0zNDIsNiArMzQyLDcgQEAgc3RydWN0IGRybV9pOTE1X2Rpc3BsYXlfZnVuY3MgewogCSAqIGlu
dm9sdmVkIHdpdGggdGhlIHNhbWUgY29tbWl0LgogCSAqLwogCXZvaWQgKCpsb2FkX2x1dHMpKGNv
bnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKTsKKwl2b2lkICgqcmVhZF9s
dXRzKShzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSk7CiB9OwogCiAjZGVmaW5l
IENTUl9WRVJTSU9OKG1ham9yLCBtaW5vcikJKChtYWpvcikgPDwgMTYgfCAobWlub3IpKQpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfY29sb3IuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX2NvbG9yLmMKaW5kZXggOTYyZGIxMi4uMDA0OGQ4YSAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfY29sb3IuYworKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF9jb2xvci5jCkBAIC04NzksNiArODc5LDE0IEBAIGludCBpbnRlbF9jb2xv
cl9jaGVjayhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKIAlyZXR1cm4gZGV2
X3ByaXYtPmRpc3BsYXkuY29sb3JfY2hlY2soY3J0Y19zdGF0ZSk7CiB9CiAKK3ZvaWQgaW50ZWxf
Y29sb3JfcmVhZF9sdXRzKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQorewor
CXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoY3J0Y19zdGF0ZS0+
YmFzZS5jcnRjLT5kZXYpOworCisJaWYgKGRldl9wcml2LT5kaXNwbGF5LnJlYWRfbHV0cykKKwkJ
ZGV2X3ByaXYtPmRpc3BsYXkucmVhZF9sdXRzKGNydGNfc3RhdGUpOworfQorCiBzdGF0aWMgYm9v
bCBuZWVkX3BsYW5lX3VwZGF0ZShzdHJ1Y3QgaW50ZWxfcGxhbmUgKnBsYW5lLAogCQkJICAgICAg
Y29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCiB7CmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jb2xvci5oIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfY29sb3IuaAppbmRleCBiOGEzY2U2Li5mYzUzZGU5IDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jb2xvci5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX2NvbG9yLmgKQEAgLTEzLDUgKzEzLDYgQEAKIGludCBpbnRlbF9jb2xvcl9jaGVjayhz
dHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSk7CiB2b2lkIGludGVsX2NvbG9yX2Nv
bW1pdChjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSk7CiB2b2lkIGlu
dGVsX2NvbG9yX2xvYWRfbHV0cyhjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19z
dGF0ZSk7Cit2b2lkIGludGVsX2NvbG9yX3JlYWRfbHV0cyhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0
ZSAqY3J0Y19zdGF0ZSk7CiAKICNlbmRpZiAvKiBfX0lOVEVMX0NPTE9SX0hfXyAqLwotLSAKMS45
LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
