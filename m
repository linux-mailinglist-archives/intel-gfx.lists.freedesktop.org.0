Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96B9611430A
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Dec 2019 15:52:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 367C16E136;
	Thu,  5 Dec 2019 14:52:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 695656E134
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Dec 2019 14:52:47 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19472193-1500050 
 for multiple; Thu, 05 Dec 2019 14:52:40 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  5 Dec 2019 14:52:37 +0000
Message-Id: <20191205145238.635670-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191205145238.635670-1-chris@chris-wilson.co.uk>
References: <20191205145238.635670-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/4] drm/i915/execlists: Tweak priority hint to
 use last port if set
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

V2UgdXNlIHRoZSBwcmlvcml0eSBoaW50IHRvIGRlY2lkZSBpZiBpdCBpcyB3b3J0aCByZXN1Ym1p
dHRpbmcgaW4gb3JkZXIKdG8gcmVwbGFjZSB0aGUgY3VycmVudGx5IGNvbnRleHRzIHdpdGggbmV3
IHJlcXVlc3RzLiBJZiB3ZSBoYXZlIGxlZnQgYQpwb3J0IG9wZW4sIHRoZSBoaW50IHNob3VsZCBi
ZSB0YWtlbiBmcm9tIHRoZSB0b3Agb2YgdGhlIHF1ZXVlIChhcyB0aGF0CmlzIHRoZSBoaWdoZXN0
IHByaW9yaXR5IHJlcXVlc3QgdGhhdCBzaG91bGQgYmUgc2VudCBuZXh0IGJ1dCBmb3IKd2hhdGV2
ZXIgcmVhc29uIGNvdWxkIG5vdCBiZSkuIEhvd2V2ZXIsIGlmIHdlIGhhdmUgZmlsbGVkIHRoZSBz
ZWNvbmQKc3VibWlzc2lvbiBwb3J0LCB0aGF0IHJlcHJlc2VudHMgdGhlIGxvd2VzdCBwcmlvcml0
eSBvZiB0aGUgY3VycmVudGx5CmV4ZWN1dGluZyByZXF1ZXN0cyBhbmQgd2UgZG8gbm90IG5lZWQg
dG8ga2ljayB0aGUgc3VibWlzc2lvbiB0YXNrbGV0CnVubGVzcyB3ZSBoYXZlIHNvbWV0aGluZyB0
aGF0IGlzIG9mIGhpZ2hlciBwcmlvcml0eS4gIFRoaXMganVzdCByZW1vdmVzIGEKZmV3IHVzZWxl
c3Mga2lja3MgYW5kIHF1ZXVpbmcgb2YgdGhlIHN1Ym1pc3Npb24gdGFza2xldC4KClNpZ25lZC1v
ZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotLS0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jIHwgNiArKy0tLS0KIDEgZmlsZSBjaGFuZ2Vk
LCAyIGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9scmMuYwppbmRleCAzYWIyYjdlMTgzNTEuLmM0ODkwMWZkMTdlOSAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfbHJjLmMKQEAgLTE5ODMsMTAgKzE5ODMsOCBAQCBzdGF0aWMgdm9pZCBleGVj
bGlzdHNfZGVxdWV1ZShzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCiAJICogcmVxdWVz
dCB0cmlnZ2VyaW5nIHByZWVtcHRpb24gb24gdGhlIG5leHQgZGVxdWV1ZSAob3Igc3Vic2VxdWVu
dAogCSAqIGludGVycnVwdCBmb3Igc2Vjb25kYXJ5IHBvcnRzKS4KIAkgKi8KLQlleGVjbGlzdHMt
PnF1ZXVlX3ByaW9yaXR5X2hpbnQgPSBxdWV1ZV9wcmlvKGV4ZWNsaXN0cyk7Ci0JR0VNX1RSQUNF
KCIlczogcXVldWVfcHJpb3JpdHlfaGludDolZCwgc3VibWl0OiVzXG4iLAotCQkgIGVuZ2luZS0+
bmFtZSwgZXhlY2xpc3RzLT5xdWV1ZV9wcmlvcml0eV9oaW50LAotCQkgIHllc25vKHN1Ym1pdCkp
OworCWV4ZWNsaXN0cy0+cXVldWVfcHJpb3JpdHlfaGludCA9CisJCXBvcnQgPT0gbGFzdF9wb3J0
ID8gcnFfcHJpbyhsYXN0KSA6IHF1ZXVlX3ByaW8oZXhlY2xpc3RzKTsKIAogCWlmIChzdWJtaXQp
IHsKIAkJKnBvcnQgPSBleGVjbGlzdHNfc2NoZWR1bGVfaW4obGFzdCwgcG9ydCAtIGV4ZWNsaXN0
cy0+cGVuZGluZyk7Ci0tIAoyLjI0LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
