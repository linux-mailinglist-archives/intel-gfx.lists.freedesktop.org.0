Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A99A0D5E30
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Oct 2019 11:08:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 280246E170;
	Mon, 14 Oct 2019 09:08:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 508996E17D
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Oct 2019 09:08:20 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18828696-1500050 
 for multiple; Mon, 14 Oct 2019 10:08:02 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Oct 2019 10:07:57 +0100
Message-Id: <20191014090757.32111-15-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191014090757.32111-1-chris@chris-wilson.co.uk>
References: <20191014090757.32111-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 15/15] drm/i915/execlist: Trim immediate
 timeslice expiry
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

V2UgcGVyZm9ybSB0aW1lc2xpY2luZyBpbW1lZGlhdGVseSB1cG9uIHJlY2VpcHQgb2YgYSByZXF1
ZXN0IHRoYXQgbWF5IGJlCnB1dCBpbnRvIHRoZSBzZWNvbmQgRUxTUCBzbG90LiBUaGUgaWRlYSBi
ZWhpbmQgdGhpcyB3YXMgdGhhdCBzaW5jZSB3ZQpkaWRuJ3QgaW5zdGFsbCB0aGUgdGltZXIgaWYg
dGhlIHNlY29uZCBFTFNQIHNsb3Qgd2FzIGVtcHR5LCB3ZSB3b3VsZCBub3QKaGF2ZSBhbnkgaWRl
YSBvZiBob3cgbG9uZyBFTFNQWzBdIGhhZCBiZWVuIHJ1bm5pbmcgYW5kIHNvIGdpdmluZyB0aGUK
bmV3Y29tZXIgYSBjaGFuY2Ugb24gdGhlIEdQVSB3YXMgZmFpci4gSG93ZXZlciwgdGhpcyBjYXVz
ZXMgdXMgZXh0cmEKYnVzeSB3b3JrIHRoYXQgd2UgbWF5IGJlIGFibGUgdG8gYXZvaWQgaWYgd2Ug
d2FpdCBhIGppZmZpZSBmb3IgdGhlIGZpcnN0CnRpbWVzbGljZSBhcyBub3JtYWwuCgpTaWduZWQt
b2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0tCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyB8IDQgKysrLQogMSBmaWxlIGNoYW5nZWQs
IDMgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
bHJjLmMKaW5kZXggYjc2YjM1MTk0MTE0Li5mZDE4MDNhYThjMjEgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX2xyYy5jCkBAIC0xNjA4LDcgKzE2MDgsNyBAQCBzdGF0aWMgdm9pZCBleGVjbGlz
dHNfZGVxdWV1ZShzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCiAJCQlsYXN0LT5od19j
b250ZXh0LT5scmNfZGVzYyB8PSBDVFhfREVTQ19GT1JDRV9SRVNUT1JFOwogCQkJbGFzdCA9IE5V
TEw7CiAJCX0gZWxzZSBpZiAobmVlZF90aW1lc2xpY2UoZW5naW5lLCBsYXN0KSAmJgotCQkJICAg
IXRpbWVyX3BlbmRpbmcoJmVuZ2luZS0+ZXhlY2xpc3RzLnRpbWVyKSkgeworCQkJICAgdGltZXJf
ZXhwaXJlZCgmZW5naW5lLT5leGVjbGlzdHMudGltZXIpKSB7CiAJCQlHRU1fVFJBQ0UoIiVzOiBl
eHBpcmVkIGxhc3Q9JWxseDolbGxkLCBwcmlvPSVkLCBoaW50PSVkXG4iLAogCQkJCSAgZW5naW5l
LT5uYW1lLAogCQkJCSAgbGFzdC0+ZmVuY2UuY29udGV4dCwKQEAgLTIwNjMsNiArMjA2Myw4IEBA
IHN0YXRpYyB2b2lkIHByb2Nlc3NfY3NiKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkK
IAogCQkJaWYgKGVuYWJsZV90aW1lc2xpY2UoZXhlY2xpc3RzKSkKIAkJCQltb2RfdGltZXIoJmV4
ZWNsaXN0cy0+dGltZXIsIGppZmZpZXMgKyAxKTsKKwkJCWVsc2UKKwkJCQljYW5jZWxfdGltZXIo
JmV4ZWNsaXN0cy0+dGltZXIpOwogCiAJCQlXUklURV9PTkNFKGV4ZWNsaXN0cy0+cGVuZGluZ1sw
XSwgTlVMTCk7CiAJCX0gZWxzZSB7Ci0tIAoyLjIzLjAKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
