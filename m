Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A41182C3E12
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Nov 2020 11:40:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BE276E918;
	Wed, 25 Nov 2020 10:40:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl
 [IPv6:2a02:2308::216:3eff:fe92:dfa3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42BA16E8E5
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Nov 2020 10:40:30 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 25 Nov 2020 11:39:51 +0100
Message-Id: <20201125104011.606641-44-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.29.2.222.g5d2a92d10f8
In-Reply-To: <20201125104011.606641-1-maarten.lankhorst@linux.intel.com>
References: <20201125104011.606641-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v5 43/63] drm/i915/selftests: Prepare coherency
 tests for obj->mm.lock removal.
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

U3RyYWlnaHRmb3J3YXJkIGNvbnZlcnNpb24sIGp1c3QgY29udmVydCBhIGJ1bmNoIG9mIGNhbGxz
IHRvCnVubG9ja2VkIHZlcnNpb25zLgoKU2lnbmVkLW9mZi1ieTogTWFhcnRlbiBMYW5raG9yc3Qg
PG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IFRob21hcyBI
ZWxsc3Ryw7ZtIDx0aG9tYXMuaGVsbHN0cm9tQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX2NvaGVyZW5jeS5jIHwgNCArKy0t
CiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fY29oZXJl
bmN5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX2NvaGVy
ZW5jeS5jCmluZGV4IDJlNDM5YmIyNjlkNi4uNDJhYTNjNWUwNjIxIDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX2NvaGVyZW5jeS5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fY29oZXJlbmN5LmMK
QEAgLTE1OSw3ICsxNTksNyBAQCBzdGF0aWMgaW50IHdjX3NldChzdHJ1Y3QgY29udGV4dCAqY3R4
LCB1bnNpZ25lZCBsb25nIG9mZnNldCwgdTMyIHYpCiAJaWYgKGVycikKIAkJcmV0dXJuIGVycjsK
IAotCW1hcCA9IGk5MTVfZ2VtX29iamVjdF9waW5fbWFwKGN0eC0+b2JqLCBJOTE1X01BUF9XQyk7
CisJbWFwID0gaTkxNV9nZW1fb2JqZWN0X3Bpbl9tYXBfdW5sb2NrZWQoY3R4LT5vYmosIEk5MTVf
TUFQX1dDKTsKIAlpZiAoSVNfRVJSKG1hcCkpCiAJCXJldHVybiBQVFJfRVJSKG1hcCk7CiAKQEAg
LTE4Miw3ICsxODIsNyBAQCBzdGF0aWMgaW50IHdjX2dldChzdHJ1Y3QgY29udGV4dCAqY3R4LCB1
bnNpZ25lZCBsb25nIG9mZnNldCwgdTMyICp2KQogCWlmIChlcnIpCiAJCXJldHVybiBlcnI7CiAK
LQltYXAgPSBpOTE1X2dlbV9vYmplY3RfcGluX21hcChjdHgtPm9iaiwgSTkxNV9NQVBfV0MpOwor
CW1hcCA9IGk5MTVfZ2VtX29iamVjdF9waW5fbWFwX3VubG9ja2VkKGN0eC0+b2JqLCBJOTE1X01B
UF9XQyk7CiAJaWYgKElTX0VSUihtYXApKQogCQlyZXR1cm4gUFRSX0VSUihtYXApOwogCi0tIAoy
LjI5LjIuMjIyLmc1ZDJhOTJkMTBmOAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4Cg==
