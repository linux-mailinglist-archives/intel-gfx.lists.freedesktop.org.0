Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EFCA9B311
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Aug 2019 17:11:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 889326ECC0;
	Fri, 23 Aug 2019 15:11:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88FCA6ECC0
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Aug 2019 15:11:21 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18241962-1500050 for multiple; Fri, 23 Aug 2019 16:10:51 +0100
MIME-Version: 1.0
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <d34b64fd-4ece-ffea-6ab3-0ef1dbaf5ce1@intel.com>
References: <20190823020909.6029-1-daniele.ceraolospurio@intel.com>
 <156654524525.27716.6405573408447860616@skylake-alporthouse-com>
 <156657036871.27716.10415431163024851672@skylake-alporthouse-com>
 <d34b64fd-4ece-ffea-6ab3-0ef1dbaf5ce1@intel.com>
Message-ID: <156657304893.4019.6114530226750288695@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 23 Aug 2019 16:10:48 +0100
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

UXVvdGluZyBEYW5pZWxlIENlcmFvbG8gU3B1cmlvICgyMDE5LTA4LTIzIDE2OjA1OjQ1KQo+IAo+
IAo+IE9uIDgvMjMvMTkgNzoyNiBBTSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4gUXVvdGluZyBD
aHJpcyBXaWxzb24gKDIwMTktMDgtMjMgMDg6Mjc6MjUpCj4gPj4gUXVvdGluZyBEYW5pZWxlIENl
cmFvbG8gU3B1cmlvICgyMDE5LTA4LTIzIDAzOjA5OjA5KQo+ID4+PiBUR0wgaGFzIGFuIGltcHJv
dmVkIENTIHByZS1wYXJzZXIgdGhhdCBjYW4gbm93IHByZS1mZXRjaCBjb21tYW5kcyBhY3Jvc3MK
PiA+Pj4gYmF0Y2ggYm91bmRhcmllcy4gVGhpcyBpbXByb3ZlcyBwZXJmb3JtYW5jZXMgd2hlbiBs
b3RzIG9mIHNtYWxsIGJhdGNoZXMKPiA+Pj4gYXJlIHVzZWQsIGJ1dCBoYXMgYW4gaW1wYWN0IG9u
IHNlbGYtbW9kaWZ5aW5nIGNvZGUuIElmIHdlIHdhbnQgdG8gbW9kaWZ5Cj4gPj4+IHRoZSBjb250
ZW50IG9mIGEgYmF0Y2ggZnJvbSBhbm90aGVyIHJpbmcvYmF0Y2gsIHdlIG5lZWQgdG8gZWl0aGVy
Cj4gPj4+IGd1YXJhbnRlZSB0aGF0IHRoZSBtZW1vcnkgbG9jYXRpb24gaXMgdXBkYXRlZCBiZWZv
cmUgdGhlIHByZS1wYXJzZXIgZ2V0cwo+ID4+PiB0byBpdCBvciB3ZSBuZWVkIHRvIHR1cm4gdGhl
IHByZS1wYXJzZXIgb2ZmIGFyb3VuZCB0aGUgbW9kaWZpY2F0aW9uLgo+ID4+PiBJbiBpOTE1LCB3
ZSB1c2Ugc2VsZi1tb2RpZnlpbmcgY29kZSBvbmx5IGZvciBHUFUgcmVsb2NhdGlvbnMuCj4gPj4+
Cj4gPj4+IFRoZSBwcmUtcGFyc2VyIGZldGNoZXMgYWNyb3NzIG1lbW9yeSBzeW5jaHJvbml6YXRp
b24gY29tbWFuZHMgYXMgd2VsbCwKPiA+Pj4gc28gdGhlIG9ubHkgd2F5IHRvIGd1YXJhbnRlZSB0
aGF0IHRoZSB3cml0ZXMgbGFuZCBiZWZvcmUgdGhlIHBhcnNlciBnZXRzCj4gPj4+IHRvIGl0IGlz
IHRvIGhhdmUgbW9yZSBpbnN0cnVjdGlvbnMgYmV0d2VlbiB0aGUgc3luYyBhbmQgdGhlIGRlc3Rp
bmF0aW9uCj4gPj4+IHRoYW4gdGhlIHBhcnNlciBGSUZPIGRlcHRoLCB3aGljaCBpcyBub3QgYW4g
b3B0aW1hbCBzb2x1dGlvbi4KPiA+Pgo+ID4+IFdlbGwsIG91ciBBQkkgaXMgdGhhdCBtZW1vcnkg
aXMgY29oZXJlbnQgYmVmb3JlIHRoZSBicmVhZGNydW1iIG9mICplYWNoKgo+ID4+IGJhdGNoLiBU
aGF0IGlzIGEgZnVuZGFtZW50YWwgcmVxdWlyZW1lbnQgZm9yIG91ciBzaWduYWxpbmcgdG8gdXNl
cnNwYWNlLgo+ID4+IFBsZWFzZSB0ZWxsIG1lIHRoYXQgdGhlcmUgaXMgYSBjb250ZXh0IGZsYWcg
dG8gdHVybiB0aGlzIG9mZiwgb3Igd2UgZWxzZQo+ID4+IHdlIG5lZWQgdG8gZW1pdCAzMnggZmx1
c2hlcyBvciB3aGF0ZXZlciBpdCB0YWtlcy4KPiA+IAo+IEFyZSB5b3UgcmVmZXJyaW5nIHRvIHRo
ZSBzcGVjaWZpYyBjYXNlIHdoZXJlIHdlIGhhdmUgYSByZXF1ZXN0IG1vZGlmeWluZyAKPiBhbiBv
YmplY3QgdGhhdCBpcyB0aGVuIHVzZWQgYXMgYSBiYXRjaCBpbiB0aGUgbmV4dCByZXF1ZXN0PyBC
ZWNhdXNlIAo+IGNvaGVyZW5jeSBvZiBvYmplY3RzIHRoYXQgYXJlIG5vdCBleGVjdXRlZCBhcyBi
YXRjaGVzIGlzIG5vdCBpbXBhY3RlZC4KCiJGZXRjaGVzIGFjcm9zcyBtZW1vcnkgc3luYyIgc291
bmRzIGxpa2UgYSBtYWpvciBBQkkgYnJlYWsuIFRoZSBiYXRjaGVzCmFyZSBhIGhhcmQgc2VyaWFs
aXNhdGlvbiBiYXJyaWVyLCB3aXRoIG1lbW9yeSBjb2hlcmVuY3kgZ3VhcmFudGVlZCBwcmlvcgp0
byB0aGUgc2lnbmFsaW5nIGF0IHRoZSBlbmQgb2Ygb25lIGJhdGNoIGFuZCBjbGVhciBjYWNoZXMg
Z3VhcmFudGVlZCBhdAp0aGUgc3RhcnQgb2YgdGhlIG5leHQuCgpUaGVyZSBpcyBtdXR0ZXJpbmdz
IGZvciBhIHdlYWtlciBtb2RlLCB0aGUgYWJvdmUgaXMgb3VyIGV4aXN0aW5nCmNvbnRyYWN0LiBU
aGVyZSBpcyBub3RoaW5nIHNwZWNpYWwgYWJvdXQgdGhlIHJlbG9jYXRpb24gY29kZSwgaXQgaXMK
YXNzdW1pbmcgb3VyIGNvbnRyYWN0IGhvbGRzLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
