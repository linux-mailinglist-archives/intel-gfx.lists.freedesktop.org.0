Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 24BA1A3727
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Aug 2019 14:53:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FEBA6E323;
	Fri, 30 Aug 2019 12:53:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53EF06E323
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Aug 2019 12:53:23 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Aug 2019 05:53:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,447,1559545200"; d="scan'208";a="198029810"
Received: from amanna.iind.intel.com ([10.223.74.216])
 by fmsmga001.fm.intel.com with ESMTP; 30 Aug 2019 05:53:21 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 30 Aug 2019 18:15:28 +0530
Message-Id: <20190830124533.26573-6-animesh.manna@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190830124533.26573-1-animesh.manna@intel.com>
References: <20190830124533.26573-1-animesh.manna@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 05/10] drm/i915/dsb: Check DSB engine status.
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
Cc: Michel Thierry <michel.thierry@intel.com>,
 Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QXMgcGVyIGJzcGVjIGNoZWNrIGZvciBEU0Igc3RhdHVzIGJlZm9yZSBwcm9ncmFtbWluZyBhbnkK
b2YgaXRzIHJlZ2lzdGVyLiBJbmxpbmUgZnVuY3Rpb24gYWRkZWQgdG8gY2hlY2sgdGhlIGRzYiBz
dGF0dXMuCgpDYzogTWljaGVsIFRoaWVycnkgPG1pY2hlbC50aGllcnJ5QGludGVsLmNvbT4KQ2M6
IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+CkNjOiBSb2RyaWdvIFZpdmkgPHJv
ZHJpZ28udml2aUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEFuaW1lc2ggTWFubmEgPGFuaW1l
c2gubWFubmFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHNiLmMgfCA5ICsrKysrKysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAg
ICAgICAgICB8IDcgKysrKysrKwogMiBmaWxlcyBjaGFuZ2VkLCAxNiBpbnNlcnRpb25zKCspCgpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMKaW5kZXggOTM0ZDdhY2EzYmM1
Li4xMDIyYjU3MjBkMTcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHNiLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2Iu
YwpAQCAtMTcsNiArMTcsMTUgQEAKICNkZWZpbmUgRFNCX0JZVEVfRU5fU0hJRlQJCTIwCiAjZGVm
aW5lIERTQl9SRUdfVkFMVUVfTUFTSwkJMHhmZmZmZgogCitzdGF0aWMgaW5saW5lIGJvb2wgaXNf
ZHNiX2J1c3koc3RydWN0IGludGVsX2RzYiAqZHNiKQoreworCXN0cnVjdCBpbnRlbF9jcnRjICpj
cnRjID0gZHNiLT5jcnRjOworCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRv
X2k5MTUoY3J0Yy0+YmFzZS5kZXYpOworCWVudW0gcGlwZSBwaXBlID0gY3J0Yy0+cGlwZTsKKwor
CXJldHVybiBEU0JfU1RBVFVTICYgSTkxNV9SRUFEKERTQl9DVFJMKHBpcGUsIGRzYi0+aWQpKTsK
K30KKwogc3RydWN0IGludGVsX2RzYiAqCiBpbnRlbF9kc2JfZ2V0KHN0cnVjdCBpbnRlbF9jcnRj
ICpjcnRjKQogewpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKaW5kZXggM2NmZGFiMThjMGNmLi4zZTM1
ZDdhNGQyYzQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaApAQCAtMTE2NzAsNCArMTE2NzAsMTEg
QEAgZW51bSBza2xfcG93ZXJfZ2F0ZSB7CiAjZGVmaW5lIFBPUlRfVFhfREZMRVhEUENTU1MoZmlh
KQkJX01NSU9fRklBKChmaWEpLCAweDAwODk0KQogI2RlZmluZSAgIERQX1BIWV9NT0RFX1NUQVRV
U19OT1RfU0FGRSh0Y19wb3J0KQkJKDEgPDwgKHRjX3BvcnQpKQogCisvKiBUaGlzIHJlZ2lzdGVy
IGNvbnRyb2xzIHRoZSBEaXNwbGF5IFN0YXRlIEJ1ZmZlciAoRFNCKSBlbmdpbmVzLiAqLworI2Rl
ZmluZSBfRFNCU0xfSU5TVEFOQ0VfQkFTRQkJMHg3MEIwMAorI2RlZmluZSBEU0JTTF9JTlNUQU5D
RShwaXBlLCBpZCkJKF9EU0JTTF9JTlNUQU5DRV9CQVNFICsgXAorCQkJCQkgKHBpcGUpICogMHgx
MDAwICsgKGlkKSAqIDEwMCkKKyNkZWZpbmUgRFNCX0NUUkwocGlwZSwgaWQpCQlfTU1JTyhEU0JT
TF9JTlNUQU5DRShwaXBlLCBpZCkgKyAweDgpCisjZGVmaW5lICAgRFNCX1NUQVRVUwkJCSgxIDw8
IDApCisKICNlbmRpZiAvKiBfSTkxNV9SRUdfSF8gKi8KLS0gCjIuMjIuMAoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
