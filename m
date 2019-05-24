Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2055A2941B
	for <lists+intel-gfx@lfdr.de>; Fri, 24 May 2019 11:01:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5647689D40;
	Fri, 24 May 2019 09:01:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC94089D40
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 May 2019 09:01:55 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16665182-1500050 for multiple; Fri, 24 May 2019 10:01:44 +0100
MIME-Version: 1.0
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <27f51955-016a-bca7-efef-16b962965dce@linux.intel.com>
References: <20190524064529.20514-1-chris@chris-wilson.co.uk>
 <3806b12a-c2e2-fab4-b038-c8dd33daefd1@linux.intel.com>
 <155868585422.28319.13611154637326086125@skylake-alporthouse-com>
 <784ff780-a9b2-b997-1e4f-ed47f313d280@linux.intel.com>
 <155868654679.28319.17830052202613739639@skylake-alporthouse-com>
 <0cc2c0e6-5d0a-1286-2f4a-36a69e2dca19@linux.intel.com>
 <155868699138.28319.7611854554635469420@skylake-alporthouse-com>
 <68cf1795-b914-40b3-645c-0c198e7859db@linux.intel.com>
 <27f51955-016a-bca7-efef-16b962965dce@linux.intel.com>
Message-ID: <155868850197.28319.10329128001061947761@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 24 May 2019 10:01:42 +0100
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNS0yNCAwOTo1Nzo0MikKPiAKPiBPbiAyNC8w
NS8yMDE5IDA5OjUxLCBUdnJ0a28gVXJzdWxpbiB3cm90ZToKPiA+IAo+ID4gT24gMjQvMDUvMjAx
OSAwOTozNiwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4+IFF1b3RpbmcgVHZydGtvIFVyc3VsaW4g
KDIwMTktMDUtMjQgMDk6MzE6NDUpCj4gPj4+Cj4gPj4+IE9uIDI0LzA1LzIwMTkgMDk6MjksIENo
cmlzIFdpbHNvbiB3cm90ZToKPiA+Pj4+IFF1b3RpbmcgVHZydGtvIFVyc3VsaW4gKDIwMTktMDUt
MjQgMDk6MjM6NDApCj4gPj4+Pj4KPiA+Pj4+PiBPbiAyNC8wNS8yMDE5IDA5OjE3LCBDaHJpcyBX
aWxzb24gd3JvdGU6Cj4gPj4+Pj4+IFF1b3RpbmcgVHZydGtvIFVyc3VsaW4gKDIwMTktMDUtMjQg
MDk6MTM6MTQpCj4gPj4+Pj4+Pgo+ID4+Pj4+Pj4gT24gMjQvMDUvMjAxOSAwNzo0NSwgQ2hyaXMg
V2lsc29uIHdyb3RlOgo+ID4+Pj4+Pj4+IEhhdmluZyBkZWZlcnJlZCB0aGUgdm1hIGRlc3RydWN0
aW9uIHRvIGEgd29ya2VyIHdoZXJlIHdlIGNhbiAKPiA+Pj4+Pj4+PiBhY3F1aXJlIHRoZQo+ID4+
Pj4+Pj4+IHN0cnVjdF9tdXRleCwgd2UgaGF2ZSB0byBhdm9pZCBjaGFzaW5nIGJhY2sgaW50byB0
aGUgbm93IGRlc3Ryb3llZAo+ID4+Pj4+Pj4+IHBwZ3R0LiBUaGUgcGRfdm1hIGlzIHNwZWNpYWwg
aW4gaGF2aW5nIGEgY3VzdG9tIHVuYmluZCBmdW5jdGlvbiAKPiA+Pj4+Pj4+PiB0byBzY2FuCj4g
Pj4+Pj4+Pj4gZm9yIHVudXNlZCBwYWdlcyBkZXNwaXRlIHRoZSBWTUEgaXRzZWxmIGJlaW5nIG5v
dGlvbmFsbHkgcGFydCBvZiAKPiA+Pj4+Pj4+PiB0aGUKPiA+Pj4+Pj4+PiBHR1RULiBBcyBzdWNo
LCB3ZSBuZWVkIHRvIGRpc2FibGUgdGhhdCBjYWxsYmFjayB0byBhdm9pZCBhCj4gPj4+Pj4+Pj4g
dXNlLWFmdGVyLWZyZWUuCj4gPj4+Pj4+Pj4KPiA+Pj4+Pj4+PiBUaGlzIHVuZm9ydHVuYXRlbHkg
YmxldyB1cCBzbyBlYXJseSBkdXJpbmcgYm9vdCB0aGF0IENJIGRlY2xhcmVkIAo+ID4+Pj4+Pj4+
IHRoZQo+ID4+Pj4+Pj4+IG1hY2hpbmUgdW5yZWFjaGFibGUgYXMgb3Bwb3NlZCB0byBiZWluZyB0
aGUgbWFqb3IgZmFpbHVyZSBpdCAKPiA+Pj4+Pj4+PiB3YXMuIE9vcHMuCj4gPj4+Pj4+Pj4KPiA+
Pj4+Pj4+PiBGaXhlczogZDM2MjIwOTljNzZmICgiZHJtL2k5MTUvZ3R0OiBBbHdheXMgYWNxdWly
ZSBzdHJ1Y3RfbXV0ZXggCj4gPj4+Pj4+Pj4gZm9yIGdlbjZfcHBndHRfY2xlYW51cCIpCj4gPj4+
Pj4+Pj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28u
dWs+Cj4gPj4+Pj4+Pj4gQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5j
b20+Cj4gPj4+Pj4+Pj4gQ2M6IFRvbWkgU2FydmVsYSA8dG9taS5wLnNhcnZlbGFAaW50ZWwuY29t
Pgo+ID4+Pj4+Pj4+IC0tLQo+ID4+Pj4+Pj4+IMKgwqDCoMKgIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZ2VtX2d0dC5jIHwgMjggCj4gPj4+Pj4+Pj4gKysrKysrKysrKysrKysrKysrKysrKysr
KysrKwo+ID4+Pj4+Pj4+IMKgwqDCoMKgIDEgZmlsZSBjaGFuZ2VkLCAyOCBpbnNlcnRpb25zKCsp
Cj4gPj4+Pj4+Pj4KPiA+Pj4+Pj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9nZW1fZ3R0LmMgCj4gPj4+Pj4+Pj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dl
bV9ndHQuYwo+ID4+Pj4+Pj4+IGluZGV4IDhkOGE0YjBhZDRkOS4uMjY2YmFhMTFkZjY0IDEwMDY0
NAo+ID4+Pj4+Pj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCj4g
Pj4+Pj4+Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMKPiA+Pj4+
Pj4+PiBAQCAtMTg0Nyw2ICsxODQ3LDMzIEBAIHN0YXRpYyB2b2lkIAo+ID4+Pj4+Pj4+IGdlbjZf
cHBndHRfY2xlYW51cF93b3JrKHN0cnVjdCB3b3JrX3N0cnVjdCAqd3JrKQo+ID4+Pj4+Pj4+IMKg
wqDCoMKgwqDCoMKgwqAga2ZyZWUod29yayk7Cj4gPj4+Pj4+Pj4gwqDCoMKgwqAgfQo+ID4+Pj4+
Pj4+ICtzdGF0aWMgaW50IG5vcF9zZXRfcGFnZXMoc3RydWN0IGk5MTVfdm1hICp2bWEpCj4gPj4+
Pj4+Pj4gK3sKPiA+Pj4+Pj4+PiArwqDCoMKgwqAgcmV0dXJuIC1FTk9ERVY7Cj4gPj4+Pj4+Pj4g
K30KPiA+Pj4+Pj4+PiArCj4gPj4+Pj4+Pj4gK3N0YXRpYyB2b2lkIG5vcF9jbGVhcl9wYWdlcyhz
dHJ1Y3QgaTkxNV92bWEgKnZtYSkKPiA+Pj4+Pj4+PiArewo+ID4+Pj4+Pj4+ICt9Cj4gPj4+Pj4+
Pj4gKwo+ID4+Pj4+Pj4+ICtzdGF0aWMgaW50IG5vcF9iaW5kKHN0cnVjdCBpOTE1X3ZtYSAqdm1h
LAo+ID4+Pj4+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBlbnVtIGk5MTVf
Y2FjaGVfbGV2ZWwgY2FjaGVfbGV2ZWwsCj4gPj4+Pj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIHUzMiB1bnVzZWQpCj4gPj4+Pj4+Pj4gK3sKPiA+Pj4+Pj4+PiArwqDCoMKg
wqAgcmV0dXJuIC1FTk9ERVY7Cj4gPj4+Pj4+Pj4gK30KPiA+Pj4+Pj4+PiArCj4gPj4+Pj4+Pj4g
K3N0YXRpYyB2b2lkIG5vcF91bmJpbmQoc3RydWN0IGk5MTVfdm1hICp2bWEpCj4gPj4+Pj4+Pj4g
K3sKPiA+Pj4+Pj4+PiArfQo+ID4+Pj4+Pj4+ICsKPiA+Pj4+Pj4+PiArc3RhdGljIGNvbnN0IHN0
cnVjdCBpOTE1X3ZtYV9vcHMgbm9wX3ZtYV9vcHMgPSB7Cj4gPj4+Pj4+Pj4gK8KgwqDCoMKgIC5z
ZXRfcGFnZXMgPSBub3Bfc2V0X3BhZ2VzLAo+ID4+Pj4+Pj4+ICvCoMKgwqDCoCAuY2xlYXJfcGFn
ZXMgPSBub3BfY2xlYXJfcGFnZXMsCj4gPj4+Pj4+Pj4gK8KgwqDCoMKgIC5iaW5kX3ZtYSA9IG5v
cF9iaW5kLAo+ID4+Pj4+Pj4+ICvCoMKgwqDCoCAudW5iaW5kX3ZtYSA9IG5vcF91bmJpbmQsCj4g
Pj4+Pj4+Pj4gK307Cj4gPj4+Pj4+Pj4gKwo+ID4+Pj4+Pj4+IMKgwqDCoMKgIHN0YXRpYyB2b2lk
IGdlbjZfcHBndHRfY2xlYW51cChzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2bSkKPiA+Pj4+
Pj4+PiDCoMKgwqDCoCB7Cj4gPj4+Pj4+Pj4gwqDCoMKgwqDCoMKgwqDCoCBzdHJ1Y3QgZ2VuNl9o
d19wcGd0dCAqcHBndHQgPSAKPiA+Pj4+Pj4+PiB0b19nZW42X3BwZ3R0KGk5MTVfdm1fdG9fcHBn
dHQodm0pKTsKPiA+Pj4+Pj4+PiBAQCAtMTg1NSw2ICsxODgyLDcgQEAgc3RhdGljIHZvaWQgZ2Vu
Nl9wcGd0dF9jbGVhbnVwKHN0cnVjdCAKPiA+Pj4+Pj4+PiBpOTE1X2FkZHJlc3Nfc3BhY2UgKnZt
KQo+ID4+Pj4+Pj4+IMKgwqDCoMKgwqDCoMKgwqAgLyogRklYTUUgcmVtb3ZlIHRoZSBzdHJ1Y3Rf
bXV0ZXggdG8gYnJpbmcgdGhlIGxvY2tpbmcgCj4gPj4+Pj4+Pj4gdW5kZXIgY29udHJvbCAqLwo+
ID4+Pj4+Pj4+IMKgwqDCoMKgwqDCoMKgwqAgSU5JVF9XT1JLKCZ3b3JrLT5iYXNlLCBnZW42X3Bw
Z3R0X2NsZWFudXBfd29yayk7Cj4gPj4+Pj4+Pj4gwqDCoMKgwqDCoMKgwqDCoCB3b3JrLT52bWEg
PSBwcGd0dC0+dm1hOwo+ID4+Pj4+Pj4+ICvCoMKgwqDCoCB3b3JrLT52bWEtPm9wcyA9ICZub3Bf
dm1hX29wczsKPiA+Pj4+Pj4+Cj4gPj4+Pj4+PiBDb3VsZCB3ZSB1c2Ugc29tZSBhc3NlcnRzIGJl
Zm9yZSBvdmVycmlkaW5nIHRoZSB2bWEgb3BzPyBMaWtlCj4gPj4+Pj4+PiBHRU1fQlVHX09OKHZt
YS0+cGFnZXMpPyBBbmQgc29tZXRoaW5nIGZvciBzdGlsbCBib3VuZD8KPiA+Pj4+Pj4KPiA+Pj4+
Pj4gSXQgdGVjaG5pY2FsbHkgc3RpbGwgaXMgYm91bmQgYXMgaXQgaXMgaW4gdGhlIEdHVFQgYnV0
IGN1cnJlbnRseQo+ID4+Pj4+PiB1bnBpbm5lZCAtLSB0aGF0IHdpbGwgYmUgY2hlY2tlZCBvbiBk
ZXN0cm95LCBpdCdzIGp1c3Qgd2UgYWxzbyBnZXQgYW4KPiA+Pj4+Pj4gdW5iaW5kIGNhbGxiYWNr
LiB2bWEtPnBhZ2VzIGRvZXNuJ3QgZXhpc3QgZm9yIHRoaXMgKHNldCB0byBFUlJfUFRSKS4KPiA+
Pj4+Pgo+ID4+Pj4+IElmIHdlIGFyZSBnZXR0aW5nIHRoZSB1bmJpbmQgY2FsbGJhY2sgYW5kIHdl
IG5vcC1lZCBpdCwgd2hvIHdpbGwKPiA+Pj4+PiBhY3R1YWxseSBkbyBpdCdzIGpvYj8KPiA+Pj4+
Cj4gPj4+PiBUaGUgY2FsbGJhY2sgaXMganVzdCBhIGhvb2sgZm9yIHVzIHRvIHBydW5lIHdpdGhp
biB0aGUgcHBndHQuCj4gPj4+PiBJdCBzdGlsbCBpcyByZW1vdmVkIGZyb20gR0dUVCBieSBpOTE1
X3ZtYV91bmJpbmQoKS4KPiA+Pj4KPiA+Pj4gU28gaXQgbmVlZHMgR0VNX0JVR19PTihwcGd0dC0+
c2Nhbl9mb3JfdW51c2VkX3B0KSBiZWZvcmUgb3ZlcnJpZGluZyB0aGUKPiA+Pj4gdW5iaW5kPwo+
ID4+Cj4gPj4gTm8uIFRoZXkgZ2V0IGZyZWVkIGJ5IHRoZSBjbGVhbnVwIGl0c2VsZi4gVGhlIHNj
YW4gaXMganVzdCBhbgo+ID4+IG9wcG9ydHVuaXN0aWMgcHJ1bmUgaWYgZWl0aGVyIHRoZSBjb250
ZXh0L21tIGlzIGV2aWN0ZWQgYnV0IHN0aWxsIGFsaXZlLgo+ID4gCj4gPiBUaGVuIHRoZSBzYW1l
IGFzc2VydCBpbiBnZW42X3BwZ3R0X2NsZWFudXBfd29yaz8gOikKPiAKPiBPa2F5IHBwZ3R0IGlz
IGdvbmUgc28gY2FuJ3QgZG8gaXQuLiBhbm5veWluZy4uIENsZWFudXAgc2VlbXMgdG8gc3VwcG9y
dCAKPiB5b3VyIGNsYWltcyBidXQgSSB0aGluayB3ZSBuZWVkIGEgQkZDIChiaWcgZmF0IGNvbW1l
bnQpIGFib3ZlIHRoZSB2bWEgCj4gb3BzIG92ZXJyaWRlIHRvIGV4cGxhaW5zIHRoaXMuIFdpdGgg
dGhhdDoKCkl0IGhhcyBGSVhNRSEgSSByZWFsbHkgZG8gaG9wZSB0aGlzIGlzIHNob3J0IHRlcm0u
Li4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
