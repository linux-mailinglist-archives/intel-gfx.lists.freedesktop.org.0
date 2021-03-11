Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 215E233746C
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Mar 2021 14:49:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 032346EC96;
	Thu, 11 Mar 2021 13:49:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl
 [IPv6:2a02:2308::216:3eff:fe92:dfa3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 289376EC98
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Mar 2021 13:48:55 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Mar 2021 14:41:54 +0100
Message-Id: <20210311134249.588632-15-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210311134249.588632-1-maarten.lankhorst@linux.intel.com>
References: <20210311134249.588632-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v8 14/69] drm/i915: Reject UNSYNCHRONIZED for
 userptr, v2.
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
Cc: Dave Airlie <airlied@redhat.com>,
 =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2Ugc2hvdWxkIG5vdCBhbGxvdyB0aGlzIGFueSBtb3JlLCBhcyBpdCB3aWxsIGJyZWFrIHdpdGgg
dGhlIG5ldyB1c2VycHRyCmltcGxlbWVudGF0aW9uLCBpdCBjb3VsZCBzdGlsbCBiZSBtYWRlIHRv
IHdvcmssIGJ1dCB0aGVyZSdzIG5vIHBvaW50IGluCmRvaW5nIHNvLgoKSW5zcGVjdGlvbiBvZiB0
aGUgYmVpZ25ldCBvcGVuY2wgZHJpdmVyIHNob3dzIHRoYXQgaXQncyBvbmx5IHVzZWQKd2hlbiBu
b3JtYWwgdXNlcnB0ciBpcyBub3QgYXZhaWxhYmxlLCB3aGljaCBtZWFucyBmb3IgbmV3IGtlcm5l
bHMKeW91IHdpbGwgbmVlZCBDT05GSUdfSTkxNV9VU0VSUFRSLgoKU2lnbmVkLW9mZi1ieTogTWFh
cnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KQWNrZWQt
Ynk6IERhdmUgQWlybGllIDxhaXJsaWVkQHJlZGhhdC5jb20+ClJldmlld2VkLWJ5OiBUaG9tYXMg
SGVsbHN0csO2bSA8dGhvbWFzLmhlbGxzdHJvbUBsaW51eC5pbnRlbC5jb20+CkFja2VkLWJ5OiBK
YXNvbiBFa3N0cmFuZCA8amFzb25Aamxla3N0cmFuZC5uZXQ+Ci0tLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL2k5MTVfZ2VtX3VzZXJwdHIuYyB8IDEwICsrLS0tLS0tLS0KIDEgZmlsZSBjaGFu
Z2VkLCAyIGluc2VydGlvbnMoKyksIDggZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3VzZXJwdHIuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2dlbS9pOTE1X2dlbV91c2VycHRyLmMKaW5kZXggYzg5Y2Y5MTFmYjI5Li44MGJjMTBiNGFj
NzQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV91c2VycHRy
LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3VzZXJwdHIuYwpAQCAt
MjI0LDcgKzIyNCw3IEBAIGk5MTVfZ2VtX3VzZXJwdHJfaW5pdF9fbW11X25vdGlmaWVyKHN0cnVj
dCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosCiAJc3RydWN0IGk5MTVfbW11X29iamVjdCAqbW87
CiAKIAlpZiAoZmxhZ3MgJiBJOTE1X1VTRVJQVFJfVU5TWU5DSFJPTklaRUQpCi0JCXJldHVybiBj
YXBhYmxlKENBUF9TWVNfQURNSU4pID8gMCA6IC1FUEVSTTsKKwkJcmV0dXJuIC1FTk9ERVY7CiAK
IAlpZiAoR0VNX1dBUk5fT04oIW9iai0+dXNlcnB0ci5tbSkpCiAJCXJldHVybiAtRUlOVkFMOwpA
QCAtMjc0LDEzICsyNzQsNyBAQCBzdGF0aWMgaW50CiBpOTE1X2dlbV91c2VycHRyX2luaXRfX21t
dV9ub3RpZmllcihzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLAogCQkJCSAgICB1bnNp
Z25lZCBmbGFncykKIHsKLQlpZiAoKGZsYWdzICYgSTkxNV9VU0VSUFRSX1VOU1lOQ0hST05JWkVE
KSA9PSAwKQotCQlyZXR1cm4gLUVOT0RFVjsKLQotCWlmICghY2FwYWJsZShDQVBfU1lTX0FETUlO
KSkKLQkJcmV0dXJuIC1FUEVSTTsKLQotCXJldHVybiAwOworCXJldHVybiAtRU5PREVWOwogfQog
CiBzdGF0aWMgdm9pZAotLSAKMi4zMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZngK
