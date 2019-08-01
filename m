Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 616EB7D866
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Aug 2019 11:22:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF2B96E434;
	Thu,  1 Aug 2019 09:22:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C6F286E43A
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Aug 2019 09:22:18 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17782218-1500050 for multiple; Thu, 01 Aug 2019 10:22:16 +0100
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
In-Reply-To: <e6f97cd6-3e0b-0a6d-fa3b-3341b0ccd555@intel.com>
Message-ID: <156465133388.2512.9224045476475482021@skylake-alporthouse-com>
Date: Thu, 01 Aug 2019 10:22:13 +0100
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

UXVvdGluZyBMaW9uZWwgTGFuZHdlcmxpbiAoMjAxOS0wOC0wMSAxMDowMTo0NCkKPiBPbiAwMS8w
OC8yMDE5IDExOjA4LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBRdW90aW5nIExpb25lbCBMYW5k
d2VybGluICgyMDE5LTA4LTAxIDA4OjQzOjI0KQo+ID4+IE9uIDMxLzA3LzIwMTkgMjM6MDMsIENo
cmlzIFdpbHNvbiB3cm90ZToKPiA+Pj4gUXVvdGluZyBMaW9uZWwgTGFuZHdlcmxpbiAoMjAxOS0w
Ny0zMSAxNTowNzozMykKPiA+Pj4gSSB0aGluayBJIGhhdmUgY29udmluY2VkIG15c2VsZiB0aGF0
IHdpdGggdGhlIHNwbGl0IGJldHdlZW4gd2FpdCBiZWZvcmUsCj4gPj4+IHNpZ25hbCBhZnRlciBj
b21iaW5lZCB3aXRoIHRoZSBydWxlIHRoYXQgc2Vxbm8gcG9pbnQgYWxvbmcgdGhlIHN5bmNvYmoK
PiA+Pj4gYXJlIG1vbm90b25pYywgeW91IHNob3VsZCBub3QgYmUgYWJsZSB0byBnZW5lcmF0ZSBh
biBBQi1CQSBkZWFkbG9jawo+ID4+PiBiZXR3ZWVuIGNvbmN1cnJlbnQgY2xpZW50cy4KPiA+Pj4K
PiA+Pj4gRXhjZXB0IHRoYXQgd2UgbmVlZCB0byBmaXh1cCBkcm1fc3luY29ial9hZGRfcG9pbnQo
KSB0byBhY3R1YWxseSBhcHBseQo+ID4+PiB0aGF0IHJ1bGUuIFRocm93aW5nIGFuIGVycm9yIGFu
ZCBsZWF2aW5nIHRoZSBjbGllbnQgc3R1Y2sgaXMgbGVzcyB0aGFuCj4gPj4+IGlkZWFsLCB3ZSBj
YW4ndCBldmVuIHJlY292ZXIgd2l0aCBhIEdQVSByZXNldCwgYW5kIGFzIHRoZXkgYXJlIG5hdGl2
ZQo+ID4+PiBmZW5jZXMgd2UgZG9uJ3QgZW1wbG95IGEgZmFpbHNhZmUgdGltZXIuCj4gPj4KPiA+
PiBVbmZvcnR1bmF0ZWx5IHdlJ3JlIG5vdCB0aGUgb25seSB1c2VyIG9mIGFkZF9wb2ludCgpIGFu
ZCBhbWRncHUgZG9lc24ndAo+ID4+IHdhbnQgaXQgdG8gZmFpbC4KPiA+IEl0J3MgZGFuZ2Vyb3Vz
bHkgZXhwb3NpbmcgdGhlIGRlYWRsb2NrIGZyb20gaW5jb3JyZWN0IHNlcW5vIG9yZGVyaW5nIHRv
Cj4gPiB1c2Vyc3BhY2UuIFdlIHNob3VsZCBiZSBhYmxlIHRvIGhpdCB0aGF0IERSTV9FUlJPUigp
IGluIHRlc3RpbmcsIGFuZCBiZQo+ID4gYWJsZSB0byBkZXRlY3QgdGhlIG91dC1vZi1zZXF1ZW5j
ZSB0aW1lbGluZS4KPiA+Cj4gPj4gQmVzdCBJIGNhbiBjb21lIHVwIHdpdGggaXMgdGFrZSB0aGUg
c3luY29iaiBsb2NrIHdoZW4gc2lnbmFsaW5nIGluCj4gPj4gZ2V0X3RpbWVsaW5lX2ZlbmNlX2Fy
cmF5KCkgZG8gdGhlIGNoZWNrIHRoZXJlLCB1bmxvY2sgaW4gX19mcmVlX2ZlbmNlX2FycmF5Lgo+
ID4gSSB0aGluayB0aGUgaW50ZXJtZWRpYXRlIHN0ZXAgaXMgYSAic2FmZSIgdmVyc2lvbiBvZiBh
ZGRfcG9pbnQgdGhhdAo+ID4gZG9lc24ndCBsZWF2ZSB0aGUgdGltZWxpbmUgYnJva2VuLiBUaGF0
IHN0aWxsIGxlYXZlcyBhIGdsaXRjaCB2aXNpYmxlIHRvCj4gPiB1c2Vyc3BhY2UsIGJ1dCBpdCBz
aG91bGQgbm90IGRlYWRsb2NrLgo+IAo+IAo+IFJpZ2h0LCBzb3VuZHMgZG9hYmxlLiBXaGF0IGhh
cHBlbnMgaW4gZXhlY2J1ZiBhZnRlciBhZGRfcG9pbnQoKSBmYWlscz8KPiAKPiBXZSd2ZSBhbHJl
YWR5IGhhbmRlZCB0aGUgcmVxdWVzdCB0byB0aGUgc2NoZWR1bGVyIGFuZCBwb3RlbnRpYWxseSBp
dCAKPiBtaWdodCBiZSBydW5uaW5nIGFscmVhZHkuCgpSaWdodCwgYXQgcHJlc2VudCB3ZSd2ZSBh
bHJlYWR5IHN1Ym1pdHRlZCB0aGUgcmVxdWVzdCwgc28gdGhlIGJhdGNoIHdpbGwKYmUgcnVuIGFu
ZCBmZW5jZSB3aWxsIGJlIHNpZ25hbGVkLiBUaGUgZmFpbHVyZSB0byBhZGQgdG8gaXQgdGhlCnRp
bWVsaW5lIG1lYW5zIHRoYXQgc29tZW9uZSBlbHNlIGFscmVhZHkgc3VibWl0dGVkIGEgbGF0ZXIg
ZmVuY2UgYW5kCnNvbWUgdGhpcmQgcGFydHkgaXMgdXNpbmcgdGhhdCBzeW5jcHQgaW5zdGVhZCBv
ZiBvdXJzIGZvciB0aGVpcgpkZXBlbmRlbmN5LiBTbyB0aGF0IHRoaXJkIHBhcnR5IHdpbGwgYmUg
ZGVsYXllZCwgYnV0IHNvIGxvbmcgYXMgdGhleSBrZXB0CnRoZWlyIGRlcGVuZGVuY2llcyBpbiBv
cmRlciBpdCBzaG91bGQganVzdCBiZSBhIGRlbGF5LgoKVGhlIHByb2JsZW0gY29tZXMgaW50byBw
bGF5IGlmIHdlIGdvIGFoZWFkIGFuZCBpbnNlcnQgb3VyIGZlbmNlIGludG8gdGhlCmRtYV9mZW5j
ZV9jaGFpbiBvdXQgb2Ygb3JkZXIsIGJyZWFraW5nIGFsbCB0aGUgbW9ub3RvbmljIGd1YXJhbnRl
ZXMgYW5kCmZsaXBwaW5nIHRoZSBvcmRlciBvZiB0aGUgZmVuY2VzLiAoVGhlIGVxdWl2YWxlbnQg
dG8gdGFraW5nIG11dGV4ZXMgb3V0Cm9mIG9yZGVyLikKCj4gPiBUaGUgd2F5IEkgd2FzIGxvb2tp
bmcgYXQgaXQgd2FzIHRvIHJlc2VydmUgYSBwbGFjZWhvbGRlciBzeW5jcHQgYmVmb3JlCj4gPiBi
dWlsZGluZyB0aGUgcmVxdWVzdCBhbmQgYWxsb3cgcmVwbGFjaW5nIHRoZSBwbGFjZWhvbGRlciBh
ZnRlcndhcmRzLgo+IAo+IAo+IFRoYXQgc291bmRzIGZhaXJseSB0cmlja3kgdG8gZ2V0IHJpZ2h0
IDooCgpJbnZhc2l2ZSwgeWVhaCwgdHVybnMgb3V0IG9uZSBuZWVkcyB0byBzdGFydCB3YWxraW5n
IHRoZSBmZW5jZSBjaGFpbgptb3JlIGNhcmVmdWxseS4gVGhlIGFjdHVhbCBwbGFjZWhvbGRlciBm
ZW5jZSBpcyBwcmV0dHkgcnVuIG9mIHRoZSBtaWxsCmFzIGZhciBhcyBkbWEtZmVuY2UqLmMgZ29l
cywgd2hpY2ggaXMgc2F5Li4uCiAKPiBUaGUgZmVuY2Ugc3R1ZmYgaXMgYWxyZWFkeSBmdWxsIG9m
IG1hZ2ljLgoKSXQncyBmdWxsIG9mIG1hZ2ljLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
