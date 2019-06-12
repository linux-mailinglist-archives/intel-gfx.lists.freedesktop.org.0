Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 68B9B4236A
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jun 2019 13:05:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34DA589487;
	Wed, 12 Jun 2019 11:05:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BBB7189487
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Jun 2019 11:04:58 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16875240-1500050 for multiple; Wed, 12 Jun 2019 12:04:47 +0100
MIME-Version: 1.0
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <878su79ih4.fsf@gaia.fi.intel.com>
References: <20190612085246.16374-1-chris@chris-wilson.co.uk>
 <878su79ih4.fsf@gaia.fi.intel.com>
Message-ID: <156033748646.2193.10433216983935553763@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 12 Jun 2019 12:04:46 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Prevent lock-cycles between GPU
 waits and GPU resets
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTA2LTEyIDEyOjAwOjA3KQo+IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cml0ZXM6Cj4gCj4gPiBXZSBjYW5ub3QgYWxs
b3cgb3Vyc2VsdmVzIHRvIHdhaXQgb24gdGhlIEdQVSB3aGlsZSBob2xkaW5nIGFueSBsb2NrIHdl
Cj4gCj4gcy93ZS9hcyB3ZT8KPiAKPiBNeSBlbmdsaXNoIHBhcnNlciBpcyBub3Qgc3Ryb25nLgo+
IAo+ID4gbWF5IG5lZWQgdG8gcmVzZXQgdGhlIEdQVS4gV2hpbGUgdGhlcmUgaXMgbm90IGFuIGV4
cGxpY2l0IGxvY2sgYmV0d2Vlbgo+ID4gdGhlIHR3byBvcGVyYXRpb25zLCBsb2NrZGVwIGNhbm5v
dCBkZXRlY3QgdGhlIGRlcGVuZGVuY3kuIFNvIGxldCdzIHRlbGwKPiA+IGxvY2tkZXAgYWJvdXQg
dGhlIHdhaXQvcmVzZXQgZGVwZW5kZW5jeSB3aXRoIGFuIGV4cGxpY2l0IGxvY2ttYXAuCj4gPgo+
ID4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+
Cj4gPiBDYzogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+Cj4g
PiBDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KPiA+IC0tLQo+
ID4gVGhpcyBpcyAqYW5ub3lpbmdseSogZ29vZCBhdCBkZXRlY3RpbmcgbG9jayBjeWNsZXMgaW4g
R1BVIHJlc2V0Lgo+ID4gLUNocmlzCj4gPiAtLS0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9yZXNldC5jICAgICAgICAgICAgfCA1ICsrKystCj4gPiAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9kcnYuaCAgICAgICAgICAgICAgICAgIHwgOCArKysrKysrKwo+ID4gIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMgICAgICAgICAgICAgICAgICB8IDMgKysrCj4gPiAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmMgICAgICAgICAgICAgIHwgMiArKwo+
ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9tb2NrX2dlbV9kZXZpY2UuYyB8IDIg
KysKPiA+ICA1IGZpbGVzIGNoYW5nZWQsIDE5IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkK
PiA+Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVzZXQu
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jlc2V0LmMKPiA+IGluZGV4IDYwZDI0
MTEwYWY4MC4uNjM2OGIzN2YyNmQxIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfcmVzZXQuYwo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfcmVzZXQuYwo+ID4gQEAgLTk3OCwxMCArOTc4LDExIEBAIHZvaWQgaTkxNV9yZXNldChzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKPiA+ICAKPiA+ICAgICAgIG1pZ2h0X3NsZWVwKCk7
Cj4gPiAgICAgICBHRU1fQlVHX09OKCF0ZXN0X2JpdChJOTE1X1JFU0VUX0JBQ0tPRkYsICZlcnJv
ci0+ZmxhZ3MpKTsKPiA+ICsgICAgIGxvY2tfbWFwX2FjcXVpcmUoJmk5MTUtPmd0LnJlc2V0X2xv
Y2ttYXApOwo+ID4gIAo+ID4gICAgICAgLyogQ2xlYXIgYW55IHByZXZpb3VzIGZhaWxlZCBhdHRl
bXB0cyBhdCByZWNvdmVyeS4gVGltZSB0byB0cnkgYWdhaW4uICovCj4gPiAgICAgICBpZiAoIV9f
aTkxNV9nZW1fdW5zZXRfd2VkZ2VkKGk5MTUpKQo+ID4gLSAgICAgICAgICAgICByZXR1cm47Cj4g
PiArICAgICAgICAgICAgIGdvdG8gdW5sb2NrOwo+ID4gIAo+ID4gICAgICAgaWYgKHJlYXNvbikK
PiA+ICAgICAgICAgICAgICAgZGV2X25vdGljZShpOTE1LT5kcm0uZGV2LCAiUmVzZXR0aW5nIGNo
aXAgZm9yICVzXG4iLCByZWFzb24pOwo+ID4gQEAgLTEwMjksNiArMTAzMCw4IEBAIHZvaWQgaTkx
NV9yZXNldChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKPiA+ICAKPiA+ICBmaW5pc2g6
Cj4gPiAgICAgICByZXNldF9maW5pc2goaTkxNSk7Cj4gPiArdW5sb2NrOgo+ID4gKyAgICAgbG9j
a19tYXBfcmVsZWFzZSgmaTkxNS0+Z3QucmVzZXRfbG9ja21hcCk7Cj4gPiAgICAgICByZXR1cm47
Cj4gCj4gVGhlIHJldHVybiBwYXR0ZXIgaW4gdGhpcyBmdW5jdGlvbiBpcyByYXRoZXIgdW5vcnRo
b2RveC4gTWlnaHQgYmUKPiBldmVuIHRoYXQgSSByZXZpZXdlZCBpdC4gVmVyeSBjbG9zZSB0aGF0
IEkgZmVsbCBpbnRvIHRyYXAgb2YgdGhpbmtpbmcKPiB0aGF0IHlvdSByZXR1cm4gd2l0aCBsb2Nr
IGhlbGQuCgpTc3NoLiBJdCdzIGEgb25lLW9mZiB1bm9ydGhvZG94eS4gRXhjZXB0aW9uIHRvIHRo
ZSBydWxlIHR5cGUgb2YgdGhpbmcuCgo+ID4gIHRhaW50Ogo+ID4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Ry
di5oCj4gPiBpbmRleCAwZWE3Zjc4YWUyMjcuLjljZmE5NTAwZmNjNCAxMDA2NDQKPiA+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZHJ2LmgKPiA+IEBAIC0xOTE5LDYgKzE5MTksMTQgQEAgc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgewo+ID4gICAgICAgICAgICAgICBrdGltZV90IGxhc3RfaW5pdF90aW1lOwo+
ID4gIAo+ID4gICAgICAgICAgICAgICBzdHJ1Y3QgaTkxNV92bWEgKnNjcmF0Y2g7Cj4gPiArCj4g
PiArICAgICAgICAgICAgIC8qCj4gPiArICAgICAgICAgICAgICAqIFdlIG11c3QgbmV2ZXIgd2Fp
dCBvbiB0aGUgR1BVIHdoaWxlIGhvbGRpbmcgYSBsb2NrIHdlIG1heQo+IAo+IE15IGVuZ2xpc2gg
cGFyc2VyIHN0aWxsIGV4cGVjdGVkICdhcycgc29tZXdoZXJlIGluIHRoZXJlLgoKQm90aCBmaXhl
cyByZXF1aXJlZCwgdGhhbmtzLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
