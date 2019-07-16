Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 596B16A8EF
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jul 2019 14:51:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B99866E11B;
	Tue, 16 Jul 2019 12:51:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F1236E118
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jul 2019 12:51:17 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17342692-1500050 
 for multiple; Tue, 16 Jul 2019 13:49:30 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 16 Jul 2019 13:49:27 +0100
Message-Id: <20190716124931.5870-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/5] drm/i915/userptr: Beware recursive
 lock_page()
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
Cc: stable@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Rm9sbG93aW5nIGEgdHJ5X3RvX3VubWFwKCkgd2UgbWF5IHdhbnQgdG8gcmVtb3ZlIHRoZSB1c2Vy
cHRyIGFuZCBzbyBjYWxsCnB1dF9wYWdlcygpLiBIb3dldmVyLCB0cnlfdG9fdW5tYXAoKSBhY3F1
aXJlcyB0aGUgcGFnZSBsb2NrIGFuZCBzbyB3ZQptdXN0IGF2b2lkIHJlY3Vyc2l2ZWx5IGxvY2tp
bmcgdGhlIHBhZ2VzIG91cnNlbHZlcyAtLSB3aGljaCBtZWFucyB0aGF0CndlIGNhbm5vdCBzYWZl
bHkgYWNxdWlyZSB0aGUgbG9jayBhcm91bmQgc2V0X3BhZ2VfZGlydHkoKS4gU2luY2Ugd2UKY2Fu
J3QgYmUgc3VyZSBvZiB0aGUgbG9jaywgd2UgaGF2ZSB0byByaXNrIHNraXAgZGlydHlpbmcgdGhl
IHBhZ2UsIG9yCmVsc2UgcmlzayBjYWxsaW5nIHNldF9wYWdlX2RpcnR5KCkgd2l0aG91dCBhIGxv
Y2sgYW5kIHNvIHJpc2sgZnMKY29ycnVwdGlvbi4KClJlcG9ydGVkLWJ5OiBMaW9uZWwgTGFuZHdl
cmxpbiA8bGlvbmVsLmcubGFuZHdlcmxpbkBpbnRlbC5jb20+CkZpeGVzOiBjYjZkN2M3ZGM3ZmYg
KCJkcm0vaTkxNS91c2VycHRyOiBBY3F1aXJlIHRoZSBwYWdlIGxvY2sgYXJvdW5kIHNldF9wYWdl
X2RpcnR5KCkiKQpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNv
bi5jby51az4KQ2M6IExpb25lbCBMYW5kd2VybGluIDxsaW9uZWwuZy5sYW5kd2VybGluQGludGVs
LmNvbT4KQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+CkNjOiBz
dGFibGVAdmdlci5rZXJuZWwub3JnCi0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVf
Z2VtX3VzZXJwdHIuYyB8IDE2ICsrKysrKysrKysrKysrLS0KIDEgZmlsZSBjaGFuZ2VkLCAxNCBp
bnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2dlbS9pOTE1X2dlbV91c2VycHRyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
aTkxNV9nZW1fdXNlcnB0ci5jCmluZGV4IGI5ZDJiYjE1ZTRhNi4uMWFkMjA0N2E2ZGJkIDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdXNlcnB0ci5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV91c2VycHRyLmMKQEAgLTY3Miw3ICs2
NzIsNyBAQCBpOTE1X2dlbV91c2VycHRyX3B1dF9wYWdlcyhzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29i
amVjdCAqb2JqLAogCQlvYmotPm1tLmRpcnR5ID0gZmFsc2U7CiAKIAlmb3JfZWFjaF9zZ3RfcGFn
ZShwYWdlLCBzZ3RfaXRlciwgcGFnZXMpIHsKLQkJaWYgKG9iai0+bW0uZGlydHkpCisJCWlmIChv
YmotPm1tLmRpcnR5ICYmIHRyeWxvY2tfcGFnZShwYWdlKSkgewogCQkJLyoKIAkJCSAqIEFzIHRo
aXMgbWF5IG5vdCBiZSBhbm9ueW1vdXMgbWVtb3J5IChlLmcuIHNobWVtKQogCQkJICogYnV0IGV4
aXN0IG9uIGEgcmVhbCBtYXBwaW5nLCB3ZSBoYXZlIHRvIGxvY2sKQEAgLTY4MCw4ICs2ODAsMjAg
QEAgaTkxNV9nZW1fdXNlcnB0cl9wdXRfcGFnZXMoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3Qg
Km9iaiwKIAkJCSAqIHRoZSBwYWdlIHJlZmVyZW5jZSBpcyBub3Qgc3VmZmljaWVudCB0bwogCQkJ
ICogcHJldmVudCB0aGUgaW5vZGUgZnJvbSBiZWluZyB0cnVuY2F0ZWQuCiAJCQkgKiBQbGF5IHNh
ZmUgYW5kIHRha2UgdGhlIGxvY2suCisJCQkgKgorCQkJICogSG93ZXZlci4uLiEKKwkJCSAqCisJ
CQkgKiBUaGUgbW11LW5vdGlmaWVyIGNhbiBiZSBpbnZhbGlkYXRlZCBmb3IgYQorCQkJICogbWln
cmF0ZV9wYWdlLCB0aGF0IGlzIGFscmVhZHlpbmcgaG9sZGluZyB0aGUgbG9jaworCQkJICogb24g
dGhlIHBhZ2UuIFN1Y2ggYSB0cnlfdG9fdW5tYXAoKSB3aWxsIHJlc3VsdAorCQkJICogaW4gdXMg
Y2FsbGluZyBwdXRfcGFnZXMoKSBhbmQgc28gcmVjdXJzaXZlbHkgdHJ5CisJCQkgKiB0byBsb2Nr
IHRoZSBwYWdlLiBXZSBhdm9pZCB0aGF0IGRlYWRsb2NrIHdpdGgKKwkJCSAqIGEgdHJ5bG9ja19w
YWdlKCkgYW5kIGluIGV4Y2hhbmdlIHdlIHJpc2sgbWlzc2luZworCQkJICogc29tZSBwYWdlIGRp
cnR5aW5nLgogCQkJICovCi0JCQlzZXRfcGFnZV9kaXJ0eV9sb2NrKHBhZ2UpOworCQkJc2V0X3Bh
Z2VfZGlydHkocGFnZSk7CisJCQl1bmxvY2tfcGFnZShwYWdlKTsKKwkJfQogCiAJCW1hcmtfcGFn
ZV9hY2Nlc3NlZChwYWdlKTsKIAkJcHV0X3BhZ2UocGFnZSk7Ci0tIAoyLjIyLjAKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
