Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C2CCA22C2AF
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jul 2020 11:58:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22F176E945;
	Fri, 24 Jul 2020 09:58:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 83F4E6E945
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jul 2020 09:58:31 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21916592-1500050 for multiple; Fri, 24 Jul 2020 10:58:28 +0100
MIME-Version: 1.0
In-Reply-To: <CAKZBjpsz7huH0R5VzK2gQQ7wtQ9N2b4sxSNpJ=kjaBbFv5qCgw@mail.gmail.com>
References: <CAKZBjpsz7huH0R5VzK2gQQ7wtQ9N2b4sxSNpJ=kjaBbFv5qCgw@mail.gmail.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Andrew Parsons <parsonsandrew1@gmail.com>, intel-gfx@lists.freedesktop.org
Date: Fri, 24 Jul 2020 10:58:27 +0100
Message-ID: <159558470750.21069.13484671138303293599@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [Question] More CRTCs than supported displays;
 questions about intel-virtual-output and VIRTUAL1
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

UXVvdGluZyBBbmRyZXcgUGFyc29ucyAoMjAyMC0wNy0yNCAwMjo1NTowNCkKPiBIZWxsbyBhbGws
Cj4gCj4gVEw7RFI6IG15IHF1ZXN0aW9ucyBjb25jZXJuIHRoZSBmb2xsb3dpbmcgdHdvIHRvcGlj
czoKPiAtIENSVENzIGFuZCBJbnRlbCBpbnRlZ3JhdGVkIEdQVXMKPiAtIGludGVsLXZpcnR1YWwt
b3V0cHV0IHV0aWxpdHkKPiAKPiBJIGhhdmUgYSBsYXB0b3Agd2l0aCBib3RoIGFuIEludGVsIGlu
dGVncmF0ZWQgR1BVIGFuZCBhbiBBTUQgZGlzY3JldGUgR1BVLgo+IAo+IGBgYAo+IOKenCDCoH4g
eHJhbmRyIC0tbGlzdHByb3ZpZGVycwo+IFByb3ZpZGVyczogbnVtYmVyIDogMgo+IFByb3ZpZGVy
IDA6IGlkOiAweDcwIGNhcDogMHg5LCBTb3VyY2UgT3V0cHV0LCBTaW5rIE9mZmxvYWQgY3J0Y3M6
IDQgb3V0cHV0czogOAo+IGFzc29jaWF0ZWQgcHJvdmlkZXJzOiAxIG5hbWU6SW50ZWwKPiBQcm92
aWRlciAxOiBpZDogMHg0NCBjYXA6IDB4NiwgU2luayBPdXRwdXQsIFNvdXJjZSBPZmZsb2FkIGNy
dGNzOiA1IG91dHB1dHM6IDAKPiBhc3NvY2lhdGVkIHByb3ZpZGVyczogMSBuYW1lOkFNRCBSYWRl
b24gUHJvIFdYMzEwMCBAIHBjaTowMDAwOjNiOjAwLjAKPiBgYGAKPiAKPiBJIGFtIGNlcnRhaW4g
dGhhdCBib3RoIGFyZSBjb25maWd1cmVkIGNvcnJlY3RseToKPiAKPiBgYGAKPiDinpwgwqB+IERS
SV9QUklNRT0wIGdseGluZm8gfCBncmVwICJPcGVuR0wgcmVuZGVyZXIiCj4gT3BlbkdMIHJlbmRl
cmVyIHN0cmluZzogTWVzYSBEUkkgSW50ZWwoUikgVUhEIEdyYXBoaWNzIDYyMCAoV0hMIEdUMikK
PiDinpwgwqB+IERSSV9QUklNRT0xIGdseGluZm8gfCBncmVwICJPcGVuR0wgcmVuZGVyZXIiCj4g
T3BlbkdMIHJlbmRlcmVyIHN0cmluZzogQU1EIFJhZGVvbiBQcm8gV1gzMTAwIChQT0xBUklTMTIs
IERSTSAzLjMzLjAsCj4gNS4zLjAtNTMtZ2VuZXJpYywgTExWTSA5LjAuMSkKPiBgYGAKPiAKPiBJ
IGhhZCBob3BlZCB0byBjb25maWd1cmUgYSBmb3VyLXdheSBtdWx0aWhlYWQgY29uZmlndXJhdGlv
biAoMyBtb25pdG9ycyB1c2luZwo+IHRoZSBkR1BVLCBhbmQgdGhlIGJ1aWx0LWluIGRpc3BsYXkg
ZHJpdmVuIGJ5IHRoZSBpR1BVKS4gQWxhcywgdGhpcyBzZWVtcyB0byBiZQo+IGltcG9zc2libGUg
d2l0aCBteSBoYXJkd2FyZTsgdGhlIEFNRCBkZXZpY2UgbGFja3MgYW4gb3V0cHV0IGFuZCBtZXJl
bHkgc2VydmVzCj4gYXMgYW4gb2ZmbG9hZGluZyBkZXZpY2UuCgpJdCBhbGwgZGVwZW5kcyBvbiBo
b3cgdGhleSBhcmUgcGh5c2ljYWxseSB3aXJlZCB1cC4gSWYgYWxsIHRoZQpjb25uZWN0b3JzIGFy
ZSB3aXJlZCB0byB0aGUgaWdmeCBhbmQgbm9uZSB0byB0aGUgZGdwdSwgeW91IGFyZSBsaW1pdGVk
CnRvIHVzaW5nIHRoZSBpZ2Z4IGZvciBvdXRwdXQuCgo+IFdoaWxlIGludmVzdGlnYXRpbmcgdGhp
cywgSSBjYW1lIGFjcm9zcyBzb21ldGhpbmcgSSBkaWRuJ3QgcXVpdGUgdW5kZXJzdGFuZC4KPiBP
ZmZpY2lhbGx5LCB0aGUgSW50ZWwgVUhEIDYyMCBzdXBwb3J0cyB0aHJlZSBkaXNwbGF5cy4gSG93
ZXZlciwgYHhyYW5kcmAgc2hvd3MKPiB0aGF0IHRoZXJlIGFyZSBmb3VyIENUUkNzIGF2YWlsYWJs
ZSBvbiBQcm92aWRlciAwIChJbnRlbCkuCj4gCj4gYGBgCj4g4p6cIMKgfiB4cmFuZHIgLS12ZXJi
b3NlIHwgZ3JlcCBDUlRDIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgCj4gQ1JUQzogwqAgwqAgwqAg
MAo+IENSVENzOiDCoCDCoCDCoDEgMCAyCj4gQ1JUQ3M6IMKgIMKgIMKgMSAwIDIKPiBDUlRDOiDC
oCDCoCDCoCAxCj4gQ1JUQ3M6IMKgIMKgIMKgMSAwIDIKPiBDUlRDOiDCoCDCoCDCoCAyCj4gQ1JU
Q3M6IMKgIMKgIMKgMSAwIDIKPiBDUlRDczogwqAgwqAgwqAxIDAgMgo+IENSVENzOiDCoCDCoCDC
oDEgMCAyCj4gQ1JUQ3M6IMKgIMKgIMKgMSAwIDIKPiBDUlRDczogwqAgwqAgwqAzCj4gYGBgCj4g
Cj4gSXQgc2VlbXMgdGhhdCB0aGUgZm91cnRoIENSVEMgKCJ0aGlyZCIgd2hlbiB6ZXJvLWluZGV4
ZWQpIGlzIHVzZWQgYnkgVklSVFVBTDEKPiBvdXRwdXQuCj4gCj4gYGBgCj4g4p6cIMKgfiB4cmFu
ZHIgLS12ZXJib3NlIHwgdGFpbAo+IFZJUlRVQUwxIGRpc2Nvbm5lY3RlZCAobm9ybWFsIGxlZnQg
aW52ZXJ0ZWQgcmlnaHQgeCBheGlzIHkgYXhpcykKPiBJZGVudGlmaWVyOiAweDZmCj4gVGltZXN0
YW1wOiDCoDIyNzkyCj4gU3VicGl4ZWw6IMKgIG5vIHN1YnBpeGVscwo+IENsb25lczogwqAgwqAK
PiBDUlRDczogwqAgwqAgwqAzCj4gVHJhbnNmb3JtOiDCoDEuMDAwMDAwIDAuMDAwMDAwIDAuMDAw
MDAwCj4gwqAgwqAgwqAgwqAgwqAgwqAwLjAwMDAwMCAxLjAwMDAwMCAwLjAwMDAwMAo+IMKgIMKg
IMKgIMKgIMKgIMKgMC4wMDAwMDAgMC4wMDAwMDAgMS4wMDAwMDAKPiDCoCDCoCDCoCDCoCDCoCBm
aWx0ZXI6Cj4gYGBgCj4gCj4gT3V0IG9mIGN1cmlvc2l0eSwgSSB0aG91Z2h0IHRvIG1vdmUgQ1JU
QyAzIHRvIGEgY29ubmVjdGVkIGJ1dCBkaXNhYmxlZCBtb25pdG9yCj4gKERQMikuIEhvd2V2ZXIs
IHRoaXMgZG9lc24ndCBzZWVtIHRvIHdvcmsuCgpDb25uZWN0b3JzIGFyZSBsaW1pdGVkIHRvIHdo
aWNoIHBpcGUgY2FuIGRyaXZlIHRoZW0gKGFzIHRoZXkgbmVlZCB0aGUKcGl4ZWwgcHVtcCBhbmQg
ZW5jb2RlciB0byBjb252ZXJ0IGludG8gdGhlIGFwcHJvcHJpYXRlIHNpZ25hbCwgYW5kIG5vdAph
bGwgQ1JUQyBjYW4gYmUgYXR0YWNoZWQgdG8gYWxsIHN1Y2ggSFcpLgoKPiAKPiBgYGAKPiDinpwg
wqB+IHhyYW5kciAtLW91dHB1dCBEUDIgLS1jcnRjIDMgwqAgwqAgwqAgwqAgwqAgwqAKPiB4cmFu
ZHI6IG91dHB1dCBEUDIgY2Fubm90IHVzZSBjcnRjIDB4NjcKPiBgYGAKPiAKPiBBZnRlciBzb21l
IEdvb2dsaW5nLCBJJ3ZlIGNvbWUgdG8gYmVsaWV2ZSB0aGF0IHRoZSBWSVJUVUFMMSBvdXRwdXQg
aGFzIGJlZW4KPiBjcmVhdGVkIGJ5IHRoZSBpbnRlbC12aXJ0dWFsLW91dHB1dCB1dGlsaXR5LiBU
byBiZSBob25lc3QsIEkgZmluZCB0aGUgbWFuIHBhZ2UKPiBmb3IgdGhpcyBwYWNrYWdlIHZhZ3Vl
LiAiVGhlIHRvb2wgY29ubmVjdHMgbG9jYWwgVmlydHVhbEhlYWRzIHRvIGEgcmVtb3RlCj4gb3V0
cHV0LCBhbGxvd2luZyB0aGUgcHJpbWFyeSBkaXNwbGF5IHRvIGV4dGVuZCBvbnRvIHRoZSByZW1v
dGUgb3V0cHV0cy4iCj4gSSdtIGFkbWl0dGVkbHkgKGFuZCBwcm9iYWJseSBxdWl0ZSBjbGVhcmx5
KSBhIG5ld2JpZSB3aGVuIGl0IGNvbWVzIHRvIGdyYXBoaWNzLAo+IHNvIHRoaXMgZGVzY3JpcHRp
b24gdGVsbHMgbWUgdmVyeSBsaXR0bGUuIE1vcmVvdmVyLCB0aGUgaGVscCBtZW51IGxpc3RzIG9w
dGlvbnMKPiBmb3Igc3RhcnRpbmcgQnVtYmxlYmVlLCBzb21ldGhpbmcgSSBiZWxpZXZlIGlzIE52
aWRpYS1zcGVjaWZpYy7CoCBFdmVyeSBmb3J1bQo+IHRocmVhZCBJJ3ZlIHJlYWQgbWVudGlvbmlu
ZyB0aGlzIHV0aWxpdHkgaW52b2x2ZXMgYW4gTnZpZGlhIGNhcmQuCj4gCj4gTXkgcXVlc3Rpb25z
IGFyZToKPiAxLiBXaHkgb3IgaG93IGNhbiBJIGhhdmUgbW9yZSBDUlRDcyB0aGFuIG9mZmljaWFs
bHkgc3VwcG9ydGVkIG91dHB1dHMgZm9yIHRoZQo+IEludGVsIFVIRCA2MjA/CgpCZWNhdXNlIGl0
J3MgYW4gW2FjdHVhbGx5LCBtb3JlIHRoYW4gb25lXSBhYnN0cmFjdGlvbiBsYXllciBvdmVyIEhX
LgoKPiAyLiBXaGF0IGRvZXMgdGhlIGludGVsLXZpcnR1YWwtb3V0cHV0IHV0aWxpdHkgZG8gZm9y
IG1lLCBhIGh5YnJpZCBJbnRlbC9BTUQKPiB1c2VyPwoKSW4geW91ciBzZXR1cCwgbm8uIEl0IHJ1
bnMgYXMgYSBwcm94eSBiZXR3ZWVuIGRpc2NyZXRlIFggc2VydmVycywKbWlycm9yaW5nIHRoZSBj
b25maWd1cmF0aW9uIG9udG8gdGhlIHZpcnR1YWwgb3V0cHV0cywgc3VjaCB0aGF0IHlvdSBjYW4K
Y29uc3RydWN0IGEgc2luZ2xlIHNjcmVlbiBvdXQgb2YgbXVsdGlwbGUuIFh2bmMgaW4gcmV2ZXJz
ZSwgc2ltaWxhciB0bwpNaXJhY2FzdCAvIFdpRGkuCgo+IDMuIFdoeSBkbyBJIG5lZWQgVklSVFVB
TDE/CgpJZiB5b3UgZG9uJ3QgbmVlZCBpdCwgdGhlbiB5b3UgZG9uJ3QuIEl0J3MgYSBzbWFsbCBh
bGxvY2F0aW9uLCBidXQKcmVxdWlyZXMgYW4gWG9yZy5jb25mIHRvIGRpc2FibGUuIFRoZSBjb252
ZW5pZW5jZSBmYWN0b3Igb2Ygbm90IGhhdmluZwp0byBoYXZlIGFuIFhvcmcuY29uZiB0byB1c2Ug
aXQsIG91dHdlaWdoZWQgdGhlIGluY29udmVuaWVuY2Ugb2YgdGhlCndhc3RlZCBhbGxvY2F0aW9u
LgoKPiA0LiBXaGF0IHdvdWxkIGhhcHBlbiBpZiBJIHJlbW92ZWQgdGhlIGludGVsLXZpcnR1YWwt
b3V0cHV0IHV0aWxpdHk/CgpZb3Ugc2F2ZSA2NEsgb2YgZGlzayBzcGFjZS4KLUNocmlzCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
