Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA94A14E501
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2020 22:42:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD01A6E91F;
	Thu, 30 Jan 2020 21:42:53 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0CA1C6E91F
 for <Intel-gfx@lists.freedesktop.org>; Thu, 30 Jan 2020 21:42:51 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20065688-1500050 for multiple; Thu, 30 Jan 2020 21:42:42 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
References: <20191216120704.958-1-tvrtko.ursulin@linux.intel.com>
 <20191216120704.958-2-tvrtko.ursulin@linux.intel.com>
 <157650003726.2428.7411733849297083759@skylake-alporthouse-com>
 <f48c66db-d224-e213-e8ac-7d4ceefe9652@linux.intel.com>
 <d9909b3d-258a-338f-7d2b-bac13e8b1443@linux.intel.com>
In-Reply-To: <d9909b3d-258a-338f-7d2b-bac13e8b1443@linux.intel.com>
Message-ID: <158042056114.2430.5278591283267738633@skylake-alporthouse-com>
Date: Thu, 30 Jan 2020 21:42:41 +0000
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915: Track per-context engine
 busyness
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAyMC0wMS0zMCAxODowNTowMykKPiAKPiBPbiAxNi8x
Mi8yMDE5IDEzOjA5LCBUdnJ0a28gVXJzdWxpbiB3cm90ZToKPiA+IAo+ID4gT24gMTYvMTIvMjAx
OSAxMjo0MCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4+IFF1b3RpbmcgVHZydGtvIFVyc3VsaW4g
KDIwMTktMTItMTYgMTI6MDc6MDApCj4gPj4+IEBAIC0xMzg5LDYgKzE0MTUsOSBAQCBzdGF0aWMg
dm9pZCBleGVjbGlzdHNfc3VibWl0X3BvcnRzKHN0cnVjdCAKPiA+Pj4gaW50ZWxfZW5naW5lX2Nz
ICplbmdpbmUpCj4gPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHdyaXRlX2Rl
c2MoZXhlY2xpc3RzLAo+ID4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgcnEgPyBleGVjbGlzdHNfdXBkYXRlX2NvbnRleHQocnEpIDogMCwK
PiA+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIG4pOwo+ID4+PiArCj4gPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlmIChu
ID09IDApCj4gPj4+ICsgICAgICAgICAgICAgICAgICAgICAgIAo+ID4+PiBpbnRlbF9jb250ZXh0
X3N0YXRzX3N0YXJ0KCZycS0+aHdfY29udGV4dC0+c3RhdHMpOwo+ID4+Cj4gPj4gVG9vIGVhcmx5
PyAoVGhpbmsgcHJlZW1wdGlvbiByZXF1ZXN0cyB0aGF0IG1heSBub3QgYmVnaW4gZm9yIGEgZmV3
Cj4gPj4gaHVuZHJlZCBtcy4pIE1hcmsgaXQgYXMgc3RhcnRlZCBvbiBwcm9tb3Rpb24gaW5zdGVh
ZCAoc2hvdWxkIGJlIHdpdGhpbiBhCj4gPj4gZmV3IG1pY3Jvc2Vjb25kcywgaWYgbm90IGlkZWFs
bHkgYSBmZXcgMTAgbnMpPyBUaGVuIHlvdSB3aWxsIGFsc28gaGF2ZQo+ID4+IGJldHRlciBzeW1t
ZXRyeSBpbiBwcm9jZXNzX2NzYiwgc3VnZ2VzdGluZyB0aGF0IHdlIGNhbiBoYXZlIGEgcm91dGlu
ZQo+ID4+IHRoYXQgdGFrZXMgdGhlIGN1cnJlbnQgKmV4ZWNsaXN0cy0+YWN0aXZlIHdpdGggZmV3
ZXIgY29kZSBjaGFuZ2VzLgo+ID4gCj4gPiBHb29kIHBvaW50LCBJIHdhcyBkaXNsaWtpbmcgdGhl
IGNzYiBsYXRlbmNpZXMgYW5kIGNvbXBsZXRlbHkgbWlzc2VkIHRoZSAKPiA+IHByZWVtcHRpb24g
c2lkZSBvZiB0aGluZ3MuIFN5bW1ldHJ5IHdpbGwgYmUgbXVjaCBiZXR0ZXIgaW4gbW9yZSB0aGFu
IG9uZSAKPiA+IGFzcGVjdC4KPiAKPiBEb3duc2lkZSBvZiBoYXZpbmcgaXQgaW4gcHJvY2Vzc19j
c2IgaXMgcmVhbGx5IGJhZCBhY2N1cmFjeSB3aXRoIHNob3J0IAo+IGJhdGNoZXMgbGlrZSBnZW1f
ZXhlY19ub3AuIDooIHByb2Nlc3NfY3NiKCkgbGF0ZW5jeSBJIHRoaW5rLgoKU2NhcnkuIEkgaG9w
ZSB3ZSBjYW4gZ2V0IHNvbWUgaW5zaWdodCBhbmQga2lsbCBzb21lIGxhdGVuY3kuIFVzdWFsbHkK
ZW5kcyBpbiBsb29raW5nIGF0IENQVSBzY2hlZHVsZXIgdHJhY2VzIGluIGRpc21heS4KCm52bWUg
dG91dHMgImludGVycnVwdCBzdGVlcmluZyIgYXMgY3J1Y2lhbCB0byBtYWludGFpbmluZyBjYWNo
ZXMgYXQgaGlnaApwYWNrZXQgZnJlcXVlbmNpZXMuCgpXZSBtYXkgYWxzbyBzZWUgc29tZSBnYWlu
cyBmcm9tIHN0YXJpbmcgYXQgcHJvZmlsZXJzLCBidXQgb2ZmIHRoZSB0b3Agb2YKbXkgaGVhZCB0
aGUgd29yc3QgbGF0ZW5jeSBpcyBkdWUgdG8gZW5naW5lLT5hY3RpdmUubG9jayBjb250ZW50aW9u
LCBhbmQKYXNzb2NpYXRlZCBpcnEtb2ZmIHBlcmlvZHMuCgo+IEl0IGdldHMgYSAKPiBsaXR0bGUg
Yml0IGJldHRlciBmb3IgdGhpcyBwYXJ0aWN1bGFyIHdvcmtsb2FkIGlmIEkgbW92ZSB0aGUgc3Rh
cnQgcG9pbnQgCj4gdG8gc3VibWl0X3BvcnRzKCksIGJ1dCB0aGF0IGhhcyB0aGF0IG90aGVyIHBy
b2JsZW0gd2l0aCBwcmVlbXB0aW9uLgo+IAo+IEFmdGVyIHRoaXMgd29lcyBJIHdhcyBob3BlZnVs
IHBwaHdzcCBjb250ZXh0IHJ1bnRpbWUgY291bGQgaGF2ZSBhbiAKPiBhZHZhbnRhZ2UgaGVyZSwg
YnV0IHRoZW4gSSBkaXNjb3ZlciBpdCBpcyBvY2Nhc2lvbmFsbHkgbm90IG1vbm90b25pYy4gQXQg
Cj4gbGVhc3Qgd2l0aCB0aGUgc3BhbW15IGdlbV9leGVjX25vcCBpdCBvY2Nhc2lvbmFsbHkgYnV0
IHJlZ3VsYXJseSBqdW1wcyBhIAo+IHRpbnkgYml0IGJhY2t3YXJkOgo+IAo+IFsgODgwMi4wODI5
ODBdICAobmV3PTcyODIxMDEgb2xkPTcyODIwNjMgZD0zOCkKPiBbIDg4MDIuMDgzMDA3XSAgKG5l
dz03MjgyMTM5IG9sZD03MjgyMTAxIGQ9MzgpCj4gWyA4ODAyLjA4MzA1MV0gIChuZXc9NzI4MjI1
MCBvbGQ9NzI4MjEzOSBkPTExMSkKPiBbIDg4MDIuMDgzMDc3XSAgKG5ldz03MjgyMjE0IG9sZD03
MjgyMjUwIGQ9LTM2KQo+IFsgODgwMi4wODMxMDNdICAobmV3PTcyODIyNTUgb2xkPTcyODIyMTQg
ZD00MSkKPiBbIDg4MDIuMDgzMTI5XSAgKG5ldz03MjgyMjkzIG9sZD03MjgyMjU1IGQ9MzgpCj4g
WyA4ODAyLjA4MzE1NV0gIChuZXc9NzI4MjMzMSBvbGQ9NzI4MjI5MyBkPTM4KQo+IAo+IE91Y2gu
IFRpbWUgdG8gc2xlZXAgb24gaXQuCgpBbHNvIHNjYXJ5LiBIb3csIGhvdywgaG93Pz8/Ci1DaHJp
cwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
