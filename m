Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BFD3BD2DFD
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Oct 2019 17:44:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F21B6E2CD;
	Thu, 10 Oct 2019 15:44:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E0656E2CD
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Oct 2019 15:44:48 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18793328-1500050 for multiple; Thu, 10 Oct 2019 16:44:44 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191009211947.6815-1-chris@chris-wilson.co.uk>
 <20191009211947.6815-7-chris@chris-wilson.co.uk>
 <2b005ce6-97dd-ceee-04aa-72147bfb8e74@intel.com>
In-Reply-To: <2b005ce6-97dd-ceee-04aa-72147bfb8e74@intel.com>
Message-ID: <157072228213.31038.15681586973898095047@skylake-alporthouse-com>
Date: Thu, 10 Oct 2019 16:44:42 +0100
Subject: Re: [Intel-gfx] [PATCH 7/9] drm/i915/perf: Allow dynamic
 reconfiguration of the OA stream
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

UXVvdGluZyBMaW9uZWwgTGFuZHdlcmxpbiAoMjAxOS0xMC0xMCAxNjoyMjoyNSkKPiBPbiAxMC8x
MC8yMDE5IDAwOjE5LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBGcm9tOiBMaW9uZWwgTGFuZHdl
cmxpbiA8bGlvbmVsLmcubGFuZHdlcmxpbkBpbnRlbC5jb20+Cj4gPgo+ID4gSW50cm9kdWNlIGEg
bmV3IHBlcmZfaW9jdGwgY29tbWFuZCB0byBjaGFuZ2UgdGhlIE9BIGNvbmZpZ3VyYXRpb24gb2Yg
dGhlCj4gPiBhY3RpdmUgc3RyZWFtLiBUaGlzIGFsbG93cyB0aGUgT0Egc3RyZWFtIHRvIGJlIHJl
Y29uZmlndXJlZCBiZXR3ZWVuCj4gPiBiYXRjaCBidWZmZXJzLCBnaXZpbmcgZ3JlYXRlciBmbGV4
aWJpbGl0eSBpbiBzYW1wbGluZy4gV2UgaW5qZWN0IGEKPiA+IHJlcXVlc3QgaW50byB0aGUgT0Eg
Y29udGV4dCB0byByZWNvbmZpZ3VyZSB0aGUgc3RyZWFtIGFzeW5jaHJvbm91c2x5IG9uCj4gPiB0
aGUgR1BVIGluIGJldHdlZW4gYW5kIG9yZGVyZWQgd2l0aCBleGVjYnVmZmVyIGNhbGxzLgo+ID4K
PiA+IFNpZ25lZC1vZmYtYnk6IExpb25lbCBMYW5kd2VybGluIDxsaW9uZWwuZy5sYW5kd2VybGlu
QGludGVsLmNvbT4KPiAKPiAKPiBTbyBtdWNoIHNpbXBsZXIgOikKCkluZGVlZCwgaXQgYWxsIGNh
bWUgdG9nZXRoZXIgaW50byBhIG11Y2ggbW9yZSBjb2hlcmVudCBzdG9yeS4KCj4gPiAtLS0KPiA+
ICAgLyoqCj4gPiAgICAqIGk5MTVfcGVyZl9pb2N0bCAtIHN1cHBvcnQgaW9jdGwoKSB1c2FnZSB3
aXRoIGk5MTUgcGVyZiBzdHJlYW0gRkRzCj4gPiAgICAqIEBzdHJlYW06IEFuIGk5MTUgcGVyZiBz
dHJlYW0KPiA+IEBAIC0yODc5LDYgKzI5MDEsOCBAQCBzdGF0aWMgbG9uZyBpOTE1X3BlcmZfaW9j
dGxfbG9ja2VkKHN0cnVjdCBpOTE1X3BlcmZfc3RyZWFtICpzdHJlYW0sCj4gPiAgICAgICBjYXNl
IEk5MTVfUEVSRl9JT0NUTF9ESVNBQkxFOgo+ID4gICAgICAgICAgICAgICBpOTE1X3BlcmZfZGlz
YWJsZV9sb2NrZWQoc3RyZWFtKTsKPiA+ICAgICAgICAgICAgICAgcmV0dXJuIDA7Cj4gPiArICAg
ICBjYXNlIEk5MTVfUEVSRl9JT0NUTF9DT05GSUc6Cj4gPiArICAgICAgICAgICAgIHJldHVybiBp
OTE1X3BlcmZfY29uZmlnX2xvY2tlZChzdHJlYW0sIGFyZyk7Cj4gCj4gRm9yIFJFTU9WRV9DT05G
SUcgd2UgcGFzc2VkIGEgcG9pbnRlciB0byBhbiB1NjQsIG5vdCBzdXJlIHdoZXRoZXIgd2UgCj4g
c2hvdWxkIHJldXNlIHRoZSBzYW1lIHBhdHRlcm4gaGVyZT8KCkFpdWksIHRoZSB1c2VyIGNyZWF0
ZXMgb2EtY29uZmlnIGhhbmRsZXMsIGFuZC9vciBxdWVyaWVzIHRoZW0uIElmIHdlIGFyZQpzaW1w
bGVyIHRhbGtpbmcgaGFuZGxlcyB0aGF0IGZpdCBpbnNpZGUgdW5zaWduZWQgbG9uZyAoc28gYXNz
dW1lIHUzMikKdGhlbiBJIGRvbid0IHNlZSB0aGUgaGFybSBpbiBwYXNzaW5nIGFuIGlkIHJhdGhl
ciB0aGFuIGEgcG9pbnRlci4KClRoZSBhbHRlcm5hdGl2ZSBpcyB0aGlzIHRha2VzIGFuIHV1aWQg
c3RyaW5nPyBPciB5b3Ugd2FudCB0byBhbHdheXMgdXNlCnU2NCBoYW5kbGVzPwoKSSBndWVzcyB5
b3Ugd2lsbCBoYXZlIGEgYmV0dGVyIGlkZWEgd2hhdCB3b3JrcyBiZXR0ZXIgYWZ0ZXIgcGxheWlu
Zwphcm91bmQgd2l0aCB1c2Vyc3BhY2UuCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
