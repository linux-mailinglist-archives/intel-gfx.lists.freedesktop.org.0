Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EB44533745D
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Mar 2021 14:49:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 463236ECBA;
	Thu, 11 Mar 2021 13:48:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl
 [IPv6:2a02:2308::216:3eff:fe92:dfa3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 874AD6EC9B
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Mar 2021 13:48:51 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Mar 2021 14:42:03 +0100
Message-Id: <20210311134249.588632-24-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210311134249.588632-1-maarten.lankhorst@linux.intel.com>
References: <20210311134249.588632-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v8 23/69] drm/i915: Add object locking to
 vm_fault_cpu
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGFrZSBhIHNpbXBsZSBsb2NrIHNvIHdlIGhvbGQgd3cgYXJvdW5kICh1bilwaW5fcGFnZXMgYXMg
bmVlZGVkLgoKU2lnbmVkLW9mZi1ieTogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hv
cnN0QGxpbnV4LmludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IFRob21hcyBIZWxsc3Ryw7ZtIDx0aG9t
YXMuaGVsbHN0cm9tQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9n
ZW0vaTkxNV9nZW1fbW1hbi5jIHwgNCArKysrCiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25z
KCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX21tYW4u
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9tbWFuLmMKaW5kZXggYzAwMzRk
ODExZTUwLi4xNjMyMDhhNjI2MGQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dl
bS9pOTE1X2dlbV9tbWFuLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2Vt
X21tYW4uYwpAQCAtMjQ2LDYgKzI0Niw5IEBAIHN0YXRpYyB2bV9mYXVsdF90IHZtX2ZhdWx0X2Nw
dShzdHJ1Y3Qgdm1fZmF1bHQgKnZtZikKIAkJICAgICBhcmVhLT52bV9mbGFncyAmIFZNX1dSSVRF
KSkKIAkJcmV0dXJuIFZNX0ZBVUxUX1NJR0JVUzsKIAorCWlmIChpOTE1X2dlbV9vYmplY3RfbG9j
a19pbnRlcnJ1cHRpYmxlKG9iaiwgTlVMTCkpCisJCXJldHVybiBWTV9GQVVMVF9OT1BBR0U7CisK
IAllcnIgPSBpOTE1X2dlbV9vYmplY3RfcGluX3BhZ2VzKG9iaik7CiAJaWYgKGVycikKIAkJZ290
byBvdXQ7CkBAIC0yNjksNiArMjcyLDcgQEAgc3RhdGljIHZtX2ZhdWx0X3Qgdm1fZmF1bHRfY3B1
KHN0cnVjdCB2bV9mYXVsdCAqdm1mKQogCWk5MTVfZ2VtX29iamVjdF91bnBpbl9wYWdlcyhvYmop
OwogCiBvdXQ6CisJaTkxNV9nZW1fb2JqZWN0X3VubG9jayhvYmopOwogCXJldHVybiBpOTE1X2Vy
cm9yX3RvX3ZtZl9mYXVsdChlcnIpOwogfQogCi0tIAoyLjMwLjEKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
