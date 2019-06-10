Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 621783B409
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jun 2019 13:32:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A36689127;
	Mon, 10 Jun 2019 11:32:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7CB9F89125;
 Mon, 10 Jun 2019 11:32:13 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16851670-1500050 for multiple; Mon, 10 Jun 2019 12:32:10 +0100
MIME-Version: 1.0
To: Zhenyu Wang <zhenyuw@linux.intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190610092819.11371-1-zhenyuw@linux.intel.com>
References: <20190610092819.11371-1-zhenyuw@linux.intel.com>
Message-ID: <156016632855.383.1461535048828757502@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 10 Jun 2019 12:32:08 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix GVT balloon fail path handling
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
Cc: intel-gvt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBaaGVueXUgV2FuZyAoMjAxOS0wNi0xMCAxMDoyODoxOSkKPiBGb3IgYW55IHJlYXNv
biBpZiBHVlQgYmFsbG9vbiBmYWlsZWQsIGRlYmFsbG9vbiB3b3VsZCBiZSBjYWxsZWQuCj4gVGhp
cyBhZGRzIGEgc2ltcGxlIG1hc2sgdG8gY2hlY2sgdmFsaWRpdHkgb2YgYmFsbG9vbiBzcGFjZXMu
IFdoZW4KPiBmYWlsdXJlIGhhcHBlbnMsIHRoYXQgbWFzayBpcyB1c2VkIHRvIHRyYWNrIGZvciBk
ZWJhbGxvb24sIHNvIGl0Cj4gd29uJ3QgY2F1c2UgYW55IGludmFsaWQgc3BhY2UgcmVmZXJlbmNl
IGluIGZhaWwgcGF0aCwgd2hpY2ggZml4ZWQKPiBrZXJuZWwgb29wcyB3aGVuIGJhbGxvb24gZXJy
b3IgaGFwcGVuZWQuCgpBZ2FpbnN0IHRoZSB1cHN0cmVhbSwgaXQgdXNlcyBhbiBvbmlvbiB1bndp
bmQuIE9ubHkgdGhvc2Ugbm9kZXMKc3VjY2Vzc2Z1bGx5IHJlc2VydmVkIGFyZSByZW1vdmVkLgoK
PiBTaWduZWQtb2ZmLWJ5OiBaaGVueXUgV2FuZyA8emhlbnl1d0BsaW51eC5pbnRlbC5jb20+Cj4g
LS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdmdwdS5jIHwgMjcgKysrKysrKysrKysr
KysrLS0tLS0tLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAxNSBpbnNlcnRpb25zKCspLCAxMiBk
ZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV92
Z3B1LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3ZncHUuYwo+IGluZGV4IDk0ZDM5OTJi
NTk5ZC4uNWFlYzM0ZGIxYWFhIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfdmdwdS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV92Z3B1LmMKPiBAQCAt
OTQsNiArOTQsNyBAQCBzdHJ1Y3QgX2JhbGxvb25faW5mb18gewo+ICAgICAgICAgICogZ3JhcGhp
YyBtZW1vcnksIDIvMyBmb3IgdW5tYXBwYWJsZSBncmFwaGljIG1lbW9yeS4KPiAgICAgICAgICAq
Lwo+ICAgICAgICAgc3RydWN0IGRybV9tbV9ub2RlIHNwYWNlWzRdOwo+ICsgICAgICAgdTggdmFs
aWQ7Cj4gIH07Cj4gIAo+ICBzdGF0aWMgc3RydWN0IF9iYWxsb29uX2luZm9fIGJsX2luZm87Cj4g
QEAgLTEyNiw4ICsxMjcsMTIgQEAgdm9pZCBpbnRlbF92Z3RfZGViYWxsb29uKHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdikKPiAgCj4gICAgICAgICBEUk1fREVCVUcoIlZHVCBkZWJh
bGxvb24uXG4iKTsKPiAgCj4gLSAgICAgICBmb3IgKGkgPSAwOyBpIDwgNDsgaSsrKQo+IC0gICAg
ICAgICAgICAgICB2Z3RfZGViYWxsb29uX3NwYWNlKCZkZXZfcHJpdi0+Z2d0dCwgJmJsX2luZm8u
c3BhY2VbaV0pOwo+ICsgICAgICAgZm9yIChpID0gMDsgaSA8IDQ7IGkrKykgewo+ICsgICAgICAg
ICAgICAgICBpZiAoYmxfaW5mby52YWxpZCAmIEJJVChpKSkgewo+ICsgICAgICAgICAgICAgICAg
ICAgICAgIHZndF9kZWJhbGxvb25fc3BhY2UoJmRldl9wcml2LT5nZ3R0LCAmYmxfaW5mby5zcGFj
ZVtpXSk7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgYmxfaW5mby52YWxpZCAmPSB+KHU4KUJJ
VChpKTsKCklzIHRoZSBwcm9ibGVtIHRoYXQgeW91IGFyZSBjYWxsaW5nIGl0IHR3aWNlPyBBcyBm
YXIgSSBjYW4gc2VlIHdlIG9ubHkKY2FsbCBpdCBmcm9tIGk5MTVfZ2d0dF9jbGVhbnVwX2h3Li4u
IE9oLCBub3RlIHRoYXQgaTkxNV9nZW1faW5pdF9nZ3R0KCkKZmFpbHMgdG8gdW53aW5kIGNvcnJl
Y3RseSwgYW5kIGludGVsX3ZndF9kZWJhbGxvb24gaXMgY2FsbGVkIGZyb20gdGhlCndyb25nIHBv
aW50LgoKRndpdywgeW91IGNvdWxkIGp1c3QgdXNlCglpZiAoIWRybV9tbV9ub2RlX2FsbG9jZWQo
bm9kZSkpCgkJcmV0dXJuOwoKLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
