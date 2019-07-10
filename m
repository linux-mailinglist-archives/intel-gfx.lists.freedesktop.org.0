Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 31DB46495F
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jul 2019 17:11:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C89F6E0E4;
	Wed, 10 Jul 2019 15:11:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0312C6E0FE
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jul 2019 15:11:55 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jul 2019 08:11:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,475,1557212400"; d="scan'208";a="168334448"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga003.jf.intel.com with ESMTP; 10 Jul 2019 08:11:54 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id C75D95C1EC2; Wed, 10 Jul 2019 18:11:40 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <156277098644.4055.9478781514508583714@skylake-alporthouse-com>
References: <20190707210024.26192-1-chris@chris-wilson.co.uk>
 <20190707210024.26192-5-chris@chris-wilson.co.uk>
 <8736je1ey0.fsf@gaia.fi.intel.com>
 <156274712436.11940.4326721010127255446@skylake-alporthouse-com>
 <87imsaq84d.fsf@gaia.fi.intel.com>
 <156276934120.4055.6617596785630747488@skylake-alporthouse-com>
 <87ftneq6yq.fsf@gaia.fi.intel.com>
 <156277098644.4055.9478781514508583714@skylake-alporthouse-com>
Date: Wed, 10 Jul 2019 18:11:40 +0300
Message-ID: <877e8prkk3.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 04/11] drm/i915/gtt: Markup i915_ppgtt depth
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
ZyBNaWthIEt1b3BwYWxhICgyMDE5LTA3LTEwIDE1OjUwOjM3KQo+PiBDaHJpcyBXaWxzb24gPGNo
cmlzQGNocmlzLXdpbHNvbi5jby51az4gd3JpdGVzOgo+PiAKPj4gPiBRdW90aW5nIE1pa2EgS3Vv
cHBhbGEgKDIwMTktMDctMTAgMTU6MjU6MzgpCj4+ID4+IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hy
aXMtd2lsc29uLmNvLnVrPiB3cml0ZXM6Cj4+ID4+IAo+PiA+PiA+IFF1b3RpbmcgTWlrYSBLdW9w
cGFsYSAoMjAxOS0wNy0xMCAwOToxNzoyNykKPj4gPj4gPj4gQ2hyaXMgV2lsc29uIDxjaHJpc0Bj
aHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKPj4gPj4gPj4gCj4+ID4+ID4+ID4gVGhpcyB3aWxs
IGJlIHVzZWZ1bCB0byBjb25zb2xpZGF0ZSByZWN1cnNpdmUgY29kZS4KPj4gPj4gPj4gPgo+PiA+
PiA+PiA+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNv
LnVrPgo+PiA+PiA+PiA+IC0tLQo+PiA+PiA+PiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2dlbV9ndHQuYyB8IDMgKysrCj4+ID4+ID4+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
Z2VtX2d0dC5oIHwgMSArCj4+ID4+ID4+ID4gIDIgZmlsZXMgY2hhbmdlZCwgNCBpbnNlcnRpb25z
KCspCj4+ID4+ID4+ID4KPj4gPj4gPj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9nZW1fZ3R0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYwo+
PiA+PiA+PiA+IGluZGV4IGRhNGRiNzZjZTA1NC4uMmZjNjBlOGFjZDlhIDEwMDY0NAo+PiA+PiA+
PiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCj4+ID4+ID4+ID4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMKPj4gPj4gPj4gPiBAQCAt
MTUzNyw2ICsxNTM3LDggQEAgc3RhdGljIHZvaWQgcHBndHRfaW5pdChzdHJ1Y3QgaTkxNV9wcGd0
dCAqcHBndHQsIHN0cnVjdCBpbnRlbF9ndCAqZ3QpCj4+ID4+ID4+ID4gICAgICAgcHBndHQtPnZt
LnZtYV9vcHMudW5iaW5kX3ZtYSAgPSBwcGd0dF91bmJpbmRfdm1hOwo+PiA+PiA+PiA+ICAgICAg
IHBwZ3R0LT52bS52bWFfb3BzLnNldF9wYWdlcyAgID0gcHBndHRfc2V0X3BhZ2VzOwo+PiA+PiA+
PiA+ICAgICAgIHBwZ3R0LT52bS52bWFfb3BzLmNsZWFyX3BhZ2VzID0gY2xlYXJfcGFnZXM7Cj4+
ID4+ID4+ID4gKwo+PiA+PiA+PiA+ICsgICAgIHBwZ3R0LT52bS50b3AgPSBpOTE1X3ZtX2lzXzRs
dmwoJnBwZ3R0LT52bSkgPyAzIDogMjsKPj4gPj4gPj4gCj4+ID4+ID4+IFBlcmhhcHMgaXQgYmVj
b21lcyBldmlkZW50IGxhdGVyIGluIHRoZSBzZXJpZXMgd2h5IHRvcCBhbmQKPj4gPj4gPj4gbm90
IGxldmVsLCBzbyB0aGVzZSB3b3VsZCBiZSA0IGFuZCAzIGhlcmUuCj4+ID4+ID4KPj4gPj4gPiBC
ZWNhdXNlIHdlIHVzZSB0b3AgYW5kIG5vdCBsZXZlbCA6KQo+PiA+PiAKPj4gPj4gWW91IG1ha2Ug
bWUgc3Vic3RyYWN0IG9uZSB3aXRoIG15IGJpb2xvZ2ljYWwgcHJvY2Vzc29yLgo+PiA+PiBJdCBp
cyBoYXJkLgo+PiA+PiAKPj4gPj4gUGxlYXNlIGRvIHJlbWFrZSB0aGUgaTkxNV92bV9pc180bHZs
KCkgYW5kIGluY2x1ZGUuCj4+ID4KPj4gPiBJJ20gdGVtcHRlZCB0byBwdXQgdGhlIGd0dF9kZXB0
aCBpbiB0aGUgZGV2aWNlIGluZm8uCj4+ID4KPj4gPiBIb3cgZG8geW91IHdhbnQgaTkxNV92bV9p
c180bHZsKCkgcmVtYWRlPyBUaGUgc3BlY2lhbCBjYXNlIGdvaW5nCj4+ID4gZm9yd2FyZCBpcyBy
ZWFsbHkgaXNfM2x2bD8KPj4gCj4+IE5vIHN0cm9uZyBmZWVsaW5ncyBoZXJlLiBIb3cgYWJvdXQg
aTkxNV92bV9nZXRfbHZsKHZtKQo+PiB7IHJldHVybiB0b3AgKyAxOyB9ID8KPgo+IFdobydzIGdv
aW5nIHRvIGJlIGNhbGxpbmcgZ2V0X2x2bCgpIHRob3VnaD8gVGhlIG9uZSB0aW1lIHdoZXJlIGl0
IG1pZ2h0Cj4gYmUgdXNlZnVsLCB3ZSBqdXN0IHVzZSAiPD0gdG9wIiBpbnN0ZWFkLgoKSG1tIHJp
Z2h0LCBwcm9sbHkgd2F5IHRvbyBnZW5lcmljIHRvIHF1ZXJ5IGZvciBsdmwgYW5kIGNvbXBhcmUu
IFNvCnRoZW4gaXQgaXMgdGhlIG9uZSB3aGljaCByZWFkcyBiZXN0IG9uIHRoZSBmZXcgY2FsbHNp
dGVzIGl0CndpbGwgc2l0IG9uLgoKLU1pa2EKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
