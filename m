Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C96629312
	for <lists+intel-gfx@lfdr.de>; Fri, 24 May 2019 10:29:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7DB0489FD7;
	Fri, 24 May 2019 08:29:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F96A89FD7
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 May 2019 08:29:21 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16664542-1500050 for multiple; Fri, 24 May 2019 09:29:09 +0100
MIME-Version: 1.0
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <784ff780-a9b2-b997-1e4f-ed47f313d280@linux.intel.com>
References: <20190524064529.20514-1-chris@chris-wilson.co.uk>
 <3806b12a-c2e2-fab4-b038-c8dd33daefd1@linux.intel.com>
 <155868585422.28319.13611154637326086125@skylake-alporthouse-com>
 <784ff780-a9b2-b997-1e4f-ed47f313d280@linux.intel.com>
Message-ID: <155868654679.28319.17830052202613739639@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 24 May 2019 09:29:06 +0100
Subject: Re: [Intel-gfx] [BrownBag] drm/i915/gtt: Neuter the deferred unbind
 callback from gen6_ppgtt_cleanup
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
Cc: Tomi Sarvela <tomi.p.sarvela@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNS0yNCAwOToyMzo0MCkKPiAKPiBPbiAyNC8w
NS8yMDE5IDA5OjE3LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBRdW90aW5nIFR2cnRrbyBVcnN1
bGluICgyMDE5LTA1LTI0IDA5OjEzOjE0KQo+ID4+Cj4gPj4gT24gMjQvMDUvMjAxOSAwNzo0NSwg
Q2hyaXMgV2lsc29uIHdyb3RlOgo+ID4+PiBIYXZpbmcgZGVmZXJyZWQgdGhlIHZtYSBkZXN0cnVj
dGlvbiB0byBhIHdvcmtlciB3aGVyZSB3ZSBjYW4gYWNxdWlyZSB0aGUKPiA+Pj4gc3RydWN0X211
dGV4LCB3ZSBoYXZlIHRvIGF2b2lkIGNoYXNpbmcgYmFjayBpbnRvIHRoZSBub3cgZGVzdHJveWVk
Cj4gPj4+IHBwZ3R0LiBUaGUgcGRfdm1hIGlzIHNwZWNpYWwgaW4gaGF2aW5nIGEgY3VzdG9tIHVu
YmluZCBmdW5jdGlvbiB0byBzY2FuCj4gPj4+IGZvciB1bnVzZWQgcGFnZXMgZGVzcGl0ZSB0aGUg
Vk1BIGl0c2VsZiBiZWluZyBub3Rpb25hbGx5IHBhcnQgb2YgdGhlCj4gPj4+IEdHVFQuIEFzIHN1
Y2gsIHdlIG5lZWQgdG8gZGlzYWJsZSB0aGF0IGNhbGxiYWNrIHRvIGF2b2lkIGEKPiA+Pj4gdXNl
LWFmdGVyLWZyZWUuCj4gPj4+Cj4gPj4+IFRoaXMgdW5mb3J0dW5hdGVseSBibGV3IHVwIHNvIGVh
cmx5IGR1cmluZyBib290IHRoYXQgQ0kgZGVjbGFyZWQgdGhlCj4gPj4+IG1hY2hpbmUgdW5yZWFj
aGFibGUgYXMgb3Bwb3NlZCB0byBiZWluZyB0aGUgbWFqb3IgZmFpbHVyZSBpdCB3YXMuIE9vcHMu
Cj4gPj4+Cj4gPj4+IEZpeGVzOiBkMzYyMjA5OWM3NmYgKCJkcm0vaTkxNS9ndHQ6IEFsd2F5cyBh
Y3F1aXJlIHN0cnVjdF9tdXRleCBmb3IgZ2VuNl9wcGd0dF9jbGVhbnVwIikKPiA+Pj4gU2lnbmVk
LW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gPj4+IENj
OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+ID4+PiBDYzogVG9t
aSBTYXJ2ZWxhIDx0b21pLnAuc2FydmVsYUBpbnRlbC5jb20+Cj4gPj4+IC0tLQo+ID4+PiAgICBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYyB8IDI4ICsrKysrKysrKysrKysrKysr
KysrKysrKysrKysKPiA+Pj4gICAgMSBmaWxlIGNoYW5nZWQsIDI4IGluc2VydGlvbnMoKykKPiA+
Pj4KPiA+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMKPiA+Pj4gaW5kZXggOGQ4YTRi
MGFkNGQ5Li4yNjZiYWExMWRmNjQgMTAwNjQ0Cj4gPj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZ2VtX2d0dC5jCj4gPj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
Z2VtX2d0dC5jCj4gPj4+IEBAIC0xODQ3LDYgKzE4NDcsMzMgQEAgc3RhdGljIHZvaWQgZ2VuNl9w
cGd0dF9jbGVhbnVwX3dvcmsoc3RydWN0IHdvcmtfc3RydWN0ICp3cmspCj4gPj4+ICAgICAgICBr
ZnJlZSh3b3JrKTsKPiA+Pj4gICAgfQo+ID4+PiAgICAKPiA+Pj4gK3N0YXRpYyBpbnQgbm9wX3Nl
dF9wYWdlcyhzdHJ1Y3QgaTkxNV92bWEgKnZtYSkKPiA+Pj4gK3sKPiA+Pj4gKyAgICAgcmV0dXJu
IC1FTk9ERVY7Cj4gPj4+ICt9Cj4gPj4+ICsKPiA+Pj4gK3N0YXRpYyB2b2lkIG5vcF9jbGVhcl9w
YWdlcyhzdHJ1Y3QgaTkxNV92bWEgKnZtYSkKPiA+Pj4gK3sKPiA+Pj4gK30KPiA+Pj4gKwo+ID4+
PiArc3RhdGljIGludCBub3BfYmluZChzdHJ1Y3QgaTkxNV92bWEgKnZtYSwKPiA+Pj4gKyAgICAg
ICAgICAgICAgICAgZW51bSBpOTE1X2NhY2hlX2xldmVsIGNhY2hlX2xldmVsLAo+ID4+PiArICAg
ICAgICAgICAgICAgICB1MzIgdW51c2VkKQo+ID4+PiArewo+ID4+PiArICAgICByZXR1cm4gLUVO
T0RFVjsKPiA+Pj4gK30KPiA+Pj4gKwo+ID4+PiArc3RhdGljIHZvaWQgbm9wX3VuYmluZChzdHJ1
Y3QgaTkxNV92bWEgKnZtYSkKPiA+Pj4gK3sKPiA+Pj4gK30KPiA+Pj4gKwo+ID4+PiArc3RhdGlj
IGNvbnN0IHN0cnVjdCBpOTE1X3ZtYV9vcHMgbm9wX3ZtYV9vcHMgPSB7Cj4gPj4+ICsgICAgIC5z
ZXRfcGFnZXMgPSBub3Bfc2V0X3BhZ2VzLAo+ID4+PiArICAgICAuY2xlYXJfcGFnZXMgPSBub3Bf
Y2xlYXJfcGFnZXMsCj4gPj4+ICsgICAgIC5iaW5kX3ZtYSA9IG5vcF9iaW5kLAo+ID4+PiArICAg
ICAudW5iaW5kX3ZtYSA9IG5vcF91bmJpbmQsCj4gPj4+ICt9Owo+ID4+PiArCj4gPj4+ICAgIHN0
YXRpYyB2b2lkIGdlbjZfcHBndHRfY2xlYW51cChzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2
bSkKPiA+Pj4gICAgewo+ID4+PiAgICAgICAgc3RydWN0IGdlbjZfaHdfcHBndHQgKnBwZ3R0ID0g
dG9fZ2VuNl9wcGd0dChpOTE1X3ZtX3RvX3BwZ3R0KHZtKSk7Cj4gPj4+IEBAIC0xODU1LDYgKzE4
ODIsNyBAQCBzdGF0aWMgdm9pZCBnZW42X3BwZ3R0X2NsZWFudXAoc3RydWN0IGk5MTVfYWRkcmVz
c19zcGFjZSAqdm0pCj4gPj4+ICAgICAgICAvKiBGSVhNRSByZW1vdmUgdGhlIHN0cnVjdF9tdXRl
eCB0byBicmluZyB0aGUgbG9ja2luZyB1bmRlciBjb250cm9sICovCj4gPj4+ICAgICAgICBJTklU
X1dPUksoJndvcmstPmJhc2UsIGdlbjZfcHBndHRfY2xlYW51cF93b3JrKTsKPiA+Pj4gICAgICAg
IHdvcmstPnZtYSA9IHBwZ3R0LT52bWE7Cj4gPj4+ICsgICAgIHdvcmstPnZtYS0+b3BzID0gJm5v
cF92bWFfb3BzOwo+ID4+Cj4gPj4gQ291bGQgd2UgdXNlIHNvbWUgYXNzZXJ0cyBiZWZvcmUgb3Zl
cnJpZGluZyB0aGUgdm1hIG9wcz8gTGlrZQo+ID4+IEdFTV9CVUdfT04odm1hLT5wYWdlcyk/IEFu
ZCBzb21ldGhpbmcgZm9yIHN0aWxsIGJvdW5kPwo+ID4gCj4gPiBJdCB0ZWNobmljYWxseSBzdGls
bCBpcyBib3VuZCBhcyBpdCBpcyBpbiB0aGUgR0dUVCBidXQgY3VycmVudGx5Cj4gPiB1bnBpbm5l
ZCAtLSB0aGF0IHdpbGwgYmUgY2hlY2tlZCBvbiBkZXN0cm95LCBpdCdzIGp1c3Qgd2UgYWxzbyBn
ZXQgYW4KPiA+IHVuYmluZCBjYWxsYmFjay4gdm1hLT5wYWdlcyBkb2Vzbid0IGV4aXN0IGZvciB0
aGlzIChzZXQgdG8gRVJSX1BUUikuCj4gCj4gSWYgd2UgYXJlIGdldHRpbmcgdGhlIHVuYmluZCBj
YWxsYmFjayBhbmQgd2Ugbm9wLWVkIGl0LCB3aG8gd2lsbCAKPiBhY3R1YWxseSBkbyBpdCdzIGpv
Yj8KClRoZSBjYWxsYmFjayBpcyBqdXN0IGEgaG9vayBmb3IgdXMgdG8gcHJ1bmUgd2l0aGluIHRo
ZSBwcGd0dC4KSXQgc3RpbGwgaXMgcmVtb3ZlZCBmcm9tIEdHVFQgYnkgaTkxNV92bWFfdW5iaW5k
KCkuCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
