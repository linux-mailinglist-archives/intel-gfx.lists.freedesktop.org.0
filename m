Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09C8B7198F
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jul 2019 15:41:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2993A6E29E;
	Tue, 23 Jul 2019 13:41:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 109C16E29E
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jul 2019 13:41:26 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17535622-1500050 for multiple; Tue, 23 Jul 2019 14:41:22 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190718124220.26623-1-chris@chris-wilson.co.uk>
 <4b24f426-7817-1805-0c09-b93c13221b16@linux.intel.com>
 <156383196297.31349.6122104767892051649@skylake-alporthouse-com>
 <5f4d4647-2cf0-b3cd-b5ef-b3d28f424f01@linux.intel.com>
In-Reply-To: <5f4d4647-2cf0-b3cd-b5ef-b3d28f424f01@linux.intel.com>
Message-ID: <156388928075.31349.11704726182071514131@skylake-alporthouse-com>
Date: Tue, 23 Jul 2019 14:41:20 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Move global activity tracking
 from GEM to GT
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNy0yMyAxNDozNDoyNykKPiAKPiBPbiAyMi8w
Ny8yMDE5IDIyOjQ2LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBRdW90aW5nIFR2cnRrbyBVcnN1
bGluICgyMDE5LTA3LTIyIDEzOjE2OjM4KQo+ID4+Cj4gPj4gT24gMTgvMDcvMjAxOSAxMzo0Miwg
Q2hyaXMgV2lsc29uIHdyb3RlOgo+ID4+PiBBcyBvdXIgZ2xvYmFsIHVucGFyay9wYXJrIGtlZXAg
dHJhY2sgb2YgdGhlIG51bWJlciBvZiBhY3RpdmUgdXNlcnMsIHdlCj4gPj4+IGNhbiBzaW1wbHkg
bW92ZSB0aGUgYWNjb3VudGluZyBmcm9tIHRoZSBHRU0gbGF5ZXIgdG8gdGhlIGJhc2UgR1QgbGF5
ZXIuCj4gPj4+IEl0IHdhcyBwbGFjZWQgb3JpZ2luYWxseSBpbnNpZGUgR0VNIHRvIGJlbmVmaXQg
ZnJvbSB0aGUgMTAwbXMgZXh0cmEKPiA+Pj4gZGVsYXkgb24gaWRsZW5lc3MsIGJ1dCB0aGF0IGhh
cyBiZWVuIGVsaW1pbmF0ZWQgYW5kIG5vdyB0aGVyZSBpcyBubwo+ID4+PiBzdWJzdGFudGl2ZSBk
aWZmZXJlbmNlIGJldHdlZW4gdGhlIGxheWVycy4gSW4gbW92aW5nIGl0LCB3ZSBtb3ZlIGFub3Ro
ZXIKPiA+Pj4gcGllY2Ugb2YgdGhlIHB1enpsZSBvdXQgZnJvbSB1bmRlcm5lYXRoIHN0cnVjdF9t
dXRleC4KPiA+Pj4KPiA+Pj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJp
cy13aWxzb24uY28udWs+Cj4gPj4+IENjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5A
aW50ZWwuY29tPgo+ID4+PiAtLS0KPiA+Pj4gICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5
MTVfZ2VtX3BtLmMgfCA0IC0tLS0KPiA+Pj4gICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfZ3RfcG0uYyAgfCA1ICsrKysrCj4gPj4+ICAgIDIgZmlsZXMgY2hhbmdlZCwgNSBpbnNlcnRp
b25zKCspLCA0IGRlbGV0aW9ucygtKQo+ID4+Pgo+ID4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3BtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
aTkxNV9nZW1fcG0uYwo+ID4+PiBpbmRleCA4ZmFmMjYyMjc4YWUuLjFhZmIwNDY2MDcyNSAxMDA2
NDQKPiA+Pj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3BtLmMKPiA+
Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3BtLmMKPiA+Pj4gQEAg
LTksNyArOSw2IEBACj4gPj4+ICAgICNpbmNsdWRlICJndC9pbnRlbF9ndF9wbS5oIgo+ID4+PiAg
ICAKPiA+Pj4gICAgI2luY2x1ZGUgImk5MTVfZHJ2LmgiCj4gPj4+IC0jaW5jbHVkZSAiaTkxNV9n
bG9iYWxzLmgiCj4gPj4+ICAgIAo+ID4+PiAgICBzdGF0aWMgdm9pZCBjYWxsX2lkbGVfYmFycmll
cnMoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQo+ID4+PiAgICB7Cj4gPj4+IEBAIC00
MSw4ICs0MCw2IEBAIHN0YXRpYyB2b2lkIGk5MTVfZ2VtX3Bhcmsoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmk5MTUpCj4gPj4+ICAgIAo+ID4+PiAgICAgICAgaW50ZWxfdGltZWxpbmVzX3Bhcmso
aTkxNSk7Cj4gPj4+ICAgICAgICBpOTE1X3ZtYV9wYXJrZWQoaTkxNSk7Cj4gPj4+IC0KPiA+Pj4g
LSAgICAgaTkxNV9nbG9iYWxzX3BhcmsoKTsKPiA+Pgo+ID4+IEJlbmVmaXQgb2YgdGhpcyBwbGFj
ZW1lbnQgd2FzIGFsc28gdGhhdCB3aGF0IHdpbGwgYmUgZnJlZWQgb24gcGFya2luZwo+ID4+IHdh
cyBmcmVlZCBieSB0aGlzIHBvaW50IHNvIHNocmlua2luZyBvZiBzbGFicyBpcyBlZmZlY3RpdmUu
IElmIHlvdSBtb3ZlCj4gPj4gaXQgdG8gZ3QgcGFya2luZyB0aGVuIHRoYXQgcnVucyB0byBlYXJs
eS4gU28gSSB0aGluayBpdCBpcyBiZXR0ZXIgdGhhdAo+ID4+IGl0IHN0YXlzIHdoZXJlIGl0IGlz
Lgo+ID4gCj4gPiBCdXQgdGhlcmUncyBub3RoaW5nIGhlcmUuIFlvdSBhcmUgaW1hZ2luZyB0aGlu
Z3MuIGNhbGxfaWRsZV9iYXJyaWVycyBhbmQKPiA+IGJhdGNoX3Bvb2wgYXJlIGluIGVuZ2luZV9w
YXJrLCB0aW1lbGluZXNfcGFyayBpcyBnb25lLCBhbmQgdm1hX3BhcmtlZCBpcwo+ID4gbm93IGEg
dGltZXIuCj4gCj4gSSB3YXMgdGhpbmtpbmcgYWJvdXQgc2xhYiBzaHJpbmtlcnMuIFRoZXkgZG8g
c2VlbSB0byBiZSBjYWxsZWQgZnJvbSAKPiBpOTE1X2dsb2JhbHNfcGFyayBvciBJIGFtIHN0aWxs
IGltYWdpbmluZz8KCk5vLCB0aGV5IGFyZS4gSSdtIHRyeWluZyB0byB0aWUgdG9nZXRoZXIgdGhl
IGZ1dHVyZSBzdHJhbmRzIHdoZXJlCmk5MTVfZ2VtX3BhcmsoKSBpcyBlbXB0eSwgYW5kIGFsbCB0
aGUgd29yayB3ZSBoYXZlIGlzIGluIGVuZ2luZV9wYXJrIC8KZ3RfcGFyaywgd2l0aCB0aGUgb3V0
bGllciBiZWluZyB0aGUgdXNlciB2bWEgY2FjaGUgd2hpY2ggSSBwbGFuIHRvIHB1dAppbnNpZGUg
YSB0aW1lci4gRnJvbSB0aGF0IHBvdiwgSSB0aGluayB0aGUgdm1hIGNhY2hlIGl0c2VsZiB3aWxs
IHRha2UgYQpnbG9iYWxzIHJlZmVyZW5jZS4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
