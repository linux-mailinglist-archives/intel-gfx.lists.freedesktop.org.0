Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E47CC8B06F
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Aug 2019 09:03:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 279506E047;
	Tue, 13 Aug 2019 07:03:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68DE46E047
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Aug 2019 07:03:47 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17978012-1500050 for multiple; Tue, 13 Aug 2019 08:03:38 +0100
MIME-Version: 1.0
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190812233152.2172-1-daniele.ceraolospurio@intel.com>
References: <20190812233152.2172-1-daniele.ceraolospurio@intel.com>
Message-ID: <156567981609.22804.7540397687111448420@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 13 Aug 2019 08:03:36 +0100
Subject: Re: [Intel-gfx] [PATCH v2 1/2] drm/i915/guc: keep breadcrumb irq
 always enabled
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

UXVvdGluZyBEYW5pZWxlIENlcmFvbG8gU3B1cmlvICgyMDE5LTA4LTEzIDAwOjMxOjUwKQo+IFdl
IHJlbHkgb24gdGhlIHRhc2tsZXQgdG8gdXBkYXRlIHRoZSBHVCBQTSByZWZjb3VudCwgc28gd2Ug
Y2FuJ3QgZGlzYWJsZQo+IGl0IGV2ZW4gaWYgd2UndmUgcHJvY2Vzc2VkIGFsbCB0aGUgcmVxdWVz
dHMgZm9yIHRoZSBlbmdpbmUgYmVjYXVzZSB3ZQo+IG1pZ2h0IGhhdmUgZGV0ZWN0ZWQgdGhlIHJl
cXVlc3QgY29tcGxldGlvbiBiZWZvcmUgdGhlIGludGVycnVwdCBhcnJpdmVkLgo+IAo+IFNpbmNl
IG9uIGFsbCBwbGF0Zm9ybXMgb24gd2hpY2ggd2UgcGxhbiB0byBzdXBwb3J0IGd1YyBzdWJtaXNz
aW9uIHdlCj4gZG9uJ3QgYWxsb3cgZGlzYWJsaW5nIHRoZSBicmVhZGNydW1iIGludGVycnVwdHMs
IHdlIGNhbiBmdXJ0aGVyIHNpcGxpZnkKPiB0aGUgcGFyay91bnBhcmsgZmxvdyBieSByZW1vdmlu
ZyB0aGUgaW50ZXJydXB0IHBpbi91bnBpbi4gQSBCVUdfT04gaGFzCj4gYmVlbiBhZGRlZCB0byBj
YXRjaCBjaGFuZ2VzIHRvIHRoaXMgZmxvdyB0aGF0IHdvdWxkIHJlcXVpcmUgdXMgdG8KPiByZXN0
b3JlIHNvbWUga2luZCBvZiBwaW5uaW5nLgo+IAo+IHYyOiBzcGxpdCByZW1vdmFsIG9mIGVuZ2lu
ZV9waW4vdW5waW5fYnJlYWRjcnVtYnNfaXJxIHRvIGl0cyBvd24KPiAgICAgcGF0Y2ggKGNocmlz
KQo+IAo+IFNpZ25lZC1vZmYtYnk6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2Vy
YW9sb3NwdXJpb0BpbnRlbC5jb20+Cj4gQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2ls
c29uLmNvLnVrPgo+IENjOiBNaWNoYWwgV2FqZGVjemtvIDxtaWNoYWwud2FqZGVjemtvQGludGVs
LmNvbT4KPiBSZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28u
dWs+CgpBbmQgcHVzaGVkLCB0aGFua3MgZm9yIHRoZSBmaXguCi1DaHJpcwpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
