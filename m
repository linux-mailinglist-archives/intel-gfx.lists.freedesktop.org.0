Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE7AFB806D
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2019 19:49:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37E086F80A;
	Thu, 19 Sep 2019 17:49:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 575186F80A
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Sep 2019 17:49:28 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18549815-1500050 for multiple; Thu, 19 Sep 2019 18:49:25 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190919111912.21631-1-chris@chris-wilson.co.uk>
 <5202f44e-a251-f4e0-f27c-1f96fab24078@linux.intel.com>
 <156889956418.31102.4110265390892262636@skylake-alporthouse-com>
 <8b0b57de-6d4b-57f8-be31-7201d3f235ec@linux.intel.com>
In-Reply-To: <8b0b57de-6d4b-57f8-be31-7201d3f235ec@linux.intel.com>
Message-ID: <156891536326.1196.6694433407311839234@skylake-alporthouse-com>
Date: Thu, 19 Sep 2019 18:49:23 +0100
Subject: Re: [Intel-gfx] [PATCH v2 1/3] drm/i915: Mark i915_request.timeline
 as a volatile, rcu pointer
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wOS0xOSAxODoxMToxNCkKPiAKPiBPbiAxOS8w
OS8yMDE5IDE0OjI2LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBRdW90aW5nIFR2cnRrbyBVcnN1
bGluICgyMDE5LTA5LTE5IDE0OjAyOjE5KQo+ID4+Cj4gPj4gT24gMTkvMDkvMjAxOSAxMjoxOSwg
Q2hyaXMgV2lsc29uIHdyb3RlOgo+ID4+PiArc3RhdGljIHN0cnVjdCBpbnRlbF90aW1lbGluZSAq
Z2V0X3RpbWVsaW5lKHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxKQo+ID4+PiArewo+ID4+PiArICAg
ICBzdHJ1Y3QgaW50ZWxfdGltZWxpbmUgKnRsOwo+ID4+PiArCj4gPj4+ICsgICAgIC8qCj4gPj4+
ICsgICAgICAqIEV2ZW4gdGhvdWdoIHdlIGFyZSBob2xkaW5nIHRoZSBlbmdpbmUtPmFjdGl2ZS5s
b2NrIGhlcmUsIHRoZXJlCj4gPj4+ICsgICAgICAqIGlzIG5vIGNvbnRyb2wgb3ZlciB0aGUgc3Vi
bWlzc2lvbiBxdWV1ZSBwZXItc2UgYW5kIHdlIGFyZQo+ID4+PiArICAgICAgKiBpbnNwZWN0aW5n
IHRoZSBhY3RpdmUgc3RhdGUgYXQgYSByYW5kb20gcG9pbnQgaW4gdGltZSwgd2l0aCBhbgo+ID4+
PiArICAgICAgKiB1bmtub3duIHF1ZXVlLiBQbGF5IHNhZmUgYW5kIG1ha2Ugc3VyZSB0aGUgdGlt
ZWxpbmUgcmVtYWlucyB2YWxpZC4KPiA+Pj4gKyAgICAgICogKE9ubHkgYmVpbmcgdXNlZCBmb3Ig
cHJldHR5IHByaW50aW5nLCBvbmUgZXh0cmEga3JlZiBzaG91bGRuJ3QKPiA+Pj4gKyAgICAgICog
Y2F1c2UgYSBjYW1lbCBzdGFtcGVkZSEpCj4gPj4+ICsgICAgICAqLwo+ID4+PiArICAgICByY3Vf
cmVhZF9sb2NrKCk7Cj4gPj4+ICsgICAgIHRsID0gcmN1X2RlcmVmZXJlbmNlKHJxLT50aW1lbGlu
ZSk7Cj4gPj4+ICsgICAgIGlmICgha3JlZl9nZXRfdW5sZXNzX3plcm8oJnRsLT5rcmVmKSkKPiA+
Pj4gKyAgICAgICAgICAgICB0bCA9IE5VTEw7Cj4gPj4+ICsgICAgIHJjdV9yZWFkX3VubG9jaygp
Owo+ID4+Cj4gPj4gSG93IGNhbiBpdCBiZSBOVUxMIHVuZGVyIHRoZSBhY3RpdmUgbG9jaz8gSXNu
J3QgdGhhdCB0aGUgc2FtZSBhc3NlcnRpb24KPiA+PiBmcm9tIGk5MTVfdGltZWxpbmVfZ2V0X2Fj
dGl2ZS4KPiA+IAo+ID4gTm90IE5VTEwsIGJ1dCByZXRpcmVkLiBUaGUgZGlmZmVyZW5jZSBpcyB0
aGF0IGR1cmluZyBzdWJtaXNzaW9uIHdlIGtub3cKPiA+IHRoYXQgdGhpcyByZXF1ZXN0J3MgY29u
dGV4dC90aW1lbGluZSBtdXN0IGJlIGN1cnJlbnRseSBwaW5uZWQgdW50aWwKPiA+IGEgc3Vic2Vx
dWVudCByZXF1ZXN0IChjb250YWluaW5nIHRoZSBpZGxlLWJhcnJpZXJzKSBpcyBzdWJtaXR0ZWQu
IFRoZQo+ID4gZGFuZ2VyIEkgd29ycnkgYWJvdXQgaGVyZSBpcyB0aGF0IHN1YnNlcXVlbnQgaWRs
ZSByZXF1ZXN0IG1heSBiZSBhbHJlYWR5Cj4gPiBzdWJtaXR0ZWQgYW5kIHNpbmNlIHRoZSBxdWV1
ZWQgcmVxdWVzdHMgbWF5ICphbHJlYWR5KiBoYXZlIGJlZW4gcmV0aXJlZCwKPiA+IHRoZSB0aW1l
bGluZSBtYXkgYmUgdW5waW5uZWQgYW5kIGluZGVlZCBkcm9wcGVkIGl0J3MgbGFzdCByZWZlcmVu
Y2UuCj4gCj4gQnV0IGhlcmUgaXQgaXMgdW5kZXIgdGhlIGVuZ2luZS0+YWN0aXZlLmxvY2sgd2l0
aCBpbnRlcnJ1cHRzIGRpc2FibGVkIAo+IGFuZCB0aGUgcmVxdWVzdHMgYXJlIGZldGNoZWQgZnJv
bSBleGVjbGlzdHMgcG9ydHMuIFRpbWVsaW5lIGlzIG5vdCAKPiBndWFyYW50ZWVkIHRvIGJlIGtl
cHQgYWxpdmUgdW5kZXIgdGhlc2UgY29uZGl0aW9ucz8gaW50ZWxfY29udGV4dCAKPiByZWZlcmVu
Y2Ugd2lsbCBiZSBoZWxkIHVudGlsIHByb2Nlc3NfY3NiIHNjaGVkdWxlcyBpdCBvdXQgc28gSSdk
IGV4cGVjdCAKPiB0aW1lbGluZSBhbmQgaHdzcCB0byBiZSB0aGVyZS4gQnV0IEkgY291bGQgYmUg
bG9zdCBpbiB0aGUgbmV3IHNjaGVtZSBvZiAKPiB0aGluZ3MuCgpJIGZlbHQgaXQgd2FzIHBydWRl
bnQgdG8gb25seSByZWx5IG9uIHRoZSBhY3RpdmUgcGluLiBZb3UgYXJlIHJpZ2h0IGluCnRoYXQg
d2UgaGF2ZSBhIGNvbnRleHQgcmVmZXJlbmNlIGlmIGl0IGlzIGluIGFjdGl2ZSwgYW5kIHRoYXQg
Y29udGV4dApob2xkcyBhIHJlZmVyZW5jZSB0byB0aGUgdGltZWxpbmUuIEJ1dC4uLiBlbmdpbmUt
PmFjdGl2ZS5sb2NrIGlzIG5vdAp0aGUgbG9jayB0aGF0IGd1YXJkcyBycS0+dGltZWxpbmUsIHNv
IEkgZmVlbCB1bmVhc3kgb24gZXh0ZW5kaW5nCmk5MTVfcmVxdWVzdF9hY3RpdmVfdGltZWxpbmUo
KSB0b28gZmFyLiBPdXRzaWRlIG9mIHRoZSBzdWJtaXNzaW9uCnBhdGh3YXksIGluc2lkZSBhIHBy
ZXR0eSBwcmludGVyLCBpdCBmZWVscyBzYWZlciAod2hhdGV2ZXIgY2hhbmdlcyBtYXkKY29tZSB3
ZSBkb24ndCBoYXZlIHRvIHdvcnJ5IGFib3V0IGl0KSB0byBub3QgYXNzdW1lIGFueXRoaW5nIGFu
ZCBqdXN0CnVzZSB0aGUgZmFpbHNhZmUgcmN1X2RlcmVmZXJlbmNlKCkgKyBrcmVmLgotQ2hyaXMK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
