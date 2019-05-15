Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DFDF51F70A
	for <lists+intel-gfx@lfdr.de>; Wed, 15 May 2019 17:01:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28359891F4;
	Wed, 15 May 2019 15:01:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 221CC891F4
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 May 2019 15:01:03 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16566216-1500050 
 for multiple; Wed, 15 May 2019 16:00:42 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 15 May 2019 16:00:42 +0100
Message-Id: <20190515150042.8409-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190515150042.8409-1-chris@chris-wilson.co.uk>
References: <20190515150042.8409-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Disable active links before
 rebooting
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
Cc: janusz.krzysztofik@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Q2VydGFpbiBtb25pdG9ycywgZS5nLiBEZWxsLCBkbyBub3QgbGlrZSBpdCB3aGVuIHdlIHJlYm9v
dCB3aXRoIGFuCmFjdGl2ZSBsaW5rLCBsZWF2aW5nIHRoZW0gaW4gYSBjb25mdXNlZCBzdGF0ZSB3
aGVyZSB0aGV5IHJlZnVzZSB0bwpyZW5lZ290aWF0ZSB0aGUgbGluayBhZnRlciB0aGUgcmVib290
LiBJZiB3ZSBob29rIGludG8gdGhlIHJlYm9vdApub3RpZmllciwgd2UgY2FuIHN3aXRjaCBvZmYg
YW55IGFjdGl2ZSBsaW5rIGJlZm9yZSByZWJvb3RpbmcsIGxlYXZpbmcKZXZlcnl0aGluZyBpbiBh
IGNvbnNpc3RlbnQsIGhvcGVmdWxseSBoYXBweSwgc3RhdGUuCgpTaWduZWQtb2ZmLWJ5OiBDaHJp
cyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KQ2M6IFZpbGxlIFN5cmrDpGzDpCA8
dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9wY2kuYyB8IDQgKysrKwogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKQoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3BjaS5jCmluZGV4IDQwMWViNmM3MWFlMS4uN2IyZGM4ZDY2ZjM1IDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfcGNpLmMKQEAgLTI2LDYgKzI2LDcgQEAKICNpbmNsdWRlIDxsaW51eC92
Z2FhcmIuaD4KICNpbmNsdWRlIDxsaW51eC92Z2Ffc3dpdGNoZXJvby5oPgogCisjaW5jbHVkZSA8
ZHJtL2RybV9hdG9taWNfaGVscGVyLmg+CiAjaW5jbHVkZSA8ZHJtL2RybV9kcnYuaD4KIAogI2lu
Y2x1ZGUgImk5MTVfZHJ2LmgiCkBAIC05MDksNiArOTEwLDkgQEAgc3RhdGljIHZvaWQgaTkxNV9w
Y2lfc2h1dGRvd24oc3RydWN0IHBjaV9kZXYgKnBkZXYpCiAJLyogQ2FuY2VsIGFueSBvdXRzdGFu
ZGluZyByZW5kZXJpbmcgKi8KIAlpZiAoUkVBRF9PTkNFKGk5MTUtPmd0LmF3YWtlKSkKIAkJaTkx
NV9nZW1fc2V0X3dlZGdlZChpOTE1KTsKKworCS8qIERpc2FibGUgYWN0aXZlIGxpbmtzIHRvIGF2
b2lkIGNvbmZ1c2luZyBjZXJ0YWluIChEZWxsKSBtb25pdG9ycyAqLworCWRybV9hdG9taWNfaGVs
cGVyX3NodXRkb3duKCZpOTE1LT5kcm0pOwogfQogCiBzdGF0aWMgc3RydWN0IHBjaV9kcml2ZXIg
aTkxNV9wY2lfZHJpdmVyID0gewotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
