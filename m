Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FEB8302A1
	for <lists+intel-gfx@lfdr.de>; Thu, 30 May 2019 21:10:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A2F489D73;
	Thu, 30 May 2019 19:10:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFE5789D73
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 May 2019 19:10:39 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16739593-1500050 for multiple; Thu, 30 May 2019 20:10:27 +0100
MIME-Version: 1.0
To: Matthew Auld <matthew.william.auld@gmail.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <CAM0jSHMLGJ8KYcy4HZBXScZgCN0h_xhYv4BGmi+6CBrcoXZ3Qg@mail.gmail.com>
References: <20190528195022.11531-1-chris@chris-wilson.co.uk>
 <20190528195022.11531-2-chris@chris-wilson.co.uk>
 <CAM0jSHMLGJ8KYcy4HZBXScZgCN0h_xhYv4BGmi+6CBrcoXZ3Qg@mail.gmail.com>
Message-ID: <155924342453.27302.16688978555367479416@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 30 May 2019 20:10:24 +0100
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Report all objects with
 allocated pages to the shrinker
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMTktMDUtMzAgMTc6MTA6MTYpCj4gT24gVHVlLCAyOCBN
YXkgMjAxOSBhdCAyMDo1MCwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+
IHdyb3RlOgo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2Lmgg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCj4gPiBpbmRleCBmYjJlODkxMzNlNzgu
Ljc3MGM1NGI4N2RlNiAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
ZHJ2LmgKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKPiA+IEBAIC05
MjYsMTAgKzkyNiw5IEBAIHN0cnVjdCBpOTE1X2dlbV9tbSB7Cj4gPiAgICAgICAgIC8qKiBCaXQg
NiBzd2l6emxpbmcgcmVxdWlyZWQgZm9yIFkgdGlsaW5nICovCj4gPiAgICAgICAgIHUzMiBiaXRf
Nl9zd2l6emxlX3k7Cj4gPgo+ID4gLSAgICAgICAvKiBhY2NvdW50aW5nLCB1c2VmdWwgZm9yIHVz
ZXJsYW5kIGRlYnVnZ2luZyAqLwo+ID4gLSAgICAgICBzcGlubG9ja190IG9iamVjdF9zdGF0X2xv
Y2s7Cj4gPiAtICAgICAgIHU2NCBvYmplY3RfbWVtb3J5Owo+ID4gLSAgICAgICB1MzIgb2JqZWN0
X2NvdW50Owo+ID4gKyAgICAgICAvKiBzaHJpbmtlciBhY2NvdW50aW5nLCBhbHNvIHVzZWZ1bCBm
b3IgdXNlcmxhbmQgZGVidWdnaW5nICovCj4gPiArICAgICAgIHU2NCBzaHJpbmtfbWVtb3J5Owo+
ID4gKyAgICAgICB1MzIgc2hyaW5rX2NvdW50Owo+IAo+IENvbG91ciBtZSBjb25mdXNlZC4gSSBj
YW4ndCBzZWUgd2hlcmUgd2Ugc2V0IHRoZXNlPyBPciBpcyBteSBicmFpbiBmcmllZD8KClRoZXkg
dXNlZCB0byBiZSBzZXQgb24gYWRkL3JlbW92aW5nIG9iai0+bW0ucGFnZXMuLi4gVGhhdCBsb29r
cyB0byBoYXZlCnZhbmlzaGVkLiBJIHdvbmRlciBpZiBJIGhhdmUgYW4gb2xkZXIgdmVyc2lvbiB0
byBzYXZlIG1lIHRoZSBoYXNzbGUgb2YKYWRkaW5nIHR3byBmdW5jdGlvbnMgOikKLUNocmlzCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
