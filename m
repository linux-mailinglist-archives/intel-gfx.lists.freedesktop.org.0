Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 77B3ED3B93
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2019 10:49:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 697FC6EBE8;
	Fri, 11 Oct 2019 08:49:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8AC006EBE8
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Oct 2019 08:49:53 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18800292-1500050 for multiple; Fri, 11 Oct 2019 09:49:51 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191010071434.31195-1-chris@chris-wilson.co.uk>
 <20191010071434.31195-3-chris@chris-wilson.co.uk>
 <4399eff8-c0f9-bd9e-dba9-4830ed27e03d@linux.intel.com>
In-Reply-To: <4399eff8-c0f9-bd9e-dba9-4830ed27e03d@linux.intel.com>
Message-ID: <157078378802.31572.16664143577552592062@skylake-alporthouse-com>
Date: Fri, 11 Oct 2019 09:49:48 +0100
Subject: Re: [Intel-gfx] [PATCH 03/10] drm/i915: Expose engine properties
 via sysfs
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0xMC0xMSAwOTo0NDoxNikKPiAKPiBPbiAxMC8x
MC8yMDE5IDA4OjE0LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBQcmVsaW1pbmFyeSBzdHViIHRv
IGFkZCBlbmdpbmVzIHVuZGVybmVhdGggL3N5cy9jbGFzcy9kcm0vY2FyZE4vLCBzbwo+ID4gdGhh
dCB3ZSBjYW4gZXhwb3NlIHByb3BlcnRpZXMgb24gZWFjaCBlbmdpbmUgdG8gdGhlIHN5c2FkbWlu
Lgo+ID4gCj4gPiBUbyBzdGFydCB3aXRoIHdlIGhhdmUgYmFzaWMgYW5hbG9ndWVzIG9mIHRoZSBp
OTE1X3F1ZXJ5IGlvY3RsIHNvIHRoYXQgd2UKPiA+IGNhbiBwcmV0dHkgcHJpbnQgZW5naW5lIGRp
c2NvdmVyeSBmcm9tIHRoZSBzaGVsbCwgYW5kIGZsZXNoIG91dCB0aGUKPiA+IGRpcmVjdG9yeSBz
dHJ1Y3R1cmUuIExhdGVyIHdlIHdpbGwgYWRkIHdyaXRlYWJsZSBzeXNhZG1pbiBwcm9wZXJ0aWVz
IHN1Y2gKPiA+IGFzIHBlci1lbmdpbmUgdGltZW91dCBjb250cm9scy4KPiA+IAo+ID4gQW4gZXhh
bXBsZSB0cmVlIG9mIHRoZSBlbmdpbmUgcHJvcGVydGllcyBvbiBCcmFzd2VsbDoKPiA+ICAgICAg
L3N5cy9jbGFzcy9kcm0vY2FyZDAKPiA+ICAgICAg4pSU4pSA4pSAIGVuZ2luZQo+ID4gICAgICAg
wqDCoCDilJzilIDilIAgYmNzMAo+ID4gICAgICAgwqDCoCDilILCoMKgIOKUnOKUgOKUgCBjbGFz
cwo+ID4gICAgICAgwqDCoCDilILCoMKgIOKUnOKUgOKUgCBoZWFydGJlYXRfaW50ZXJ2YWxfbXMK
PiAKPiBOb3QgcHJlc2VudCBpbiB0aGlzIHBhdGNoLgoKSSBkaWQgc2F5IGFuIGV4YW1wbGUgdHJl
ZSwgbm90IHRoaXMgdHJlZSA6KQoKPiA+ICAgICAgIMKgwqAg4pSCwqDCoCDilJzilIDilIAgaW5z
dGFuY2UKPiA+ICAgICAgIMKgwqAg4pSCwqDCoCDilJzilIDilIAgbW1pb19iYXNlCj4gCj4gSSB2
b3RlIGZvciBwdXR0aW5nIG1taW9fYmFzZSBpbiBhIGZvbGxvd3VwIHBhdGNoLgoKRGFybiB5b3Vy
IGVhZ2xlIGV5ZXMgOykKCj4gCj4gQW5kIGhvdyBhYm91dCB3ZSBhZGQgY2FwYWJpbGl0aWVzIGlu
IHRoZSBmaXJzdCBwYXRjaD8gU28gd2UgZ2V0IGFub3RoZXIgCj4gd2F5IG9mIGVuZ2luZSBkaXNj
b3ZlcnkuIElkZWFsbHkgd2l0aCBtYXBwaW5nIG9mIGJpdHMgdG8gdXNlciBmcmllbmRseSAKPiBz
dHJpbmdzLgoKUmlnaHQsIEkgd2FzIGFib3V0IHRvIGFzayBpZiB3ZSBzaG91bGQgZG8gYSAvcHJv
Yy9jcHVpbmZvIHN0eWxlCmNhcGFiaWxpdGllcy4gRG8gd2UgbmVlZCBib3RoPyBPciBqdXN0IHN0
aWNrIHRvIHRoZSBtb3JlIGh1bWFuIHJlYWRhYmxlCm91dHB1dCBmb3Igc3lzZnM/Ci1DaHJpcwpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
