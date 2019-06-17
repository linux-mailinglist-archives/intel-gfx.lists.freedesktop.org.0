Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CBCD47E8E
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Jun 2019 11:35:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74A9788FFE;
	Mon, 17 Jun 2019 09:35:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5151D88FFE
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Jun 2019 09:35:18 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16924674-1500050 for multiple; Mon, 17 Jun 2019 10:35:12 +0100
MIME-Version: 1.0
To: intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190617093227.20711-1-chris@chris-wilson.co.uk>
References: <20190617084044.1894-1-chris@chris-wilson.co.uk>
 <20190617093227.20711-1-chris@chris-wilson.co.uk>
Message-ID: <156076411188.7096.4071431292675176025@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 17 Jun 2019 10:35:11 +0100
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Keep engine alive as we retire
 the context
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDYtMTcgMTA6MzI6MjcpCj4gVGhvdWdoIHdlIHBp
biB0aGUgY29udGV4dCBmaXJzdCBiZWZvcmUgdGFraW5nIHRoZSBwbSB3YWtlcmVmLCBkdXJpbmcK
PiByZXRpcmUgd2UgbmVlZCB0byB1bnBpbiBiZWZvcmUgZHJvcHBpbmcgdGhlIHBtIHdha2VyZWYg
KGJyZWFraW5nIHRoZQo+ICJuYXR1cmFsIiBvbmlvbikuIER1cmluZyB0aGUgdW5waW4sIHdlIG1h
eSBuZWVkIHRvIGF0dGFjaCBhIGNsZWFudXAKPiBvcGVyYXRpb24gb24gdG8gdGhlIGVuZ2luZSB3
YWtlcmVmLCBlcmdvIHdlIHdhbnQgdG8ga2VlcCB0aGUgZW5naW5lCj4gYXdha2UgdW50aWwgYWZ0
ZXIgdGhlIHVucGluLgo+IAo+IHYyOiBQdXNoIHRoZSBlbmdpbmUgd2FrZXJlZiBpbnRvIHRoZSBi
YXJyaWVyIHNvIHdlIGtlZXAgdGhlIG9uaW9uIHVud2luZAo+IG9yZGVyaW5nIGluIHRoZSByZXF1
ZXN0IGl0c2VsZgo+IAo+IEZpeGVzOiBjZTQ3NmM4MGI4YmYgKCJkcm0vaTkxNTogS2VlcCBjb250
ZXh0cyBwaW5uZWQgdW50aWwgYWZ0ZXIgdGhlIG5leHQga2VybmVsIGNvbnRleHQgc3dpdGNoIikK
PiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4K
PiBDYzogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+Cj4gLS0t
Cj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfYWN0aXZlLmMgfCAyMyArKysrKysrKysrKysr
KysrKysrKystLQo+ICAxIGZpbGUgY2hhbmdlZCwgMjEgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlv
bnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9hY3RpdmUu
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfYWN0aXZlLmMKPiBpbmRleCAyZDAxOWFjNmRi
MjAuLmE4MDNhZDQyMDc1ZCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2FjdGl2ZS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9hY3RpdmUuYwo+IEBA
IC00LDYgKzQsOCBAQAo+ICAgKiBDb3B5cmlnaHQgwqkgMjAxOSBJbnRlbCBDb3Jwb3JhdGlvbgo+
ICAgKi8KPiAgCj4gKyNpbmNsdWRlICJndC9pbnRlbF9lbmdpbmVfcG0uaCIKPiArCj4gICNpbmNs
dWRlICJpOTE1X2Rydi5oIgo+ICAjaW5jbHVkZSAiaTkxNV9hY3RpdmUuaCIKPiAgI2luY2x1ZGUg
Imk5MTVfZ2xvYmFscy5oIgo+IEBAIC0yNjgsOCArMjcwLDkgQEAgaW50IGk5MTVfYWN0aXZlX2Fj
cXVpcmVfcHJlYWxsb2NhdGVfYmFycmllcihzdHJ1Y3QgaTkxNV9hY3RpdmUgKnJlZiwKPiAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHN0cnVjdCBpbnRlbF9lbmdp
bmVfY3MgKmVuZ2luZSkKPiAgewo+ICAgICAgICAgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5
MTUgPSBlbmdpbmUtPmk5MTU7Cj4gKyAgICAgICBzdHJ1Y3QgbGxpc3Rfbm9kZSAqcG9zLCAqbmV4
dDsKPiAgICAgICAgIHVuc2lnbmVkIGxvbmcgdG1wOwo+IC0gICAgICAgaW50IGVyciA9IDA7Cj4g
KyAgICAgICBpbnQgZXJyOwo+ICAKPiAgICAgICAgIEdFTV9CVUdfT04oIWVuZ2luZS0+bWFzayk7
Cj4gICAgICAgICBmb3JfZWFjaF9lbmdpbmVfbWFza2VkKGVuZ2luZSwgaTkxNSwgZW5naW5lLT5t
YXNrLCB0bXApIHsKPiBAQCAtMjc4LDggKzI4MSw5IEBAIGludCBpOTE1X2FjdGl2ZV9hY3F1aXJl
X3ByZWFsbG9jYXRlX2JhcnJpZXIoc3RydWN0IGk5MTVfYWN0aXZlICpyZWYsCj4gIAo+ICAgICAg
ICAgICAgICAgICBub2RlID0ga21lbV9jYWNoZV9hbGxvYyhnbG9iYWwuc2xhYl9jYWNoZSwgR0ZQ
X0tFUk5FTCk7Cj4gICAgICAgICAgICAgICAgIGlmICh1bmxpa2VseSghbm9kZSkpIHsKPiArICAg
ICAgICAgICAgICAgICAgICAgICBpbnRlbF9lbmdpbmVfcG1fcHV0KGVuZ2luZSk7CgpPaCBubywg
ZGlkbid0IHJlbW92ZSBhZnRlciByZW9yZGVyaW5nLgotQ2hyaXMKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
