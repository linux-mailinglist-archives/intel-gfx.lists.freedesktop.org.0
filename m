Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 093982EAF22
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Jan 2021 16:46:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91CEE6E159;
	Tue,  5 Jan 2021 15:45:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl
 [IPv6:2a02:2308::216:3eff:fe92:dfa3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E7396E170
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Jan 2021 15:45:42 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  5 Jan 2021 16:35:58 +0100
Message-Id: <20210105153558.134272-65-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.30.0.rc1
In-Reply-To: <20210105153558.134272-1-maarten.lankhorst@linux.intel.com>
References: <20210105153558.134272-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v6 64/64] drm/i915: Avoid some false positives
 in assert_object_held()
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@intel.com>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVGhvbWFzIEhlbGxzdHLDtm0gPHRob21hcy5oZWxsc3Ryb21AaW50ZWwuY29tPgoKSW4g
YSB3dyB0cmFuc2FjdGlvbiB3aGVyZSB3ZSd2ZSBhbHJlYWR5IGxvY2tlZCBhIHJlc2VydmF0aW9u
Cm9iamVjdCwgYXNzZXJ0X29iamVjdF9oZWxkKCkgbWlnaHQgbm90IHRocm93IGEgc3BsYXQgZXZl
biBpZgp0aGUgb2JqZWN0IGlzIHVubG9ja2VkLiBJbXByb3ZlIG9uIHRoYXQgc2l0dWF0aW9uIGJ5
IGFzc2VydGluZwp0aGF0IHRoZSByZXNlcnZhdGlvbiBvYmplY3QncyB3dyBtdXRleCBpcyBpbmRl
ZWQgbG9ja2VkLgoKU2lnbmVkLW9mZi1ieTogVGhvbWFzIEhlbGxzdHLDtm0gPHRob21hcy5oZWxs
c3Ryb21AaW50ZWwuY29tPgpDYzogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29t
PgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuaCB8IDkgKysr
KysrKystCiAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5oIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5oCmluZGV4IDc0OGIwM2Fl
YjNjNi4uNWE1MTgzNzNmNmM1IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
aTkxNV9nZW1fb2JqZWN0LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2Vt
X29iamVjdC5oCkBAIC0xMTYsNyArMTE2LDE0IEBAIGk5MTVfZ2VtX29iamVjdF9wdXQoc3RydWN0
IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaikKIAlfX2RybV9nZW1fb2JqZWN0X3B1dCgmb2JqLT5i
YXNlKTsKIH0KIAotI2RlZmluZSBhc3NlcnRfb2JqZWN0X2hlbGQob2JqKSBkbWFfcmVzdl9hc3Nl
cnRfaGVsZCgob2JqKS0+YmFzZS5yZXN2KQorI2lmZGVmIENPTkZJR19MT0NLREVQCisjZGVmaW5l
IGFzc2VydF9vYmplY3RfaGVsZChvYmopIGRvIHsJCQkJCVwKKwkJZG1hX3Jlc3ZfYXNzZXJ0X2hl
bGQoKG9iaiktPmJhc2UucmVzdik7CQkJXAorCQlXQVJOX09OKCF3d19tdXRleF9pc19sb2NrZWQo
JihvYmopLT5iYXNlLnJlc3YtPmxvY2spKTsgXAorCX0gd2hpbGUgKDApCisjZWxzZQorI2RlZmlu
ZSBhc3NlcnRfb2JqZWN0X2hlbGQob2JqKSBkbyB7IH0gd2hpbGUgKDApCisjZW5kaWYKIAogLyoK
ICAqIElmIG1vcmUgdGhhbiBvbmUgcG90ZW50aWFsIHNpbXVsdGFuZW91cyBsb2NrZXIsIGFzc2Vy
dCBoZWxkLgotLSAKMi4zMC4wLnJjMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4Cg==
