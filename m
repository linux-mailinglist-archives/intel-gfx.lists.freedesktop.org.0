Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D9E81337462
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Mar 2021 14:49:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BE806ECC8;
	Thu, 11 Mar 2021 13:48:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl
 [IPv6:2a02:2308::216:3eff:fe92:dfa3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A1F646ECA2
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Mar 2021 13:48:51 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Mar 2021 14:42:23 +0100
Message-Id: <20210311134249.588632-44-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210311134249.588632-1-maarten.lankhorst@linux.intel.com>
References: <20210311134249.588632-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v8 43/69] drm/i915/selftests: Prepare coherency
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
ZW5jeS5jCmluZGV4IDNlZWMzODVkNDNiYi4uOGYyZTQ0N2JkNTAzIDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX2NvaGVyZW5jeS5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fY29oZXJlbmN5LmMK
QEAgLTE3NCw3ICsxNzQsNyBAQCBzdGF0aWMgaW50IHdjX3NldChzdHJ1Y3QgY29udGV4dCAqY3R4
LCB1bnNpZ25lZCBsb25nIG9mZnNldCwgdTMyIHYpCiAJaWYgKGVycikKIAkJcmV0dXJuIGVycjsK
IAotCW1hcCA9IGk5MTVfZ2VtX29iamVjdF9waW5fbWFwKGN0eC0+b2JqLCBJOTE1X01BUF9XQyk7
CisJbWFwID0gaTkxNV9nZW1fb2JqZWN0X3Bpbl9tYXBfdW5sb2NrZWQoY3R4LT5vYmosIEk5MTVf
TUFQX1dDKTsKIAlpZiAoSVNfRVJSKG1hcCkpCiAJCXJldHVybiBQVFJfRVJSKG1hcCk7CiAKQEAg
LTIwMSw3ICsyMDEsNyBAQCBzdGF0aWMgaW50IHdjX2dldChzdHJ1Y3QgY29udGV4dCAqY3R4LCB1
bnNpZ25lZCBsb25nIG9mZnNldCwgdTMyICp2KQogCWlmIChlcnIpCiAJCXJldHVybiBlcnI7CiAK
LQltYXAgPSBpOTE1X2dlbV9vYmplY3RfcGluX21hcChjdHgtPm9iaiwgSTkxNV9NQVBfV0MpOwor
CW1hcCA9IGk5MTVfZ2VtX29iamVjdF9waW5fbWFwX3VubG9ja2VkKGN0eC0+b2JqLCBJOTE1X01B
UF9XQyk7CiAJaWYgKElTX0VSUihtYXApKQogCQlyZXR1cm4gUFRSX0VSUihtYXApOwogCi0tIAoy
LjMwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
