Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B9F09D010
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Aug 2019 15:08:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42F7889D4D;
	Mon, 26 Aug 2019 13:08:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1640B89D4D
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Aug 2019 13:08:03 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18266301-1500050 
 for multiple; Mon, 26 Aug 2019 14:07:52 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 26 Aug 2019 14:07:50 +0100
Message-Id: <20190826130750.17272-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Use NOEVICT for first pass on
 attemping to pin a GGTT mmap
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlIGludGVudGlvbiBpcyB0aGF0IHdlIGZpcnN0IHRyeSB0byBwaW4gdGhlIGN1cnJlbnQgdm1h
IGludG8gdGhlCm1hcHBhYmxlIGFwZXJ0dXJlIG9ubHkgaWYgaXQgaXMgYWxyZWFkeSBpbiB1c2Ug
b3IgdCBmaXRzIGluIHRoZSBmcmVlCnNwYWNlIGFuZCB3aWxsIG5vdCBjYXVzZSBjb250ZW50aW9u
LiBUaGUgZmlyc3QgYXR0ZW1wdCB3YXMgbWVhbnQgdG8gYmUKdXNpbmcgUElOX05PRVZJQ1QgdG8g
cmV1c2UgdGhlIGN1cnJlbnQgdm1hIGlmIHBvc3NpYmxlLCBmb2xsb3dpbmcgdXAKd2l0aCBkaWZm
ZXJlbnQgZXZpY3Rpb24gc3RyYXRlZ2llcy4KCkJ1Z3ppbGxhOiBodHRwczovL2J1Z3MuZnJlZWRl
c2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTE0ODUKRml4ZXM6IDY4NDY4OTVmZGUwNSAoImRy
bS9pOTE1OiBSZXBsYWNlIFBJTl9OT05GQVVMVCB3aXRoIGNhbGxzIHRvIFBJTl9OT0VWSUNUIikK
U2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNj
OiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX21tYW4uYyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGlu
c2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2dlbS9pOTE1X2dlbV9tbWFuLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9n
ZW1fbW1hbi5jCmluZGV4IDU5NTUzOWEwOWUzOC4uMjYxYzliZDgzZjUxIDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fbW1hbi5jCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9tbWFuLmMKQEAgLTI2NSw3ICsyNjUsNyBAQCB2bV9mYXVs
dF90IGk5MTVfZ2VtX2ZhdWx0KHN0cnVjdCB2bV9mYXVsdCAqdm1mKQogCXZtYSA9IGk5MTVfZ2Vt
X29iamVjdF9nZ3R0X3BpbihvYmosIE5VTEwsIDAsIDAsCiAJCQkJICAgICAgIFBJTl9NQVBQQUJM
RSB8CiAJCQkJICAgICAgIFBJTl9OT05CTE9DSyAvKiBOT1dBUk4gKi8gfAotCQkJCSAgICAgICBQ
SU5fTk9TRUFSQ0gpOworCQkJCSAgICAgICBQSU5fTk9FVklDVCk7CiAJaWYgKElTX0VSUih2bWEp
KSB7CiAJCS8qIFVzZSBhIHBhcnRpYWwgdmlldyBpZiBpdCBpcyBiaWdnZXIgdGhhbiBhdmFpbGFi
bGUgc3BhY2UgKi8KIAkJc3RydWN0IGk5MTVfZ2d0dF92aWV3IHZpZXcgPQotLSAKMi4yMy4wCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
