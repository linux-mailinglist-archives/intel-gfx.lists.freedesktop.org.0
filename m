Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E2C9ABAC5
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Sep 2019 16:23:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FD3D6E2BD;
	Fri,  6 Sep 2019 14:23:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A74A06E2BD
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Sep 2019 14:23:05 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Sep 2019 07:23:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,473,1559545200"; d="scan'208";a="213159196"
Received: from slisovsk-lenovo-ideapad-720s-13ikb.fi.intel.com ([10.237.72.89])
 by fmsmga002.fm.intel.com with ESMTP; 06 Sep 2019 07:23:04 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  6 Sep 2019 17:20:54 +0300
Message-Id: <20190906142054.32717-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH v1] drm/i915: Add more debug information to dp
 aux code
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
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVpdGUgbWFueSBpc3N1ZXMgY3VycmVudGx5IGhhcHBlbiBkdXJpbmcgaW50ZWxfZHBfZGV0ZWN0
CmR1cmluZyBkcGNkIHJlYWQuIFNvbWV0aW1lcyB3ZSBjYW4gb25seSBzZWUgdGhhdCBpdCBoYWQg
ZmFpbGVkCmluIHRoZSBsb2dzLCB3aGlsZSBubyBhY3R1YWwgcmVhc29uIGlzIGF2YWlsYWJsZS4K
ClNpZ25lZC1vZmYtYnk6IFN0YW5pc2xhdiBMaXNvdnNraXkgPHN0YW5pc2xhdi5saXNvdnNraXlA
aW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyB8
IDkgKysrKysrKystCiAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9u
KC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCmluZGV4IDU2NzNlZDc1
ZTQyOC4uMmJmMDQ1MWIzNTY4IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RwLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
cC5jCkBAIC0xMjU2LDYgKzEyNTYsNyBAQCBpbnRlbF9kcF9hdXhfeGZlcihzdHJ1Y3QgaW50ZWxf
ZHAgKmludGVsX2RwLAogCQkJbGFzdF9zdGF0dXMgPSBzdGF0dXM7CiAJCX0KIAorCQlXQVJOKDEs
ICJwcmV2IGNoYW4gYWN0aXZpdHkgbm90IGZpbmlzaGVkIGFmdGVyIDMgcmV0cmllcyIpOwogCQly
ZXQgPSAtRUJVU1k7CiAJCWdvdG8gb3V0OwogCX0KQEAgLTEzMzYsNiArMTMzNyw5IEBAIGludGVs
X2RwX2F1eF94ZmVyKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsCiAJCWdvdG8gb3V0OwogCX0K
IAorCWlmICghKHN0YXR1cyAmIERQX0FVWF9DSF9DVExfRE9ORSkpCisJCURSTV9FUlJPUigiVW5r
bm93biBkcCBhdXggY3RsIGVycm9yIHN0YXR1cyAweCUwOHhcbiIsIHN0YXR1cyk7CisKIAkvKiBV
bmxvYWQgYW55IGJ5dGVzIHNlbnQgYmFjayBmcm9tIHRoZSBvdGhlciBzaWRlICovCiAJcmVjdl9i
eXRlcyA9ICgoc3RhdHVzICYgRFBfQVVYX0NIX0NUTF9NRVNTQUdFX1NJWkVfTUFTSykgPj4KIAkJ
ICAgICAgRFBfQVVYX0NIX0NUTF9NRVNTQUdFX1NJWkVfU0hJRlQpOwpAQCAtMTQ1Miw2ICsxNDU2
LDcgQEAgaW50ZWxfZHBfYXV4X3RyYW5zZmVyKHN0cnVjdCBkcm1fZHBfYXV4ICphdXgsIHN0cnVj
dCBkcm1fZHBfYXV4X21zZyAqbXNnKQogCQlicmVhazsKIAogCWRlZmF1bHQ6CisJCVdBUk4oMSwg
IlVua25vd24gcmVxdWVzdCB0eXBlICVkIiwgbXNnLT5yZXF1ZXN0ICYgfkRQX0FVWF9JMkNfTU9U
KTsKIAkJcmV0ID0gLUVJTlZBTDsKIAkJYnJlYWs7CiAJfQpAQCAtNTAyOCw4ICs1MDMzLDEwIEBA
IGludGVsX2RwX2RldGVjdF9kcGNkKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApCiAJaWYgKGxz
cGNvbi0+YWN0aXZlKQogCQlsc3Bjb25fcmVzdW1lKGxzcGNvbik7CiAKLQlpZiAoIWludGVsX2Rw
X2dldF9kcGNkKGludGVsX2RwKSkKKwlpZiAoIWludGVsX2RwX2dldF9kcGNkKGludGVsX2RwKSkg
eworCQlEUk1fREVCVUdfS01TKCJDb3VsZCBub3QgZ2V0IGRwY2QhIik7CiAJCXJldHVybiBjb25u
ZWN0b3Jfc3RhdHVzX2Rpc2Nvbm5lY3RlZDsKKwl9CiAKIAkvKiBpZiB0aGVyZSdzIG5vIGRvd25z
dHJlYW0gcG9ydCwgd2UncmUgZG9uZSAqLwogCWlmICghZHJtX2RwX2lzX2JyYW5jaChkcGNkKSkK
LS0gCjIuMTcuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
