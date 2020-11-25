Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 373582C3E29
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Nov 2020 11:41:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 280116E999;
	Wed, 25 Nov 2020 10:40:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B3256E8A9
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Nov 2020 10:40:31 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 25 Nov 2020 11:39:59 +0100
Message-Id: <20201125104011.606641-52-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.29.2.222.g5d2a92d10f8
In-Reply-To: <20201125104011.606641-1-maarten.lankhorst@linux.intel.com>
References: <20201125104011.606641-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v5 51/63] drm/i915/selftests: Prepare context
 selftest for obj->mm.lock removal
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

T25seSBuZWVkcyB0byBjb252ZXJ0IGEgc2luZ2xlIGNhbGwgdG8gdGhlIHVubG9ja2VkIHZlcnNp
b24uCgpTaWduZWQtb2ZmLWJ5OiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RA
bGludXguaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogVGhvbWFzIEhlbGxzdHLDtm0gPHRob21hcy5o
ZWxsc3Ryb21AbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3Nl
bGZ0ZXN0X2NvbnRleHQuYyB8IDQgKystLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygr
KSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9z
ZWxmdGVzdF9jb250ZXh0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9jb250
ZXh0LmMKaW5kZXggMWY0MDIwZTkwNmE4Li5kOWIwZWJjOTM4ZjEgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2NvbnRleHQuYworKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9zZWxmdGVzdF9jb250ZXh0LmMKQEAgLTg4LDggKzg4LDggQEAgc3RhdGljIGlu
dCBfX2xpdmVfY29udGV4dF9zaXplKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKIAlp
ZiAoZXJyKQogCQlnb3RvIGVycjsKIAotCXZhZGRyID0gaTkxNV9nZW1fb2JqZWN0X3Bpbl9tYXAo
Y2UtPnN0YXRlLT5vYmosCi0JCQkJCWk5MTVfY29oZXJlbnRfbWFwX3R5cGUoZW5naW5lLT5pOTE1
KSk7CisJdmFkZHIgPSBpOTE1X2dlbV9vYmplY3RfcGluX21hcF91bmxvY2tlZChjZS0+c3RhdGUt
Pm9iaiwKKwkJCQkJCSBpOTE1X2NvaGVyZW50X21hcF90eXBlKGVuZ2luZS0+aTkxNSkpOwogCWlm
IChJU19FUlIodmFkZHIpKSB7CiAJCWVyciA9IFBUUl9FUlIodmFkZHIpOwogCQlpbnRlbF9jb250
ZXh0X3VucGluKGNlKTsKLS0gCjIuMjkuMi4yMjIuZzVkMmE5MmQxMGY4CgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
