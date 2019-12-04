Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 118F6113591
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Dec 2019 20:21:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DBFAB6E9ED;
	Wed,  4 Dec 2019 19:21:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15B1F6E968;
 Wed,  4 Dec 2019 19:21:42 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19461984-1500050 for multiple; Wed, 04 Dec 2019 19:21:25 +0000
MIME-Version: 1.0
To: "Summers, Stuart" <stuart.summers@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <9939d4c12412a85631216b5f35141d97a9426460.camel@intel.com>
References: <20191204132051.3740419-1-chris@chris-wilson.co.uk>
 <9939d4c12412a85631216b5f35141d97a9426460.camel@intel.com>
Message-ID: <157548728599.22727.6781211028250374864@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 04 Dec 2019 19:21:26 +0000
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] i915/perf_pmu: Measure how
 many batches can fit into the ring
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
Cc: "igt-dev@lists.freedesktop.org" <igt-dev@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBTdW1tZXJzLCBTdHVhcnQgKDIwMTktMTItMDQgMTk6MTM6MTYpCj4gT24gV2VkLCAy
MDE5LTEyLTA0IGF0IDEzOjIwICswMDAwLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBEbyBub3Qg
YmxpbmRseSBhc3N1bWUgMzAgc3BpbiBiYXRjaGVzIHdpbGwgYWx3YXlzIGZpdCBpbnRvIHRoZSBy
aW5nLAo+ID4gYnV0Cj4gPiB1c2Ugb3VyIG1lYXN1cmVtZW50IHRvb2wgaW5zdGVhZC4KPiA+IAo+
ID4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+
Cj4gPiBDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KPiA+IC0t
LQo+ID4gIHRlc3RzL3BlcmZfcG11LmMgfCA0ICsrKy0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgMyBp
bnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gPiAKPiA+IGRpZmYgLS1naXQgYS90ZXN0cy9w
ZXJmX3BtdS5jIGIvdGVzdHMvcGVyZl9wbXUuYwo+ID4gaW5kZXggZGU0YzIzMWRkLi44ZTUwYWM5
YTAgMTAwNjQ0Cj4gPiAtLS0gYS90ZXN0cy9wZXJmX3BtdS5jCj4gPiArKysgYi90ZXN0cy9wZXJm
X3BtdS5jCj4gPiBAQCAtNDIsNiArNDIsNyBAQAo+ID4gICNpbmNsdWRlICJpZ3RfcGVyZi5oIgo+
ID4gICNpbmNsdWRlICJpZ3Rfc3lzZnMuaCIKPiA+ICAjaW5jbHVkZSAiaWd0X3BtLmgiCj4gPiAr
I2luY2x1ZGUgImk5MTUvZ2VtX3JpbmcuaCIKPiA+ICAjaW5jbHVkZSAic3dfc3luYy5oIgo+ID4g
IAo+ID4gIElHVF9URVNUX0RFU0NSSVBUSU9OKCJUZXN0IHRoZSBpOTE1IHBtdSBwZXJmIGludGVy
ZmFjZSIpOwo+ID4gQEAgLTEyNzYsOCArMTI3Nyw5IEBAIHN0YXRpYyB2b2lkIGNwdV9ob3RwbHVn
KGludCBnZW1fZmQpCj4gPiAgc3RhdGljIHZvaWQKPiA+ICB0ZXN0X2ludGVycnVwdHMoaW50IGdl
bV9mZCkKPiA+ICB7Cj4gPiArICAgICBjb25zdCBpbnQgdGFyZ2V0ID0KPiA+ICsgICAgICAgICAg
ICAgZ2VtX21lYXN1cmVfcmluZ19pbmZsaWdodChnZW1fZmQsIEk5MTVfRVhFQ19ERUZBVUxULAo+
ID4gMCk7Cj4gCj4gSW4gY2FzZSB3ZSBldmVyIHdhbnQgdG8gY2hhbmdlIHRoaXMgZW5naW5lLCBz
aG91bGQgd2UgbWFrZQo+IEk5MTVfRVhFQ19ERUZBVUxUIGEgbWFjcm8gd2l0aGluIHRoaXMgdGVz
dD8KCk5vdCByZWFsbHksIEVYRUNfREVGQVVMVCBpdHNlbGYgaXMgdGhlIHBsYWNlaG9sZGVyIGZv
ciBmaXJzdCBlbmdpbmUgb24KdGhlIHN5c3RlbS4uLiBJIHJlYWxseSBzaG91bGQgbGFuZCBteSBm
ZnMoKSBiZWZvcmUgaXQgbWFrZXMgYQpkaWZmZXJlbmNlLgo+IAo+IExvb2tzIGEgbG90IGJldHRl
ci4gTXkgb25seSBxdWVzdGlvbiBoZXJlIGlzIGNhbiB3ZSBtYWtlCj4gZ2VtX21lYXN1cmVfcmlu
Z19pbmZsaWdodCBhIGdlbmVyaWMgcm91dGluZSBpbnN0ZWFkIG9mIHNvbWV0aGluZyBpOTE1LQo+
IHNwZWNpZmljLCBzaW5jZSB3ZSdyZSB1c2luZyB0aGlzIGluIG9uZSBvZiB0aGUgY3Jvc3MtYXJj
aCB0ZXN0cz8KClRoaXMgaXMgbm90IGEgZ2VuZXJpYyB0ZXN0LiBTaW1wbHkgaGFzIG5vdCBiZWVu
IG1vdmVkIHlldC4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
