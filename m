Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 67F4E307AAF
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jan 2021 17:26:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9DEC6E98F;
	Thu, 28 Jan 2021 16:26:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C023F6E99A
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Jan 2021 16:26:22 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 28 Jan 2021 17:25:23 +0100
Message-Id: <20210128162612.927917-15-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210128162612.927917-1-maarten.lankhorst@linux.intel.com>
References: <20210128162612.927917-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v7 14/63] drm/i915: Reject UNSYNCHRONIZED for
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
SGVsbHN0csO2bSA8dGhvbWFzLmhlbGxzdHJvbUBsaW51eC5pbnRlbC5jb20+CkNjOiBKYXNvbiBF
a3N0cmFuZCA8amFzb25Aamxla3N0cmFuZC5uZXQ+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z2VtL2k5MTVfZ2VtX3VzZXJwdHIuYyB8IDEwICsrLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAy
IGluc2VydGlvbnMoKyksIDggZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3VzZXJwdHIuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dl
bS9pOTE1X2dlbV91c2VycHRyLmMKaW5kZXggYzg5Y2Y5MTFmYjI5Li44MGJjMTBiNGFjNzQgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV91c2VycHRyLmMKKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3VzZXJwdHIuYwpAQCAtMjI0LDcg
KzIyNCw3IEBAIGk5MTVfZ2VtX3VzZXJwdHJfaW5pdF9fbW11X25vdGlmaWVyKHN0cnVjdCBkcm1f
aTkxNV9nZW1fb2JqZWN0ICpvYmosCiAJc3RydWN0IGk5MTVfbW11X29iamVjdCAqbW87CiAKIAlp
ZiAoZmxhZ3MgJiBJOTE1X1VTRVJQVFJfVU5TWU5DSFJPTklaRUQpCi0JCXJldHVybiBjYXBhYmxl
KENBUF9TWVNfQURNSU4pID8gMCA6IC1FUEVSTTsKKwkJcmV0dXJuIC1FTk9ERVY7CiAKIAlpZiAo
R0VNX1dBUk5fT04oIW9iai0+dXNlcnB0ci5tbSkpCiAJCXJldHVybiAtRUlOVkFMOwpAQCAtMjc0
LDEzICsyNzQsNyBAQCBzdGF0aWMgaW50CiBpOTE1X2dlbV91c2VycHRyX2luaXRfX21tdV9ub3Rp
ZmllcihzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLAogCQkJCSAgICB1bnNpZ25lZCBm
bGFncykKIHsKLQlpZiAoKGZsYWdzICYgSTkxNV9VU0VSUFRSX1VOU1lOQ0hST05JWkVEKSA9PSAw
KQotCQlyZXR1cm4gLUVOT0RFVjsKLQotCWlmICghY2FwYWJsZShDQVBfU1lTX0FETUlOKSkKLQkJ
cmV0dXJuIC1FUEVSTTsKLQotCXJldHVybiAwOworCXJldHVybiAtRU5PREVWOwogfQogCiBzdGF0
aWMgdm9pZAotLSAKMi4zMC4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZngK
