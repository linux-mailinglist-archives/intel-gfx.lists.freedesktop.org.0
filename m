Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 49F84102FAE
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2019 00:04:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 902C46E9F1;
	Tue, 19 Nov 2019 23:04:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 50BA56E9F1
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Nov 2019 23:03:59 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19264428-1500050 for multiple; Tue, 19 Nov 2019 23:03:57 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: "Summers, Stuart" <stuart.summers@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
References: <20191119213032.133992-1-stuart.summers@intel.com>
 <157420128680.13839.10864804000426800390@skylake-alporthouse-com>
 <69805de985458cc39fd0edb9ad84b6935e8b7ed1.camel@intel.com>
In-Reply-To: <69805de985458cc39fd0edb9ad84b6935e8b7ed1.camel@intel.com>
Message-ID: <157420463444.15427.15345470758653713079@skylake-alporthouse-com>
Date: Tue, 19 Nov 2019 23:03:54 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: Ensure aperture exists before
 setting domain to GTT
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

UXVvdGluZyBTdW1tZXJzLCBTdHVhcnQgKDIwMTktMTEtMTkgMjI6NTg6MzgpCj4gT24gVHVlLCAy
MDE5LTExLTE5IGF0IDIyOjA4ICswMDAwLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBRdW90aW5n
IFN0dWFydCBTdW1tZXJzICgyMDE5LTExLTE5IDIxOjMwOjMyKQo+ID4gPiBtbWFwX2d0dCBpcyBh
bHJlYWR5IGNvdmVyZWQgYnkgYSBjaGVjayBmb3IgYXBlcnR1cmUgcHJlc2VuY2UuCj4gPiA+IEFs
c28gYWRkIHRoZSBjYXNlIHRvIHRoZSBnZW1fc2V0X2RvbWFpbiBJT0NUTCB0byBhdm9pZCB0aGlz
Cj4gPiA+IHBhdGggZm9yIHVuc3VwcG9ydGVkIHBsYXRmb3Jtcy4KPiA+IAo+ID4gSXQgZG9lc24n
dCBoYXJtIGVpdGhlciwgaXQgd2lsbCBqdXN0IG1lYW4gaW4gYSBwbGFjZSB3aGVyZSBpdCBpcwo+
ID4gbmVpdGhlcgo+ID4gaW4gdGhlIEdQVSBub3IgaW4gdGhlIENQVSBjYWNoZSwgc2FtZSBhcyBp
dCBkb2VzIHRvZGF5LiBUaGUKPiA+IGFkZGl0aW9uYWwKPiA+IGZsdXNoZXMgY29taW5nIG91dCBv
ZiBhIEdUVCB3cml0ZSBkb21haW4gc2hvdWxkIGFscmVhZHkgYmUgZWxpZGVkLgo+ID4gCj4gPiBJ
dCBpcyB1c2VkIGludGVybmFsbHkgdG8gbWVhbiBwcmVjaXNlbHkgdGhhdC4uLgo+ID4gCj4gPiBV
c2Vyc3BhY2Ugc2hvdWxkIGFscmVhZHkgYmUgd2VhbmluZyBpdHNlbGYgb2ZmIHNldC1kb21haW4g
YWx0b2dldGhlci4KPiAKPiBCdXQgZXZlbiB3aXRoIHRoZSB3ZWFuaW5nLCBzaG91bGRuJ3Qgd2Ug
aGF2ZSB0aGVzZSBjaGVja3MgaW4gcGxhY2UgZm9yCj4gc2FmZXR5PyBMZXQncyBzYXkgdGhlcmUn
cyBzb21lIHBsYXRmb3JtIGlzc3VlIHdpdGggdGhlIEdUVCBmbHVzaGVzIGFuZAo+IG1vdmluZyBh
aGVhZCBjYXVzZXMgdGhlIGhhcmR3YXJlIHRvIGdldCBpbiBhIGJhZCBzdGF0ZS4gSXNuJ3QgaXQg
YmV0dGVyCj4gdG8gYmFpbCBlYXJseT8gTGV0IG1lIGtub3cgaWYgSSdtIG1pc3Npbmcgc29tZXRo
aW5nIG9idmlvdXMgaGVyZQo+IHRob3VnaC4KClRoYXQgd2UgdXNlIGl0IGludGVybmFsbHkuCgpJ
dCB3aWxsIG5ldmVyIGJlIHVuc2FmZSBzaW1wbHkgYmVjYXVzZSBpZiB0aGUgZXh0cmEgZmx1c2hl
cyBkb24ndCBleGlzdCwKdGhleSBkb24ndCBleGlzdC4gSnVzdCBsaWtlIHRvZGF5IQotQ2hyaXMK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
