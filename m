Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CC584107408
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Nov 2019 15:25:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 329D06E36F;
	Fri, 22 Nov 2019 14:25:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A1A36E342
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Nov 2019 14:25:47 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19302189-1500050 for multiple; Fri, 22 Nov 2019 14:25:45 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191122112152.660743-1-chris@chris-wilson.co.uk>
 <20191122112152.660743-2-chris@chris-wilson.co.uk>
 <70521c9b-0118-4d56-22fd-3fe8bea5424c@linux.intel.com>
 <157442814042.2524.14421308033601241707@skylake-alporthouse-com>
 <3a59045b-0d21-04c0-1b95-a1410949d4eb@linux.intel.com>
 <157443091989.2524.15344680099563528720@skylake-alporthouse-com>
 <b433daf6-63e2-c493-3822-f94110eba946@linux.intel.com>
In-Reply-To: <b433daf6-63e2-c493-3822-f94110eba946@linux.intel.com>
Message-ID: <157443274235.2524.7860663803488619030@skylake-alporthouse-com>
Date: Fri, 22 Nov 2019 14:25:42 +0000
Subject: Re: [Intel-gfx] [PATCH 2/5] drm/i915/selftests: Flush the active
 callbacks
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0xMS0yMiAxNDoxNzo0MikKPiAKPiBPbiAyMi8x
MS8yMDE5IDEzOjU1LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBRdW90aW5nIFR2cnRrbyBVcnN1
bGluICgyMDE5LTExLTIyIDEzOjQzOjE3KQo+ID4+Cj4gPj4gT24gMjIvMTEvMjAxOSAxMzowOSwg
Q2hyaXMgV2lsc29uIHdyb3RlOgo+ID4+PiBRdW90aW5nIFR2cnRrbyBVcnN1bGluICgyMDE5LTEx
LTIyIDEzOjAxOjU2KQo+ID4+Pj4KPiA+Pj4+IE9uIDIyLzExLzIwMTkgMTE6MjEsIENocmlzIFdp
bHNvbiB3cm90ZToKPiA+Pj4+PiBCZWZvcmUgY2hlY2tpbmcgdGhlIGN1cnJlbnQgaTkxNV9hY3Rp
dmUgc3RhdGUgZm9yIHRoZSBhc3luY2hyb25vdXMgd29yawo+ID4+Pj4+IHdlIHN1Ym1pdHRlZCwg
Zmx1c2ggYW55IG9uZ29pbmcgY2FsbGJhY2suIFRoaXMgZW5zdXJlcyB0aGF0IG91ciBzYW1wbGlu
Zwo+ID4+Pj4+IGlzIHJvYnVzdCBhbmQgZG9lcyBub3Qgc3BvcmFkaWNhbGx5IGZhaWwgZHVlIHRv
IGJhZCB0aW1pbmcgYXMgdGhlIHdvcmsKPiA+Pj4+PiBpcyBydW5uaW5nIG9uIGFub3RoZXIgY3B1
Lgo+ID4+Pj4+Cj4gPj4+Pj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJp
cy13aWxzb24uY28udWs+Cj4gPj4+Pj4gLS0tCj4gPj4+Pj4gICAgIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L3NlbGZ0ZXN0X2NvbnRleHQuYyB8IDE5ICsrKysrKysrKysrKystLS0tLS0KPiA+Pj4+
PiAgICAgMSBmaWxlIGNoYW5nZWQsIDEzIGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCj4g
Pj4+Pj4KPiA+Pj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRl
c3RfY29udGV4dC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfY29udGV4dC5j
Cj4gPj4+Pj4gaW5kZXggMzU4NmFmNjM2MzA0Li45Mzk3OTgzMzgyNDIgMTAwNjQ0Cj4gPj4+Pj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfY29udGV4dC5jCj4gPj4+Pj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfY29udGV4dC5jCj4gPj4+Pj4g
QEAgLTQ4LDIwICs0OCwyNSBAQCBzdGF0aWMgaW50IGNvbnRleHRfc3luYyhzdHJ1Y3QgaW50ZWxf
Y29udGV4dCAqY2UpCj4gPj4+Pj4gICAgIAo+ID4+Pj4+ICAgICAgICAgbXV0ZXhfbG9jaygmdGwt
Pm11dGV4KTsKPiA+Pj4+PiAgICAgICAgIGRvIHsKPiA+Pj4+PiAtICAgICAgICAgICAgIHN0cnVj
dCBkbWFfZmVuY2UgKmZlbmNlOwo+ID4+Pj4+ICsgICAgICAgICAgICAgc3RydWN0IGk5MTVfcmVx
dWVzdCAqcnE7Cj4gPj4+Pj4gICAgICAgICAgICAgICAgIGxvbmcgdGltZW91dDsKPiA+Pj4+PiAg
ICAgCj4gPj4+Pj4gLSAgICAgICAgICAgICBmZW5jZSA9IGk5MTVfYWN0aXZlX2ZlbmNlX2dldCgm
dGwtPmxhc3RfcmVxdWVzdCk7Cj4gPj4+Pj4gLSAgICAgICAgICAgICBpZiAoIWZlbmNlKQo+ID4+
Pj4+ICsgICAgICAgICAgICAgaWYgKGxpc3RfZW1wdHkoJnRsLT5yZXF1ZXN0cykpCj4gPj4+Pj4g
ICAgICAgICAgICAgICAgICAgICAgICAgYnJlYWs7Cj4gPj4+Pj4gICAgIAo+ID4+Pj4+IC0gICAg
ICAgICAgICAgdGltZW91dCA9IGRtYV9mZW5jZV93YWl0X3RpbWVvdXQoZmVuY2UsIGZhbHNlLCBI
WiAvIDEwKTsKPiA+Pj4+PiArICAgICAgICAgICAgIHJxID0gbGlzdF9sYXN0X2VudHJ5KCZ0bC0+
cmVxdWVzdHMsIHR5cGVvZigqcnEpLCBsaW5rKTsKPiA+Pj4+PiArICAgICAgICAgICAgIGk5MTVf
cmVxdWVzdF9nZXQocnEpOwo+ID4+Pj4+ICsKPiA+Pj4+PiArICAgICAgICAgICAgIHRpbWVvdXQg
PSBpOTE1X3JlcXVlc3Rfd2FpdChycSwgMCwgSFogLyAxMCk7Cj4gPj4+Pj4gICAgICAgICAgICAg
ICAgIGlmICh0aW1lb3V0IDwgMCkKPiA+Pj4+PiAgICAgICAgICAgICAgICAgICAgICAgICBlcnIg
PSB0aW1lb3V0Owo+ID4+Pj4+ICAgICAgICAgICAgICAgICBlbHNlCj4gPj4+Pj4gLSAgICAgICAg
ICAgICAgICAgICAgIGk5MTVfcmVxdWVzdF9yZXRpcmVfdXB0byh0b19yZXF1ZXN0KGZlbmNlKSk7
Cj4gPj4+Pj4gKyAgICAgICAgICAgICAgICAgICAgIGk5MTVfcmVxdWVzdF9yZXRpcmVfdXB0byhy
cSk7Cj4gPj4+Pj4gICAgIAo+ID4+Pj4+IC0gICAgICAgICAgICAgZG1hX2ZlbmNlX3B1dChmZW5j
ZSk7Cj4gPj4+Pj4gKyAgICAgICAgICAgICBzcGluX2xvY2tfaXJxKCZycS0+bG9jayk7Cj4gPj4+
Pj4gKyAgICAgICAgICAgICBzcGluX3VubG9ja19pcnEoJnJxLT5sb2NrKTsKPiA+Pj4+Cj4gPj4+
PiBVZ2guLiB0aGlzIGF0IGxlYXN0IG5lZWRzIGEgY29tbWVudC4KPiA+Pj4+Cj4gPj4+PiBXaGF0
IGlzIHRoZSBhY3R1YWwgcmFjZT8KPiA+Pj4KPiA+Pj4gV2UgY29tcGxldGUgdGhlIHN5bmMgYmVm
b3JlIHRoZSBpbnRlcnJ1cHQgaGFuZGxlcidzIGlycSB3b3JrIGhhcwo+ID4+PiBmaW5pc2hlZCBl
eGVjdXRpbmcgdGhlIGNhbGxiYWNrIHRvIG1hcmsgdGhlIGJhcnJpZXIgYXMgY29tcGxldGVkLgo+
ID4+PiBTbyB3aGVuIHdlIGxvb2sgYXQgd2hldGhlciB0aGUgZW5naW5lIGlzIHBhcmtlZCBvciBu
b3QsIHdlIHNlZSB0aGUgc3RhdGUKPiA+Pj4gYmVmb3JlIHRoZSByZXF1ZXN0IGhhcyBmaW5pc2hl
ZCBwcm9jZXNzaW5nIGFuZCBmaW5kIGl0IHN0aWxsIGFjdGl2ZS4KPiA+Pgo+ID4+IFlvdSBtZWFu
IGk5MTVfYWN0aXZlX2ZlbmNlX2dldCByZXR1cm5zIG5vdCByZWFsbHkgbGFzdCByZXF1ZXN0PyBI
b3cgY2FuCj4gPj4gdGhhdCBiZT8gT3IgdGhlIGtleSBpcyBqdXN0IGludGVsX2VuZ2luZV9wbV9m
bHVzaD8KPiA+IAo+ID4gVGhlIGFjdGl2ZSBpbmdyZWRpZW50IGluIHRoaXMgcGF0Y2ggc2hvdWxk
IGJlIHVzaW5nIHRoZSB0bC0+cmVxdWVzdHMKPiA+IGluc3RlYWQgb2YgdGwtPmxhc3RfcmVxdWVz
dCBhbmQgdGhlbiB1c2luZyBwbV9mbHVzaCgpCj4gPiAKPiA+IExvb2tpbmcgYXQgd2hhdCB3YXMg
dGhlcmUgYmVmb3JlOgo+ID4+Pj4+IC0gICAgICAgICAgICAgZmVuY2UgPSBpOTE1X2FjdGl2ZV9m
ZW5jZV9nZXQoJnRsLT5sYXN0X3JlcXVlc3QpOwo+ID4gCj4gPiBpcyBkZWZpbml0ZWx5IHdoZXJl
IEkgd2VudCAieWlrZXMsIGlmIHdlIGFyZSBza2lwcGluZyBiZWNhdXNlCj4gPiBsYXN0X3JlcXVl
c3QgaXMgTlVMTCwgd2UgaGFkIGJldHRlciBtYWtlIHN1cmUgdGhhdCB0aGUgYmFycmllciBjYWxs
YmFja3MKPiA+IG9uIHRoZSBycS0+ZmVuY2UuY2JfbGlzdCB3ZXJlIGV4ZWN1dGVkIiB3aGljaCBt
ZWFucyB3YWl0aW5nIHVudGlsIHRoZQo+ID4gaW50ZXJydXB0IGhhbmRsZXIgZHJvcHBlZCBycS0+
bG9jay4KPiA+IAo+ID4gTG9va2luZyBhdCB0aGUgY29kZSB0aGF0IGlzIHRoZXJlIG5vdywgcmV0
aXJpbmcgdGhlIGtub3duIGxpc3Qgb2YKPiA+IHJlcXVlc3RzIChhbmQgdGhlbiBsb29waW5nIHRo
ZSBlbmdpbmVfcGFyayBhZGRpdGlvbikgc2hvdWxkIGJlIGFjY3VyYXRlLgo+IAo+IEhtIEkgaGF0
ZSB0aGlzIHZlcnkgaW50aW1hdGUga25vd2xlZGdlIG9mIG9wZXJhdGlvbi4gQW5kIEkgYW0gc3Rp
bGwgbm90IAo+IGZvbGxvd2luZy4gOiggSXMgc29tZSBwYXRoIGJ5cGFzc2luZyBhZGRpbmcgdG8g
dGwtPmxhc3RfcmVxdWVzdD8KCk5vLCB0aGUgaTkxNV9yZXF1ZXN0X3JldGlyZV91cHRvKCkgaGVy
ZSBtYXkgYWRkIHRvIHRsLT5yZXF1ZXN0cyAoYW5kCnNldHRpbmcgdGwtPmxhc3RfcmVxdWVzdCku
IEJ1dCB0bC0+bGFzdF9yZXF1ZXN0IGlzIHVuc2V0IGJ5IHRoZQppbnRlcnJ1cHQgY2FsbGJhY2sg
KGlmIHRoZXJlIGlzIG9uZSwgYW5kIHRoZXJlIG1heSBiZSBvbiBhIHdoaW0pLiBTbyBpZgppdCBp
cyB1bnNldCwgd2UgZm9yZ2V0IHRvIGxvb3AgdG8gd2FpdCBvbiB0aGUgZW5naW5lIHBhcmtpbmcg
YW5kIHNvIG91cgpjaGVjayB0aGF0IHRoZSBlbmdpbmUgaXMgcGFya2VkIGlzIHRvbyBlYXJseS4K
Cj4gSSBzZWUgdGhhdCB0aGUgc2VsZnRlc3QgZG9lcyB0d28gdGhpbmdzLCBmaXJzdCBoYXMgaTkx
NV9hY3RpdmVfaXNfaWRsZSAKPiB3aGljaCBuZWVkcyB0aGUgY29udGV4dCB0byBiZSByZXRpcmVk
LgoKUmlnaHQuIEFuZCBjb250ZXh0IHJldGlyZW1lbnQgbmVlZHMgYW4gaWRsZSBiYXJyaWVyLCBo
ZW5jZSB3YWl0aW5nIGZvcgp0aGUga2VybmVsX2NvbnRleHQgdG8gcHJvdmlkZSB0aGUgYmFycmll
ciBvbiBwYXJraW5nLgoKVGhpcyBjb3VsZCBiZSBhIHdhaXQgZm9yIGludGVsX2VuZ2luZV9wbV9p
c19pZGxlIGluc3RlYWQsIEkgY2hvb3NlIHRvCnRyeSBhbmQga2VlcCB0aGUgd2FpdCBleHBsaWNp
dCB0byB0aGUgaWRsZSBiYXJyaWVyLCBhcyB0aGUgdW5kZXJseWluZwpnb2FsIGhlcmUgaXMgdG8g
cHJvdmUgY29udHJvbCBvdmVyIHRoZSBpZGxlIGJhcnJpZXIgZm9yIHRoZSBvcmRpbmFyeQpzdHJ1
Y3QgaW50ZWxfY29udGV4dC4KCj4gU2Vjb25kIGJpdCBpcyBpbnRlbF9lbmdpbmVfcG1faXNfYXdh
a2Ugd2hpY2ggYWxvbmUgd291bGQgYmUgaGFuZGxlZCBieSAKPiBpbnRlbF9lbmdpbmVfZ3RfcG1f
Zmx1c2guCgpSaWdodCwgc28gbG9uZyBhcyB3ZSBzdXJlIHRoZSBlbmdpbmUgaXMgaW4gdGhlIHBy
b2Nlc3Mgb2YgcGFya2luZyAod2hpY2gKaXQgc2hvdWxkIGJlIGhhdmluZyBzZW50IHRoZSBpZGxl
IGJhcnJpZXIgb2JzZXJ2ZWQgYWJvdmUpLgogCj4gU28gdGhlIGZpcnN0IGk5MTVfYWN0aXZlX2lz
X2lkbGUgY2hlY2sgaXMgdGhlIHByb2JsZW1hdGljIG9uZSBJIHRoaW5rLgoKSXQncyBkZWZpbml0
ZWx5IHRoZSBmaXJzdCBvbmUgdG8gdHJpcCBvdmVyIDspCi1DaHJpcwpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
