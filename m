Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 075B58CEB8
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Aug 2019 10:43:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0AFCA6E43B;
	Wed, 14 Aug 2019 08:43:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19A196E43B
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Aug 2019 08:43:21 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18074027-1500050 for multiple; Wed, 14 Aug 2019 09:43:05 +0100
MIME-Version: 1.0
To: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <83F5C7385F545743AD4FB2A62F75B073481176C3@ORSMSX108.amr.corp.intel.com>
References: <20190813174735.11159-1-chris@chris-wilson.co.uk>
 <20190813182112.23227-1-chris@chris-wilson.co.uk>
 <83F5C7385F545743AD4FB2A62F75B073481176C3@ORSMSX108.amr.corp.intel.com>
Message-ID: <156577218378.2301.10217239474700603166@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 14 Aug 2019 09:43:03 +0100
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Disregard
 drm_mode_config.fb_base
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBTcml2YXRzYSwgQW51c2hhICgyMDE5LTA4LTE0IDAwOjQxOjE1KQo+IAo+IAo+ID4g
LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPiA+IEZyb206IENocmlzIFdpbHNvbiA8Y2hyaXNA
Y2hyaXMtd2lsc29uLmNvLnVrPgo+ID4gU2VudDogVHVlc2RheSwgQXVndXN0IDEzLCAyMDE5IDEx
OjIxIEFNCj4gPiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+ID4gQ2M6IENo
cmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPjsgRGFuaWVsIFZldHRlcgo+ID4g
PGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g+OyBNYWFydGVuIExhbmtob3JzdAo+ID4gPG1hYXJ0ZW4u
bGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT47IFNyaXZhdHNhLCBBbnVzaGEKPiA+IDxhbnVzaGEu
c3JpdmF0c2FAaW50ZWwuY29tPgo+ID4gU3ViamVjdDogW1BBVENIIHYyXSBkcm0vaTkxNTogRGlz
cmVnYXJkIGRybV9tb2RlX2NvbmZpZy5mYl9iYXNlCj4gPiAKPiA+IFRoZSBmYl9iYXNlIGlzIG9u
bHkgdXNlZCBmb3IgY29tbXVuaWNhdGluZyB0aGUgR1RUIEJBUiBmcm9tIG9uZSBwaWVjZSBvZiB0
aGUKPiA+IGRpc3BsYXkgY29kZSAoa21zIHNldHVwKSB0byBhbm90aGVyIChmYmRldikuIFdoYXQg
aXMgcmVxdWlyZWQgaW4gdGhlIGZiZGV2IGlzIGp1c3QKPiA+IHRoZSBhcGVydHVyZSBhZGRyZXNz
IHdoaWNoIHNob3VsZCBiZSBkZXJpdmVkIGZyb20gdGhlIGJvIHdlIGFsbG9jYXRlIGZvciB0aGUK
PiA+IGZyYW1lYnVmZmVyIGRpcmVjdGx5Lgo+ID4gCj4gPiBUaGUgc2FtZSBhcHBlYXJzIHRydWUg
Zm9yIGRybS87IGl0IGlzIG5vdCB1c2VkIGJ5IHRoZSBjb3JlIG9yIHRoZSB1QVBJLCBpdCBpcwo+
ID4gbWVyZWx5IGZvciBjb252ZW5pZW50bHkgcGFzc2luZyBhIGRldmljZSBhZGRyZXNzIGZyb20g
Yml0IG9mIGRpc3BsYXkKPiA+IG1hbmFnZW1lbnQgY29kZSB0byBhbm90aGVyLgo+ID4gCj4gPiB2
MjogTm90ZSB0aGF0IHNpbmNlIHdlIG9ubHkgZXhwb3NlIGVub3VnaCBvZiBhIHN5c3RlbSBtYXAg
dG8gY292ZXIgb3VyIHNpbmdsZQo+ID4gZnJhbWVidWZmZXIsIHRoZSBzY3JlZW5fYmFzZS9zaXpl
IGFuZCB0aGUgc21lbSBhcmUgb25lIGFuZCB0aGUgc2FtZS4KPiA+IAo+ID4gU2lnbmVkLW9mZi1i
eTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gPiBDYzogRGFuaWVs
IFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4KPiA+IENjOiBNYWFydGVuIExhbmtob3Jz
dCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgo+ID4gQ2M6IEFudXNoYSBTcml2
YXRzYSA8YW51c2hhLnNyaXZhdHNhQGludGVsLmNvbT4KPiAKPiBSZXZpZXdlZC1ieTogQW51c2hh
IFNyaXZhdHNhIDxhbnVzaGEuc3JpdmF0c2FAaW50ZWwuY29tPgoKUGxvbmtlZCBpdCBpbiBhcyBJ
IGhvcGUgaXQgc3RhbmRzIGl0IHN0ZWFkIGFzIGEgbmljZSBsaXR0bGUKc2ltcGxpZmljYXRpb24u
Ci1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
