Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E85A47DEA
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Jun 2019 11:08:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F297A89190;
	Mon, 17 Jun 2019 09:08:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9739689175
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Jun 2019 09:08:39 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16924300-1500050 for multiple; Mon, 17 Jun 2019 10:08:12 +0100
MIME-Version: 1.0
To: intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190617084044.1894-1-chris@chris-wilson.co.uk>
References: <20190617084044.1894-1-chris@chris-wilson.co.uk>
Message-ID: <156076249238.7096.12803747490976723363@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 17 Jun 2019 10:08:12 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Keep engine alive as we retire
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDYtMTcgMDk6NDA6NDQpCj4gVGhvdWdoIHdlIHBp
biB0aGUgY29udGV4dCBmaXJzdCBiZWZvcmUgdGFraW5nIHRoZSBwbSB3YWtlcmVmLCBkdXJpbmcK
PiByZXRpcmUgd2UgbmVlZCB0byB1bnBpbiBiZWZvcmUgZHJvcHBpbmcgdGhlIHBtIHdha2VyZWYg
KGJyZWFraW5nIHRoZQo+ICJuYXR1cmFsIiBvbmlvbikuIER1cmluZyB0aGUgdW5waW4sIHdlIG1h
eSBuZWVkIHRvIGF0dGFjaCBhIGNsZWFudXAKPiBvcGVyYXRpb24gb24gdG8gdGhlIGVuZ2luZSB3
YWtlcmVmLCBlcmdvIHdlIHdhbnQgdG8ga2VlcCB0aGUgZW5naW5lCj4gYXdha2UgdW50aWwgYWZ0
ZXIgdGhlIHVucGluLgo+IAo+IEZpeGVzOiBjZTQ3NmM4MGI4YmYgKCJkcm0vaTkxNTogS2VlcCBj
b250ZXh0cyBwaW5uZWQgdW50aWwgYWZ0ZXIgdGhlIG5leHQga2VybmVsIGNvbnRleHQgc3dpdGNo
IikKPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51
az4KPiBDYzogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+Cj4g
LS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5jIHwgMyArKy0KPiAgMSBm
aWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfcmVxdWVzdC5jCj4gaW5kZXggOTgxOTQ4M2QxYjVkLi44ZDk1MmJjMDNkNWMg
MTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmMKPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuYwo+IEBAIC0yNTAsOCArMjUwLDkg
QEAgc3RhdGljIGJvb2wgaTkxNV9yZXF1ZXN0X3JldGlyZShzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpy
cSkKPiAgCj4gICAgICAgICBsb2NhbF9pcnFfZW5hYmxlKCk7Cj4gIAo+IC0gICAgICAgaW50ZWxf
Y29udGV4dF9leGl0KHJxLT5od19jb250ZXh0KTsKPiArICAgICAgIC8qIE9uaW9uIHJldmVyc2Vk
IHRvIGtlZXAgZW5naW5lIGFsaXZlIHVudGlsIGFmdGVyIHVucGlubmluZyAqLwo+ICAgICAgICAg
aW50ZWxfY29udGV4dF91bnBpbihycS0+aHdfY29udGV4dCk7Cj4gKyAgICAgICBpbnRlbF9jb250
ZXh0X2V4aXQocnEtPmh3X2NvbnRleHQpOwoKVGhlIGFsdGVybmF0aXZlIGlzIHRvIGtlZXAgdGhl
IG9uaW9uIHVud2luZCBoZXJlIGFuZCB0byBhZGQgdGhlIGVuZ2luZQp3YWtlcmVmcyBpbnRvIHRo
ZSBiYXJyaWVycy4gSG1tLgoKVGhhdCBzZWVtcyBsaWtlIGl0IHNob3VsZCBiZSBtb3JlIGZvb2xw
cm9vZiwgcGVyaGFwcz8KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
