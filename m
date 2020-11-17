Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C4E152B6B70
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Nov 2020 18:14:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14FD789C80;
	Tue, 17 Nov 2020 17:14:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C3C889C80
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Nov 2020 17:14:32 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23021599-1500050 
 for multiple; Tue, 17 Nov 2020 17:14:09 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 17 Nov 2020 17:14:11 +0000
Message-Id: <20201117171411.10030-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/phy: Quieten state loss across suspend
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>, stable@vger.kernel.org,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2hlbiB0aGUgSFcgaXMgcG93ZXJlZCBkb3duLCB0aGUgcmVnaXN0ZXIgc3RhdGUgYW5kIGxpbmtz
IGFyZSBsb3N0LiBUaGlzCm1heSBiZSBhbiBpc3N1ZSBpbiB0aGUgZmlybXdhcmUsIG9yIGluIHRo
ZSBjb2RlIGV4cGVjdGF0aW9uczsgd2hhdGV2ZXIKaXQgaXMsIGl0IGlzIGV4cGVjdGVkIGJlaGF2
aW91ciBub3cgZm9yIFRpZ2VybGFrZTsgc3RvcCB3YXJuaW5nIQoKUmVmZXJlbmNlczogaHR0cHM6
Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC8tL2lzc3Vlcy8yNDExCkZpeGVzOiAy
MzliZWY2NzZkOGUgKCJkcm0vaTkxNS9kaXNwbGF5OiBJbXBsZW1lbnQgbmV3IGNvbWJvIHBoeSBp
bml0aWFsaXphdGlvbiBzdGVwIikKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0Bj
aHJpcy13aWxzb24uY28udWs+CkNjOiBDbGludG9uIEEgVGF5bG9yIDxjbGludG9uLmEudGF5bG9y
QGludGVsLmNvbT4KQ2M6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29t
PgpDYzogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4KQ2M6IEpvc8OpIFJv
YmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgpDYzogPHN0YWJsZUB2Z2VyLmtl
cm5lbC5vcmc+ICMgdjUuOSsKLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2NvbWJvX3BoeS5jIHwgNiArKystLS0KIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyks
IDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9jb21ib19waHkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
Y29tYm9fcGh5LmMKaW5kZXggZDVhZDYxZTQwODNlLi45YTg3ZGY5ODJhZjggMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29tYm9fcGh5LmMKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb21ib19waHkuYwpAQCAtNDI4LDkgKzQy
OCw5IEBAIHN0YXRpYyB2b2lkIGljbF9jb21ib19waHlzX3VuaW5pdChzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYpCiAKIAkJaWYgKHBoeSA9PSBQSFlfQSAmJgogCQkgICAgIWljbF9j
b21ib19waHlfdmVyaWZ5X3N0YXRlKGRldl9wcml2LCBwaHkpKQotCQkJZHJtX3dhcm4oJmRldl9w
cml2LT5kcm0sCi0JCQkJICJDb21ibyBQSFkgJWMgSFcgc3RhdGUgY2hhbmdlZCB1bmV4cGVjdGVk
bHlcbiIsCi0JCQkJIHBoeV9uYW1lKHBoeSkpOworCQkJZHJtX2RiZ19rbXMoJmRldl9wcml2LT5k
cm0sCisJCQkJICAgICJDb21ibyBQSFkgJWMgSFcgc3RhdGUgY2hhbmdlZCB1bmV4cGVjdGVkbHlc
biIsCisJCQkJICAgIHBoeV9uYW1lKHBoeSkpOwogCiAJCWlmICghaGFzX3BoeV9taXNjKGRldl9w
cml2LCBwaHkpKQogCQkJZ290byBza2lwX3BoeV9taXNjOwotLSAKMi4yMC4xCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
