Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 96300788C9
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jul 2019 11:46:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D28189C84;
	Mon, 29 Jul 2019 09:46:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE9C989C84
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Jul 2019 09:46:12 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17695576-1500050 for multiple; Mon, 29 Jul 2019 10:45:52 +0100
MIME-Version: 1.0
To: "Bloomfield, Jon" <jon.bloomfield@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <156439240706.11244.2735970875432989488@jlahtine-desk.ger.corp.intel.com>
References: <57b95613f6cf4a0806baeb3d99790bd90b7615e4>
 <AD48BB7FB99B174FBCC69E228F58B3B68B39EC9A@fmsmsx120.amr.corp.intel.com>
 <156409873786.30723.15122214451413059669@skylake-alporthouse-com>
 <AD48BB7FB99B174FBCC69E228F58B3B68B3A0322@fmsmsx120.amr.corp.intel.com>
 <156417185244.21451.7761589449877959086@skylake-alporthouse-com>
 <AD48BB7FB99B174FBCC69E228F58B3B68B3A1F78@fmsmsx120.amr.corp.intel.com>
 <156417657960.21451.14402392043492527858@skylake-alporthouse-com>
 <AD48BB7FB99B174FBCC69E228F58B3B68B3A2150@fmsmsx120.amr.corp.intel.com>
 <156418002274.21451.1623407086944063041@skylake-alporthouse-com>
 <156439240706.11244.2735970875432989488@jlahtine-desk.ger.corp.intel.com>
Message-ID: <156439355256.6902.2488896344376086118@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 29 Jul 2019 10:45:52 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Replace hangcheck by heartbeats
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

UXVvdGluZyBKb29uYXMgTGFodGluZW4gKDIwMTktMDctMjkgMTA6MjY6NDcpCj4gUXVvdGluZyBD
aHJpcyBXaWxzb24gKDIwMTktMDctMjcgMDE6Mjc6MDIpCj4gPiBRdW90aW5nIEJsb29tZmllbGQs
IEpvbiAoMjAxOS0wNy0yNiAyMzoxOTozOCkKPiA+ID4gSG1tbi4gV2UncmUgc3RpbGwgb24gb3J0
aG9nb25hbCBwZXJzcGVjdGl2ZXMgYXMgZmFyIGFzIG91ciBwcmV2aW91cyBhcmd1bWVudHMgc3Rh
bmQuIEJ1dCBpdCBkb2Vzbid0IG1hdHRlciBiZWNhdXNlIHdoaWxlIHRoaW5raW5nIHRocm91Z2gg
eW91ciByZXBsaWVzLCBJIHJlYWxpemVkIHRoZXJlIGlzIG9uZSBhcmd1bWVudCBpbiBmYXZvdXIs
IHdoaWNoIHRydW1wcyBhbGwgbXkgcHJldmlvdXMgYXJndW1lbnRzIGFnYWluc3QgdGhpcyBwYXRj
aCAtIGl0IG1ha2VzIHRoaW5ncyBkZXRlcm1pbmlzdGljLiBXaXRob3V0IHRoaXMgcGF0Y2ggKG9y
IGhhbmdjaGVjayksIHdoZXRoZXIgYSBjb250ZXh0IGdldHMgbnVrZWQgZGVwZW5kcyBvbiB3aGF0
IGVsc2UgaXMgcnVubmluZy4gQW5kIHRoYXQncyBhIHJlY2lwZSBmb3IgY29uZnVzZWQgc3VwcG9y
dCBlbWFpbHMuCj4gPiA+IAo+ID4gPiBTbyBJIHJldHJhY3QgbXkgb3RoZXIgYXJndW1lbnRzLCB0
aGFua3MgZm9yIHN0YXlpbmcgd2l0aCBtZSA6LSkKPiA+IAo+ID4gTm8gd29ycmllcywgaXQncyBi
ZWVuIHJlYWxseSB1c2VmdWwsIGVzcGVjaWFsbHkgcmVhbGlzaW5nIGEgZmV3IG1vcmUKPiA+IGFy
ZWFzIHdlIGNhbiBpbXByb3ZlIG91ciByZXNpbGllbmNlLiBZb3Ugd2lsbCBnZXQgeW91ciB3YXkg
ZXZlbnR1YWxseS4KPiA+IChCdXQgd2hhdCBkaWQgaXQgY29zdD8gRXZlcnl0aGluZy4pCj4gCj4g
T2ssIHNvIGp1c3QgY29uZmlybWluZyBoZXJlLiBUaGUgcGxhbiBpcyBzdGlsbCB0byBoYXZlIHVz
ZXJzcGFjZSBzZXQgYQo+IHBlciBjb250ZXh0IChvciBwZXIgcmVxdWVzdCkgdGltZSBsaW1pdCBm
b3IgZXhwZWN0ZWQgY29tcGxldGlvbiBvZiBhCj4gcmVxdWVzdC4gVGhpcyB3aWxsIGJlIHVzZWZ1
bCBmb3IgdGhlIG1lZGlhIHdvcmtsb2FkcyB0aGF0IGNvbnN1bWUKPiBkZXRlcm1pbmlzdGljIGFt
b3VudCBvZiB0aW1lIGZvciBjb3JyZWN0IGJpdHN0cmVhbS4gQW5kIHRoZSB1c2Vyc3BhY2UKPiB3
YW50cyB0byBiZSBub3RpZmllZCBtdWNoIHF1aWNrZXIgdGhhbiB0aGUgZ2VuZXJpYyBoYW5nY2hl
Y2sgdGltZSBpZgo+IHRoZSBvcGVyYXRpb24gZmFpbGVkIGR1ZSB0byBjb3JydXB0IGJpdHN0cmVh
bS4KPiAKPiBUaGlzIHRpbWUgbGltaXQgY2FuIGJlIHNldCB0byBpbmZpbml0ZSBieSBjb21wdXRl
IHdvcmtsb2Fkcy4KClRoYXQgb25seSBwcm92aWRlcyBhIGNhcCBvbiB0aGUgY29udGV4dCBpdHNl
bGYuIFdlIGFsc28gaGF2ZSB0aGUKY3JpdGVyaWEgdGhhdCBpcyBzb21ldGhpbmcgZWxzZSBoYXMg
YmVlbiBzZWxlY3RlZCB0byBydW4gb24gdGhlIEdQVSwgeW91CmhhdmUgdG8gYWxsb3cgcHJlZW1w
dGlvbiB3aXRoaW4gYSBjZXJ0YWluIHBlcmlvZCBvciBlbHNlIHlvdSB3aWxsIGJlCnNob3QuCiAK
PiBUaGVuLCBpbiBwYXJhbGxlbCB0byB0aGF0LCB3ZSBoYXZlIGNncm91cHMgb3Igc3lzdGVtIHdp
ZGUgY29uZmlndXJhdGlvbgo+IGZvciBtYXhpbXVtIGFsbG93ZWQgdGltZXNsaWNlIHBlciBwcm9j
ZXNzL2NvbnRleHQuIFRoYXQgbWVhbnMgdGhhdCBhCj4gbG9uZy1ydW5uaW5nIHdvcmtsb2FkIG11
c3QgcHJlLWVtcHQgYXQgdGhhdCBncmFudWxhcml0eS4KCk5vdCBxdWl0ZS4gSXQgbXVzdCBwcmVl
bXB0IHdpdGhpbiBhIGZldyBtcyBvZiBiZWluZyBhc2tlZCwgdGhhdCBpcyBhCmRpZmZlcmVudCBw
cm9ibGVtIHRvIHRoZSB0aW1lc2xpY2UgZ3JhbnVsYXJpdHkgKHdoaWNoIGlzIHdoZW4gd2UgYXNr
IGl0CnRvIHN3aXRjaCwgb3IgaWYgbm90IGR1ZSB0byBhIGhpZ2ggcHJpb3JpdHkgcmVxdWVzdCBl
YXJsaWVyKS4gSXQncyBhIFFvUwppc3N1ZSBmb3IgdGhlIG90aGVyIGNvbnRleHQuIFNldHRpbmcg
dGhhdCB0aW1lb3V0IGlzIGhhcmQsIHdlIGNhbiBhbGxvdwphIGNvbnRleHQgdG8gc2VsZWN0IGl0
cyBvd24gdGltZW91dCwgb3IgZGVmaW5lIGl0IHZpYSBzeXNmcy9jZ3JvdXBzLCBidXQKYmVjYXVz
ZSBpdCBkZXBlbmRzIG9uIHRoZSBydW5uaW5nIGNvbnRleHQsIGl0IGNhdXNlcyBhbm90aGVyIGNv
bnRleHQgdG8KZmFpbCBpbiBub24tdHJpdmlhbCB3YXlzLiBUaGUgR1BVIGlzIHNpbXBseSBub3Qg
YXMgcHJlZW1wdGlibGUgYXMgb25lCndvdWxkIGxpa2UuCgpGd2l3LCBJIHdhcyB0aGlua2luZyB0
aGUgbmV4dCBzdGVwIHdvdWxkIGJlIHRvIHB1dCBwZXItZW5naW5lIGNvbnRyb2xzCmluIHN5c2Zz
LCB0aGVuIGNyb3NzIHRoZSBjZ3JvdXBzIGJyaWRnZS4gSSdtIG5vdCBzdXJlIG15IHByZXZpb3Vz
IHBsYW4Kb2YgZXhwb3NpbmcgcGVyLWNvbnRleHQgcGFyYW1ldGVycyBmb3IgdGltZXNsaWNlL3By
ZWVtcHRpb24gaXMgdGhhdAp1c2FibGUuCgo+IFRoYXQgcHJlLWVtcHRpb24vaGVhcmJlYXQgc2hv
dWxkIGhhcHBlbiByZWdhcmRsZXNzIGlmIG90aGVycyBjb250ZXh0cyBhcmUKPiByZXF1ZXN0aW5n
IHRoZSBoYXJkd2FyZSBvciBub3QsIGJlY2F1c2UgYmV0dGVyIHN0YXJ0IHJlY292ZXJ5IG9mIGEg
aHVuZwo+IHRhc2sgYXMgc29vbiBhcyBpdCBtaXNiZWhhdmVzLgoKSSBjb25jdXIsIGJ1dCBKb24g
d291bGQgbGlrZSB0aGUgb3Bwb3NpdGUgdG8gYWxsb3cgZm9yIHVuY29vcGVyYXRpdmUKY29tcHV0
ZSBrZXJuZWxzIHRoYXQgc2ltcGx5IGJsb2NrIHByZWVtcHRpb24gZm9yZXZlci4gSSB0aGluayBm
b3IgdGhlCmV4dHJlbWUgSm9uIHdhbnRzLCBzb21ldGhpbmcgbGlrZSBDUFUtaXNvbGF0aW9uIGZp
dHMgYmV0dGVyLCB3aGVyZSB0aGUKaW1wb3J0YW50IGNsaWVudCBvd25zIGFuIGVuZ2luZSBhbGwg
dG8gaXRzZWxmIGFuZCB0aGUga2VybmVsIGlzIG5vdCBldmVuCmFsbG93ZWQgdG8gZG8gaG91c2Vr
ZWVwaW5nIG9uIHRoYXQgZW5naW5lLiAoV2Ugd291bGQgdHVybiBvZmYgdGltZS0Kc2xpY2luZywg
cHJlZW1wdGlvbiB0aW1lcnMsIGV0YyBvbiB0aGF0IGVuZ2luZSBhbmQgYmFzaWNhbGx5IHJ1biBp
dCBpbgpzdWJtaXNzaW9uIG9yZGVyLikKLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
