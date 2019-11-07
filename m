Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ADE5F28D7
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2019 09:13:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B20A96EED7;
	Thu,  7 Nov 2019 08:13:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 771406EEC6
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Nov 2019 08:13:07 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19110674-1500050 
 for multiple; Thu, 07 Nov 2019 08:12:56 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  7 Nov 2019 08:12:41 +0000
Message-Id: <20191107081252.10542-17-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191107081252.10542-1-chris@chris-wilson.co.uk>
References: <20191107081252.10542-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 17/28] drm/i915/gt: Defer engine registration
 until fully initialised
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

T25seSBhZGQgdGhlIGVuZ2luZSB0byB0aGUgYXZhaWxhYmxlIHNldCBvZiB1YWJpIGVuZ2luZXMg
b25jZSBpdCBoYXMKYmVlbiBmdWxseSBpbml0aWFsaXNlZCBhbmQgd2Uga25vdyB3ZSB3YW50IGl0
IGluIHRoZSBwdWJsaWMgc2V0LgoKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0Bj
aHJpcy13aWxzb24uY28udWs+CkNjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50
ZWwuY29tPgpDYzogTWljaGHFgiBXYWpkZWN6a28gPG1pY2hhbC53YWpkZWN6a29AaW50ZWwuY29t
PgpDYzogQW5kaSBTaHl0aSA8YW5kaS5zaHl0aUBpbnRlbC5jb20+CkFja2VkLWJ5OiBBbmRpIFNo
eXRpIDxhbmRpLnNoeXRpQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9lbmdpbmVfY3MuYyB8IDMgKystCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCsp
LCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfZW5naW5lX2NzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3Mu
YwppbmRleCBiMzhlYTQ0YWI3NjEuLjVlNDAwNDQ0NzhmZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX2NzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfZW5naW5lX2NzLmMKQEAgLTM0NCw3ICszNDQsNiBAQCBzdGF0aWMgaW50IGlu
dGVsX2VuZ2luZV9zZXR1cChzdHJ1Y3QgaW50ZWxfZ3QgKmd0LCBlbnVtIGludGVsX2VuZ2luZV9p
ZCBpZCkKIAlndC0+ZW5naW5lX2NsYXNzW2luZm8tPmNsYXNzXVtpbmZvLT5pbnN0YW5jZV0gPSBl
bmdpbmU7CiAJZ3QtPmVuZ2luZVtpZF0gPSBlbmdpbmU7CiAKLQlpbnRlbF9lbmdpbmVfYWRkX3Vz
ZXIoZW5naW5lKTsKIAlndC0+aTkxNS0+ZW5naW5lW2lkXSA9IGVuZ2luZTsKIAogCXJldHVybiAw
OwpAQCAtNDgxLDYgKzQ4MCw4IEBAIGludCBpbnRlbF9lbmdpbmVzX2luaXQoc3RydWN0IGludGVs
X2d0ICpndCkKIAkJZXJyID0gaW5pdChlbmdpbmUpOwogCQlpZiAoZXJyKQogCQkJZ290byBjbGVh
bnVwOworCisJCWludGVsX2VuZ2luZV9hZGRfdXNlcihlbmdpbmUpOwogCX0KIAogCXJldHVybiAw
OwotLSAKMi4yNC4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
