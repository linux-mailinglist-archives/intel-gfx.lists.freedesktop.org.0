Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C8EEB5F749
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jul 2019 13:41:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 378746E32A;
	Thu,  4 Jul 2019 11:41:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 83A6F6E32A
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jul 2019 11:41:01 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Jul 2019 04:41:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,450,1557212400"; d="scan'208";a="191349155"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga002.fm.intel.com with ESMTP; 04 Jul 2019 04:40:59 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 835555C1EB4; Thu,  4 Jul 2019 14:40:52 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>,
 Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <156223816752.25091.13766061373471014667@skylake-alporthouse-com>
References: <20190703171913.16585-1-chris@chris-wilson.co.uk>
 <20190703171913.16585-3-chris@chris-wilson.co.uk>
 <463eddd4-b1d0-c9a9-0180-1f0b8f0a77da@intel.com>
 <156223681162.25091.7279882878767329826@skylake-alporthouse-com>
 <87ftnm2hi9.fsf@gaia.fi.intel.com>
 <156223816752.25091.13766061373471014667@skylake-alporthouse-com>
Date: Thu, 04 Jul 2019 14:40:52 +0300
Message-ID: <87d0iq2fjv.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/gtt: Defer the free for alloc
 error paths
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

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gUXVvdGlu
ZyBNaWthIEt1b3BwYWxhICgyMDE5LTA3LTA0IDExOjU4OjM4KQo+PiBDaHJpcyBXaWxzb24gPGNo
cmlzQGNocmlzLXdpbHNvbi5jby51az4gd3JpdGVzOgo+PiAKPj4gPiBRdW90aW5nIE1hdHRoZXcg
QXVsZCAoMjAxOS0wNy0wNCAxMToyODoxOCkKPj4gPj4gT24gMDMvMDcvMjAxOSAxODoxOSwgQ2hy
aXMgV2lsc29uIHdyb3RlOgo+PiA+PiA+IElmIHdlIGhpdCBhbiBlcnJvciB3aGlsZSBhbGxvY2F0
aW5nIHRoZSBwYWdlIHRhYmxlcywgd2UgaGF2ZSB0byB1bndpbmQKPj4gPj4gPiB0aGUgaW5jb21w
bGV0ZSB1cGRhdGVzLCBhbmQgd2lzaCB0byBmcmVlIHRoZSB1bnVzZWQgcGQuIEhvd2V2ZXIsIHdl
IGFyZQo+PiA+PiA+IG5vdCBhbGxvd2VkIHRvIGJlIGhvZGluZyB0aGUgc3BpbmxvY2sgYXQgdGhh
dCBwb2ludCwgYW5kIHNvIG11c3QgdXNlIHRoZQo+PiA+PiAKPj4gPj4gaG9sZGluZwo+PiA+PiAK
Pj4gPj4gPiBsYXRlciBmcmVlIHRvIGRlZmVyIGl0IHVudGlsIGFmdGVyIHdlIGRyb3AgdGhlIGxv
Y2suCj4+ID4+ID4gCj4+ID4+ID4gPDM+IFs0MTQuMzYzNzk1XSBCVUc6IHNsZWVwaW5nIGZ1bmN0
aW9uIGNhbGxlZCBmcm9tIGludmFsaWQgY29udGV4dCBhdCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2dlbV9ndHQuYzo0NzIKPj4gPj4gPiA8Mz4gWzQxNC4zNjQxNjddIGluX2F0b21pYygpOiAx
LCBpcnFzX2Rpc2FibGVkKCk6IDAsIHBpZDogMzkwNSwgbmFtZTogaTkxNV9zZWxmdGVzdAo+PiA+
PiA+IDw0PiBbNDE0LjM2NDQwNl0gMyBsb2NrcyBoZWxkIGJ5IGk5MTVfc2VsZnRlc3QvMzkwNToK
Pj4gPj4gPiA8ND4gWzQxNC4zNjQ0MDhdICAjMDogMDAwMDAwMDAzNGZlOGFhOCAoJmRldi0+bXV0
ZXgpey4uLi59LCBhdDogZGV2aWNlX2RyaXZlcl9hdHRhY2grMHgxOC8weDUwCj4+ID4+ID4gPDQ+
IFs0MTQuMzY0NDE1XSAgIzE6IDAwMDAwMDAwNmJkOGE1NjAgKCZkZXYtPnN0cnVjdF9tdXRleCl7
Ky4rLn0sIGF0OiBpZ3RfY3R4X2V4ZWMrMHhiNy8weDQxMCBbaTkxNV0KPj4gPj4gPiA8ND4gWzQx
NC4zNjQ0NzZdICAjMjogMDAwMDAwMDAzZGZkYzc2NiAoJigmcGQtPmxvY2spLT5ybG9jayl7Ky4r
Ln0sIGF0OiBnZW44X3BwZ3R0X2FsbG9jX3BkcCsweDQ0OC8weDU0MCBbaTkxNV0KPj4gPj4gPiA8
Mz4gWzQxNC4zNjQ1MjldIFByZWVtcHRpb24gZGlzYWJsZWQgYXQ6Cj4+ID4+ID4gPDQ+IFs0MTQu
MzY0NTMwXSBbPDAwMDAwMDAwMDAwMDAwMDA+XSAweDAKPj4gPj4gPiA8ND4gWzQxNC4zNjQ2OTZd
IENQVTogMCBQSUQ6IDM5MDUgQ29tbTogaTkxNV9zZWxmdGVzdCBUYWludGVkOiBHICAgICBVICAg
ICAgICAgICAgNS4yLjAtcmM3LUNJLUNJX0RSTV82NDAzKyAjMQo+PiA+PiA+IDw0PiBbNDE0LjM2
NDY5OF0gSGFyZHdhcmUgbmFtZTogUUVNVSBTdGFuZGFyZCBQQyAoaTQ0MEZYICsgUElJWCwgMTk5
NiksIEJJT1MgcmVsLTEuMTAuMS0wLWc4ODkxNjk3LXByZWJ1aWx0LnFlbXUtcHJvamVjdC5vcmcg
MDQvMDEvMjAxNAo+PiA+PiA+IDw0PiBbNDE0LjM2NDY5OV0gQ2FsbCBUcmFjZToKPj4gPj4gPiA8
ND4gWzQxNC4zNjQ3MDRdICBkdW1wX3N0YWNrKzB4NjcvMHg5Ygo+PiA+PiA+IDw0PiBbNDE0LjM2
NDcwOF0gIF9fX21pZ2h0X3NsZWVwKzB4MTY3LzB4MjUwCj4+ID4+ID4gPDQ+IFs0MTQuMzY0Nzc3
XSAgdm1fZnJlZV9wYWdlKzB4MjQvMHhjMCBbaTkxNV0KPj4gPj4gPiA8ND4gWzQxNC4zNjQ4NTJd
ICBmcmVlX3BkKzB4Zi8weDIwIFtpOTE1XQo+PiA+PiA+IDw0PiBbNDE0LjM2NDg5N10gIGdlbjhf
cHBndHRfYWxsb2NfcGRwKzB4NDg5LzB4NTQwIFtpOTE1XQo+PiA+PiA+IDw0PiBbNDE0LjM2NDk0
Nl0gIGdlbjhfcHBndHRfYWxsb2NfNGx2bCsweDhlLzB4MmUwIFtpOTE1XQo+PiA+PiA+IDw0PiBb
NDE0LjM2NDk5Ml0gIHBwZ3R0X2JpbmRfdm1hKzB4MmUvMHg2MCBbaTkxNV0KPj4gPj4gPiA8ND4g
WzQxNC4zNjUwMzldICBpOTE1X3ZtYV9iaW5kKzB4ZTgvMHgyYzAgW2k5MTVdCj4+ID4+ID4gPDQ+
IFs0MTQuMzY1MDg4XSAgX19pOTE1X3ZtYV9kb19waW4rMHhhMS8weGQyMCBbaTkxNV0KPj4gPj4g
PiAKPj4gPj4gPiBGaXhlczogMWQxYjU0OTBiOTFjICgiZHJtL2k5MTUvZ3R0OiBSZXBsYWNlIHN0
cnVjdF9tdXRleCBzZXJpYWxpc2F0aW9uIGZvciBhbGxvY2F0aW9uIikKPj4gPj4gPiBTaWduZWQt
b2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPj4gPj4gPiBD
YzogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgo+PiA+PiA+IENjOiBNaWth
IEt1b3BwYWxhIDxtaWthLmt1b3BwYWxhQGludGVsLmNvbT4KPj4gPj4gPiAtLS0KPj4gPj4gPiAg
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jIHwgNiArKysrLS0KPj4gPj4gPiAg
IDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4+ID4+ID4g
Cj4+ID4+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMKPj4gPj4gPiBpbmRleCA5ZTc2
MzQ3ZTAzOWUuLjEwNjU3NTNlODZmYiAxMDA2NDQKPj4gPj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2dlbV9ndHQuYwo+PiA+PiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZ2VtX2d0dC5jCj4+ID4+ID4gQEAgLTE0ODksNyArMTQ4OSw4IEBAIHN0YXRpYyBpbnQg
Z2VuOF9wcGd0dF9hbGxvY19wZHAoc3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSAqdm0sCj4+ID4+
ID4gICAgICAgICAgICAgICBnZW44X3BwZ3R0X3NldF9wZHBlKHBkcCwgdm0tPnNjcmF0Y2hfcGQs
IHBkcGUpOwo+PiA+PiA+ICAgICAgICAgICAgICAgR0VNX0JVR19PTighYXRvbWljX3JlYWQoJnBk
cC0+dXNlZCkpOwo+PiA+PiA+ICAgICAgICAgICAgICAgYXRvbWljX2RlYygmcGRwLT51c2VkKTsK
Pj4gPj4gPiAtICAgICAgICAgICAgIGZyZWVfcGQodm0sIHBkKTsKPj4gPj4gPiArICAgICAgICAg
ICAgIEdFTV9CVUdfT04oYWxsb2MpOwo+PiA+PiAKPj4gPj4gUHJldHR5IHN1cmUgaXQncyBwb3Nz
aWJsZSBmb3IgYWxsb2MgIT0gTlVMTCBhdCB0aGlzIHBvaW50Li4udHdvIHRocmVhZHMsIAo+PiA+
PiBvbmUgaXMgbGF0ZSB0byB0aGUgcGFydHksIHdlIGFyZSB1bmx1Y2t5IGFuZCBoaXQgdGhlIHVu
d2luZF9wZCBwYXRoLiBObz8KPj4gPgo+PiA+IEhtbS4gSSB3YXMgdGhpbmtpbmcgd2Ugd291bGQg
b25seSBnZXQgaGVyZSBvbiBhbiBhbGxvYyBmYWlsdXJlIHBhdGgsIGJ1dAo+PiA+IHllYWgsIHRo
ZSBCVUdfT04gd2FzIGEgY2FzZSBmb3IgZG91YnQuCj4+IAo+PiBBbSBJIHN0YXJpbmcgYXQgdGhl
IHdyb25nIHNwb3QgdGhlbi4gSSB0aG91Z2h0IHRoZSBhdG9taWNfaW5jKCZwZF91c2VkKQo+PiBz
YXZlcyB1cy4KPgo+IEl0J3Mgb24gYW5vdGhlciBlbnRyeSBpbiBvdXIgdGFibGUuIFNvIHdlIHRo
cmVhZHMgQXxCIGZpZ2h0aW5nIG92ZXIKPiBwZHBlOjAgYW5kIEJ8QyBmaWdodGluZyBvdmVyIHBk
cGU6MSwgYW5kIGlmIEIgbG9zZXMgdGhlIGZpcnN0IHJhY2UgYW5kCj4gdGhlIHJhY2Ugd2l0aCBD
IHJlc3VsdHMgaW4gYW4gZXJyb3IuLi4KCi9vXAoKSSBkbyBzZWUgaXQgbm93LCB0aGFua3MuCi1N
SWthCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
