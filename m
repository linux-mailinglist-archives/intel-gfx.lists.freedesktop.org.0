Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E4E4510697D
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Nov 2019 11:03:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07C0B6EA5F;
	Fri, 22 Nov 2019 10:03:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 087AD6EA5F
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Nov 2019 10:03:53 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19297662-1500050 for multiple; Fri, 22 Nov 2019 10:03:52 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191120093302.3723715-1-chris@chris-wilson.co.uk>
 <20191120093302.3723715-6-chris@chris-wilson.co.uk>
 <aa1f7967-6ff5-f341-b3bd-5ec0afe102b0@linux.intel.com>
 <157425477060.13839.10577920977636430794@skylake-alporthouse-com>
 <5eda82de-a7a3-d4d3-13ec-6ed4b70986b7@linux.intel.com>
 <157425656356.13839.12546189239106395179@skylake-alporthouse-com>
 <8501c5b1-603e-843e-e327-21426391eed8@linux.intel.com>
In-Reply-To: <8501c5b1-603e-843e-e327-21426391eed8@linux.intel.com>
Message-ID: <157441702910.2524.9444829281992349722@skylake-alporthouse-com>
Date: Fri, 22 Nov 2019 10:03:49 +0000
Subject: Re: [Intel-gfx] [PATCH 6/9] drm/i915/selftests: Force bonded
 submission to overlap
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0xMS0yMiAwOTozNDozNCkKPiAKPiBPbiAyMC8x
MS8yMDE5IDEzOjI5LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBRdW90aW5nIFR2cnRrbyBVcnN1
bGluICgyMDE5LTExLTIwIDEzOjE4OjI3KQo+ID4+Cj4gPj4gT24gMjAvMTEvMjAxOSAxMjo1OSwg
Q2hyaXMgV2lsc29uIHdyb3RlOgo+ID4+PiBRdW90aW5nIFR2cnRrbyBVcnN1bGluICgyMDE5LTEx
LTIwIDEyOjU1OjQyKQo+ID4+Pj4KPiA+Pj4+IE9uIDIwLzExLzIwMTkgMDk6MzIsIENocmlzIFdp
bHNvbiB3cm90ZToKPiA+Pj4+PiBCb25kZWQgcmVxdWVzdCBzdWJtaXNzaW9uIGlzIGRlc2lnbmVk
IHRvIGFsbG93IHJlcXVlc3RzIHRvIGV4ZWN1dGUgaW4KPiA+Pj4+PiBwYXJhbGxlbCBhcyBsYWlk
IG91dCBieSB0aGUgdXNlci4gSWYgdGhlIG1hc3RlciByZXF1ZXN0IGlzIGFscmVhZHkKPiA+Pj4+
PiBmaW5pc2hlZCBiZWZvcmUgaXRzIGJvbmRlZCBwYWlyIGlzIHN1Ym1pdHRlZCwgdGhlIHBhaXIg
d2VyZSBub3QgZGVzdGluZWQKPiA+Pj4+PiB0byBydW4gaW4gcGFyYWxsZWwgYW5kIHdlIGxvc2Ug
dGhlIGluZm9ybWF0aW9uIGFib3V0IHRoZSBtYXN0ZXIgZW5naW5lCj4gPj4+Pj4gdG8gZGljdGF0
ZSBzZWxlY3Rpb24gb2YgdGhlIHNlY29uZGFyeS4gSWYgdGhlIHNlY29uZCByZXF1ZXN0IHdhcwo+
ID4+Pj4+IHJlcXVpcmVkIHRvIGJlIHJ1biBvbiBhIHBhcnRpY3VsYXIgZW5naW5lIGluIGEgdmly
dHVhbCBzZXQsIHRoYXQgc2hvdWxkCj4gPj4+Pj4gaGF2ZSBiZWVuIHNwZWNpZmllZCwgcmF0aGVy
IHRoYW4gbGVmdCB0byB0aGUgd2hpbXMgb2YgYSByYW5kb20KPiA+Pj4+PiB1bmNvbm5lY3RlZCBy
ZXF1ZXN0cyEKPiA+Pj4+Pgo+ID4+Pj4+IEluIHRoZSBzZWxmdGVzdCwgSSBtYWRlIHRoZSBtaXN0
YWtlIG9mIG5vdCBlbnN1cmluZyB0aGUgbWFzdGVyIHdvdWxkCj4gPj4+Pj4gb3ZlcmxhcCB3aXRo
IGl0cyBib25kZWQgcGFpcnMsIG1lYW5pbmcgdGhhdCBpdCBjb3VsZCBpbmRlZWQgY29tcGxldGUK
PiA+Pj4+PiBiZWZvcmUgd2Ugc3VibWl0dGVkIHRoZSBib25kcy4gVGhvc2UgYm9uZHMgd2VyZSB0
aGVuIGZyZWUgdG8gc2VsZWN0IGFueQo+ID4+Pj4+IGF2YWlsYWJsZSBlbmdpbmUgaW4gdGhlaXIg
dmlydHVhbCBzZXQsIGFuZCBub3QgdGhlIG9uZSBleHBlY3RlZCBieSB0aGUKPiA+Pj4+PiB0ZXN0
Lgo+ID4+Pj4KPiA+Pj4+IFRoZXJlIGlzIGEgc3VibWl0IGF3YWl0IHdoaWNoIGVuc3VyZXMgbWFz
dGVyIGlzIG5vdCBydW5uYWJsZSBiZWZvcmUKPiA+Pj4+IGJvbmRlZCBwYWlycyBhcmUgc3VibWl0
dGVkLiBXaHkgd2FzIHRoYXQgbm90IGVub3VnaD8gQXJlIHRoZSBzcG9yYWRpYwo+ID4+Pj4gdGVz
dCBmYWlsdXJlcz8KPiA+Pj4KPiA+Pj4gT25lIHRlc3QgaXMgdXNpbmcgdGhlIHN1Ym1pdF9hd2Fp
dCwgdGhlIG90aGVyIGRvZXMgbm90LiBJdCB0YWtlcyB0aGUKPiA+Pj4gYmFja2dyb3VuZCByZXRp
cmUgd29ya2VyIHRvIHJ1biBhcyB3ZSBhcmUgc3VibWl0dGluZyB0aGUgc2Vjb25kYXJpZXMuLi4K
PiA+Pj4gQnV0IEkgaGF2ZSBub3Qgbm90aWNlZCB0aGlzIGZhaWx1cmUgYmVmb3JlIGhvb2tpbmcg
dXAgcmV0aXJlbWVudCB0bwo+ID4+PiBwcm9jZXNzX2NzYi4gSG93ZXZlciwgdGhlIGlzc3VlIGlz
IGRlZmluaXRlbHkgcHJlc2VudCBpbiB0aGUgY3VycmVudAo+ID4+PiB0ZXN0Lgo+ID4+Cj4gPj4g
U28gd2hhdCBoYXBwZW5zPyBJcyB0aGlzIGFub3RoZXIgaXNzdWUgbGltaXRlZCB0byBzZWxmdGVz
dHM/IEJlY2F1c2UgSQo+ID4+IGRvbid0IHNlZSB0aGF0IHVBUEkgaXRzZWxmIGNhbid0IGJlIHVz
ZWQgaW4gdGhpcyB3YXkuCj4gPiAKPiA+IFNpbmNlIHRoZSBtYXN0ZXIgYmF0Y2ggaXMgYWxyZWFk
eSBjb21wbGV0ZWQgJiBzaWduYWxlZCBieSB0aGUgdGltZSB3ZQo+ID4gc3VibWl0IHRoZSBzZWNv
bmRhcmllcywgdGhlIHN1Ym1pdC1mZW5jZSBpcyBhIGR1ZCBhbmQgdGhlIHNlY29uZGFyaWVzCj4g
PiBhcmUgbm90IGNvbnN0cmFpbmVkIGluIHRoZWlyIGVuZ2luZSBzZWxlY3Rpb24uCj4gPiAKPiA+
IGk5MTVfcmVxdWVzdF9hd2FpdF9leGVjdXRpb246Cj4gPiAgICAgICBpZiAodGVzdF9iaXQoRE1B
X0ZFTkNFX0ZMQUdfU0lHTkFMRURfQklULCAmZmVuY2UtPmZsYWdzKSkKPiA+ICAgICAgICAgICAg
ICAgY29udGludWU7Cj4gPiAgICAgICBlbHNlCj4gPiAgICAgICAgICAgICAgIF9faTkxNV9yZXF1
ZXN0X2F3YWl0X2V4ZWN1dGlvbigpCj4gPiAKPiA+IE5vdywgb3VyIGNob2ljZSBpcyBlaXRoZXIg
dG8gZHJvcCB0aGUgY2hlY2sgb24gdGhlIHNpZ25hbGVkIGJpdCAoYW5kIHNvCj4gPiB3ZSB3aWxs
IGFwcGx5IHRoZSBib25kaW5nIGNvbnN0cmFpbmVkIGZyb20gdGhlIGFscmVhZHkgZmluaXNoZWQg
YmF0Y2gpCj4gPiBvciBub3QuIEdpdmVuIHRoYXQgdGhlIG1hc3RlciBpcyBhbHJlYWR5IGNvbXBs
ZXRlLCBJIGZlZWwganVzdGlmaWVkIGluCj4gPiB0aGUgY3VycmVudCBkZWNpc2lvbiB0byBpZ25v
cmUgdGhlIGNvbnN0cmFpbnQgKHNpbmNlIGVxdWFsbHkgdGhlIGZlbmNlCj4gPiBjb3VsZCBhbHJl
YWR5IGhhdmUgYmVlbiByZXRpcmVkIGFuZCBzbyBjb21wbGV0ZWx5IGluYWNjZXNzaWJsZSksIHNv
IGNob3NlCj4gPiB0byBmaXggdGhlIHRlc3QgaW5zdGVhZC4KPiAKPiBZZXMgSSBhZ3JlZSBpdCBz
b3VuZHMgb2theSB0byBza2lwL2lnbm9yZSB0aGUgY29uc3RyYWludC4gQnV0IGFsc28gc2VlbXMg
Cj4gYSB2YWxpZCB0ZXN0IHdoYXQgdGhpcyB0ZXN0IHdhcyBkb2luZyBiZWZvcmUgc2luY2UgaXQg
ZXhlcmNpc2VzIGEgCj4gc2xpZ2h0bHkgZGlmZmVyZW50IGNvZGUgcGF0aCwgb3IgYXQgbGVhc3Qg
c2V0IG9mIGNvbmRpdGlvbnMuCgpXaGF0J3MgdGhlIHZlcmlmaWNhdGlvbiBzdGVwPyBJZiB3ZSBz
dWJtaXQgYSBib25kZWQgcGFpciB3aXRob3V0IGEKc3VibWl0LWZlbmNlIG9yIGEgY29tcGxldGVk
IHN1Ym1pdC1mZW5jZSwgaXQncyBmcmVlIHRvIHJ1biBvbiBlaXRoZXI/CgpXZSdyZSBqdXN0IHRl
c3RpbmcgdGhhdCBpdCBkZWdlbmVyYXRlcyBpbnRvIGEgbm9ybWFsIHN1Ym1pdC4KCgljcmVhdGUg
c3R1YiAoY29tcGxldGVkKSBmZW5jZSBbb24gYm9uZGVkIGVuZ2luZXNdCglycSA9IGk5MTVfcmVx
dWVzdF9jcmVhdGUoKTsKCWk5MTVfcmVxdWVzdF9hd2FpdF9leGVjdXRpb24ocnEsIHN0dWIpOwoJ
aWYgKGZlbmNlX2V4aXN0cyhycSwgc3R1YikpIHsKCQlGQUlMOwoJfQo/CgpJdCBkb2Vzbid0IGV2
ZW4gaGF2ZSB0byBiZSBhIGJvbmRlZCBzZXR1cC4KCj4gV2hhdCBkbyB5b3UgdGhpbms/IFdvdWxk
IGl0IGJlIGhhcmQgdG8gYWRkIHRoaXMgYXMgM3JkIGZsYXZvdXI/IE1heWJlIAo+IGp1c3QgYSBu
ZXcgZmxhZyBhbmQgdGhlbiBhbGxvdyBzcGlubmVyIHRvIGZpbmlzaCBhcyBzb29uIGFzIGlzIGNy
ZWF0ZWQgCj4gdG8ga2VlcCB0aGUgZXhpc3RpbmcgZmxvdz8KCkknbSBhIGxpdHRsZSB3b3JyaWVk
IHRoYXQgbWF5YmUgaXQncyBlbnNocmluaW5nIGFuIGltcGxlbWVudGF0aW9uIGRldGFpbAp3aXRo
b3V0IGEgdGhvcm91Z2ggdXNlcnNwYWNlIHVzZSBjYXNlLiBJJ20gaGFsZiB3YWl0aW5nIGZvciBz
b21lYm9keSB0bwphc2sgYW5kIHRoZW4gYmVpbmcgYWJsZSB0byBkZXRlcm1pbmUgd2hhdCBpcyB0
aGUgYmVzdCBhcHByb2FjaCBoZXJlIHdpdGgKc29tZWJvZHkgdGhhdCBhbiBoYXMgYWN0dWFsIGV4
YW1wbGUgYW5kIGFudGljaXBhdGVkIGJlaGF2aW91ci4KCkUuZy4gbWF5YmUgd2Ugc2hvdWxkIG1h
a2UgaXQgYSB1QVBJIGVycm9yPyBBbHRob3VnaCB3ZSBjYW4gbm90CmNvbXBsZXRlbHkgZGV0ZWN0
IGFsbCBzaWduYWxlZCBmZW5jZXMgcHJpb3IgdG8gc3VibWlzc2lvbiAtLSBhcyBpbiBzb21lCmNh
c2VzIHRoZSBzZWNvbmRhcnkgZW5naW5lIG1heSBoYXZlIHRvIGJlIGRlbGF5ZWQgdW50aWwgaXQg
aGFzIGEgc2xvdAooYmFjayB0byB0aGUgbmlnaHRtYXJlIG9mIHBpcGVsaW5lIGJ1YmJsZXMgYW5k
IHdoZXRoZXIgd2Ugc2hvdWxkIHN0YWxsCnRoZSBib25kZWQgZW5naW5lcyB1bnRpbCB0aGUgZW50
aXJlIHNldCBpcyByZWFkeSkuCgpNYXliZSB3ZSBzaG91bGQgYmUga2VlcGluZyB0aGUgYm9uZGlu
ZyBkZXRhaWxzIGFyb3VuZCBmb3IgYXMgbG9uZyBhcyB0aGUKc3VibWl0LWZlbmNlIGV4aXN0cyBh
bmQgYXBwbHkgdGhlbSBldmVuIGlmIHRoZSBtYXN0ZXIgaXMgYWxyZWFkeQpjb21wbGV0ZWQuIEkn
bSB0b3JuIGFzIHRvIHdoZXRoZXIgb3Igbm90IHRoYXQgaXMgdGhlIGJldHRlciBpZGVhIC0tIHRo
ZQphcmd1bWVudCB0aGF0IG9uZSBjYW5ub3QgdGVsbCBiZXR3ZWVuIGEgY29tcGxldGVkIGZlbmNl
IGFuZCBhCm5vbi1leGlzdGVudCBmZW5jZSBpcyBjb21wZWxsaW5nIHRvIG1lIChnaXZlbiB0aGUg
aW1wbGVtZW50YXRpb24gb2YKZmVuY2VzKSwgYnV0IEkgY2FuIHNlZSBob3cgdGhhdCB3b3VsZCBj
YXVzZSBjb25mdXNpb24gdG8gdGhlIHVzZXIuCgoKSSdsbCB0cnkgYW5kIHN1bW1hcmlzZSB0aGUg
ZGlzY3Vzc2lvbiBoZXJlIGFuZCBhZGQgdGhhdCB0byB0aGUgdGVzdC4KLUNocmlzCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
