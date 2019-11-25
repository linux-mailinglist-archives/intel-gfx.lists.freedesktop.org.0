Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96665108DB6
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Nov 2019 13:18:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E14D589F38;
	Mon, 25 Nov 2019 12:18:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8433D89F38
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Nov 2019 12:18:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Nov 2019 04:18:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,241,1571727600"; d="scan'208";a="233379202"
Received: from unknown (HELO localhost.localdomain) ([10.223.165.29])
 by fmsmga004.fm.intel.com with ESMTP; 25 Nov 2019 04:18:13 -0800
From: Ankit Navik <ankit.p.navik@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 25 Nov 2019 17:47:07 +0530
Message-Id: <1574684229-26600-2-git-send-email-ankit.p.navik@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1574684229-26600-1-git-send-email-ankit.p.navik@intel.com>
References: <1574684229-26600-1-git-send-email-ankit.p.navik@intel.com>
Subject: [Intel-gfx] [PATCH v6 1/3] drm/i915: Get active pending request for
 given context
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
Cc: ankit.p.navik@intel.com, vipin.anand@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhpcyBwYXRjaCBnaXZlcyB1cyB0aGUgYWN0aXZlIHBlbmRpbmcgcmVxdWVzdCBjb3VudCB3aGlj
aCBpcyB5ZXQKdG8gYmUgc3VibWl0dGVkIHRvIHRoZSBHUFUuCgpWMjoKICogQ2hhbmdlIDY0LWJp
dCB0byBhdG9taWMgZm9yIHJlcXVlc3QgY291bnQuIChUdnJ0a28gVXJzdWxpbikKClYzOgogKiBS
ZW1vdmUgbXV0ZXggZm9yIHJlcXVlc3QgY291bnQuCiAqIFJlYmFzZS4KICogRml4ZXMgaGl0dGlu
ZyB1bmRlcmZsb3cgZm9yIHByZWRpY3RpdmUgcmVxdWVzdC4gKFR2cnRrbyBVcnN1bGluKQoKVjQ6
CiAqIFJlYmFzZS4KClY1OgogKiBSZWJhc2UuCgpWNgogKiBSZWJhc2UuCgpDYzogVmlwaW4gQW5h
bmQgPHZpcGluLmFuYW5kQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogQW5raXQgTmF2aWsgPGFu
a2l0LnAubmF2aWtAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1
X2dlbV9jb250ZXh0LmMgICAgICAgfCAxICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1
X2dlbV9jb250ZXh0X3R5cGVzLmggfCA1ICsrKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
aTkxNV9nZW1fZXhlY2J1ZmZlci5jICAgIHwgMiArKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfbHJjLmMgICAgICAgICAgICAgICB8IDMgKysrCiA0IGZpbGVzIGNoYW5nZWQsIDExIGlu
c2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9n
ZW1fY29udGV4dC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHQu
YwppbmRleCA2ZjFlNjE4Li5lZjMzOTg1IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vaTkxNV9nZW1fY29udGV4dC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9p
OTE1X2dlbV9jb250ZXh0LmMKQEAgLTcxMSw2ICs3MTEsNyBAQCBpOTE1X2dlbV9jcmVhdGVfY29u
dGV4dChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwgdW5zaWduZWQgaW50IGZsYWdzKQog
CX0KIAogCXRyYWNlX2k5MTVfY29udGV4dF9jcmVhdGUoY3R4KTsKKwlhdG9taWNfc2V0KCZjdHgt
PnJlcV9jbnQsIDApOwogCiAJcmV0dXJuIGN0eDsKIH0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0X3R5cGVzLmggYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dF90eXBlcy5oCmluZGV4IGMwNjBiYzQuLjM5MzFjMDYg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0X3R5
cGVzLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHRfdHlw
ZXMuaApAQCAtMTY4LDYgKzE2OCwxMSBAQCBzdHJ1Y3QgaTkxNV9nZW1fY29udGV4dCB7CiAJICov
CiAJc3RydWN0IHJhZGl4X3RyZWVfcm9vdCBoYW5kbGVzX3ZtYTsKIAorCS8qKiByZXFfY250OiB0
cmFja3MgdGhlIHBlbmRpbmcgY29tbWFuZHMsIGJhc2VkIG9uIHdoaWNoIHdlIGRlY2lkZSB0bwor
CSAqIGdvIGZvciBsb3cvbWVkaXVtL2hpZ2ggbG9hZCBjb25maWd1cmF0aW9uIG9mIHRoZSBHUFUu
CisJICovCisJYXRvbWljX3QgcmVxX2NudDsKKwogCS8qKiBqdW1wX3doaXRlbGlzdDogQml0IGFy
cmF5IGZvciB0cmFja2luZyBjbWRzIGR1cmluZyBjbWRwYXJzaW5nCiAJICogIEd1YXJkZWQgYnkg
c3RydWN0X211dGV4CiAJICovCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
aTkxNV9nZW1fZXhlY2J1ZmZlci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2Vt
X2V4ZWNidWZmZXIuYwppbmRleCA3YTg3ZTgyLi44M2Y0MzkyIDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5jCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVyLmMKQEAgLTI3MDAsNiArMjcwMCw4IEBA
IGk5MTVfZ2VtX2RvX2V4ZWNidWZmZXIoc3RydWN0IGRybV9kZXZpY2UgKmRldiwKIAlpZiAoZWIu
YmF0Y2gtPnByaXZhdGUpCiAJCWludGVsX2VuZ2luZV9wb29sX21hcmtfYWN0aXZlKGViLmJhdGNo
LT5wcml2YXRlLCBlYi5yZXF1ZXN0KTsKIAorCWF0b21pY19pbmMoJmViLmdlbV9jb250ZXh0LT5y
ZXFfY250KTsKKwogCXRyYWNlX2k5MTVfcmVxdWVzdF9xdWV1ZShlYi5yZXF1ZXN0LCBlYi5iYXRj
aF9mbGFncyk7CiAJZXJyID0gZWJfc3VibWl0KCZlYik7CiBlcnJfcmVxdWVzdDoKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfbHJjLmMKaW5kZXggZTUzM2ZmNy4uYmYyYzdhNSAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfbHJjLmMKQEAgLTE5NDcsNiArMTk0Nyw5IEBAIHN0YXRpYyB2b2lkIGV4
ZWNsaXN0c19kZXF1ZXVlKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKIAogCQkJCXN1
Ym1pdCA9IHRydWU7CiAJCQkJbGFzdCA9IHJxOworCisJCQkJaWYgKGF0b21pY19yZWFkKCZycS0+
Z2VtX2NvbnRleHQtPnJlcV9jbnQpID4gMCkKKwkJCQkJYXRvbWljX2RlYygmcnEtPmdlbV9jb250
ZXh0LT5yZXFfY250KTsKIAkJCX0KIAkJfQogCi0tIAoyLjcuNAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
