Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B25633EEAC
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Mar 2021 11:48:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 501986E51D;
	Wed, 17 Mar 2021 10:48:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 697F56E51D
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Mar 2021 10:48:17 +0000 (UTC)
IronPort-SDR: yuigc6KbyKgegUF87VBWh8Mduo8Eg61A7FAErITNZ5HC6vz2wGeUIK9jSWohuuyysc06waHYTd
 xP98oExkT8sA==
X-IronPort-AV: E=McAfee;i="6000,8403,9925"; a="250796786"
X-IronPort-AV: E=Sophos;i="5.81,256,1610438400"; d="scan'208";a="250796786"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2021 03:48:17 -0700
IronPort-SDR: CGBsUO7QSp8jS68apXrBl8FqWC97gF+6ZRMEjyUGe4sQ1LjW+3gvndHWsjz360XT3FcQUZNz5w
 2F5N1c+eXPKg==
X-IronPort-AV: E=Sophos;i="5.81,256,1610438400"; d="scan'208";a="412598707"
Received: from pompl-mobl.ger.corp.intel.com (HELO
 zkempczy-mobl2.ger.corp.intel.com) ([10.252.34.158])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2021 03:48:15 -0700
From: =?UTF-8?q?Zbigniew=20Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 17 Mar 2021 11:47:43 +0100
Message-Id: <20210317104743.94364-2-zbigniew.kempczynski@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20210317104743.94364-1-zbigniew.kempczynski@intel.com>
References: <20210317104743.94364-1-zbigniew.kempczynski@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/1] drm/i915/gem: Drop relocation support on
 all new hardware
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RW5zdXJlIHdlIGRvbid0IHBhc3MgYW55IHJlbG9jYXRpb24gZGF0YSBpbiBleGVjYnVmIGZvciBh
bnkKbmV3IGhhcmR3YXJlLgoKUGF0Y2ggbGlrZWx5IGlzIG5vdCBvcHRpbWFsIGJ1dCBpcyBkb2lu
ZyBoYXJkIGN1dCBiZWZvcmUKZW50ZXJpbmcgZXhlY2J1Zi4KClNpZ25lZC1vZmYtYnk6IFpiaWdu
aWV3IEtlbXBjennFhHNraSA8emJpZ25pZXcua2VtcGN6eW5za2lAaW50ZWwuY29tPgpDYzogSmFz
b24gRWtzdHJhbmQgPGphc29uQGpsZWtzdHJhbmQubmV0PgpDYzogRGFuaWVsIFZldHRlciA8ZGFu
aWVsLnZldHRlckBmZndsbC5jaD4KLS0tCiAuLi4vZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9l
eGVjYnVmZmVyLmMgICAgfCAyMiArKysrKysrKysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwg
MjIgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9p
OTE1X2dlbV9leGVjYnVmZmVyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1f
ZXhlY2J1ZmZlci5jCmluZGV4IGZlMTcwMTg2ZGQ0Mi4uYTNiNjAzNDEyNDQ4IDEwMDY0NAotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVyLmMKQEAgLTMzOTQsNiAr
MzM5NCwyMiBAQCBzdGF0aWMgYm9vbCBjaGVja19idWZmZXJfY291bnQoc2l6ZV90IGNvdW50KQog
CXJldHVybiAhKGNvdW50IDwgMSB8fCBjb3VudCA+IElOVF9NQVggfHwgY291bnQgPiBTSVpFX01B
WCAvIHN6IC0gMSk7CiB9CiAKK3N0YXRpYyBib29sIGNoZWNrX29iamVjdHNfY29ycmVjdG5lc3Mo
Y29uc3Qgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsCisJCQkJICAgICAgY29uc3Qgc3Ry
dWN0IGRybV9pOTE1X2dlbV9leGVjX29iamVjdDIgKm9ianMsCisJCQkJICAgICAgdWludDMyX3Qg
YnVmZmVyX2NvdW50KQoreworCXVpbnQzMl90IGk7CisKKwlpZiAoSU5URUxfR0VOKGk5MTUpIDwg
OSB8fCBJU19USUdFUkxBS0UoaTkxNSkpCisJCXJldHVybiB0cnVlOworCisJZm9yIChpID0gMDsg
aSA8IGJ1ZmZlcl9jb3VudDsgaSsrKQorCQlpZiAob2Jqc1tpXS5yZWxvY2F0aW9uX2NvdW50KQor
CQkJcmV0dXJuIGZhbHNlOworCisJcmV0dXJuIHRydWU7Cit9CisKIC8qCiAgKiBMZWdhY3kgZXhl
Y2J1ZmZlciBqdXN0IGNyZWF0ZXMgYW4gZXhlYzIgbGlzdCBmcm9tIHRoZSBvcmlnaW5hbCBleGVj
IG9iamVjdAogICogbGlzdCBhcnJheSBhbmQgcGFzc2VzIGl0IHRvIHRoZSByZWFsIGZ1bmN0aW9u
LgpAQCAtMzUyOSw2ICszNTQ1LDEyIEBAIGk5MTVfZ2VtX2V4ZWNidWZmZXIyX2lvY3RsKHN0cnVj
dCBkcm1fZGV2aWNlICpkZXYsIHZvaWQgKmRhdGEsCiAJCXJldHVybiAtRUZBVUxUOwogCX0KIAor
CWlmICghY2hlY2tfb2JqZWN0c19jb3JyZWN0bmVzcyhpOTE1LCBleGVjMl9saXN0LCBjb3VudCkp
IHsKKwkJZHJtX2RiZygmaTkxNS0+ZHJtLCAiUmVsb2NhdGlvbnMgYXJlIG5vdCBzdXBwb3J0ZWRc
biIpOworCQlrdmZyZWUoZXhlYzJfbGlzdCk7CisJCXJldHVybiAtRUlOVkFMOworCX0KKwogCWVy
ciA9IGk5MTVfZ2VtX2RvX2V4ZWNidWZmZXIoZGV2LCBmaWxlLCBhcmdzLCBleGVjMl9saXN0KTsK
IAogCS8qCi0tIAoyLjI2LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeAo=
