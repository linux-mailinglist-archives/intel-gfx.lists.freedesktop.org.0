Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A636D8147
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2019 22:45:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16A278909C;
	Tue, 15 Oct 2019 20:45:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3BA46E895
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2019 20:45:05 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18849356-1500050 
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2019 21:44:52 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Oct 2019 21:44:41 +0100
Message-Id: <20191015204451.19372-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191015204451.19372-1-chris@chris-wilson.co.uk>
References: <20191015204451.19372-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 02/12] drm/i915/tgl: Add IS_TGL_REVID
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

RnJvbTogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+CgpXZSBh
cmUgZ29pbmcgdG8gbmVlZCB0aGlzIG1hY3JvIG9uIGxpbWl0aW5nCnRoZSB3b3JrYXJvdW5kIHNj
b3BlLgoKU2lnbmVkLW9mZi1ieTogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5p
bnRlbC5jb20+ClJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5j
by51az4KU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28u
dWs+Ckxpbms6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9wYXRjaC9tc2dpZC8y
MDE5MTAxNTE1NDQ0OS4xMDMzOC0xLW1pa2Eua3VvcHBhbGFAbGludXguaW50ZWwuY29tCi0tLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCB8IDUgKysrKysKIDEgZmlsZSBjaGFuZ2Vk
LCA1IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2Rydi5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAppbmRleCBjNDZiMzM5MDY0
YzAuLmY2YWVlMWUwMWE3ZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9k
cnYuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCkBAIC0xNjg2LDYgKzE2
ODYsMTEgQEAgSVNfU1VCUExBVEZPUk0oY29uc3Qgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5
MTUsCiAjZGVmaW5lIElTX0lDTF9SRVZJRChwLCBzaW5jZSwgdW50aWwpIFwKIAkoSVNfSUNFTEFL
RShwKSAmJiBJU19SRVZJRChwLCBzaW5jZSwgdW50aWwpKQogCisjZGVmaW5lIFRHTF9SRVZJRF9B
MAkJMHgwCisKKyNkZWZpbmUgSVNfVEdMX1JFVklEKHAsIHNpbmNlLCB1bnRpbCkgXAorCShJU19U
SUdFUkxBS0UocCkgJiYgSVNfUkVWSUQocCwgc2luY2UsIHVudGlsKSkKKwogI2RlZmluZSBJU19M
UChkZXZfcHJpdikJKElOVEVMX0lORk8oZGV2X3ByaXYpLT5pc19scCkKICNkZWZpbmUgSVNfR0VO
OV9MUChkZXZfcHJpdikJKElTX0dFTihkZXZfcHJpdiwgOSkgJiYgSVNfTFAoZGV2X3ByaXYpKQog
I2RlZmluZSBJU19HRU45X0JDKGRldl9wcml2KQkoSVNfR0VOKGRldl9wcml2LCA5KSAmJiAhSVNf
TFAoZGV2X3ByaXYpKQotLSAKMi4yMy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
