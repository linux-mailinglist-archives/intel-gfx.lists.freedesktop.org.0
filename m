Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 713B42933D
	for <lists+intel-gfx@lfdr.de>; Fri, 24 May 2019 10:36:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF4ED6E0A0;
	Fri, 24 May 2019 08:36:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E101D6E0A0
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 May 2019 08:36:37 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16664714-1500050 for multiple; Fri, 24 May 2019 09:36:33 +0100
MIME-Version: 1.0
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <0cc2c0e6-5d0a-1286-2f4a-36a69e2dca19@linux.intel.com>
References: <20190524064529.20514-1-chris@chris-wilson.co.uk>
 <3806b12a-c2e2-fab4-b038-c8dd33daefd1@linux.intel.com>
 <155868585422.28319.13611154637326086125@skylake-alporthouse-com>
 <784ff780-a9b2-b997-1e4f-ed47f313d280@linux.intel.com>
 <155868654679.28319.17830052202613739639@skylake-alporthouse-com>
 <0cc2c0e6-5d0a-1286-2f4a-36a69e2dca19@linux.intel.com>
Message-ID: <155868699138.28319.7611854554635469420@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 24 May 2019 09:36:31 +0100
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNS0yNCAwOTozMTo0NSkKPiAKPiBPbiAyNC8w
NS8yMDE5IDA5OjI5LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBRdW90aW5nIFR2cnRrbyBVcnN1
bGluICgyMDE5LTA1LTI0IDA5OjIzOjQwKQo+ID4+Cj4gPj4gT24gMjQvMDUvMjAxOSAwOToxNywg
Q2hyaXMgV2lsc29uIHdyb3RlOgo+ID4+PiBRdW90aW5nIFR2cnRrbyBVcnN1bGluICgyMDE5LTA1
LTI0IDA5OjEzOjE0KQo+ID4+Pj4KPiA+Pj4+IE9uIDI0LzA1LzIwMTkgMDc6NDUsIENocmlzIFdp
bHNvbiB3cm90ZToKPiA+Pj4+PiBIYXZpbmcgZGVmZXJyZWQgdGhlIHZtYSBkZXN0cnVjdGlvbiB0
byBhIHdvcmtlciB3aGVyZSB3ZSBjYW4gYWNxdWlyZSB0aGUKPiA+Pj4+PiBzdHJ1Y3RfbXV0ZXgs
IHdlIGhhdmUgdG8gYXZvaWQgY2hhc2luZyBiYWNrIGludG8gdGhlIG5vdyBkZXN0cm95ZWQKPiA+
Pj4+PiBwcGd0dC4gVGhlIHBkX3ZtYSBpcyBzcGVjaWFsIGluIGhhdmluZyBhIGN1c3RvbSB1bmJp
bmQgZnVuY3Rpb24gdG8gc2Nhbgo+ID4+Pj4+IGZvciB1bnVzZWQgcGFnZXMgZGVzcGl0ZSB0aGUg
Vk1BIGl0c2VsZiBiZWluZyBub3Rpb25hbGx5IHBhcnQgb2YgdGhlCj4gPj4+Pj4gR0dUVC4gQXMg
c3VjaCwgd2UgbmVlZCB0byBkaXNhYmxlIHRoYXQgY2FsbGJhY2sgdG8gYXZvaWQgYQo+ID4+Pj4+
IHVzZS1hZnRlci1mcmVlLgo+ID4+Pj4+Cj4gPj4+Pj4gVGhpcyB1bmZvcnR1bmF0ZWx5IGJsZXcg
dXAgc28gZWFybHkgZHVyaW5nIGJvb3QgdGhhdCBDSSBkZWNsYXJlZCB0aGUKPiA+Pj4+PiBtYWNo
aW5lIHVucmVhY2hhYmxlIGFzIG9wcG9zZWQgdG8gYmVpbmcgdGhlIG1ham9yIGZhaWx1cmUgaXQg
d2FzLiBPb3BzLgo+ID4+Pj4+Cj4gPj4+Pj4gRml4ZXM6IGQzNjIyMDk5Yzc2ZiAoImRybS9pOTE1
L2d0dDogQWx3YXlzIGFjcXVpcmUgc3RydWN0X211dGV4IGZvciBnZW42X3BwZ3R0X2NsZWFudXAi
KQo+ID4+Pj4+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29u
LmNvLnVrPgo+ID4+Pj4+IENjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwu
Y29tPgo+ID4+Pj4+IENjOiBUb21pIFNhcnZlbGEgPHRvbWkucC5zYXJ2ZWxhQGludGVsLmNvbT4K
PiA+Pj4+PiAtLS0KPiA+Pj4+PiAgICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0
LmMgfCAyOCArKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4gPj4+Pj4gICAgIDEgZmlsZSBj
aGFuZ2VkLCAyOCBpbnNlcnRpb25zKCspCj4gPj4+Pj4KPiA+Pj4+PiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2dlbV9ndHQuYwo+ID4+Pj4+IGluZGV4IDhkOGE0YjBhZDRkOS4uMjY2YmFhMTFkZjY0IDEw
MDY0NAo+ID4+Pj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCj4g
Pj4+Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMKPiA+Pj4+PiBA
QCAtMTg0Nyw2ICsxODQ3LDMzIEBAIHN0YXRpYyB2b2lkIGdlbjZfcHBndHRfY2xlYW51cF93b3Jr
KHN0cnVjdCB3b3JrX3N0cnVjdCAqd3JrKQo+ID4+Pj4+ICAgICAgICAga2ZyZWUod29yayk7Cj4g
Pj4+Pj4gICAgIH0KPiA+Pj4+PiAgICAgCj4gPj4+Pj4gK3N0YXRpYyBpbnQgbm9wX3NldF9wYWdl
cyhzdHJ1Y3QgaTkxNV92bWEgKnZtYSkKPiA+Pj4+PiArewo+ID4+Pj4+ICsgICAgIHJldHVybiAt
RU5PREVWOwo+ID4+Pj4+ICt9Cj4gPj4+Pj4gKwo+ID4+Pj4+ICtzdGF0aWMgdm9pZCBub3BfY2xl
YXJfcGFnZXMoc3RydWN0IGk5MTVfdm1hICp2bWEpCj4gPj4+Pj4gK3sKPiA+Pj4+PiArfQo+ID4+
Pj4+ICsKPiA+Pj4+PiArc3RhdGljIGludCBub3BfYmluZChzdHJ1Y3QgaTkxNV92bWEgKnZtYSwK
PiA+Pj4+PiArICAgICAgICAgICAgICAgICBlbnVtIGk5MTVfY2FjaGVfbGV2ZWwgY2FjaGVfbGV2
ZWwsCj4gPj4+Pj4gKyAgICAgICAgICAgICAgICAgdTMyIHVudXNlZCkKPiA+Pj4+PiArewo+ID4+
Pj4+ICsgICAgIHJldHVybiAtRU5PREVWOwo+ID4+Pj4+ICt9Cj4gPj4+Pj4gKwo+ID4+Pj4+ICtz
dGF0aWMgdm9pZCBub3BfdW5iaW5kKHN0cnVjdCBpOTE1X3ZtYSAqdm1hKQo+ID4+Pj4+ICt7Cj4g
Pj4+Pj4gK30KPiA+Pj4+PiArCj4gPj4+Pj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3QgaTkxNV92bWFf
b3BzIG5vcF92bWFfb3BzID0gewo+ID4+Pj4+ICsgICAgIC5zZXRfcGFnZXMgPSBub3Bfc2V0X3Bh
Z2VzLAo+ID4+Pj4+ICsgICAgIC5jbGVhcl9wYWdlcyA9IG5vcF9jbGVhcl9wYWdlcywKPiA+Pj4+
PiArICAgICAuYmluZF92bWEgPSBub3BfYmluZCwKPiA+Pj4+PiArICAgICAudW5iaW5kX3ZtYSA9
IG5vcF91bmJpbmQsCj4gPj4+Pj4gK307Cj4gPj4+Pj4gKwo+ID4+Pj4+ICAgICBzdGF0aWMgdm9p
ZCBnZW42X3BwZ3R0X2NsZWFudXAoc3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSAqdm0pCj4gPj4+
Pj4gICAgIHsKPiA+Pj4+PiAgICAgICAgIHN0cnVjdCBnZW42X2h3X3BwZ3R0ICpwcGd0dCA9IHRv
X2dlbjZfcHBndHQoaTkxNV92bV90b19wcGd0dCh2bSkpOwo+ID4+Pj4+IEBAIC0xODU1LDYgKzE4
ODIsNyBAQCBzdGF0aWMgdm9pZCBnZW42X3BwZ3R0X2NsZWFudXAoc3RydWN0IGk5MTVfYWRkcmVz
c19zcGFjZSAqdm0pCj4gPj4+Pj4gICAgICAgICAvKiBGSVhNRSByZW1vdmUgdGhlIHN0cnVjdF9t
dXRleCB0byBicmluZyB0aGUgbG9ja2luZyB1bmRlciBjb250cm9sICovCj4gPj4+Pj4gICAgICAg
ICBJTklUX1dPUksoJndvcmstPmJhc2UsIGdlbjZfcHBndHRfY2xlYW51cF93b3JrKTsKPiA+Pj4+
PiAgICAgICAgIHdvcmstPnZtYSA9IHBwZ3R0LT52bWE7Cj4gPj4+Pj4gKyAgICAgd29yay0+dm1h
LT5vcHMgPSAmbm9wX3ZtYV9vcHM7Cj4gPj4+Pgo+ID4+Pj4gQ291bGQgd2UgdXNlIHNvbWUgYXNz
ZXJ0cyBiZWZvcmUgb3ZlcnJpZGluZyB0aGUgdm1hIG9wcz8gTGlrZQo+ID4+Pj4gR0VNX0JVR19P
Tih2bWEtPnBhZ2VzKT8gQW5kIHNvbWV0aGluZyBmb3Igc3RpbGwgYm91bmQ/Cj4gPj4+Cj4gPj4+
IEl0IHRlY2huaWNhbGx5IHN0aWxsIGlzIGJvdW5kIGFzIGl0IGlzIGluIHRoZSBHR1RUIGJ1dCBj
dXJyZW50bHkKPiA+Pj4gdW5waW5uZWQgLS0gdGhhdCB3aWxsIGJlIGNoZWNrZWQgb24gZGVzdHJv
eSwgaXQncyBqdXN0IHdlIGFsc28gZ2V0IGFuCj4gPj4+IHVuYmluZCBjYWxsYmFjay4gdm1hLT5w
YWdlcyBkb2Vzbid0IGV4aXN0IGZvciB0aGlzIChzZXQgdG8gRVJSX1BUUikuCj4gPj4KPiA+PiBJ
ZiB3ZSBhcmUgZ2V0dGluZyB0aGUgdW5iaW5kIGNhbGxiYWNrIGFuZCB3ZSBub3AtZWQgaXQsIHdo
byB3aWxsCj4gPj4gYWN0dWFsbHkgZG8gaXQncyBqb2I/Cj4gPiAKPiA+IFRoZSBjYWxsYmFjayBp
cyBqdXN0IGEgaG9vayBmb3IgdXMgdG8gcHJ1bmUgd2l0aGluIHRoZSBwcGd0dC4KPiA+IEl0IHN0
aWxsIGlzIHJlbW92ZWQgZnJvbSBHR1RUIGJ5IGk5MTVfdm1hX3VuYmluZCgpLgo+IAo+IFNvIGl0
IG5lZWRzIEdFTV9CVUdfT04ocHBndHQtPnNjYW5fZm9yX3VudXNlZF9wdCkgYmVmb3JlIG92ZXJy
aWRpbmcgdGhlIAo+IHVuYmluZD8KCk5vLiBUaGV5IGdldCBmcmVlZCBieSB0aGUgY2xlYW51cCBp
dHNlbGYuIFRoZSBzY2FuIGlzIGp1c3QgYW4Kb3Bwb3J0dW5pc3RpYyBwcnVuZSBpZiBlaXRoZXIg
dGhlIGNvbnRleHQvbW0gaXMgZXZpY3RlZCBidXQgc3RpbGwgYWxpdmUuCi1DaHJpcwpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
