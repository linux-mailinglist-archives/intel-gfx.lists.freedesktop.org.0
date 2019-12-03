Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF453110162
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Dec 2019 16:40:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDCEC6E83A;
	Tue,  3 Dec 2019 15:40:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 282D06E83A
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Dec 2019 15:40:52 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19444729-1500050 for multiple; Tue, 03 Dec 2019 15:40:48 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191203115339.2943374-1-chris@chris-wilson.co.uk>
 <20191203115339.2943374-2-chris@chris-wilson.co.uk>
 <d983beaf-dce5-12d2-6e84-8e1b88ab0110@linux.intel.com>
In-Reply-To: <d983beaf-dce5-12d2-6e84-8e1b88ab0110@linux.intel.com>
Message-ID: <157538764866.7230.17388065821638285270@skylake-alporthouse-com>
Date: Tue, 03 Dec 2019 15:40:48 +0000
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/execlists: Skip nested
 spinlock for validating pending
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0xMi0wMyAxNTozODoyMCkKPiAKPiBPbiAwMy8x
Mi8yMDE5IDExOjUzLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBPbmx5IGFsb25nIHRoZSBzdWJt
aXNzaW9uIHBhdGggY2FuIHdlIGd1YXJhbnRlZSB0aGF0IHRoZSBsb2NrZWQgcmVxdWVzdAo+ID4g
aXMgaW5kZWVkIGZyb20gYSBmb3JlaWduIGVuZ2luZSwgYW5kIHNvIHRoZSBuZXN0aW5nIG9mIGVu
Z2luZS9ycSBpcwo+ID4gcGVybWlzc2libGUuIE9uIHRoZSBzdWJtaXNzaW9uIHRhc2tsZXQgKHBy
b2Nlc3NfY3NiKCkpLCB3ZSBtYXkgZmluZAo+ID4gb3Vyc2VsdmVzIGNvbXBldGluZyB3aXRoIHRo
ZSBub3JtYWwgbmVzdGluZyBvZiBycS9lbmdpbmUsIGludmFsaWRhdGluZwo+ID4gb3VyIG5lc3Rp
bmcuIEFzIHdlIG9ubHkgdXNlIHRoZSBzcGlubG9jayBmb3IgZGVidWcgcHVycG9zZXMsIHNraXAg
dGhlCj4gPiBkZWJ1ZyBpZiB3ZSBjYW5ub3QgYWNxdWlyZSB0aGUgc3BpbmxvY2sgZm9yIHNhZmUg
dmFsaWRhdGlvbiAtIGNhdGNoaW5nCj4gPiA5OSUgb2YgdGhlIGJ1Z3MgaXMgYmV0dGVyIHRoYW4g
Y2F1c2luZyBhIGhhcmQgbG9ja3VwLgo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxz
b24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiA+IC0tLQo+ID4gICBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9scmMuYyB8IDcgKysrLS0tLQo+ID4gICAxIGZpbGUgY2hhbmdlZCwg
MyBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9scmMuYwo+ID4gaW5kZXggMzdhYjk3NDJhYmU3Li5iNDExZTRjZTY3NzEgMTAwNjQ0
Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwo+ID4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKPiA+IEBAIC0xMzAwLDcgKzEzMDAs
NiBAQCBhc3NlcnRfcGVuZGluZ192YWxpZChjb25zdCBzdHJ1Y3QgaW50ZWxfZW5naW5lX2V4ZWNs
aXN0cyAqZXhlY2xpc3RzLAo+ID4gICAgICAgfQo+ID4gICAKPiA+ICAgICAgIGZvciAocG9ydCA9
IGV4ZWNsaXN0cy0+cGVuZGluZzsgKHJxID0gKnBvcnQpOyBwb3J0KyspIHsKPiA+IC0gICAgICAg
ICAgICAgdW5zaWduZWQgbG9uZyBmbGFnczsKPiA+ICAgICAgICAgICAgICAgYm9vbCBvayA9IHRy
dWU7Cj4gPiAgIAo+ID4gICAgICAgICAgICAgICBHRU1fQlVHX09OKCFrcmVmX3JlYWQoJnJxLT5m
ZW5jZS5yZWZjb3VudCkpOwo+ID4gQEAgLTEzMTUsOCArMTMxNCw4IEBAIGFzc2VydF9wZW5kaW5n
X3ZhbGlkKGNvbnN0IHN0cnVjdCBpbnRlbF9lbmdpbmVfZXhlY2xpc3RzICpleGVjbGlzdHMsCj4g
PiAgICAgICAgICAgICAgIGNlID0gcnEtPmh3X2NvbnRleHQ7Cj4gPiAgIAo+ID4gICAgICAgICAg
ICAgICAvKiBIb2xkIHRpZ2h0bHkgb250byB0aGUgbG9jayB0byBwcmV2ZW50IGNvbmN1cnJlbnQg
cmV0aXJlcyEgKi8KPiA+IC0gICAgICAgICAgICAgc3Bpbl9sb2NrX2lycXNhdmVfbmVzdGVkKCZy
cS0+bG9jaywgZmxhZ3MsCj4gPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBTSU5HTEVfREVQVEhfTkVTVElORyk7Cj4gPiArICAgICAgICAgICAgIGlmICghc3Bpbl90cnls
b2NrKCZycS0+bG9jaykpCj4gPiArICAgICAgICAgICAgICAgICAgICAgY29udGludWU7Cj4gPiAg
IAo+ID4gICAgICAgICAgICAgICBpZiAoaTkxNV9yZXF1ZXN0X2NvbXBsZXRlZChycSkpCj4gPiAg
ICAgICAgICAgICAgICAgICAgICAgZ290byB1bmxvY2s7Cj4gPiBAQCAtMTM0Nyw3ICsxMzQ2LDcg
QEAgYXNzZXJ0X3BlbmRpbmdfdmFsaWQoY29uc3Qgc3RydWN0IGludGVsX2VuZ2luZV9leGVjbGlz
dHMgKmV4ZWNsaXN0cywKPiA+ICAgICAgICAgICAgICAgfQo+ID4gICAKPiA+ICAgdW5sb2NrOgo+
ID4gLSAgICAgICAgICAgICBzcGluX3VubG9ja19pcnFyZXN0b3JlKCZycS0+bG9jaywgZmxhZ3Mp
Owo+ID4gKyAgICAgICAgICAgICBzcGluX3VubG9jaygmcnEtPmxvY2spOwo+ID4gICAgICAgICAg
ICAgICBpZiAoIW9rKQo+ID4gICAgICAgICAgICAgICAgICAgICAgIHJldHVybiBmYWxzZTsKPiA+
ICAgICAgIH0KPiA+IAo+IAo+IFdpdGggRml4ZXM6IGFuZCBpcnFzYXZlIHZhcmlhbnQ6Cj4gCj4g
UmV2aWV3ZWQtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+CgpQ
cmVkaWN0aXZlIHBhdGNoaW5nOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvcGF0
Y2gvMzQzNDk1Lz9zZXJpZXM9NzAzNzUmcmV2PTEKClRhLAotQ2hyaXMKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
