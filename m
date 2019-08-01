Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 621047DF6A
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Aug 2019 17:48:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C62546E709;
	Thu,  1 Aug 2019 15:48:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DC1B6E709
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Aug 2019 15:48:38 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17792489-1500050 for multiple; Thu, 01 Aug 2019 16:48:36 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190723183842.20372-1-chris@chris-wilson.co.uk>
 <20190723183842.20372-3-chris@chris-wilson.co.uk>
 <7a17fe1a-4972-658a-3e9d-550ceb788201@linux.intel.com>
 <0f4b8c49-ffe3-87a5-6abb-dffa6f9fef8b@linux.intel.com>
 <156464886350.2512.13201380958664478117@skylake-alporthouse-com>
 <340df1ef-0d75-131d-cc39-b3d9edb9c3ec@linux.intel.com>
 <156465702635.2512.9932000772655773495@skylake-alporthouse-com>
 <156465803327.5400.3625959459348155022@skylake-alporthouse-com>
 <1fcdbd8b-acf4-5493-24b5-16eca782d997@linux.intel.com>
In-Reply-To: <1fcdbd8b-acf4-5493-24b5-16eca782d997@linux.intel.com>
Message-ID: <156467451363.6045.1707772989858443331@skylake-alporthouse-com>
Date: Thu, 01 Aug 2019 16:48:33 +0100
Subject: Re: [Intel-gfx] [PATCH 03/23] drm/i915: Remove lrc default desc
 from GEM context
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wOC0wMSAxNjoyOTo1MykKPiAKPiBPbiAwMS8w
OC8yMDE5IDEyOjEzLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBRdW90aW5nIENocmlzIFdpbHNv
biAoMjAxOS0wOC0wMSAxMTo1NzowNikKPiA+PiBRdW90aW5nIFR2cnRrbyBVcnN1bGluICgyMDE5
LTA4LTAxIDA5OjUzOjE1KQo+ID4+PiBXZSBjb3VsZCBzdG9yZSBpdCBpbiBjZSB0aGVuLiBXZSBh
bHJlYWR5IGhhdmUgd2VsbCBkZWZpbmVkIGNvbnRyb2wKPiA+Pj4gcG9pbnRzIGZvciB3aGVuIHZt
IGNoYW5nZXMgd2hlbiBhbGwgYXJlIHVwZGF0ZWQuCj4gPj4KPiA+PiBXZSBhcmUgc3RvcmluZyBp
dCBpbiBjZTsgaXQncyBub3QgbGlrZSB3ZSByZWNvbXB1dGUgaXQgYWxsIHRoYXQgb2Z0ZW4sCj4g
Pj4gYW5kIHdoZW4gd2UgZG8gaXQncyBiZWNhdXNlIHdlIGhhdmUgcmVib3VuZCB0aGUgdm1hLgo+
ID4+Cj4gPj4+IElmIGRvbmUgbGlrZSB0aGlzIHRoZW4gaXQgbG9va3MgbGlrZSBhc3NpZ25pbmcg
Y3R4LT5od19pZCBjb3VsZCBhbHNvIGRvCj4gPj4+IHRoZSBkZWZhdWx0X2Rlc2MgdXBkYXRlLCBz
byB0aGF0IHdlIGNhbiBhdm9pZCBldmVuIG1vcmUgd29yayBkb25lIGF0IHBpbgo+ID4+PiB0aW1l
Lgo+ID4+Cj4gPj4gV2hhdCBjdHgtPmh3X2lkPyBZb3UgYXJlIGltYWdpbmluZyB0aGluZ3MgYWdh
aW4gOi1wCj4gPj4KPiA+PiBSZW1lbWJlciB0aGF0IHdlIG9ubHkgZG8gdGhpcyBvbiBmaXJzdCBw
aW4gZnJvbSBpZGxlLCBub3QgZXZlcnkgcGluLgo+ID4gCj4gPiBGd2l3LCBJIHF1aWNrbHkgbG9v
a2VkIGF0IG9ubHkgZG9pbmcgaXQgaWYgdGhlIHZtYSBpcyByZWJvdW5kLCBidXQKPiA+IHRoYXQn
cyBtb3ZlIGJyYW5jaGVzIGp1c3QgdG8gc2F2ZSBhIGNvdXBsZS4gVGhlIGxvdyBmcmVxdWVuY3kg
YXQgd2hpY2gKPiA+IHdlIGhhdmUgdG8gYWN0dWFsbHkgY29tcHV0ZSB0aGlzICh3YWxrIGEgZmV3
IG1vcmUgYnJhbmNoZXMgaW5zaWRlIGFuCj4gPiBhbHJlYWR5IGJyYW5jaHkgY29udHh0X3Bpbikg
ZG9lc24ndCBzZWVtIHRvIGp1c3RpZnkgdGhlIGV4dHJhIHN0b3JhZ2UgZm9yCj4gPiBtZS4gSXQn
cyBub3QgbGlrZSB3ZSBhcmUgcmVjb21wdXRpbmcgbHJjX2Rlc2Mgb24gZXZlcnkgc3VibWl0IGFz
IGl0IG9uY2UKPiA+IHdhcy4KPiAKPiBPbiBldmVyeSBzdWJtaXQgaWYgbGFzdCByZXF1ZXN0IGdv
dCByZXRpcmVkIGluIHRoZSBtZWFudGltZSwgbm8sIGZvciAKPiBpbnN0YW5jZSBidXJzdHkgbG9h
ZHM/IFllYWggaXQgaXMgdmVyeSBpbmNvbnNlcXVlbnRpYWwgYnV0IGF0IHNvbWUgcG9pbnQgCj4g
d2UgbWFkZSBhbiBlZmZvcnQgdG8gY2FjaGUgYXMgbXVjaCBhcyBwb3NzaWJsZSB3aGF0IGlzIGlu
dmFyaWFudCBzbyBpdCAKPiBzYWRkZW5zIG1lIGEgYml0IHRvIHJlbW92ZSB0aGF0LgoKT25jZSB3
ZSBoYXZlIGh3X2lkIG91dCBvZiB0aGUgd2F5LCB3ZSBvbmx5IG5lZWQgdG8gc2V0IHRoZSBib3R0
b20gMzJiCmhlcmUuCiAKPiBGb3IgaW5zdGFuY2UgSWNlbGFrZSBlbmdpbmUgZGVwZW5kZW50IHN0
dWZmIHNuZWFrZWQgaW50byAKPiBpbnRlbF9scmMuYy9scmNfZGVzcmlwdG9ycyBhdCBzb21lIHBv
aW50LCB3aGljaCBpcyBhbHNvIGFnYWluc3QgdGhlIAo+IHNwaXJpdCBvZiBjYWNoaW5nLiBJZiB3
ZSB3ZXJlIHRvIG1vdmUgdGhlIGNhY2hlZCB2YWx1ZSBpbiBjZSB0aGVuIHdlIAo+IHdvdWxkIGJl
IGFibGUgdG8gcmVtb3ZlIHRoYXQgYW5kIGhhdmUgaXQgb25jZSBhZ2FpbiBtaW5pbWFsIGluIHRo
ZXJlLgoKV2VsbCB3ZSBjYW4gc2V0IGFsbCBiaXRzIGJ1dCBod19pZC9scmNhIGF0IGluaXQgdGlt
ZS4gSG93IGFib3V0IGlmIEkgcnVuCnRoYXQgcGFzdCB5b3U/Cgo+IE5vdCBvbmx5IGp1c3QgbWlu
aW1hbCwgYnV0IG5vdCBzZXBhcmF0ZWQgaW4gdHdvIHNlcGFyYXRlIHBsYWNlcy4gSSBndWVzcyAK
PiB0aGlzIHBhdGNoIGltcHJvdmVzIHRoaW5ncyBpbiB0aGF0IHJlc3BlY3QgLSBjb25zb2xpZGF0
ZXMgdGhlIGxyY19kZXNjIAo+IGNvbXB1dGF0aW9uIG9uY2UgYWdhaW4uCj4gCj4gSSBkaWQgbm90
IGdldCB0aGUgcGFydCBhYm91dCBWTUEgcmUtYmluZGluZy4gSSBkaWQgbm90IHN1Z2dlc3QgdG8g
bW92ZSAKPiB0aGUgbHJjYSBvZmZzZXQgaW50byBjYWNoZSBhcyB3ZWxsLiBJIHdhcyBqdXN0IHRo
aW5raW5nIGFib3V0IHRoZSBnZW4sIAo+IGVuZ2luZSBhbmQgdm0gZGVwZW5kZW50IGJpdHMgY291
bGQgbmF0dXJhbGx5IGdvIGludG8gCj4gaTkxNV9nZW1fY29udGV4dC5jL2RlZmF1bHRfZGVzY190
ZW1wbGF0ZS4gSnVzdCBuZWVkIHRvIHRha2UgKGVuZ2luZSwgCj4gaHdfaWQsIHZtKS4KCkknbSBq
dXN0IHRoaW5raW5nIGFib3V0IHRoZSBiaXQgdGhhdCBjaGFuZ2VzIGluc2lkZSBjZS0+bHJjX2Rl
c2MuCiAKPiBBbmQgdmlydHVhbCBlbmdpbmUgd291bGQgaGF2ZSB0byByZS1jb21wdXRlIGl0IHdo
ZW4gbW92aW5nIGVuZ2luZXMuIEhtLi4gCj4gd2UgZG9uJ3Qgc2VlbSB0byBkbyB0aGF0PyBPbmx5
IHdoZW4gcGlubmluZyB3ZSBzZXQgaXQgdXAgYmFzZWQgb24gCj4gc2libGluZ1swXSBzbyBob3cg
aXQgYWxsIHdvcmtzPyBXZSBkb24ndCByZS1waW4gd2hlbiBtb3ZpbmcgZW5naW5lIEkgCj4gdGhv
dWdodC4KCk5vLiBXZSBkb24ndC4gV2hvb3BzLiBHb29kIGpvYiBjbGVhcmx5IG5vdGhpbmcgdXNl
cyB0aGF0IHRoZW4uCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
