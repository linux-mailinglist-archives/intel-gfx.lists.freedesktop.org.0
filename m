Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AAA749B3F0
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Aug 2019 17:52:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57FE66ECD3;
	Fri, 23 Aug 2019 15:52:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4809C6ECD3
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Aug 2019 15:52:51 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18242454-1500050 for multiple; Fri, 23 Aug 2019 16:52:43 +0100
MIME-Version: 1.0
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <f8bd967c-de26-730b-9871-ec918279e06b@intel.com>
References: <20190823020909.6029-1-daniele.ceraolospurio@intel.com>
 <156654524525.27716.6405573408447860616@skylake-alporthouse-com>
 <156657036871.27716.10415431163024851672@skylake-alporthouse-com>
 <d34b64fd-4ece-ffea-6ab3-0ef1dbaf5ce1@intel.com>
 <156657304893.4019.6114530226750288695@skylake-alporthouse-com>
 <156657412207.4019.2312887558171300172@skylake-alporthouse-com>
 <f8bd967c-de26-730b-9871-ec918279e06b@intel.com>
Message-ID: <156657556096.4019.5895875072663620308@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 23 Aug 2019 16:52:40 +0100
Subject: Re: [Intel-gfx] [RFC] drm/i915/tgl: Advanced preparser support for
 GPU relocs
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

UXVvdGluZyBEYW5pZWxlIENlcmFvbG8gU3B1cmlvICgyMDE5LTA4LTIzIDE2OjM5OjE0KQo+IAo+
IAo+IE9uIDgvMjMvMTkgODoyOCBBTSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4gUXVvdGluZyBD
aHJpcyBXaWxzb24gKDIwMTktMDgtMjMgMTY6MTA6NDgpCj4gPj4gUXVvdGluZyBEYW5pZWxlIENl
cmFvbG8gU3B1cmlvICgyMDE5LTA4LTIzIDE2OjA1OjQ1KQo+ID4+Pgo+ID4+Pgo+ID4+PiBPbiA4
LzIzLzE5IDc6MjYgQU0sIENocmlzIFdpbHNvbiB3cm90ZToKPiA+Pj4+IFF1b3RpbmcgQ2hyaXMg
V2lsc29uICgyMDE5LTA4LTIzIDA4OjI3OjI1KQo+ID4+Pj4+IFF1b3RpbmcgRGFuaWVsZSBDZXJh
b2xvIFNwdXJpbyAoMjAxOS0wOC0yMyAwMzowOTowOSkKPiA+Pj4+Pj4gVEdMIGhhcyBhbiBpbXBy
b3ZlZCBDUyBwcmUtcGFyc2VyIHRoYXQgY2FuIG5vdyBwcmUtZmV0Y2ggY29tbWFuZHMgYWNyb3Nz
Cj4gPj4+Pj4+IGJhdGNoIGJvdW5kYXJpZXMuIFRoaXMgaW1wcm92ZXMgcGVyZm9ybWFuY2VzIHdo
ZW4gbG90cyBvZiBzbWFsbCBiYXRjaGVzCj4gPj4+Pj4+IGFyZSB1c2VkLCBidXQgaGFzIGFuIGlt
cGFjdCBvbiBzZWxmLW1vZGlmeWluZyBjb2RlLiBJZiB3ZSB3YW50IHRvIG1vZGlmeQo+ID4+Pj4+
PiB0aGUgY29udGVudCBvZiBhIGJhdGNoIGZyb20gYW5vdGhlciByaW5nL2JhdGNoLCB3ZSBuZWVk
IHRvIGVpdGhlcgo+ID4+Pj4+PiBndWFyYW50ZWUgdGhhdCB0aGUgbWVtb3J5IGxvY2F0aW9uIGlz
IHVwZGF0ZWQgYmVmb3JlIHRoZSBwcmUtcGFyc2VyIGdldHMKPiA+Pj4+Pj4gdG8gaXQgb3Igd2Ug
bmVlZCB0byB0dXJuIHRoZSBwcmUtcGFyc2VyIG9mZiBhcm91bmQgdGhlIG1vZGlmaWNhdGlvbi4K
PiA+Pj4+Pj4gSW4gaTkxNSwgd2UgdXNlIHNlbGYtbW9kaWZ5aW5nIGNvZGUgb25seSBmb3IgR1BV
IHJlbG9jYXRpb25zLgo+ID4+Pj4+Pgo+ID4+Pj4+PiBUaGUgcHJlLXBhcnNlciBmZXRjaGVzIGFj
cm9zcyBtZW1vcnkgc3luY2hyb25pemF0aW9uIGNvbW1hbmRzIGFzIHdlbGwsCj4gPj4+Pj4+IHNv
IHRoZSBvbmx5IHdheSB0byBndWFyYW50ZWUgdGhhdCB0aGUgd3JpdGVzIGxhbmQgYmVmb3JlIHRo
ZSBwYXJzZXIgZ2V0cwo+ID4+Pj4+PiB0byBpdCBpcyB0byBoYXZlIG1vcmUgaW5zdHJ1Y3Rpb25z
IGJldHdlZW4gdGhlIHN5bmMgYW5kIHRoZSBkZXN0aW5hdGlvbgo+ID4+Pj4+PiB0aGFuIHRoZSBw
YXJzZXIgRklGTyBkZXB0aCwgd2hpY2ggaXMgbm90IGFuIG9wdGltYWwgc29sdXRpb24uCj4gPj4+
Pj4KPiA+Pj4+PiBXZWxsLCBvdXIgQUJJIGlzIHRoYXQgbWVtb3J5IGlzIGNvaGVyZW50IGJlZm9y
ZSB0aGUgYnJlYWRjcnVtYiBvZiAqZWFjaCoKPiA+Pj4+PiBiYXRjaC4gVGhhdCBpcyBhIGZ1bmRh
bWVudGFsIHJlcXVpcmVtZW50IGZvciBvdXIgc2lnbmFsaW5nIHRvIHVzZXJzcGFjZS4KPiA+Pj4+
PiBQbGVhc2UgdGVsbCBtZSB0aGF0IHRoZXJlIGlzIGEgY29udGV4dCBmbGFnIHRvIHR1cm4gdGhp
cyBvZmYsIG9yIHdlIGVsc2UKPiA+Pj4+PiB3ZSBuZWVkIHRvIGVtaXQgMzJ4IGZsdXNoZXMgb3Ig
d2hhdGV2ZXIgaXQgdGFrZXMuCj4gPj4+Pgo+ID4+PiBBcmUgeW91IHJlZmVycmluZyB0byB0aGUg
c3BlY2lmaWMgY2FzZSB3aGVyZSB3ZSBoYXZlIGEgcmVxdWVzdCBtb2RpZnlpbmcKPiA+Pj4gYW4g
b2JqZWN0IHRoYXQgaXMgdGhlbiB1c2VkIGFzIGEgYmF0Y2ggaW4gdGhlIG5leHQgcmVxdWVzdD8g
QmVjYXVzZQo+ID4+PiBjb2hlcmVuY3kgb2Ygb2JqZWN0cyB0aGF0IGFyZSBub3QgZXhlY3V0ZWQg
YXMgYmF0Y2hlcyBpcyBub3QgaW1wYWN0ZWQuCj4gPj4KPiA+PiAiRmV0Y2hlcyBhY3Jvc3MgbWVt
b3J5IHN5bmMiIHNvdW5kcyBsaWtlIGEgbWFqb3IgQUJJIGJyZWFrLiBUaGUgYmF0Y2hlcwo+ID4+
IGFyZSBhIGhhcmQgc2VyaWFsaXNhdGlvbiBiYXJyaWVyLCB3aXRoIG1lbW9yeSBjb2hlcmVuY3kg
Z3VhcmFudGVlZCBwcmlvcgo+ID4+IHRvIHRoZSBzaWduYWxpbmcgYXQgdGhlIGVuZCBvZiBvbmUg
YmF0Y2ggYW5kIGNsZWFyIGNhY2hlcyBndWFyYW50ZWVkIGF0Cj4gPj4gdGhlIHN0YXJ0IG9mIHRo
ZSBuZXh0Lgo+ID4gCj4gPiBXZSBoYXZlIHJlbG9jcywgb2EgYW5kIHNzZXUgYWxsIHVzaW5nIHNl
bGYtbW9kaWZ5aW5nIGNvZGUuIEkgZXhwZWN0IHdlCj4gPiB3aWxsIGhhdmUgUFRFIG1vZGlmaWNh
dGlvbnMgYW5kIG11Y2ggbW9yZSBkb25lIHZpYSB0aGUgR1BVIGluIHRoZSBuZWFyCj4gPiBmdXR1
cmUuIEFsbCByZWx5IG9uIHRoZSBDU19TVEFMTCBkb2luZyBleGFjdGx5IHdoYXQgaXQgc2F5cyBv
biB0aGUgdGluLgo+ID4gLUNocmlzCj4gPiAKPiAKPiBJIGd1ZXNzIHRoZSBlYXNpZXN0IHNvbHV0
aW9uIGlzIHRoZW4gdG8ga2VlcCB0aGUgcGFyc2VyIG9mZiBvdXRzaWRlIG9mIAo+IHVzZXIgYmF0
Y2hlcy4gV2UgY2FuIGRlZmF1bHQgdG8gb2ZmIGFuZCB0aGVuIHJlc3RvcmUgd2hhdCB0aGUgdXNl
ciBoYXMgCj4gcHJvZ3JhbW1lZCBiZWZvcmUgdGhlIEJCU1RBUlQuIEl0J3Mgbm90IGEgYnJlYWNo
IG9mIGNvbnRyYWN0IGlmIHdlIHNheSAKPiB0aGF0IGlmIHlvdSBvcHQtaW4gdG8gdGhlIHBhcnNl
ciB0aGVuIHlvdSBuZWVkIHRvIG1ha2Ugc3VyZSB5b3VyIGJhdGNoZXMgCj4gYXJlIG5vdCBzZWxm
LW1vZGlmeWluZywgcmlnaHQ/CgpJcyBpdCBqdXN0IHRoZSBNSV9BUkJfT05PRkYgYml0cywgYW5k
IGlzIHRoYXQgc3RpbGwgYSBwcml2aWxlZ2VkCmNvbW1hbmQ/IGkuZS4gY2FuIHVzZXJzcGFjZSBj
aGFuZ2UgbW9kZSBieSBpdHNlbGYsIG9yIGl0IGlzIGEKY29udGV4dC1wYXJhbT8KCj4gQlRXIHRo
ZSBDU19TVEFMTCBkb2VzIG5vdCBndWFyYW50ZWUgb24gcHJlLWdlbjEyIGdlbnMgdGhhdCAKPiBz
ZWxmLW1vZGlmeWluZyBjb2RlIHdvcmtzIHdpdGhpbiB0aGUgc2FtZSBiYXRjaC9yaW5nIGJlY2F1
c2UgdGhlIAo+IHByZS1wYXJzZXIgaXMgYWxyZWFkeSBwcmUtZmV0Y2hpbmcgYWNyb3NzIG1lbW9y
eSBzeW5jIHBvaW50cywgaXQganVzdCAKPiBzdG9wcyBhdCB0aGUgbmV4dCBhcmIgcG9pbnQuCgpP
aywgd2Ugc3RpbGwgdXBob2xkIG91ciBjb250cmFjdCBpZiB0aGV5IGNhbid0IGV4ZWN1dGUgYW55
IGNvZGUgaW4gdGhlCndpbmRvdyB3aGVyZSB0aGV5IHdvdWxkIHNlZSBzb21lb25lIGVsc2UncyBk
YXRhLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
