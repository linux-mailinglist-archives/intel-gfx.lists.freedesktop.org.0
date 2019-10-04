Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 38C9DCB930
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Oct 2019 13:35:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E35D6EB37;
	Fri,  4 Oct 2019 11:35:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl
 [IPv6:2a02:2308::216:3eff:fe92:dfa3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B0AD6EB32
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Oct 2019 11:35:20 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  4 Oct 2019 13:34:52 +0200
Message-Id: <20191004113514.17064-3-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191004113514.17064-1-maarten.lankhorst@linux.intel.com>
References: <20191004113514.17064-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 02/24] drm/i915: Fix for_each_intel_plane_mask
 definition
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

VXNpbmcgZm9yX2VhY2hfaW50ZWxfcGxhbmVfbWFzaygpIGZhaWxzIGJlY2F1c2Ugb2YgYW4gZXh0
cmEgYnJhY2tldCwKcmVtb3ZlIHRoZSBicmFja2V0IHNvIHdlIGNhbiB1c2UgaXQgaW4gdGhlIG5l
eHQgY29tbWl0LgoKU2lnbmVkLW9mZi1ieTogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFu
a2hvcnN0QGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXkuaCB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwg
MSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheS5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5LmgKaW5kZXggMjc4MmYyM2VlODg3Li40ZGVkNjRmY2JjNmMgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5oCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5oCkBAIC0zNTAsNyArMzUwLDcgQEAgZW51
bSBwaHlfZmlhIHsKIAkJCSAgICAmKGRldiktPm1vZGVfY29uZmlnLnBsYW5lX2xpc3QsCQlcCiAJ
CQkgICAgYmFzZS5oZWFkKQkJCQkJXAogCQlmb3JfZWFjaF9pZigocGxhbmVfbWFzaykgJgkJCQlc
Ci0JCQkgICAgZHJtX3BsYW5lX21hc2soJmludGVsX3BsYW5lLT5iYXNlKSkpCisJCQkgICAgZHJt
X3BsYW5lX21hc2soJmludGVsX3BsYW5lLT5iYXNlKSkKIAogI2RlZmluZSBmb3JfZWFjaF9pbnRl
bF9wbGFuZV9vbl9jcnRjKGRldiwgaW50ZWxfY3J0YywgaW50ZWxfcGxhbmUpCVwKIAlsaXN0X2Zv
cl9lYWNoX2VudHJ5KGludGVsX3BsYW5lLAkJCQlcCi0tIAoyLjIzLjAKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
