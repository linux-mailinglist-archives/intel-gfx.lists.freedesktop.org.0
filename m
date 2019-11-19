Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B0C51029AE
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Nov 2019 17:47:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6095D6E9AE;
	Tue, 19 Nov 2019 16:47:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F1246E9AE
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Nov 2019 16:47:09 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Nov 2019 08:47:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,218,1571727600"; d="scan'208";a="209250678"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga003.jf.intel.com with ESMTP; 19 Nov 2019 08:47:07 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 3BF615C1DFA; Tue, 19 Nov 2019 18:46:51 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20191119100929.2628356-4-chris@chris-wilson.co.uk>
References: <20191119100929.2628356-1-chris@chris-wilson.co.uk>
 <20191119100929.2628356-4-chris@chris-wilson.co.uk>
Date: Tue, 19 Nov 2019 18:46:51 +0200
Message-ID: <87sgmjx18k.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 04/17] drm/i915/gt: Make intel_ring_unpin()
 safe for concurrent pint
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

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCmNvbmN1cnJl
bnQgcGludD8gU3VyZSwgdGhpcnN0eSBhbHJlYWR5LgoKQnV0IEkgYW0gYWZyYWlkIHlvdSBqdXN0
IG1lYW4gY29uY3VycmVudCBwaW4gOk8KCj4gSW4gb3JkZXIgdG8gYXZvaWQgc29tZSBuYXN0eSBt
dXRleCBpbnZlcnNpb25zLCBjb21taXQgMDljNWFiMzg0ZjZmCj4gKCJkcm0vaTkxNTogS2VlcCBy
aW5ncyBwaW5uZWQgd2hpbGUgdGhlIGNvbnRleHQgaXMgYWN0aXZlIikgYWxsb3dlZCB0aGUKPiBp
bnRlbF9yaW5nIHVucGlubmluZyB0byBiZSBydW4gY29uY3VycmVudGx5IHdpdGggdGhlIG5leHQg
Y29udGV4dAo+IHBpbm5pbmcgaXQuIFRodXMgZWFjaCBzdGVwIGluIGludGVsX3JpbmdfdW5waW4o
KSBuZWVkZWQgdG8gYmUgYXRvbWljIGFuZAo+IG9yZGVyZWQgaW4gYSBuaWNlIG9uaW9uIHdpdGgg
aW50ZWxfcmluZ19waW4oKSBzbyB0aGF0IHRoZSBsaWZldGltZXMKPiBvdmVybGFwcGVkIGFuZCB3
ZXJlIGFsd2F5cyBzYWZlLgo+Cj4gU2FkbHksIGEgZmV3IHN0ZXBzIGluIGludGVsX3JpbmdfdW5w
aW4oKSB3ZXJlIG92ZXJsb29rZWQsIHN1Y2ggYXMKPiBjbG9zaW5nIHRoZSByZWFkL3dyaXRlIHBv
aW50ZXJzIG9mIHRoZSByaW5nIGFuZCBkaXNjYXJkaW5nIHRoZQo+IGludGVsX3JpbmcudmFkZHIs
IGFzIHRoZXNlIHN0ZXBzIHdlcmUgbm90IHNlcmlhbGlzZWQgd2l0aAo+IGludGVsX3JpbmdfcGlu
KCkgYW5kIHNvIGNvdWxkIGxlYXZlIHRoZSByaW5nIGluIGRpc2FycmF5Lgo+Cj4gRml4ZXM6IDA5
YzVhYjM4NGY2ZiAoImRybS9pOTE1OiBLZWVwIHJpbmdzIHBpbm5lZCB3aGlsZSB0aGUgY29udGV4
dCBpcyBhY3RpdmUiKQo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMt
d2lsc29uLmNvLnVrPgo+IENjOiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4Lmlu
dGVsLmNvbT4KPiBDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4K
PiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmluZy5jIHwgMTMgKysrKy0t
LS0tLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCA5IGRlbGV0aW9ucygt
KQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3JpbmcuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3JpbmcuYwo+IGluZGV4IGVjZTIwNTA0ZDI0
MC4uMzc0YjI4ZjEzY2EwIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX3JpbmcuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3JpbmcuYwo+
IEBAIC01Nyw5ICs1NywxMCBAQCBpbnQgaW50ZWxfcmluZ19waW4oc3RydWN0IGludGVsX3Jpbmcg
KnJpbmcpCj4gIAo+ICAJaTkxNV92bWFfbWFrZV91bnNocmlua2FibGUodm1hKTsKPiAgCj4gLQlH
RU1fQlVHX09OKHJpbmctPnZhZGRyKTsKPiAtCXJpbmctPnZhZGRyID0gYWRkcjsKPiArCS8qIERp
c2NhcmQgYW55IHVudXNlZCBieXRlcyBiZXlvbmQgdGhhdCBzdWJtaXR0ZWQgdG8gaHcuICovCj4g
KwlpbnRlbF9yaW5nX3Jlc2V0KHJpbmcsIHJpbmctPmVtaXQpOwo+ICAKPiArCXJpbmctPnZhZGRy
ID0gYWRkcjsKPiAgCXJldHVybiAwOwo+ICAKPiAgZXJyX3Jpbmc6Cj4gQEAgLTg1LDIwICs4Niwx
NCBAQCB2b2lkIGludGVsX3JpbmdfdW5waW4oc3RydWN0IGludGVsX3JpbmcgKnJpbmcpCj4gIAlp
ZiAoIWF0b21pY19kZWNfYW5kX3Rlc3QoJnJpbmctPnBpbl9jb3VudCkpCj4gIAkJcmV0dXJuOwo+
ICAKPiAtCS8qIERpc2NhcmQgYW55IHVudXNlZCBieXRlcyBiZXlvbmQgdGhhdCBzdWJtaXR0ZWQg
dG8gaHcuICovCj4gLQlpbnRlbF9yaW5nX3Jlc2V0KHJpbmcsIHJpbmctPmVtaXQpOwo+IC0KPiAg
CWk5MTVfdm1hX3Vuc2V0X2dndHRfd3JpdGUodm1hKTsKPiAgCWlmIChpOTE1X3ZtYV9pc19tYXBf
YW5kX2ZlbmNlYWJsZSh2bWEpKQo+ICAJCWk5MTVfdm1hX3VucGluX2lvbWFwKHZtYSk7Cj4gIAll
bHNlCj4gIAkJaTkxNV9nZW1fb2JqZWN0X3VucGluX21hcCh2bWEtPm9iaik7Cj4gIAo+IC0JR0VN
X0JVR19PTighcmluZy0+dmFkZHIpOwo+IC0JcmluZy0+dmFkZHIgPSBOVUxMOwo+IC0KPiAtCWk5
MTVfdm1hX3VucGluKHZtYSk7Cj4gIAlpOTE1X3ZtYV9tYWtlX3B1cmdlYWJsZSh2bWEpOwo+ICsJ
aTkxNV92bWFfdW5waW4odm1hKTsKClJlbW92aW5nIHRoZSBCVUdfT05zIG1hZGUgbWUgZ3JlcHBp
bmcuCgpPbmUgR0VNX0JVR19PTigmcmluZy0+cGluX2NvdW50KSBvbiBhIHN0cmF0ZWdpYyBsb2Nh
dGlvbgp3b3VsZCBmZWVsIGNvbWZvcnRpbmcuCgpSZXZpZXdlZC1ieTogTWlrYSBLdW9wcGFsYSA8
bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+Cgo+ICB9Cj4gIAo+ICBzdGF0aWMgc3RydWN0
IGk5MTVfdm1hICpjcmVhdGVfcmluZ192bWEoc3RydWN0IGk5MTVfZ2d0dCAqZ2d0dCwgaW50IHNp
emUpCj4gLS0gCj4gMi4yNC4wCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
