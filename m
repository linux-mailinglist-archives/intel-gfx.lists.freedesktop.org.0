Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 47EE72765F
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2019 08:58:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F054D89872;
	Thu, 23 May 2019 06:58:16 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ABEC589C98;
 Thu, 23 May 2019 06:58:15 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16649220-1500050 for multiple; Thu, 23 May 2019 07:58:06 +0100
MIME-Version: 1.0
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 igt-dev@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <82b08c9f-cfd1-b478-c6aa-719bf0d7cccf@linux.intel.com>
References: <20190522163141.29252-1-tvrtko.ursulin@linux.intel.com>
 <20190523063701.4549-1-tvrtko.ursulin@linux.intel.com>
 <82b08c9f-cfd1-b478-c6aa-719bf0d7cccf@linux.intel.com>
Message-ID: <155859468552.28319.675115669918159870@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 23 May 2019 07:58:05 +0100
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t v2] tests/i915: Restore some
 BAT coverage
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNS0yMyAwNzo0MzoxMikKPiAKPiBPbiAyMy8w
NS8yMDE5IDA3OjM3LCBUdnJ0a28gVXJzdWxpbiB3cm90ZToKPiA+IEZyb206IFR2cnRrbyBVcnN1
bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Cj4gPiAKPiA+IEVuZ2luZSBlbnVtZXJhdGVk
IHRlc3QgbmFtZXMgaGF2ZSBjaGFuZ2VkIHNvIGZhc3QtZmVlZGJhY2sudGVzdGxpc3QgbmVlZHMK
PiA+IHRvIGJlIHVwZGF0ZWQuIEhvd2V2ZXIgbGlzdGluZyBhbGwgZW5naW5lcyB0aGVyZSB3b24n
dCBzY2FsZS4gU28gaW5zdGVhZAo+ID4gYWRkIG5ldyB0ZXN0cyBjYXNlcyB3aGljaCBpdGVyYXRl
IGFsbCBlbmdpbmVzIGludGVybmFsbHkuCj4gPiAKPiA+IHYyOgo+ID4gICAqIEZpeCBiYXNpYy1h
bGwgdGVzdCBuYW1lLgo+ID4gICAqIEZpeCBwYXJhbXMgdG8gYmFzaWMgKGJvb2wgZmFsc2UgdG8g
emVybykuCj4gPiAgICogVXNlIEk5MTVfRVhFQ19ERUZBVUxUIGluIGhhc19leHRlbmRlZF9idXN5
X2lvY3RsIHRvIHdvcmthcm91bmQgc3RhdGVmdWwKPiA+ICAgICBjb250ZXh0cyBmb3Igbm93Lgo+
ID4gICAqIEhhdmUgb25seSBiYXNpYy1hbGwgaW4gQkFULiAoQ2hyaXMpCj4gPiAKPiA+IFNpZ25l
ZC1vZmYtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Cj4gPiBS
ZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+ICMgdjEK
PiA+IFJldmlld2VkLWJ5OiBBbmRpIFNoeXRpIDxhbmRpLnNoeXRpQGludGVsLmNvbT4gIyB2MQo+
ID4gLS0tCj4gPiAgIHRlc3RzL2k5MTUvZ2VtX2J1c3kuYyAgICAgICAgICAgICAgICAgfCAxOSAr
KysrKysrKysrKy0tLS0KPiA+ICAgdGVzdHMvaTkxNS9nZW1fZXhlY19iYXNpYy5jICAgICAgICAg
ICB8IDMzICsrKysrKysrKysrKysrKysrKysrKysrKysrKwo+ID4gICB0ZXN0cy9pbnRlbC1jaS9m
YXN0LWZlZWRiYWNrLnRlc3RsaXN0IHwgMzEgKystLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+ID4g
ICAzIGZpbGVzIGNoYW5nZWQsIDUwIGluc2VydGlvbnMoKyksIDMzIGRlbGV0aW9ucygtKQo+ID4g
Cj4gPiBkaWZmIC0tZ2l0IGEvdGVzdHMvaTkxNS9nZW1fYnVzeS5jIGIvdGVzdHMvaTkxNS9nZW1f
YnVzeS5jCj4gPiBpbmRleCA3ODFhM2JmYWIxZDEuLmYzZWJiMzdhMzNiNCAxMDA2NDQKPiA+IC0t
LSBhL3Rlc3RzL2k5MTUvZ2VtX2J1c3kuYwo+ID4gKysrIGIvdGVzdHMvaTkxNS9nZW1fYnVzeS5j
Cj4gPiBAQCAtNDE3LDcgKzQxNyw3IEBAIHN0YXRpYyBib29sIGhhc19zZW1hcGhvcmVzKGludCBm
ZCkKPiA+ICAgCj4gPiAgIHN0YXRpYyBib29sIGhhc19leHRlbmRlZF9idXN5X2lvY3RsKGludCBm
ZCkKPiA+ICAgewo+ID4gLSAgICAgaWd0X3NwaW5fdCAqc3BpbiA9IGlndF9zcGluX25ldyhmZCwg
LmVuZ2luZSA9IEk5MTVfRVhFQ19SRU5ERVIpOwo+ID4gKyAgICAgaWd0X3NwaW5fdCAqc3BpbiA9
IGlndF9zcGluX25ldyhmZCwgLmVuZ2luZSA9IEk5MTVfRVhFQ19ERUZBVUxUKTsKPiAKPiAoVGhp
cyBmYWlscyBvbiBwbGF0Zm9ybXMgd2l0aCBvbmx5IHJjczAgKG5vIG90aGVyIGVuZ2luZXMpIGR1
ZSBjb250ZXh0IAo+IGhhcyBhIG1hcCBub3csIGFuZCBJOTE1X0VYRUNfUkVOREVSID09IDEgPT0g
LUVJTlZBTC4pCgpJbiB3aGljaCBjYXNlLCBpdCBwcm9iYWJseSBzaG91bGQgYmUgYSBwbGFpbiAw
IGFzIGl0IG5vIGxvbmdlciBoYXMgdGhlCm9sZCBFWEVDX1JJTkcgc2VtYW50aWNzIGJ1dCBpcyBq
dXN0IGFuIGluZGV4LCBpLmUuIGlndF9zcGluX25ldyhmZCk7Cgo+IFdlIG5lZWQgdG8gY29tZSB1
cCB3aXRoIGEgcm9idXN0IGFuZCBlYXN5IHRvIHJlbWVtYmVyIHNvbHV0aW9uIGZvciAKPiBkZWFs
aW5nIHdpdGggdGhlIGZhY3QgY29udGV4dHMgYXJlIHN0YXRlZnVsIG5vdyBhbmQgCj4gX19mb3Jf
ZWFjaF9waHlzaWNhbF9lbmdpbmUgaXRlcmF0b3IgY29uZmlndXJlcyB0aGUgZGVmYXVsdCBvbmUu
Cj4gCj4gQ291bGQgZW5kIGdhbWUgZm9yIHRlc3QgY29udmVyc2lvbiBiZSB0byBzdG9wIHBhc3Np
bmcgaW4gZWIuZmxhZ3MgdG8gCj4gaWd0X3NwaW5fbmV3IGFuZCBkbyBjbGFzczppbnN0YW5jZSBp
bnN0ZWFkPyBUaGF0IHdvdWxkIGVuYWJsZSBkdW1teWxvYWQgCj4gdG8gdW5hbWJpZ3VvdXNseSBr
bm93IHdoYXQgdG8gdXNlLCBkZXBlbmRpbmcgb24gZ2V0X2VuZ2luZXMgcXVlcnkuCgpTcGVhayB0
byBNaWthLCB3ZSBhYnVzZSBpZ3Rfc3Bpbl90IG11Y2ggbW9yZSBieSByZXN1Ym1pdHRpbmcgdGhl
IHNhbWUKZHVtbXlsb2FkIHRvIG11bHRpcGxlIGVuZ2luZXMgYW5kIGNvbnRleHRzLgoKPiBVbnRp
bCAKPiB0aGVuIGl0IGlzIGZpZGRsaW5nIGFuZCBndWVzcyB3b3JrLgoKSG1tLCBidXQgaXQgc2hv
dWxkbid0IGJlLiBXZSBwYXNzIGJvdGggY29udGV4dCBhbmQgZW5naW5lIHRvCmlndF9zcGluX25l
dygpLiBJdCBpcyBmdWxseSB1bmRlciB0aGUgY2FsbGVyJ3MgY29udHJvbC4gV2hhdCBoYXMKaGFw
cGVuZWQgaXMgdGhhdCB3ZSd2ZSBjaGFuZ2VkIHRoZSBjYWxsZXIncyBjb250ZXh0Li4uCgo+IEJ1
dCBhcmUgdGhlcmUgbW9yZSB0ZXN0cyB3aGljaCBjb3VsZCBiZSBhZmZlY3RlZD8gTXVzdCBiZS4u
Cj4gCj4gT3Igd2UgZHJvcCB0aGUgYXNwaXJhdGlvbiB0byBzdXBwb3J0IAo+IG5vbi1lbmdpbmUt
ZGlzY292ZXJ5LWFuZC1uby1jb250ZXh0LW1hcCBrZXJuZWxzPwoKaWd0IG11c3QgYmUgYWJsZSB0
byBydW4gb24gbGludXMgYW5kIGRybS10aXAsIGF0IHRoZSB2ZXJ5IGxlYXN0LgotQ2hyaXMKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
