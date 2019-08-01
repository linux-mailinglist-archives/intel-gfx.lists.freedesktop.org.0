Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ACEB7D924
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Aug 2019 12:18:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48ED46E456;
	Thu,  1 Aug 2019 10:18:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13B666E456
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Aug 2019 10:18:16 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17783726-1500050 for multiple; Thu, 01 Aug 2019 11:18:14 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190731140733.23373-1-lionel.g.landwerlin@intel.com>
 <20190731140733.23373-3-lionel.g.landwerlin@intel.com>
 <156460343987.15787.2880473369100261078@skylake-alporthouse-com>
 <6627af91-1f1c-c0ae-7526-25408ae86811@intel.com>
 <156464688459.2512.18044771787416479897@skylake-alporthouse-com>
 <e6f97cd6-3e0b-0a6d-fa3b-3341b0ccd555@intel.com>
 <156465133388.2512.9224045476475482021@skylake-alporthouse-com>
 <33ba6b18-bc06-34fc-bf64-3064c9d62062@intel.com>
In-Reply-To: <33ba6b18-bc06-34fc-bf64-3064c9d62062@intel.com>
Message-ID: <156465469225.2512.7395057743547680859@skylake-alporthouse-com>
Date: Thu, 01 Aug 2019 11:18:12 +0100
Subject: Re: [Intel-gfx] [PATCH v3 2/2] drm/i915: add syncobj timeline
 support
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

UXVvdGluZyBMaW9uZWwgTGFuZHdlcmxpbiAoMjAxOS0wOC0wMSAxMDozNzoyMykKPiBPbiAwMS8w
OC8yMDE5IDEyOjIyLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBRdW90aW5nIExpb25lbCBMYW5k
d2VybGluICgyMDE5LTA4LTAxIDEwOjAxOjQ0KQo+ID4+IE9uIDAxLzA4LzIwMTkgMTE6MDgsIENo
cmlzIFdpbHNvbiB3cm90ZToKPiA+Pj4gUXVvdGluZyBMaW9uZWwgTGFuZHdlcmxpbiAoMjAxOS0w
OC0wMSAwODo0MzoyNCkKPiA+Pj4+IE9uIDMxLzA3LzIwMTkgMjM6MDMsIENocmlzIFdpbHNvbiB3
cm90ZToKPiA+Pj4+PiBRdW90aW5nIExpb25lbCBMYW5kd2VybGluICgyMDE5LTA3LTMxIDE1OjA3
OjMzKQo+ID4+Pj4+IEkgdGhpbmsgSSBoYXZlIGNvbnZpbmNlZCBteXNlbGYgdGhhdCB3aXRoIHRo
ZSBzcGxpdCBiZXR3ZWVuIHdhaXQgYmVmb3JlLAo+ID4+Pj4+IHNpZ25hbCBhZnRlciBjb21iaW5l
ZCB3aXRoIHRoZSBydWxlIHRoYXQgc2Vxbm8gcG9pbnQgYWxvbmcgdGhlIHN5bmNvYmoKPiA+Pj4+
PiBhcmUgbW9ub3RvbmljLCB5b3Ugc2hvdWxkIG5vdCBiZSBhYmxlIHRvIGdlbmVyYXRlIGFuIEFC
LUJBIGRlYWRsb2NrCj4gPj4+Pj4gYmV0d2VlbiBjb25jdXJyZW50IGNsaWVudHMuCj4gPj4+Pj4K
PiA+Pj4+PiBFeGNlcHQgdGhhdCB3ZSBuZWVkIHRvIGZpeHVwIGRybV9zeW5jb2JqX2FkZF9wb2lu
dCgpIHRvIGFjdHVhbGx5IGFwcGx5Cj4gPj4+Pj4gdGhhdCBydWxlLiBUaHJvd2luZyBhbiBlcnJv
ciBhbmQgbGVhdmluZyB0aGUgY2xpZW50IHN0dWNrIGlzIGxlc3MgdGhhbgo+ID4+Pj4+IGlkZWFs
LCB3ZSBjYW4ndCBldmVuIHJlY292ZXIgd2l0aCBhIEdQVSByZXNldCwgYW5kIGFzIHRoZXkgYXJl
IG5hdGl2ZQo+ID4+Pj4+IGZlbmNlcyB3ZSBkb24ndCBlbXBsb3kgYSBmYWlsc2FmZSB0aW1lci4K
PiA+Pj4+IFVuZm9ydHVuYXRlbHkgd2UncmUgbm90IHRoZSBvbmx5IHVzZXIgb2YgYWRkX3BvaW50
KCkgYW5kIGFtZGdwdSBkb2Vzbid0Cj4gPj4+PiB3YW50IGl0IHRvIGZhaWwuCj4gPj4+IEl0J3Mg
ZGFuZ2Vyb3VzbHkgZXhwb3NpbmcgdGhlIGRlYWRsb2NrIGZyb20gaW5jb3JyZWN0IHNlcW5vIG9y
ZGVyaW5nIHRvCj4gPj4+IHVzZXJzcGFjZS4gV2Ugc2hvdWxkIGJlIGFibGUgdG8gaGl0IHRoYXQg
RFJNX0VSUk9SKCkgaW4gdGVzdGluZywgYW5kIGJlCj4gPj4+IGFibGUgdG8gZGV0ZWN0IHRoZSBv
dXQtb2Ytc2VxdWVuY2UgdGltZWxpbmUuCj4gPj4+Cj4gPj4+PiBCZXN0IEkgY2FuIGNvbWUgdXAg
d2l0aCBpcyB0YWtlIHRoZSBzeW5jb2JqIGxvY2sgd2hlbiBzaWduYWxpbmcgaW4KPiA+Pj4+IGdl
dF90aW1lbGluZV9mZW5jZV9hcnJheSgpIGRvIHRoZSBjaGVjayB0aGVyZSwgdW5sb2NrIGluIF9f
ZnJlZV9mZW5jZV9hcnJheS4KPiA+Pj4gSSB0aGluayB0aGUgaW50ZXJtZWRpYXRlIHN0ZXAgaXMg
YSAic2FmZSIgdmVyc2lvbiBvZiBhZGRfcG9pbnQgdGhhdAo+ID4+PiBkb2Vzbid0IGxlYXZlIHRo
ZSB0aW1lbGluZSBicm9rZW4uIFRoYXQgc3RpbGwgbGVhdmVzIGEgZ2xpdGNoIHZpc2libGUgdG8K
PiA+Pj4gdXNlcnNwYWNlLCBidXQgaXQgc2hvdWxkIG5vdCBkZWFkbG9jay4KPiA+Pgo+ID4+IFJp
Z2h0LCBzb3VuZHMgZG9hYmxlLiBXaGF0IGhhcHBlbnMgaW4gZXhlY2J1ZiBhZnRlciBhZGRfcG9p
bnQoKSBmYWlscz8KPiA+Pgo+ID4+IFdlJ3ZlIGFscmVhZHkgaGFuZGVkIHRoZSByZXF1ZXN0IHRv
IHRoZSBzY2hlZHVsZXIgYW5kIHBvdGVudGlhbGx5IGl0Cj4gPj4gbWlnaHQgYmUgcnVubmluZyBh
bHJlYWR5Lgo+ID4gUmlnaHQsIGF0IHByZXNlbnQgd2UndmUgYWxyZWFkeSBzdWJtaXR0ZWQgdGhl
IHJlcXVlc3QsIHNvIHRoZSBiYXRjaCB3aWxsCj4gPiBiZSBydW4gYW5kIGZlbmNlIHdpbGwgYmUg
c2lnbmFsZWQuIFRoZSBmYWlsdXJlIHRvIGFkZCB0byBpdCB0aGUKPiA+IHRpbWVsaW5lIG1lYW5z
IHRoYXQgc29tZW9uZSBlbHNlIGFscmVhZHkgc3VibWl0dGVkIGEgbGF0ZXIgZmVuY2UgYW5kCj4g
PiBzb21lIHRoaXJkIHBhcnR5IGlzIHVzaW5nIHRoYXQgc3luY3B0IGluc3RlYWQgb2Ygb3VycyBm
b3IgdGhlaXIKPiA+IGRlcGVuZGVuY3kuIFNvIHRoYXQgdGhpcmQgcGFydHkgd2lsbCBiZSBkZWxh
eWVkLCBidXQgc28gbG9uZyBhcyB0aGV5IGtlcHQKPiA+IHRoZWlyIGRlcGVuZGVuY2llcyBpbiBv
cmRlciBpdCBzaG91bGQganVzdCBiZSBhIGRlbGF5Lgo+IAo+IAo+IEJ1dCBzaG91bGQgd2UgcmV0
dXJuIGFuIGVycm9yIHRvIHVzZXJzcGFjZT8KCk5vLCB0aGUgc3VibWlzc2lvbiBpdHNlbGYgaGFz
bid0IGZhaWxlZCBhbmQgdGhlIHJlc3VsdCBvZiB0aGUgYmF0Y2ggYW5kCml0cyBmZW5jZSB3aWxs
IGJlIHRydWUuIEl0J3MgYSBjYXNlIHdoZXJlIHVzZXJzcGFjZSBsb3N0IGEgcmFjZSB3aXRoCml0
c2VsZiAtLSBpZiB0aGVyZSB3YXMgYSBub24tZXJyb3Igd2FybmluZyBmbGFnLCBtYXliZS4gSWYg
eW91IGtlZXAgdGhlCmxhbmd1YWdlIGxvb3NlIHRoYXQgYSB0aW1lbGluZSBzZW1hcGhvcmUgd2Fp
dCB3aWxsIGJlIGFmdGVyIGl0cyBzeW5jcHQgaGFzCmJlZW4gc2lnbmFsZWQsIGJ1dCBub3QgbmVj
ZXNzYXJpbHkgYmVmb3JlIHRoZSBuZXh0IHN5bmNwdCBpcyBzaWduYWxlZCwKdW5sZXNzIGV4cGxp
Y2l0bHkgb3JkZXJlZCBieSB0aGUgY2xpZW50LgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
