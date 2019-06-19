Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CEF984B6D9
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2019 13:14:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E06D6E372;
	Wed, 19 Jun 2019 11:13:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F3606E372
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2019 11:13:58 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16951806-1500050 for multiple; Wed, 19 Jun 2019 12:13:52 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190618110736.31155-1-chris@chris-wilson.co.uk>
 <f4c51733-ad84-0ce2-5909-274d25e3d75f@linux.intel.com>
In-Reply-To: <f4c51733-ad84-0ce2-5909-274d25e3d75f@linux.intel.com>
Message-ID: <156094283345.31375.3976436217368077752@skylake-alporthouse-com>
Date: Wed, 19 Jun 2019 12:13:53 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/execlists: Detect
 cross-contamination with GuC
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNi0xOSAxMjowNDowOCkKPiAKPiBPbiAxOC8w
Ni8yMDE5IDEyOjA3LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBUaGUgcHJvY2Vzc19jc2Igcm91
dGluZSBmcm9tIGV4ZWNsaXN0c19zdWJtaXNzaW9uIGlzIGluY29tcGF0aWJsZSB3aXRoCj4gPiB0
aGUgR3VDIGJhY2tlbmQuIEFkZCBhIHdhcm5pbmcgdG8gZGV0ZWN0IGlmIHdlIGFjY2lkZW50YWxs
eSBlbmQgdXAgaW4KPiA+IHRoZSB3cm9uZyBzcG90Lgo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBD
aHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiA+IENjOiBUdnJ0a28gVXJz
dWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+ID4gQ2M6IE1pY2hhbCBXYWpkZWN6a28g
PG1pY2hhbC53YWpkZWN6a29AaW50ZWwuY29tPgo+ID4gQ2M6IE1pY2hhxYIgV2luaWFyc2tpIDxt
aWNoYWwud2luaWFyc2tpQGludGVsLmNvbT4KPiA+IC0tLQo+ID4gICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9scmMuYyB8IDEgKwo+ID4gICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRp
b24oKykKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X2xyYy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKPiA+IGluZGV4IGM0
MDBjNjZkMGVlNS4uYmJlNmVjZTliMDEwIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfbHJjLmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2xyYy5jCj4gPiBAQCAtMTE2OSw2ICsxMTY5LDcgQEAgc3RhdGljIHZvaWQgcHJvY2Vzc19j
c2Ioc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQo+ID4gICAgICAgdTggaGVhZCwgdGFp
bDsKPiA+ICAgCj4gPiAgICAgICBsb2NrZGVwX2Fzc2VydF9oZWxkKCZlbmdpbmUtPmFjdGl2ZS5s
b2NrKTsKPiA+ICsgICAgIEdFTV9CVUdfT04oVVNFU19HVUNfU1VCTUlTU0lPTihlbmdpbmUtPmk5
MTUpKTsKPiA+ICAgCj4gPiAgICAgICAvKgo+ID4gICAgICAgICogTm90ZSB0aGF0IGNzYl93cml0
ZSwgY3NiX3N0YXR1cyBtYXkgYmUgZWl0aGVyIGluIEhXU1Agb3IgbW1pby4KPiA+IAo+IAo+IEkg
YXNzdW1lIGl0IHNvbWVob3cgYW5kIHNvbWV3aGVyZSBoYXBwZW5lZCBvciB5b3Ugd291bGRuJ3Qg
YmUgYWRkaW5nIHRoZSAKPiBhc3NlcnQ/CgpJJ3ZlIHNlZW4gYSBidWcgKHRoZSBleGVjbGlzdHMt
b25seSBwcmVlbXB0aW9uIHRpbWVyIGZpcmluZyBvbiBpY2wtZ3VjKQp0aGF0IHdvdWxkIG9ubHkg
YmUgZXhwbGFpbmVkIGJ5IGl0IGhhcHBlbmluZyBhbmQgc28gd2FudGVkIHRvIGNhdGNoIGl0Cmlu
IHRoZSBhY3QgYW5kIGhvcGVmdWxseSBmaW5kIG91dCB3aGVyZSB3ZSBtYW5hZ2VkIHRvIHNsaXAg
dXAuCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
