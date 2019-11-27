Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44C8A10B655
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2019 20:06:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF4B26E46C;
	Wed, 27 Nov 2019 19:06:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B6DC6E46C
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Nov 2019 19:06:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Nov 2019 11:05:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,250,1571727600"; d="scan'208";a="199283096"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 27 Nov 2019 11:05:56 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 27 Nov 2019 21:05:56 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Nov 2019 21:05:49 +0200
Message-Id: <20191127190556.1574-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/7] drm/i915: Cleanups around pre/post plane
 update
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkkg
d2FzIHBva2luZyBhcm91bmQgdGhlIGZiYyBzdHVmZiBhbmQgYWdhaW4gc3R1bWJsZWQgb24gdGhl
Cm1lc3MgaW4gaW50ZWxfe3ByZSxwb3N0fV9wbGFuZV91cGRhdGUoKSwgc28gSSBwcm9jZWVkZWQg
dG8KY2xlYW4gaXQgdXAgYSBiaXQuCgpWaWxsZSBTeXJqw6Rsw6QgKDcpOgogIGRybS9pOTE1OiBD
bGVhbiB1cCBhcmd1bWVudHMgdG8gbnYxMi9zY2FsZXIgdy9hIGZ1bmNzCiAgZHJtL2k5MTU6IFBh
c3MgZGV2X3ByaXYgdG8gaWxrX2Rpc2FibGVfbHBfd20oKQogIGRybS9pOTE1OiBzL3BpcGVfY29u
ZmlnL25ld19jcnRjX3N0YXRlLwogICAgaW50ZWxfe3ByZSxwb3N0fV9wbGFuZV91cGRhdGUoKQog
IGRybS9pOTE1OiBDbGVhbiB1cCBpbnRlbF97cHJlLHBvc3R9X3BsYW5lX3VwZGF0ZSgpCiAgZHJt
L2k5MTU6IENsZWFuIHVwIHRoZSBnZW4yICJubyBwbGFuZXMgLT4gdW5kZXJydW4iIHdvcmthcm91
bmQKICBkcm0vaTkxNTogTnVrZSBpbnRlbF9wcmVfZGlzYWJsZV9wcmltYXJ5X25vYXRvbWljKCkK
ICBkcm0vaTkxNTogTWFrZSBpbnRlbF9jcnRjX2FybV9maWZvX3VuZGVycnVuKCkgZnVuY3Rpb25h
bCBvbiBnZW4yCgogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMg
fCAzMTYgKysrKysrKysrLS0tLS0tLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9mYmMuYyAgICAgfCAgMTQgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZmJjLmggICAgIHwgICA4ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jICAg
ICAgICAgICAgICB8ICAgNCArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uaCAgICAg
ICAgICAgICAgfCAgIDIgKy0KIDUgZmlsZXMgY2hhbmdlZCwgMTU0IGluc2VydGlvbnMoKyksIDE5
MCBkZWxldGlvbnMoLSkKCi0tIAoyLjIzLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
