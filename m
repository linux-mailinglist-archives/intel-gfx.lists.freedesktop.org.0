Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DB3C162001
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jul 2019 16:03:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 159A089D8A;
	Mon,  8 Jul 2019 14:03:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A03789D8A
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jul 2019 14:03:49 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17170588-1500050 
 for multiple; Mon, 08 Jul 2019 15:03:29 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  8 Jul 2019 15:03:27 +0100
Message-Id: <20190708140327.26825-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/userptr: Acquire the page lock around
 set_page_dirty()
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

c2V0X3BhZ2VfZGlydHkgc2F5czoKCglGb3IgcGFnZXMgd2l0aCBhIG1hcHBpbmcgdGhpcyBzaG91
bGQgYmUgZG9uZSB1bmRlciB0aGUgcGFnZSBsb2NrCglmb3IgdGhlIGJlbmVmaXQgb2YgYXN5bmNo
cm9ub3VzIG1lbW9yeSBlcnJvcnMgd2hvIHByZWZlciBhCgljb25zaXN0ZW50IGRpcnR5IHN0YXRl
LiBUaGlzIHJ1bGUgY2FuIGJlIGJyb2tlbiBpbiBzb21lIHNwZWNpYWwKCWNhc2VzLCBidXQgc2hv
dWxkIGJlIGJldHRlciBub3QgdG8uCgoJSWYgdGhlIG1hcHBpbmcgZG9lc24ndCBwcm92aWRlIGEg
c2V0X3BhZ2VfZGlydHkgYV9vcCwgdGhlbgoJanVzdCBmYWxsIHRocm91Z2ggYW5kIGFzc3VtZSB0
aGF0IGl0IHdhbnRzIGJ1ZmZlcl9oZWFkcy4KClVuZGVyIHRob3NlIHJ1bGVzLCBpdCBvbmx5IHNh
ZmUgZm9yIHVzIHRvIHVzZSB0aGUgcGxhaW4gc2V0X3BhZ2VfZGlydHkoKQpjYWxscyBmb3Igc2ht
ZW1mcy9hbm9ueW1vdXMgbWVtb3J5LiBVc2VycHRyIG1heSBiZSB1c2VkIHdpdGggcmVhbAptYXBw
aW5ncyBhbmQgc28gbmVlZHMgdG8gdXNlIHRoZSBsb2NrZWQgdmVyc2lvbiAoc2V0X3BhZ2VfZGly
dHlfbG9jaykuCgpCdWd6aWxsYTogaHR0cHM6Ly9idWd6aWxsYS5rZXJuZWwub3JnL3Nob3dfYnVn
LmNnaT9pZD0yMDMzMTcKRml4ZXM6IDVjYzllZDRiOWE3YSAoImRybS9pOTE1OiBJbnRyb2R1Y2Ug
bWFwcGluZyBvZiB1c2VyIHBhZ2VzIGludG8gdmlkZW8gbWVtb3J5ICh1c2VycHRyKSBpb2N0bCIp
ClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpD
YzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KQ2M6IHN0YWJsZUB2
Z2VyLmtlcm5lbC5vcmcKLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdXNl
cnB0ci5jIHwgMTAgKysrKysrKysrLQogMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwg
MSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1
X2dlbV91c2VycHRyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdXNlcnB0
ci5jCmluZGV4IDE2Y2NlYzdmYjdkYS4uMzJkMjA4ZWRlMzQzIDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdXNlcnB0ci5jCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2dlbS9pOTE1X2dlbV91c2VycHRyLmMKQEAgLTY2NSw3ICs2NjUsMTUgQEAgaTkxNV9n
ZW1fdXNlcnB0cl9wdXRfcGFnZXMoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwKIAog
CWZvcl9lYWNoX3NndF9wYWdlKHBhZ2UsIHNndF9pdGVyLCBwYWdlcykgewogCQlpZiAob2JqLT5t
bS5kaXJ0eSkKLQkJCXNldF9wYWdlX2RpcnR5KHBhZ2UpOworCQkJLyoKKwkJCSAqIEFzIHRoaXMg
bWF5IG5vdCBiZSBhbm9ueW1vdXMgbWVtb3J5IChlLmcuIHNobWVtKQorCQkJICogYnV0IGV4aXN0
IG9uIGEgcmVhbCBtYXBwaW5nLCB3ZSBoYXZlIHRvIGxvY2sKKwkJCSAqIHRoZSBwYWdlIGluIG9y
ZGVyIHRvIGRpcnR5IGl0IC0tIGhvbGRpbmcKKwkJCSAqIHRoZSBwYWdlIHJlZmVyZW5jZSBpcyBu
b3Qgc3VmZmljaWVudCB0bworCQkJICogcHJldmVudCB0aGUgaW5vZGUgZnJvbSBiZWluZyB0cnVu
Y2F0ZWQuCisJCQkgKiBQbGF5IHNhZmUgYW5kIHRha2UgdGhlIGxvY2suCisJCQkgKi8KKwkJCXNl
dF9wYWdlX2RpcnR5X2xvY2socGFnZSk7CiAKIAkJbWFya19wYWdlX2FjY2Vzc2VkKHBhZ2UpOwog
CQlwdXRfcGFnZShwYWdlKTsKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
