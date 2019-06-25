Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B7A154F98
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jun 2019 15:03:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D18146E0FF;
	Tue, 25 Jun 2019 13:03:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C49B6E0F6
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jun 2019 13:03:18 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17018179-1500050 
 for multiple; Tue, 25 Jun 2019 14:01:35 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Jun 2019 14:01:23 +0100
Message-Id: <20190625130128.11009-15-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190625130128.11009-1-chris@chris-wilson.co.uk>
References: <20190625130128.11009-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 15/20] drm/i915/gt: Always call kref_init for
 the timeline
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

QWx3YXlzIGluaXRpYWxpc2UgdGhlIHJlZmNvdW50LCBldmVuIGZvciB0aGUgZW1iZWRkZWQgdGlt
ZWxpbmVzIGluc2lkZQptb2NrIGRldmljZXMuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24g
PGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF90aW1lbGluZS5jIHwgMyArLS0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwg
MiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF90aW1lbGluZS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfdGltZWxpbmUuYwpp
bmRleCBkN2RjZjU0YjE4YzUuLjdmYjVkZWZkOWU3MSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfdGltZWxpbmUuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF90aW1lbGluZS5jCkBAIC0yMjIsNiArMjIyLDcgQEAgaW50IGludGVsX3RpbWVsaW5l
X2luaXQoc3RydWN0IGludGVsX3RpbWVsaW5lICp0aW1lbGluZSwKIAogCXRpbWVsaW5lLT5ndCA9
IGd0OwogCisJa3JlZl9pbml0KCZ0aW1lbGluZS0+a3JlZik7CiAJYXRvbWljX3NldCgmdGltZWxp
bmUtPnBpbl9jb3VudCwgMCk7CiAKIAl0aW1lbGluZS0+aGFzX2luaXRpYWxfYnJlYWRjcnVtYiA9
ICFod3NwOwpAQCAtMzE2LDggKzMxNyw2IEBAIGludGVsX3RpbWVsaW5lX2NyZWF0ZShzdHJ1Y3Qg
aW50ZWxfZ3QgKmd0LCBzdHJ1Y3QgaTkxNV92bWEgKmdsb2JhbF9od3NwKQogCQlyZXR1cm4gRVJS
X1BUUihlcnIpOwogCX0KIAotCWtyZWZfaW5pdCgmdGltZWxpbmUtPmtyZWYpOwotCiAJcmV0dXJu
IHRpbWVsaW5lOwogfQogCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
