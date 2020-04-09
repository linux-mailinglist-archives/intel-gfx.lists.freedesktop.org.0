Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E7B571A3512
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Apr 2020 15:46:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B37C56E178;
	Thu,  9 Apr 2020 13:46:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 314B26E17F
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Apr 2020 13:46:10 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20852033-1500050 for multiple; Thu, 09 Apr 2020 14:46:06 +0100
MIME-Version: 1.0
In-Reply-To: <c6ebb185-2232-344d-2181-6ae0ff7b91a7@intel.com>
References: <20200403091300.14734-1-chris@chris-wilson.co.uk>
 <20200403091300.14734-4-chris@chris-wilson.co.uk>
 <bb2ca1d8-0da8-2e3b-db05-f9c877a00ae1@intel.com>
 <158642954064.23161.10597558821934207099@build.alporthouse.com>
 <c6ebb185-2232-344d-2181-6ae0ff7b91a7@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <158643996604.23161.12568362457421121132@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Thu, 09 Apr 2020 14:46:06 +0100
Subject: Re: [Intel-gfx] [PATCH 04/10] dma-buf: Report signaled links inside
 dma-fence-chain
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBMaW9uZWwgTGFuZHdlcmxpbiAoMjAyMC0wNC0wOSAxMjoxNjo0OCkKPiBPbiAwOS8w
NC8yMDIwIDEzOjUyLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBRdW90aW5nIExpb25lbCBMYW5k
d2VybGluICgyMDIwLTA0LTA4IDIxOjAwOjU5KQo+ID4+IE9uIDAzLzA0LzIwMjAgMTI6MTIsIENo
cmlzIFdpbHNvbiB3cm90ZToKPiA+Pj4gV2hlbmV2ZXIgd2Ugd2FsayBhbG9uZyB0aGUgZG1hLWZl
bmNlLWNoYWluLCB3ZSBwcnVuZSBzaWduYWxlZCBsaW5rcyB0bwo+ID4+PiBrZWVwIHRoZSBjaGFp
biBuaWNlIGFuZCB0aWR5LiBUaGlzIGxlYWRzIHRvIHNpdHVhdGlvbnMgd2hlcmUgd2UgY2FuCj4g
Pj4+IHBydW5lIGEgbGluayBhbmQgcmVwb3J0IHRoZSBlYXJsaWVyIGZlbmNlIGFzIHRoZSB0YXJn
ZXQgc2Vxbm8gLS0KPiA+Pj4gdmlvbGF0aW5nIG91ciBvd24gY29uc2lzdGVuY3kgY2hlY2tzIHRo
YXQgdGhlIHNlcW5vIGlzIG5vdCBtb3JlIGFkdmFuY2VkCj4gPj4+IHRoYW4gdGhlIGxhc3QgZWxl
bWVudCBpbiBhIGRtYS1mZW5jZS1jaGFpbi4KPiA+Pj4KPiA+Pj4gUmVwb3J0IGEgTlVMTCBmZW5j
ZSBhbmQgc3VjY2VzcyBpZiB0aGUgc2Vxbm8gaGFzIGFscmVhZHkgYmVlbiBzaWduYWxlZC4KPiA+
Pj4KPiA+Pj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24u
Y28udWs+Cj4gPj4+IC0tLQo+ID4+PiAgICBkcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLWNoYWlu
LmMgfCA3ICsrKysrKysKPiA+Pj4gICAgMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKQo+
ID4+Pgo+ID4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS1jaGFpbi5j
IGIvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS1jaGFpbi5jCj4gPj4+IGluZGV4IDNkMTIzNTAy
ZmYxMi4uYzQzNWJiYmE4NTFjIDEwMDY0NAo+ID4+PiAtLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1h
LWZlbmNlLWNoYWluLmMKPiA+Pj4gKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS1jaGFp
bi5jCj4gPj4+IEBAIC05OSw2ICs5OSwxMiBAQCBpbnQgZG1hX2ZlbmNlX2NoYWluX2ZpbmRfc2Vx
bm8oc3RydWN0IGRtYV9mZW5jZSAqKnBmZW5jZSwgdWludDY0X3Qgc2Vxbm8pCj4gPj4+ICAgICAg
ICAgICAgICAgIHJldHVybiAtRUlOVkFMOwo+ID4+PiAgICAKPiA+Pj4gICAgICAgIGRtYV9mZW5j
ZV9jaGFpbl9mb3JfZWFjaCgqcGZlbmNlLCAmY2hhaW4tPmJhc2UpIHsKPiA+Pj4gKyAgICAgICAg
ICAgICBpZiAoKCpwZmVuY2UpLT5zZXFubyA8IHNlcW5vKSB7IC8qIGFscmVhZHkgc2lnbmFsZWQg
Ki8KPiA+Pj4gKyAgICAgICAgICAgICAgICAgICAgIGRtYV9mZW5jZV9wdXQoKnBmZW5jZSk7Cj4g
Pj4+ICsgICAgICAgICAgICAgICAgICAgICAqcGZlbmNlID0gTlVMTDsKPiA+Pj4gKyAgICAgICAg
ICAgICAgICAgICAgIGJyZWFrOwo+ID4+PiArICAgICAgICAgICAgIH0KPiA+Pj4gKwo+ID4+Cj4g
Pj4gV291bGRuJ3QgdGhpcyBjb25kaXRpb24gYmVlbiBmdWxmaWxsZWQgaW4gdGhlIHByZXZpb3Vz
IGNoZWNrPyA6Cj4gPj4KPiA+Pgo+ID4+IGNoYWluID0gdG9fZG1hX2ZlbmNlX2NoYWluKCpwZmVu
Y2UpOwo+ID4+IGlmICghY2hhaW4gfHwgY2hhaW4tPmJhc2Uuc2Vxbm8gPCBzZXFubykKPiA+PiAg
IMKgwqDCoMKgwqDCoMKgIHJldHVybiAtRUlOVkFMOwo+ID4gVGhlIHByb2JsZW0gaXMgaW4gdGhl
IGNoYWluIGl0ZXJhdGlvbi4gSXQgYXNzdW1lcyB0aGF0IGFuIHVub3JkZXJlZCBzZXQKPiA+IG9m
IGZlbmNlcyBpcyBpbiB0aGUgb3JkZXIgb2YgdGhlIHVzZXIncyBzZXFuby4gVGhlcmUgYXJlIG5v
IHJlc3RyaWN0aW9ucwo+ID4gcGxhY2VkIG9uIHRoZSBjaGFpbiwgc28gd2UgbXVzdCBhcHBseSB0
aGUgb3JkZXJpbmcgZnJvbSB0aGUgdGltZWxpbmUgc2Vxbm8KPiA+IGRpcmVjdGx5Lgo+ID4gLUNo
cmlzCj4gCj4gCj4gSSBkb24ndCByZWFsbHkgdW5kZXJzdGFuZCB0aGF0LiBjaGFpbi0+c2Vxbm8g
c2hvdWxkIGJlIG9yZGVyZWQgYmVjYXVzZSAKPiBjaGFpbi0+cHJldl9zZXFubyA8PSBjaGFpbi0+
c2Vxbm8uCj4gCj4gRG8geW91IGhhdmUgYW4gZXhhbXBsZSB3aGVyZSB0aGlzIGlzIG5vdCB0aGUg
Y2FzZT8KClNlZSB0aGUgZmFpbGluZyB0ZXN0IGNhc2UuCi1DaHJpcwpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
