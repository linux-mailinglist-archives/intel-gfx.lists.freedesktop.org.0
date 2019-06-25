Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FB6755352
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jun 2019 17:26:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76A946E152;
	Tue, 25 Jun 2019 15:26:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F24B66E14F
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jun 2019 15:26:49 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jun 2019 08:26:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,416,1557212400"; d="scan'208";a="164019840"
Received: from mdroper-desk.fm.intel.com (HELO
 mdroper-desk.amr.corp.intel.com) ([10.105.128.126])
 by orsmga003.jf.intel.com with ESMTP; 25 Jun 2019 08:26:49 -0700
Date: Tue, 25 Jun 2019 08:26:48 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20190625152648.GF24125@mdroper-desk.amr.corp.intel.com>
References: <20190614213749.15870-1-jose.souza@intel.com>
 <20190614221739.GF32200@mdroper-desk.amr.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190614221739.GF32200@mdroper-desk.amr.corp.intel.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/ehl: Add missing VECS engine
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBKdW4gMTQsIDIwMTkgYXQgMDM6MTc6MzlQTSAtMDcwMCwgTWF0dCBSb3BlciB3cm90
ZToKPiBPbiBGcmksIEp1biAxNCwgMjAxOSBhdCAwMjozNzo0OVBNIC0wNzAwLCBKb3PDqSBSb2Jl
cnRvIGRlIFNvdXphIHdyb3RlOgo+ID4gRUhMIGNhbiBoYXZlIHVwIHRvIG9uZSBWRUNTKHZpZGVv
IGVuaGFuY2VtZW50KSBlbmdpbmUsIHNvIGFkZCBpdCB0bwo+ID4gdGhlIGRldmljZV9pbmZvLgo+
IAo+IEJzcGVjIDI5MTUwIGhhcyBhIGZvb3Rub3RlIG9uIFZFYm94IHRoYXQgaW5kaWNhdGVzICJQ
YXNzLXRocm91Z2ggb25seSwKPiBubyBWRWJveCBwcm9jZXNzaW5nIGxvZ2ljLiIgIFRoYXQgbm90
ZSBzZWVtcyBhIGJpdCB2YWd1ZSwgYnV0IEkgdGhpbmsgSQo+IHNhdyBzb21lIG1vcmUgZGV0YWls
ZWQgaW5mbyBpbiB0aGUgcGFzdCBzb21ld2hlcmUgdGhhdCBpbmRpY2F0ZWQgdGhlCj4gVkVDUyBj
b21tYW5kIHN0cmVhbWVyIGlzIHN0aWxsIHRlY2huaWNhbGx5IHByZXNlbnQgYnV0IGRvZXNuJ3Qg
YWN0dWFsbHkKPiBkbyBhbnkgdmlkZW8gZW5oYW5jZW1lbnQgb24gRUhMOyBpdCBqdXN0IHBhc3Nl
cyBjb250ZW50IHRocm91Z2ggdG8gU0ZDLgo+IAo+IEknbSBub3QgdGVycmlibHkgcGx1Z2dlZCBp
bnRvIHRoZSBtZWRpYSBzaWRlIG9mIHRoZSB3b3JsZCwgc28gSSdtIG5vdAo+IHN1cmUgaWYgd2Ug
d2FudCB0byBleHBvc2UgVkVDUyB0byB1c2Vyc3BhY2UgaWYgaXQncyBiYXNpY2FsbHkgYSBub29w
IGFuZAo+IGRvZXNuJ3QgZG8gd2hhdCBpdCBub3JtYWxseSBkb2VzIG9uIG90aGVyIHBsYXRmb3Jt
cy4gIEJzcGVjIHBhZ2UgNTIyOQo+IGltcGxpZXMgdGhhdCBTRkMgY2FuIGJlIGZlZCBkaXJlY3Rs
eSBieSB0aGUgZGVjb2RlIGVuZ2luZSB3aXRob3V0IGdvaW5nCj4gdGhyb3VnaCBWRUJPWCwgc28g
SSdtIG5vdCBzdXJlIGlmIG1lZGlhIHVzZXJzcGFjZSB3b3VsZCBldmVyIGhhdmUgYSB1c2UKPiBm
b3IgdGhlIHBhc3N0aHJvdWdoLW9ubHkgVkVDUyBzdHJlYW1lci4KPiAKPiBXZSBzaG91bGQgcHJv
YmFibHkgYXNrIHNvbWVvbmUgb24gdGhlIG1lZGlhIHRlYW0gd2hhdCB0aGVpciB0aG91Z2h0cyBh
cmUKPiBvbiB0aGlzLgoKU2luY2UgdGhlIG1lZGlhIHRlYW0gY29uZmlybWVkIHRoYXQgdGhlcmUg
aXMgaW5kZWVkIGEgdXNlIGNhc2UgZm9yIGEKcGFzc3Rocm91Z2gtb25seSBWRUNTLAoKUmV2aWV3
ZWQtYnk6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+CgoKPiAKPiAKPiBN
YXR0Cj4gCj4gPiAKPiA+IEJTcGVjOiAyOTE1Mgo+ID4gQ2M6IFJvZHJpZ28gVml2aSA8cm9kcmln
by52aXZpQGludGVsLmNvbT4KPiA+IENjOiBCb2IgUGFhdXdlIDxib2Iuai5wYWF1d2VAaW50ZWwu
Y29tPgo+ID4gQ2M6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+Cj4gPiBD
YzogQ2xpbnQgVGF5bG9yIDxDbGludG9uLkEuVGF5bG9yQGludGVsLmNvbT4KPiA+IFNpZ25lZC1v
ZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgo+ID4g
LS0tCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2kuYyB8IDIgKy0KPiA+ICAxIGZp
bGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPiA+IAo+ID4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3BjaS5jCj4gPiBpbmRleCA0ODJmMWQwZjE3NzAuLjJjNWY2NGNjYWRiNSAxMDA2
NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMKPiA+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMKPiA+IEBAIC03NjAsNyArNzYwLDcgQEAgc3Rh
dGljIGNvbnN0IHN0cnVjdCBpbnRlbF9kZXZpY2VfaW5mbyBpbnRlbF9lbGtoYXJ0bGFrZV9pbmZv
ID0gewo+ID4gIAlHRU4xMV9GRUFUVVJFUywKPiA+ICAJUExBVEZPUk0oSU5URUxfRUxLSEFSVExB
S0UpLAo+ID4gIAkucmVxdWlyZV9mb3JjZV9wcm9iZSA9IDEsCj4gPiAtCS5lbmdpbmVfbWFzayA9
IEJJVChSQ1MwKSB8IEJJVChCQ1MwKSB8IEJJVChWQ1MwKSwKPiA+ICsJLmVuZ2luZV9tYXNrID0g
QklUKFJDUzApIHwgQklUKEJDUzApIHwgQklUKFZDUzApIHwgQklUKFZFQ1MwKSwKPiA+ICAJLnBw
Z3R0X3NpemUgPSAzNiwKPiA+ICB9Owo+ID4gIAo+ID4gLS0gCj4gPiAyLjIyLjAKPiA+IAo+IAo+
IC0tIAo+IE1hdHQgUm9wZXIKPiBHcmFwaGljcyBTb2Z0d2FyZSBFbmdpbmVlcgo+IElvVEcgUGxh
dGZvcm0gRW5hYmxpbmcgJiBEZXZlbG9wbWVudAo+IEludGVsIENvcnBvcmF0aW9uCj4gKDkxNikg
MzU2LTI3OTUKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xwo+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZngKCi0tIApNYXR0IFJvcGVyCkdyYXBoaWNzIFNvZnR3YXJlIEVuZ2luZWVyCklvVEcgUGxh
dGZvcm0gRW5hYmxpbmcgJiBEZXZlbG9wbWVudApJbnRlbCBDb3Jwb3JhdGlvbgooOTE2KSAzNTYt
Mjc5NQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
