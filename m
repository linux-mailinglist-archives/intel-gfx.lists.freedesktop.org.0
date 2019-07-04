Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ECDC15F622
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jul 2019 11:59:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 326D36E2DF;
	Thu,  4 Jul 2019 09:59:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 638B16E2DC;
 Thu,  4 Jul 2019 09:59:03 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17126016-1500050 for multiple; Thu, 04 Jul 2019 10:58:50 +0100
MIME-Version: 1.0
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <a85e32da-d4df-6291-e875-59051db06b1d@linux.intel.com>
References: <20190703165956.16232-1-chris@chris-wilson.co.uk>
 <a85e32da-d4df-6291-e875-59051db06b1d@linux.intel.com>
Message-ID: <156223432829.25091.14734911923283946589@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 04 Jul 2019 10:58:48 +0100
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] i915/gem_workarounds: Adapt
 to change in file format for per-engine wa
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
Cc: igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNy0wNCAxMDo1MTo0NCkKPiAKPiBPbiAwMy8w
Ny8yMDE5IDE3OjU5LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBUbyByZWR1Y2UgdGhlIGFzc3Vt
cHRpb25zIG9mIFJDUzAgaW4gdGhlIGtlcm5lbCwgd2Ugd2FudCB0byBtYWtlIHRoZQo+ID4gZGVi
dWdmcyBlbmdpbmUgYWdub3N0aWMgYW5kIHNvIHdlIG5lZWQgdG8gYWRhcHQgdGhlIGlndCBwYXJz
ZXIgZm9yCj4gPiBmbGV4aWJpbGl0eS4KPiA+IAo+ID4gSWYgd2UgY291bGQganVzdCBhZGVxdWF0
ZWx5IHNpbXVsYXRlIFMzL1M0IGluIHRoZSBrZXJuZWwgd2UgY291bGQgZm9yZ28KPiA+IHRoaXMg
dGVzdCBlbnRpcmVseS4uLgo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNo
cmlzQGNocmlzLXdpbHNvbi5jby51az4KPiA+IENjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVy
c3VsaW5AaW50ZWwuY29tPgo+ID4gLS0tCj4gPiAgIHRlc3RzL2k5MTUvZ2VtX3dvcmthcm91bmRz
LmMgfCAxMiArKysrKysrKysrLS0KPiA+ICAgMSBmaWxlIGNoYW5nZWQsIDEwIGluc2VydGlvbnMo
KyksIDIgZGVsZXRpb25zKC0pCj4gPiAKPiA+IGRpZmYgLS1naXQgYS90ZXN0cy9pOTE1L2dlbV93
b3JrYXJvdW5kcy5jIGIvdGVzdHMvaTkxNS9nZW1fd29ya2Fyb3VuZHMuYwo+ID4gaW5kZXggNDAz
ODYzYzBiLi44MWMzNTZmMDYgMTAwNjQ0Cj4gPiAtLS0gYS90ZXN0cy9pOTE1L2dlbV93b3JrYXJv
dW5kcy5jCj4gPiArKysgYi90ZXN0cy9pOTE1L2dlbV93b3JrYXJvdW5kcy5jCj4gPiBAQCAtMjQ5
LDYgKzI0OSw3IEBAIGlndF9tYWluCj4gPiAgICAgICBpZ3RfZml4dHVyZSB7Cj4gPiAgICAgICAg
ICAgICAgIEZJTEUgKmZpbGU7Cj4gPiAgICAgICAgICAgICAgIGNoYXIgKmxpbmUgPSBOVUxMOwo+
ID4gKyAgICAgICAgICAgICBjaGFyICpzdHI7Cj4gPiAgICAgICAgICAgICAgIHNpemVfdCBsaW5l
X3NpemU7Cj4gPiAgICAgICAgICAgICAgIGludCBpLCBmZDsKPiA+ICAgCj4gPiBAQCAtMjYxLDkg
KzI2MiwxMyBAQCBpZ3RfbWFpbgo+ID4gICAKPiA+ICAgICAgICAgICAgICAgZmQgPSBpZ3RfZGVi
dWdmc19vcGVuKGRldmljZSwgImk5MTVfd2FfcmVnaXN0ZXJzIiwgT19SRE9OTFkpOwo+ID4gICAg
ICAgICAgICAgICBmaWxlID0gZmRvcGVuKGZkLCAiciIpOwo+ID4gLSAgICAgICAgICAgICBpZ3Rf
YXNzZXJ0KGdldGxpbmUoJmxpbmUsICZsaW5lX3NpemUsIGZpbGUpID4gMCk7Cj4gPiArICAgICAg
ICAgICAgIGlndF9yZXF1aXJlKGdldGxpbmUoJmxpbmUsICZsaW5lX3NpemUsIGZpbGUpID4gMCk7
Cj4gPiAgICAgICAgICAgICAgIGlndF9kZWJ1ZygiaTkxNV93YV9yZWdpc3RlcnM6ICVzIiwgbGlu
ZSk7Cj4gPiAtICAgICAgICAgICAgIHNzY2FuZihsaW5lLCAiV29ya2Fyb3VuZHMgYXBwbGllZDog
JWQiLCAmbnVtX3dhX3JlZ3MpOwo+ID4gKwo+ID4gKyAgICAgICAgICAgICAvKiBXZSBhc3N1bWUg
dGhhdCB0aGUgZmlyc3QgYmF0Y2ggaXMgZm9yIHJjcyAqLwo+IAo+IEkgdGhpbmsgeW91IG1lYW4g
ImZpcnN0IGxpbmUiLgoKSSB3YXMgdGhpbmtpbmcgb2YgYmF0Y2ggYXMgaW4gc2V0IG9mIHdvcmth
cm91bmRzLgoKPiA+ICsgICAgICAgICAgICAgc3RyID0gc3Ryc3RyKGxpbmUsICJXb3JrYXJvdW5k
cyBhcHBsaWVkOiIpOwo+ID4gKyAgICAgICAgICAgICBpZ3RfYXNzZXJ0KHN0cik7Cj4gPiArICAg
ICAgICAgICAgIHNzY2FuZihzdHIsICJXb3JrYXJvdW5kcyBhcHBsaWVkOiAlZCIsICZudW1fd2Ff
cmVncyk7Cj4gPiAgICAgICAgICAgICAgIGlndF9yZXF1aXJlKG51bV93YV9yZWdzID4gMCk7Cj4g
Cj4gSSBoYXZlIGEgc3VzcGljaW9uIGFsbCB0aGUgYWJvdmUgc2VjdGlvbiBjb3VsZCBiZSBzaW1w
bGlmaWVkIHVzaW5nIAo+IGZzY2FuZiBhbmQganVzdCBjaGVja2luZyByZXR1cm4gdmFsdWUgYW5k
IGVycm5vIGJ1dCB0aGF0IHdvdWxkIGJlIGFza2luZyAKPiBmb3IgdG9vIG11Y2ggd29yayBmb3Ig
d2hhdCB0aGlzIGlzLgoKU3BlYWtpbmcgbXkgbGFuZ3VhZ2UgOikKCj4gPiAgIAo+ID4gICAgICAg
ICAgICAgICB3YV9yZWdzID0gbWFsbG9jKG51bV93YV9yZWdzICogc2l6ZW9mKCp3YV9yZWdzKSk7
Cj4gPiBAQCAtMjcxLDYgKzI3Niw5IEBAIGlndF9tYWluCj4gPiAgIAo+ID4gICAgICAgICAgICAg
ICBpID0gMDsKPiA+ICAgICAgICAgICAgICAgd2hpbGUgKGdldGxpbmUoJmxpbmUsICZsaW5lX3Np
emUsIGZpbGUpID4gMCkgewo+ID4gKyAgICAgICAgICAgICAgICAgICAgIGlmIChzdHJzdHIobGlu
ZSwgIldvcmthcm91bmRzIGFwcGxpZWQ6IikpCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBicmVhazsKPiA+ICsKPiA+ICAgICAgICAgICAgICAgICAgICAgICBpZ3RfZGVidWcoIiVz
IiwgbGluZSk7Cj4gPiAgICAgICAgICAgICAgICAgICAgICAgaWYgKHNzY2FuZihsaW5lLCAiMHgl
WDogMHglMDhYLCBtYXNrOiAweCUwOFgiLAo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgJndhX3JlZ3NbaV0uYWRkciwKPiA+IAo+IAo+IEkganVzdCBoYWQgYSB0aG91Z2h0IHRo
YXQgc2luY2Ugd2UgYXJlIGZpZGRsaW5nIHdpdGggdGhpcyB3ZSBzaG91bGQgYWRkIAo+IGVuZ2lu
ZSBuYW1lcyBpbnRvIHN0cmluZ3MuIEFuZC9vciBjbGFzczppbnN0YW5jZSBwYWlycy4KCkV4cGFu
ZCB1cG9uIHRoYXQgdGhvdWdodDogd2hlcmUgZG8geW91IHdhbnQgdGhpcz8gSSBwcmVzdW1lIHlv
dSBhcmUKdGhpbmtpbmcgb2YgYW4gaWd0IGhlbHBlciBmb3IgcmNzMCAtPiBjbGFzczpSRU5ERVIs
IGluc3Q6MAotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
