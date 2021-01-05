Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E163B2EAEFE
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Jan 2021 16:45:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F3606E141;
	Tue,  5 Jan 2021 15:45:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl
 [IPv6:2a02:2308::216:3eff:fe92:dfa3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33C866E12E
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Jan 2021 15:45:38 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  5 Jan 2021 16:35:17 +0100
Message-Id: <20210105153558.134272-24-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.30.0.rc1
In-Reply-To: <20210105153558.134272-1-maarten.lankhorst@linux.intel.com>
References: <20210105153558.134272-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v6 23/64] drm/i915: Add object locking to
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
cm9yX3RvX3ZtZl9mYXVsdChlcnIpOwogfQogCi0tIAoyLjMwLjAucmMxCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
