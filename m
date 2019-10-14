Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 191C3D6B74
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2019 00:05:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06B2E89D2F;
	Mon, 14 Oct 2019 22:05:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69F4E89CD9
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Oct 2019 22:05:46 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18837434-1500050 
 for multiple; Mon, 14 Oct 2019 23:05:37 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Oct 2019 23:05:33 +0100
Message-Id: <20191014220534.1662-9-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191014220534.1662-1-chris@chris-wilson.co.uk>
References: <20191014220534.1662-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 09/10] drm/i915/execlist: Trim immediate
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
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyB8IDYgKysrKy0tCiAxIGZpbGUgY2hhbmdl
ZCwgNCBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfbHJjLmMKaW5kZXggNjBlODk3YzAwMGIyLi5mOWJmNzgwMzJhZDcgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX2xyYy5jCkBAIC0xNjEzLDcgKzE2MTMsNyBAQCBzdGF0aWMgdm9pZCBleGVj
bGlzdHNfZGVxdWV1ZShzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCiAJCQlsYXN0LT5o
d19jb250ZXh0LT5scmNfZGVzYyB8PSBDVFhfREVTQ19GT1JDRV9SRVNUT1JFOwogCQkJbGFzdCA9
IE5VTEw7CiAJCX0gZWxzZSBpZiAobmVlZF90aW1lc2xpY2UoZW5naW5lLCBsYXN0KSAmJgotCQkJ
ICAgIXRpbWVyX3BlbmRpbmcoJmVuZ2luZS0+ZXhlY2xpc3RzLnRpbWVyKSkgeworCQkJICAgdGlt
ZXJfZXhwaXJlZCgmZW5naW5lLT5leGVjbGlzdHMudGltZXIpKSB7CiAJCQlHRU1fVFJBQ0UoIiVz
OiBleHBpcmVkIGxhc3Q9JWxseDolbGxkLCBwcmlvPSVkLCBoaW50PSVkXG4iLAogCQkJCSAgZW5n
aW5lLT5uYW1lLAogCQkJCSAgbGFzdC0+ZmVuY2UuY29udGV4dCwKQEAgLTIwNzQsNiArMjA3NCw4
IEBAIHN0YXRpYyB2b2lkIHByb2Nlc3NfY3NiKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2lu
ZSkKIAogCQkJaWYgKGVuYWJsZV90aW1lc2xpY2UoZXhlY2xpc3RzKSkKIAkJCQltb2RfdGltZXIo
JmV4ZWNsaXN0cy0+dGltZXIsIGppZmZpZXMgKyAxKTsKKwkJCWVsc2UKKwkJCQljYW5jZWxfdGlt
ZXIoJmV4ZWNsaXN0cy0+dGltZXIpOwogCiAJCQlXUklURV9PTkNFKGV4ZWNsaXN0cy0+cGVuZGlu
Z1swXSwgTlVMTCk7CiAJCX0gZWxzZSB7CkBAIC0zNTkxLDcgKzM1OTMsNyBAQCBnZW4xMl9lbWl0
X2ZpbmlfYnJlYWRjcnVtYl9yY3Moc3RydWN0IGk5MTVfcmVxdWVzdCAqcmVxdWVzdCwgdTMyICpj
cykKIAogc3RhdGljIHZvaWQgZXhlY2xpc3RzX3Bhcmsoc3RydWN0IGludGVsX2VuZ2luZV9jcyAq
ZW5naW5lKQogewotCWRlbF90aW1lcigmZW5naW5lLT5leGVjbGlzdHMudGltZXIpOworCWNhbmNl
bF90aW1lcigmZW5naW5lLT5leGVjbGlzdHMudGltZXIpOwogCWNhbmNlbF90aW1lcigmZW5naW5l
LT5leGVjbGlzdHMucHJlZW1wdCk7CiB9CiAKLS0gCjIuMjMuMAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
