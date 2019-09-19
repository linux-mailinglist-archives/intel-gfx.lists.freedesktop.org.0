Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CF1EB7B97
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2019 16:06:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E39F36F82B;
	Thu, 19 Sep 2019 14:06:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88CFB6F82B
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Sep 2019 14:06:01 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18546711-1500050 for multiple; Thu, 19 Sep 2019 15:05:58 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190902040303.14195-1-chris@chris-wilson.co.uk>
 <20190902040303.14195-13-chris@chris-wilson.co.uk>
 <d65c569b-6a91-cf77-782a-6a134be6564d@linux.intel.com>
 <156874659243.5729.22780974956498892@skylake-alporthouse-com>
 <a865e856-3140-0103-7563-9eac91fe21d8@linux.intel.com>
In-Reply-To: <a865e856-3140-0103-7563-9eac91fe21d8@linux.intel.com>
Message-ID: <156890195640.31102.7243087536860668268@skylake-alporthouse-com>
Date: Thu, 19 Sep 2019 15:05:56 +0100
Subject: Re: [Intel-gfx] [PATCH 13/21] drm/i915: Pull i915_vma_pin under the
 vm->mutex
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wOS0xOSAxNDozNzowMSkKPiAKPiBPbiAxNy8w
OS8yMDE5IDE5OjU2LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBRdW90aW5nIFR2cnRrbyBVcnN1
bGluICgyMDE5LTA5LTE3IDEzOjM3OjU1KQo+ID4+IE9uIDAyLzA5LzIwMTkgMDU6MDIsIENocmlz
IFdpbHNvbiB3cm90ZToKPiA+Pj4gK3ZvaWQgaTkxNV9hY3RpdmVfc2V0X2V4Y2x1c2l2ZShzdHJ1
Y3QgaTkxNV9hY3RpdmUgKnJlZiwgc3RydWN0IGRtYV9mZW5jZSAqZikKPiA+Pj4gK3sKPiA+Pj4g
KyAgICAgR0VNX0JVR19PTihpOTE1X2FjdGl2ZV9pc19pZGxlKHJlZikpOwo+ID4+PiArCj4gPj4+
ICsgICAgIGRtYV9mZW5jZV9nZXQoZik7Cj4gPj4+ICsKPiA+Pj4gKyAgICAgcmN1X3JlYWRfbG9j
aygpOwo+ID4+PiArICAgICBpZiAocmN1X2FjY2Vzc19wb2ludGVyKHJlZi0+ZXhjbCkpIHsKPiA+
Pj4gKyAgICAgICAgICAgICBzdHJ1Y3QgZG1hX2ZlbmNlICpvbGQ7Cj4gPj4+ICsKPiA+Pj4gKyAg
ICAgICAgICAgICBvbGQgPSBkbWFfZmVuY2VfZ2V0X3JjdV9zYWZlKCZyZWYtPmV4Y2wpOwo+ID4+
PiArICAgICAgICAgICAgIGlmIChvbGQpIHsKPiA+Pj4gKyAgICAgICAgICAgICAgICAgICAgIGlm
IChkbWFfZmVuY2VfcmVtb3ZlX2NhbGxiYWNrKG9sZCwgJnJlZi0+ZXhjbF9jYikpCj4gPj4+ICsg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIGF0b21pY19kZWMoJnJlZi0+Y291bnQpOwo+ID4+
PiArICAgICAgICAgICAgICAgICAgICAgZG1hX2ZlbmNlX3B1dChvbGQpOwo+ID4+PiArICAgICAg
ICAgICAgIH0KPiA+Pgo+ID4+IFB1dCBzb21lIGNvbW1lbnRhcnkgaW4gZGVzY3JpYmluZyB0aGUg
YnVzaW5lc3MgZG9uZSB3aXRoIHJlZi0+ZXhjbCBhbmQKPiA+PiBjYWxsYmFja3MuIE9yIHRoaXMg
Z29lcyBhd2F5IGxhdGVyPwo+ID4gCj4gPiB2b2lkIGk5MTVfYWN0aXZlX3NldF9leGNsdXNpdmUo
c3RydWN0IGk5MTVfYWN0aXZlICpyZWYsIHN0cnVjdCBkbWFfZmVuY2UgKmYpCj4gPiB7Cj4gPiAg
ICAgICAgICBHRU1fQlVHX09OKGk5MTVfYWN0aXZlX2lzX2lkbGUocmVmKSk7Cj4gPiAKPiA+ICAg
ICAgICAgIG11dGV4X2FjcXVpcmUoJnJlZi0+bXV0ZXguZGVwX21hcCwgMCwgMCwgX1RISVNfSVBf
KTsKPiA+ICAgICAgICAgIGlmICghX19pOTE1X2FjdGl2ZV9mZW5jZV9zZXQoJnJlZi0+ZXhjbCwg
ZikpCj4gPiAgICAgICAgICAgICAgICAgIGF0b21pY19pbmMoJnJlZi0+Y291bnQpOwo+ID4gICAg
ICAgICAgbXV0ZXhfcmVsZWFzZSgmcmVmLT5tdXRleC5kZXBfbWFwLCAwLCBfVEhJU19JUF8pOwo+
ID4gfQo+IAo+IFdoYXQgaXMgdGhpcz8KCldoYXQgaXMgYmVjb21lcyBpbiBhIGNvdXBsZSBvZiBw
YXRjaGVzIHRpbWUsIHdoZXJlIHRoZSBlbnRpcmUKaTkxNV9hY3RpdmUgaXMgYnVpbHQgb3V0IG9m
IHRoZSBzYW1lIGk5MTVfYWN0aXZlX2ZlbmNlICh3cmFwcGluZyB0aGUKZG1hX2ZlbmNlX2NiKSwg
YW5kIHNvIHRoaXMgZXhjbHVzaXZlIHNsb3QgYmVjb21lcyBtb3JlIGNsZWFybHkgYQpwcmVhbGxv
Y2F0ZWQgdmVyc2lvbiBvZiBvbmUgb2YgdGhlIG5vZGVzIChhbmQgbm90IGEgc3BlY2lhbCBjYXNl
LCBleGNlcHQKZm9yIHRoZSBzcGVjaWFsIGNhc2UgdGhhdCB0aGUgb3JkZXIgaXMgZ2l2ZW4gYnkg
dGhlIGNhbGxlciBhbmQgbm90IG91cgptdXRleCwgd2hpY2ggaXMgYSBiaXQgb2YgYSBudWlzYW5j
ZSBJIGFkbWl0KS4KCj4gPj4+IEBAIC0xMDksMjAgKzEyMSwzMSBAQCBpbnQgaTkxNV9nZW1fb2Jq
ZWN0X3VuYmluZChzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLAo+ID4+PiAgICAgICAg
TElTVF9IRUFEKHN0aWxsX2luX2xpc3QpOwo+ID4+PiAgICAgICAgaW50IHJldCA9IDA7Cj4gPj4+
ICAgIAo+ID4+PiAtICAgICBsb2NrZGVwX2Fzc2VydF9oZWxkKCZvYmotPmJhc2UuZGV2LT5zdHJ1
Y3RfbXV0ZXgpOwo+ID4+PiAtCj4gPj4+ICAgICAgICBzcGluX2xvY2soJm9iai0+dm1hLmxvY2sp
Owo+ID4+PiAgICAgICAgd2hpbGUgKCFyZXQgJiYgKHZtYSA9IGxpc3RfZmlyc3RfZW50cnlfb3Jf
bnVsbCgmb2JqLT52bWEubGlzdCwKPiA+Pj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgc3RydWN0IGk5MTVfdm1hLAo+ID4+PiAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBvYmpfbGluaykpKSB7
Cj4gPj4+ICsgICAgICAgICAgICAgc3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSAqdm0gPSB2bWEt
PnZtOwo+ID4+PiArCj4gPj4+ICsgICAgICAgICAgICAgcmV0ID0gLUVCVVNZOwo+ID4+PiArICAg
ICAgICAgICAgIGlmICghaTkxNV92bV90cnlvcGVuKHZtKSkKPiA+Pj4gKyAgICAgICAgICAgICAg
ICAgICAgIGJyZWFrOwo+ID4+Cj4gPj4gVGhpcyBpcyBzb21lIHJhY2UgYmV0d2VlbiBkaWZmZXJl
bnQgcGF0aHMgb2Ygdm0gY2xvc2luZy9kZXN0cnVjdGlvbiBhbmQKPiA+PiB2bWEgY2xlYW51cD8g
V2UgbmVlZCBhIGNvbW1lbnQgYWJvdXQgaXQgc29tZXdoZXJlLi4gSGVyZSBJIGd1ZXNzIGlzIGEK
PiA+PiBnb29kIHBsYWNlLgo+ID4gCj4gPiA0IGRpZmZlcmVudCBwYXRocyBhbGwgZmlnaHRpbmc7
IGFuZCBjb29yZGluYXRlIGJ5IHByZXZlbnRpbmcgdGhlIG90aGVyIDIKPiA+IGRlc3RydWN0aW9u
IHBhdGhzIGZyb20gcnVubmluZyBhcyB0aGV5IHJ1biwgYW5kIHNwaW5sb2NrcyB0byBwcmV2ZW50
IHRoZQo+ID4gb3RoZXIuCj4gPiAgIAo+ID4+IEFuZCB3aHkgYnJlYWsgYW5kIG5vdCBjb250aW51
ZSwgdGhlcmUgd2lsbCBiZSBhIHNlY29uZCBjYWxsIGNvbWluZyBmcm9tCj4gPj4gc29tZXdoZXJl
IHdoZW4gaXQgZmFpbHM/Cj4gPiAKPiA+IEl0IGZhaWxlZCB0byB1bmJpbmQgdGhlIG9iamVjdCwg
c28gaXQgd291bGQgZW5kIHVwIGluIGEgYnVzeSBzcGluCj4gPiBwcmV2ZW50aW5nIHRoZSBhY3R1
YWwgdm0gcmVsZWFzZSBmcm9tIHJlbW92aW5nIHRoZSB2bWEuCj4gCj4gQnV0IGl0IGNvdWxkIHBy
b2NlZWQgdG8gdW5iaW5kIHdoYXQgY2FuIGJlIHVuYm91bmQuIE90aGVyd2lzZSBpcyBpdCAKPiBn
dWFyYW50ZWVkIHRvIGJlIGNhbGxlZCBhZ2FpbiB3aGVuIGl0IGZhaWxzLCBzbyBldmVudHVhbGx5
IGl0IHdpbGwgY2xlYW4gCj4gdXAgZXZlcnl0aGluZz8KCldlIGdhaW4gbm90aGluZyBieSBkb2lu
ZyBzbywgZXhjZXB0IHVuYmluZCB0aGluZ3MgdGhhdCB3ZXJlIGluIHVzZS4gV2UKaGF2ZSB0byBj
b21wbGV0ZWx5IHVuYmluZCB0aGUgb2JqZWN0IGZvciB0aGUgY2FsbGVycyB0byBtYWtlIHByb2dy
ZXNzLgoKPiA+Pj4gKyAgICAgICAgICAgICB3b3JrLT52bWEgPSB2bWE7Cj4gPj4+ICsgICAgICAg
ICAgICAgd29yay0+Y2FjaGVfbGV2ZWwgPSBjYWNoZV9sZXZlbDsKPiA+Pj4gKyAgICAgICAgICAg
ICB3b3JrLT5mbGFncyA9IGJpbmRfZmxhZ3MgfCBJOTE1X1ZNQV9BTExPQzsKPiA+Pj4gKwo+ID4+
PiArICAgICAgICAgICAgIC8qCj4gPj4+ICsgICAgICAgICAgICAgICogTm90ZSB3ZSBvbmx5IHdh
bnQgdG8gY2hhaW4gdXAgdG8gdGhlIG1pZ3JhdGlvbiBmZW5jZSBvbgo+ID4+PiArICAgICAgICAg
ICAgICAqIHRoZSBwYWdlcyAobm90IHRoZSBvYmplY3QgaXRzZWxmKS4gQXMgd2UgZG9uJ3QgdHJh
Y2sgdGhhdCwKPiA+Pj4gKyAgICAgICAgICAgICAgKiB5ZXQsIHdlIGhhdmUgdG8gdXNlIHRoZSBl
eGNsdXNpdmUgZmVuY2UgaW5zdGVhZC4KPiA+Pj4gKyAgICAgICAgICAgICAgKgo+ID4+PiArICAg
ICAgICAgICAgICAqIEFsc28gbm90ZSB0aGF0IHdlIGRvIG5vdCB3YW50IHRvIHRyYWNrIHRoZSBh
c3luYyB2bWEgYXMKPiA+Pj4gKyAgICAgICAgICAgICAgKiBwYXJ0IG9mIHRoZSBvYmotPnJlc3Yt
PmV4Y2xfZmVuY2UgYXMgaXQgb25seSBhZmZlY3RzCj4gPj4+ICsgICAgICAgICAgICAgICogZXhl
Y3V0aW9uIGFuZCBub3QgY29udGVudCBvciBvYmplY3QncyBiYWNraW5nIHN0b3JlIGxpZmV0aW1l
Lgo+ID4+PiArICAgICAgICAgICAgICAqLwo+ID4+PiArICAgICAgICAgICAgIEdFTV9CVUdfT04o
aTkxNV9hY3RpdmVfaGFzX2V4Y2x1c2l2ZSgmdm1hLT5hY3RpdmUpKTsKPiA+Pj4gKyAgICAgICAg
ICAgICBpOTE1X2FjdGl2ZV9zZXRfZXhjbHVzaXZlKCZ2bWEtPmFjdGl2ZSwgJndvcmstPmJhc2Uu
ZG1hKTsKPiA+Pgo+ID4+IE9oIHJpZ2h0LCBkbWFfZmVuY2Vfd29yayBzaW5jZSBpdCdzIG5vdCBh
IHdvcmtlciBidXQgY2FsbGJhY2sgb24KPiA+PiBzaWduYWxsaW5nIHRoZSBmZW5jZS4uLiBGcm9t
IHdoYXQgY29udGV4dCBpdCBnZXRzIGNhbGxlZCAoaG9sZGluZyBhbnkKPiA+PiBsb2Nrcz8pIGFu
ZCB3aGljaCBsb2NrcyB0aGUgY2FsbGJhY2sgY2FuL3dpbGwgdGFrZT8KPiA+IAo+ID4gZG1hX2Zl
bmNlX3dvcmsgaGFzIGEgZG1hX2ZlbmNlX2NiIHRoYXQgc2NoZWR1bGVzIGEgd29ya19zdHVjdCB3
aGljaAo+ID4gZXhlY3V0ZXMgb3VyIGZ1bmN0aW9uLiAoQW5kIGl0IGFsc28gaGFzIGEgZG1hLWZl
bmNlIHRocm91Z2ggd2hpY2ggd2UgY2FuCj4gPiBzaWduYWwgdGhlIGNvbXBsZXRpb24vZXJyb3Ig
b2YgdGhhdCBmdW5jdGlvbi4pCj4gCj4gQW5kIHRoaXMgaXMgdG8gYXZvaWQgc29tZSBhbGxvY2F0
aW9uIHNvbWV3aGVyZT8KClRoZSBmZW5jZS13b3JrIGdlbmVyYWxseSBpcyB0byBzY2hlZHVsZSBz
b21lIHdvcmsgdGhhdCBoYXMgdG8gd2FpdCBmb3IgYQpzZXQgb2YgZmVuY2VzIGFuZCB3YW50cyB0
byBzaWduYWwgZmVuY2UgdXBvbiBjb21wbGV0aW9uLiBXZSBhcmUgdXNpbmcgaXQKaGVyZSB0byBk
byB0aGUgYWxsb2NhdGlvbiBhZnRlciB3ZSBkcm9wIHRoZSBtdXRleC4gKFdoaWNoIG1lYW5zIHdl
IGhhdmUKdG8gcHJvdGVjdCB0aGF0IHdvcmsgaXRzZWxmIGZyb20gdGhlIHNocmlua2VyLCB3aGlj
aCBpcyBmdW4uKQoKPiA+Pj4gK3N0YXRpYyBib29sIHRyeV9mYXN0X3BpbihzdHJ1Y3QgaTkxNV92
bWEgKnZtYSwgdW5zaWduZWQgaW50IGZsYWdzKQo+ID4+PiAgICB7Cj4gPj4+IC0gICAgIGNvbnN0
IHVuc2lnbmVkIGludCBib3VuZCA9IGF0b21pY19yZWFkKCZ2bWEtPmZsYWdzKTsKPiA+Pj4gLSAg
ICAgaW50IHJldDsKPiA+Pj4gKyAgICAgdW5zaWduZWQgaW50IGJvdW5kOwo+ID4+PiArICAgICBi
b29sIHBpbm5lZCA9IHRydWU7Cj4gPj4+ICAgIAo+ID4+PiAtICAgICBsb2NrZGVwX2Fzc2VydF9o
ZWxkKCZ2bWEtPnZtLT5pOTE1LT5kcm0uc3RydWN0X211dGV4KTsKPiA+Pj4gLSAgICAgR0VNX0JV
R19PTigoZmxhZ3MgJiAoUElOX0dMT0JBTCB8IFBJTl9VU0VSKSkgPT0gMCk7Cj4gPj4+IC0gICAg
IEdFTV9CVUdfT04oKGZsYWdzICYgUElOX0dMT0JBTCkgJiYgIWk5MTVfdm1hX2lzX2dndHQodm1h
KSk7Cj4gPj4+ICsgICAgIGJvdW5kID0gYXRvbWljX3JlYWQoJnZtYS0+ZmxhZ3MpOwo+ID4+PiAr
ICAgICBkbyB7Cj4gPj4+ICsgICAgICAgICAgICAgaWYgKHVubGlrZWx5KGZsYWdzICYgfmJvdW5k
KSkKPiA+Pj4gKyAgICAgICAgICAgICAgICAgICAgIHJldHVybiBmYWxzZTsKPiA+Pgo+ID4+IFdo
YXQgaXMgdGhpcyBjaGVja2luZyBmb3I/Cj4gPiAKPiA+IElmIHRoZSByZXF1ZXN0ZWQgYmluZGlu
ZyAoZmxhZ3MpIGlzIGFscmVhZHkgYXZhaWxhYmxlIChib3VuZCkuCj4gPiAKPiA+Pj4gLSAgICAg
aWYgKFdBUk5fT04oYm91bmQgJiBJOTE1X1ZNQV9QSU5fT1ZFUkZMT1cpKSB7Cj4gPj4+IC0gICAg
ICAgICAgICAgcmV0ID0gLUVCVVNZOwo+ID4+PiAtICAgICAgICAgICAgIGdvdG8gZXJyX3VucGlu
Owo+ID4+PiArICAgICAgICAgICAgIGlmICh1bmxpa2VseShib3VuZCAmIChJOTE1X1ZNQV9PVkVS
RkxPVyB8IEk5MTVfVk1BX0VSUk9SKSkpCj4gPj4+ICsgICAgICAgICAgICAgICAgICAgICByZXR1
cm4gZmFsc2U7Cj4gPj4KPiA+PiBXaGF0IHdpbGwgdGhlIGNhbGxlciB0cnkgdG8gZG8gaW4gdGhl
c2UgY2FzZXM/Cj4gPiAKPiA+IE5vdCBkbyB0aGUgZWFybHkgcmV0dXJuLgo+IAo+IEhvdyBpdCB3
aWxsIHJlY292ZXIgZnJvbSBlcnJvciBvciBvdmVyZmxvdyB3YXMgdGhlIHF1ZXN0aW9uIEkgd2Fz
IGFpbWluZyAKPiBhdC4gQnV0IHRoYXQgbG9va3MgdG8gaGF2ZSBiZWVuIGJlZm9yZSBJIGZpZ3Vy
ZWQgb3V0IHdoYXQgZG8geW91IHJlYWxseSAKPiBtZWFuIGJ5IGZhc3QgaW4gdGhpcyBjb250ZXh0
LiBGYXN0L3Nsb3cgdGVybWlub2xvZ3kgaXMgbm90IHRoZSBjbGVhcmVzdCAKPiBoZXJlIGJ1dCBJ
IGhhdmUgbm8gYmV0dGVyIHN1Z2dlc3Rpb25zIGF0IHRoZSBtb21lbnQuCgpBbnkgaGFyZCBjb25k
aXRpb24gaXMgcHVudGVkIHRvIHRoZSBjYWxsZXIuCgo+ID4+PiArICAgICBpZiAoZXJyKQo+ID4+
PiArICAgICAgICAgICAgIGdvdG8gZXJyX3VubG9jazsKPiA+Pj4gKwo+ID4+PiArICAgICBpZiAo
IShib3VuZCAmIEk5MTVfVk1BX0JJTkRfTUFTSykpIHsKPiA+Pj4gKyAgICAgICAgICAgICBlcnIg
PSBpOTE1X3ZtYV9pbnNlcnQodm1hLCBzaXplLCBhbGlnbm1lbnQsIGZsYWdzKTsKPiA+Pj4gKyAg
ICAgICAgICAgICBpZiAoZXJyKQo+ID4+PiArICAgICAgICAgICAgICAgICAgICAgZ290byBlcnJf
YWN0aXZlOwo+ID4+PiArCj4gPj4+ICsgICAgICAgICAgICAgaWYgKGk5MTVfaXNfZ2d0dCh2bWEt
PnZtKSkKPiA+Pj4gKyAgICAgICAgICAgICAgICAgICAgIF9faTkxNV92bWFfc2V0X21hcF9hbmRf
ZmVuY2VhYmxlKHZtYSk7Cj4gPj4+ICsgICAgIH0KPiA+Pj4gKwo+ID4+PiArICAgICBHRU1fQlVH
X09OKCF2bWEtPnBhZ2VzKTsKPiA+Pj4gKyAgICAgZXJyID0gaTkxNV92bWFfYmluZCh2bWEsCj4g
Pj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgdm1hLT5vYmogPyB2bWEtPm9iai0+Y2FjaGVf
bGV2ZWwgOiAwLAo+ID4+PiArICAgICAgICAgICAgICAgICAgICAgICAgIGZsYWdzLCB3b3JrKTsK
PiA+Pj4gKyAgICAgaWYgKGVycikKPiA+Pj4gKyAgICAgICAgICAgICBnb3RvIGVycl9yZW1vdmU7
Cj4gPj4+ICsKPiA+Pj4gKyAgICAgLyogVGhlcmUgc2hvdWxkIG9ubHkgYmUgYXQgbW9zdCAyIGFj
dGl2ZSBiaW5kaW5ncyAodXNlciwgZ2xvYmFsKSAqLwo+ID4+Cj4gPj4gcy9iaW5kaW5ncy9waW5z
LyA/IEkgdGhvdWdodCBvbmUgdm1hIGlzIG9uZSBiaW5kaW5nIGJ5IGRlZmluaXRpb24uLiBzbyBJ
Cj4gPj4gYW0gY29uZnVzZWQuCj4gPiAKPiA+IE9oIG5vLCB0aGF0IHdvdWxkIGJlIGZhciB0b28g
c2ltcGxlLiBPbiBnZW42LTcgJiBic3csIHRoZSB2bWEgaXMgYWxpYXNlZC4KPiA+IE9uZSB2bWEs
IHR3byBiaW5kaW5nIChQSU5fVVNFUiAtPiBnZ3R0LT5hbGlhcywgUElOX0dMT0JBTCAtPiBnZ3R0
KS4KPiAKPiBPa2F5IEkgYW0gbm90IGZhbWlsaWFyIHdpdGggdGhhdCBhbmQgdGhhdCdzIGEgcHJv
YmxlbSB3aGVuIHJldmlld2luZyB0aGlzLgo+IAo+IFdoYXQgZnVuZGFtZW50YWxseSBoYXBwZW5z
IHdoZW4gc29tZW9uZSB0cmllZCB0byBQSU5fVVNFUiBhbmQgc28gZmFyIHZtYSAKPiBoYWQgUElO
X0dMT0JBTCAob3IgdmljZS12ZXJzYSkgaW4gYWxpYXNpbmcgZ2d0dCB3b3JsZD8gSSBzZWUgdGhh
dCB3ZSBnbyAKPiB0byB0aGUgInNsb3ciIHBhdGguIEp1c3QgaW5jcmVhc2VzIHRoZSBwaW4gY291
bnQ/CgpXZSB1c2UgdGhlIHNhbWUgdm1hIGxvY2F0aW9uIChzbyBubyBuZWVkIHRvIGRvIGk5MTVf
dm1hX2luc2VydCkgYnV0IHdlCm5lZWQgdG8gYmluZCBpdCBpbnRvIHRoZSBuZXcgR1RUIChpLmUu
IHVwZGF0ZSBhbGwgdGhlIFBURXMgaW4gdGhhdCBHVFQpLgoKPiA+PiBJbiBnZW5lcmFsLCBldmVu
IHdoZW4gSSBkaWQgbm90IGV4cGxpY2l0bHkgYXNrZWQgZm9yIGEgY29tbWVudCwgcGxhY2VzCj4g
Pj4gd2hlcmUgdGhpbmdzIHdlcmVuJ3QgY2xlYXIgdG8gbWUgc2hvdWxkIGJlIGNvbnNpZGVyZWQg
dG8gaGF2ZSB0aGVtIGFkZGVkCj4gPj4gYW5kIHByb2JhYmx5IG1vcmUuCj4gPiAKPiA+IEhvdyBl
bHNlIGRvIEkga25vdyB3aGF0IGlzbid0IGNsZWFyIHRvIHlvdS4uLiA7KQo+IAo+IEdvb2QsIHdo
ZW4gY2FuIEkgZXhwZWN0IGEgbW9yZSBhbm5vdGF0ZWQgdmVyc2lvbj8KClNvb24/Ci1DaHJpcwpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
