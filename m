Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EDC0A7A3BD
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jul 2019 11:14:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 461CB6E454;
	Tue, 30 Jul 2019 09:14:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CE986E455
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jul 2019 09:14:28 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Jul 2019 02:14:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,326,1559545200"; d="scan'208";a="190821415"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 30 Jul 2019 02:14:26 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <156447497813.6373.10937852267140257861@skylake-alporthouse-com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20190729140847.18557-1-jani.nikula@intel.com>
 <156447497813.6373.10937852267140257861@skylake-alporthouse-com>
Date: Tue, 30 Jul 2019 12:18:48 +0300
Message-ID: <87a7cvop6v.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: use upstream version of header
 tests
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

T24gVHVlLCAzMCBKdWwgMjAxOSwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28u
dWs+IHdyb3RlOgo+IFF1b3RpbmcgSmFuaSBOaWt1bGEgKDIwMTktMDctMjkgMTU6MDg6NDcpCj4+
IFRocm93IG91dCBvdXIgbG9jYWwgaGFja3Mgb2YgaGVhZGVyIHRlc3RzIG5vdyB0aGF0IHRoZSBt
b3JlIGdlbmVyaWMKPj4ga2J1aWxkIHZlcnNpb25zIGFyZSB1cHN0cmVhbS4KPj4gCj4+IEF0IGxl
YXN0IGZvciBub3csIGNvbnRpbnVlIHRvIGtlZXAgdGhlIGhlYWRlciB0ZXN0cyBiZWhpbmQKPj4g
Q09ORklHX0RSTV9JOTE1X1dFUlJPUj15IGtub2IuCj4+IAo+PiBDYzogQ2hyaXMgV2lsc29uIDxj
aHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4+IFNpZ25lZC1vZmYtYnk6IEphbmkgTmlrdWxhIDxq
YW5pLm5pa3VsYUBpbnRlbC5jb20+Cj4+IAo+PiAtLS0KPj4gCj4+IFRlY2huaWNhbGx5IHRoZSB1
cHN0cmVhbSB2ZXJzaW9ucyBhcmUgb25seSBpbiBkcm0tdGlwLCBhbmQgbm90IGluIGRpbnEKPj4g
dW50aWwgYSBiYWNrbWVyZ2UsIGJ1dCBJIHRoaW5rIGl0J3MgZ29vZCBlbm91Z2guIEkgZG9uJ3Qg
dGhpbmsgaXQgc2hvdWxkCj4+IG1lc3MgYW55dGhpbmcgdXAuCj4+IC0tLQo+PiAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvS2NvbmZpZy5kZWJ1ZyAgICAgICAgICAgIHwgIDEgKwo+PiAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvTWFrZWZpbGUgICAgICAgICAgICAgICAgIHwgIDIgKy0KPj4gIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L01ha2VmaWxlLmhlYWRlci10ZXN0ICAgICB8IDI3IC0tLS0tLS0tLS0tLS0t
LS0tLS0KPj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvTWFrZWZpbGUgICAgICAgICB8
ICAzICsrLQo+PiAgLi4uL2dwdS9kcm0vaTkxNS9kaXNwbGF5L01ha2VmaWxlLmhlYWRlci10ZXN0
IHwgMTYgLS0tLS0tLS0tLS0KPj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9NYWtlZmlsZSAg
ICAgICAgICAgICB8ICAyICstCj4+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vTWFrZWZpbGUu
aGVhZGVyLXRlc3QgfCAxNiAtLS0tLS0tLS0tLQo+PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
TWFrZWZpbGUgICAgICAgICAgICAgIHwgIDIgKy0KPj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L01ha2VmaWxlLmhlYWRlci10ZXN0ICB8IDE2IC0tLS0tLS0tLS0tCj4+ICBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC91Yy9NYWtlZmlsZSAgICAgICAgICAgfCAgMiArLQo+PiAgLi4uL2dwdS9kcm0v
aTkxNS9ndC91Yy9NYWtlZmlsZS5oZWFkZXItdGVzdCAgIHwgMTYgLS0tLS0tLS0tLS0KPgo+IExv
b2tzIGNvbXBsZXRlIChtdXN0IHJlbWVtYmVyIHRvIG5vdCBhZGQgaTkxNS9tbS9NYWtlZmlsZS5o
ZWFkZXItdGVzdCkKPgo+PiAgMTEgZmlsZXMgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCA5NiBk
ZWxldGlvbnMoLSkKPj4gIGRlbGV0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9N
YWtlZmlsZS5oZWFkZXItdGVzdAo+PiAgZGVsZXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvTWFrZWZpbGUuaGVhZGVyLXRlc3QKPj4gIGRlbGV0ZSBtb2RlIDEwMDY0
NCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vTWFrZWZpbGUuaGVhZGVyLXRlc3QKPj4gIGRlbGV0
ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9NYWtlZmlsZS5oZWFkZXItdGVz
dAo+PiAgZGVsZXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL01ha2Vm
aWxlLmhlYWRlci10ZXN0Cj4+IAo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
S2NvbmZpZy5kZWJ1ZyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L0tjb25maWcuZGVidWcKPj4gaW5k
ZXggNGNkYzAxODFhMDkzLi44N2EzOGM2YWFhNDEgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L0tjb25maWcuZGVidWcKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvS2Nv
bmZpZy5kZWJ1Zwo+PiBAQCAtNyw2ICs3LDcgQEAgY29uZmlnIERSTV9JOTE1X1dFUlJPUgo+PiAg
ICAgICAgICAjIFdlIHVzZSB0aGUgZGVwZW5kZW5jeSBvbiAhQ09NUElMRV9URVNUIHRvIG5vdCBi
ZSBlbmFibGVkIGluCj4+ICAgICAgICAgICMgYWxsbW9kY29uZmlnIG9yIGFsbHllc2NvbmZpZyBj
b25maWd1cmF0aW9ucwo+PiAgICAgICAgICBkZXBlbmRzIG9uICFDT01QSUxFX1RFU1QKPj4gKyAg
ICAgICBzZWxlY3QgSEVBREVSX1RFU1QKPgo+IEkgdGhvdWdodCB0aGlzIHNob3VsZCBiZSBhIHRh
Yj8KCk1lIHRvbywgYnV0IG5vbmUgb2YgdGhlIG90aGVycyBhcm91bmQgaXQgd2VyZS4gOi8KCj4g
UmV2aWV3ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgoKVGhh
bmtzLCBwdXNoZWQgdG8gZGlucS4KCkJSLApKYW5pLgoKLS0gCkphbmkgTmlrdWxhLCBJbnRlbCBP
cGVuIFNvdXJjZSBHcmFwaGljcyBDZW50ZXIKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
