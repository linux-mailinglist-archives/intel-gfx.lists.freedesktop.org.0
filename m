Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF8803A063
	for <lists+intel-gfx@lfdr.de>; Sat,  8 Jun 2019 17:27:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 414E389126;
	Sat,  8 Jun 2019 15:27:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp.domeneshop.no (smtp.domeneshop.no
 [IPv6:2a01:5b40:0:3005::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CC6D89126;
 Sat,  8 Jun 2019 15:27:05 +0000 (UTC)
Received: from 211.81-166-168.customer.lyse.net ([81.166.168.211]:54332
 helo=localhost.localdomain)
 by smtp.domeneshop.no with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_CBC_SHA1:128)
 (Exim 4.84_2) (envelope-from <noralf@tronnes.org>)
 id 1hZdFH-0000t2-8L; Sat, 08 Jun 2019 17:27:03 +0200
From: =?UTF-8?q?Noralf=20Tr=C3=B8nnes?= <noralf@tronnes.org>
To: dri-devel@lists.freedesktop.org
Date: Sat,  8 Jun 2019 17:26:52 +0200
Message-Id: <20190608152657.36613-1-noralf@tronnes.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=tronnes.org; s=ds201810; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:Cc:To:From;
 bh=UZrhB6BGIYIw7lTDEkrgi8MiO+uxwK6w6LNs7XVHUwc=; 
 b=DmOi1n0NdjMMYr4G1utzOEWL7AqPcoEwuDTy4mTqXoAfqRprjVQgpZsfQ6NYjY7KbavLE66eGeZ9Mrx7hiI+e+X3085kzqGDvp79Hd4H8IxPAnd9a9l7MBpENL5M9JbjkCgK5miiZ5X22lFQCUA+o9hzamPePpuv4kovAc3LwJaxiGIoWoUVq15DOY2jQ9agoJzwh3Mj1MzhziNHGz/shrCeuNrub90fJsizeFdDL7BGJm6SsYa4cqeF3UVPDAYLcY3iVoJJm5qlS/qcaldwan7+Xa/Y5Hh133Il4Y+R1MHvgIj89Xywo26L4RNvnQULeCQIoynFEXUvJw67HvQEbw==;
Subject: [Intel-gfx] [PATCH v8 0/5] drm/fb-helper: Move modesetting code to
 drm_client
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
Cc: intel-gfx@lists.freedesktop.org,
 =?UTF-8?q?Noralf=20Tr=C3=B8nnes?= <noralf@tronnes.org>, sam@ravnborg.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhpcyBtb3ZlcyB0aGUgbW9kZXNldHRpbmcgY29kZSBmcm9tIGRybV9mYl9oZWxwZXIgdG8gZHJt
X2NsaWVudCBzbyBpdApjYW4gYmUgc2hhcmVkIGJ5IGFsbCBpbnRlcm5hbCBjbGllbnRzLgoKTGV0
J3Mgc2VlIHdoYXQgdGhlIENJIHNheXMgYWJvdXQgdGhlIHJlbWFpbmluZyBwYXRjaGVzLiBJIGhh
dmUgYWRkZWQgdGhlCmJvb3RzcGxhc2ggdG9kbyBlbnRyeSBwYXRjaCBhZGRpbmcgU2FtIGFzIGNv
bnRhY3QuCgpOb3JhbGYuCgpOb3JhbGYgVHLDuG5uZXMgKDUpOgogIGRybS9mYi1oZWxwZXI6IFJl
bW92ZSBkcm1fZmJfaGVscGVyX2Nvbm5lY3RvcgogIGRybS9mYi1oZWxwZXI6IFByZXBhcmUgdG8g
bW92ZSBvdXQgbW9kZXNldCBjb25maWcgY29kZQogIGRybS9mYi1oZWxwZXI6IE1vdmUgb3V0IG1v
ZGVzZXQgY29uZmlnIGNvZGUKICBkcm0vY2xpZW50OiBIYWNrOiBBZGQgYm9vdHNwbGFzaCBleGFt
cGxlCiAgZHJtL3RvZG86IEFkZCBib290c3BsYXNoIGVudHJ5CgogRG9jdW1lbnRhdGlvbi9ncHUv
dG9kby5yc3QgICAgICAgICAgIHwgIDE5ICsKIGRyaXZlcnMvZ3B1L2RybS9LY29uZmlnICAgICAg
ICAgICAgICB8ICAgNSArCiBkcml2ZXJzL2dwdS9kcm0vTWFrZWZpbGUgICAgICAgICAgICAgfCAg
IDEgKwogZHJpdmVycy9ncHUvZHJtL2RybV9ib290c3BsYXNoLmMgICAgIHwgMzU4ICsrKysrKysr
KysrCiBkcml2ZXJzL2dwdS9kcm0vZHJtX2NsaWVudC5jICAgICAgICAgfCAgIDcgKwogZHJpdmVy
cy9ncHUvZHJtL2RybV9jbGllbnRfbW9kZXNldC5jIHwgNzA3ICsrKysrKysrKysrKysrKysrKysr
LQogZHJpdmVycy9ncHUvZHJtL2RybV9kcnYuYyAgICAgICAgICAgIHwgICA0ICsKIGRyaXZlcnMv
Z3B1L2RybS9kcm1fZmJfaGVscGVyLmMgICAgICB8IDg4NiArLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0KIGluY2x1ZGUvZHJtL2RybV9jbGllbnQuaCAgICAgICAgICAgICB8ICAyMyArLQogaW5j
bHVkZS9kcm0vZHJtX2ZiX2hlbHBlci5oICAgICAgICAgIHwgIDg0ICstLQogMTAgZmlsZXMgY2hh
bmdlZCwgMTE0OSBpbnNlcnRpb25zKCspLCA5NDUgZGVsZXRpb25zKC0pCiBjcmVhdGUgbW9kZSAx
MDA2NDQgZHJpdmVycy9ncHUvZHJtL2RybV9ib290c3BsYXNoLmMKCi0tIAoyLjIwLjEKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
