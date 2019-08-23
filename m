Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A858B9B1E2
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Aug 2019 16:26:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C273C6EC19;
	Fri, 23 Aug 2019 14:26:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 853A16EC19
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Aug 2019 14:26:25 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18241377-1500050 for multiple; Fri, 23 Aug 2019 15:26:11 +0100
MIME-Version: 1.0
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <156654524525.27716.6405573408447860616@skylake-alporthouse-com>
References: <20190823020909.6029-1-daniele.ceraolospurio@intel.com>
 <156654524525.27716.6405573408447860616@skylake-alporthouse-com>
Message-ID: <156657036871.27716.10415431163024851672@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 23 Aug 2019 15:26:08 +0100
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDgtMjMgMDg6Mjc6MjUpCj4gUXVvdGluZyBEYW5p
ZWxlIENlcmFvbG8gU3B1cmlvICgyMDE5LTA4LTIzIDAzOjA5OjA5KQo+ID4gVEdMIGhhcyBhbiBp
bXByb3ZlZCBDUyBwcmUtcGFyc2VyIHRoYXQgY2FuIG5vdyBwcmUtZmV0Y2ggY29tbWFuZHMgYWNy
b3NzCj4gPiBiYXRjaCBib3VuZGFyaWVzLiBUaGlzIGltcHJvdmVzIHBlcmZvcm1hbmNlcyB3aGVu
IGxvdHMgb2Ygc21hbGwgYmF0Y2hlcwo+ID4gYXJlIHVzZWQsIGJ1dCBoYXMgYW4gaW1wYWN0IG9u
IHNlbGYtbW9kaWZ5aW5nIGNvZGUuIElmIHdlIHdhbnQgdG8gbW9kaWZ5Cj4gPiB0aGUgY29udGVu
dCBvZiBhIGJhdGNoIGZyb20gYW5vdGhlciByaW5nL2JhdGNoLCB3ZSBuZWVkIHRvIGVpdGhlcgo+
ID4gZ3VhcmFudGVlIHRoYXQgdGhlIG1lbW9yeSBsb2NhdGlvbiBpcyB1cGRhdGVkIGJlZm9yZSB0
aGUgcHJlLXBhcnNlciBnZXRzCj4gPiB0byBpdCBvciB3ZSBuZWVkIHRvIHR1cm4gdGhlIHByZS1w
YXJzZXIgb2ZmIGFyb3VuZCB0aGUgbW9kaWZpY2F0aW9uLgo+ID4gSW4gaTkxNSwgd2UgdXNlIHNl
bGYtbW9kaWZ5aW5nIGNvZGUgb25seSBmb3IgR1BVIHJlbG9jYXRpb25zLgo+ID4gCj4gPiBUaGUg
cHJlLXBhcnNlciBmZXRjaGVzIGFjcm9zcyBtZW1vcnkgc3luY2hyb25pemF0aW9uIGNvbW1hbmRz
IGFzIHdlbGwsCj4gPiBzbyB0aGUgb25seSB3YXkgdG8gZ3VhcmFudGVlIHRoYXQgdGhlIHdyaXRl
cyBsYW5kIGJlZm9yZSB0aGUgcGFyc2VyIGdldHMKPiA+IHRvIGl0IGlzIHRvIGhhdmUgbW9yZSBp
bnN0cnVjdGlvbnMgYmV0d2VlbiB0aGUgc3luYyBhbmQgdGhlIGRlc3RpbmF0aW9uCj4gPiB0aGFu
IHRoZSBwYXJzZXIgRklGTyBkZXB0aCwgd2hpY2ggaXMgbm90IGFuIG9wdGltYWwgc29sdXRpb24u
Cj4gCj4gV2VsbCwgb3VyIEFCSSBpcyB0aGF0IG1lbW9yeSBpcyBjb2hlcmVudCBiZWZvcmUgdGhl
IGJyZWFkY3J1bWIgb2YgKmVhY2gqCj4gYmF0Y2guIFRoYXQgaXMgYSBmdW5kYW1lbnRhbCByZXF1
aXJlbWVudCBmb3Igb3VyIHNpZ25hbGluZyB0byB1c2Vyc3BhY2UuCj4gUGxlYXNlIHRlbGwgbWUg
dGhhdCB0aGVyZSBpcyBhIGNvbnRleHQgZmxhZyB0byB0dXJuIHRoaXMgb2ZmLCBvciB3ZSBlbHNl
Cj4gd2UgbmVlZCB0byBlbWl0IDMyeCBmbHVzaGVzIG9yIHdoYXRldmVyIGl0IHRha2VzLgoKU28g
bG9va2luZyBhdCB3aGF0IHlvdSBhcmUgZG9pbmcsIGl0IHNlZW1zIGVudGlyZWx5IHBvc3NpYmxl
IHRoYXQgd2UgY2FuCnN3aXRjaCBvZmYgdGhlIHByZXBhcnNlciBmb3IgdGhlIGJyZWFkY3J1bWIg
LS0gaXMgdGhhdCBlbm91Z2ggdG8gbWFrZQp0aGF0IGZpbmFsIHNpZ25hbCBjb2hlcmVudCBhbmQg
cHJvdmlkZSB0aGUgYmFycmllciByZXF1aXJlZCBmb3IgdGhlCmludmFsaWRhdGlvbiBhdCB0aGUg
c3RhcnQgb2YgdGhlIG5leHQ/IChZb3UgbWlnaHQgZXZlbiBvbmx5IGVuYWJsZSB0aGUKcHJlcGFy
c2VyIGFyb3VuZCB1c2Vyc3BhY2UgYmF0Y2hlcy4pIE9yIEkgaG9wZSB0aGV5IGhhdmUgYW4gZXh0
cmEgZmx1c2gKYml0IGZvciBjb3JyZWN0IHNlcmlhbGlzYXRpb24uCi1DaHJpcwpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
