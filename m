Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 57678399DF4
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Jun 2021 11:41:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A31686E0CD;
	Thu,  3 Jun 2021 09:41:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 36D616E0E6
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Jun 2021 09:41:35 +0000 (UTC)
IronPort-SDR: Enpx2h+z4SQc62He8uk4nZUl2sfdOM2mjLDE8SrXOlRxHv/a//FJ6u1wwPtNMOkAvT3QUuNAle
 lGg5/OrKsSNw==
X-IronPort-AV: E=McAfee;i="6200,9189,10003"; a="225304081"
X-IronPort-AV: E=Sophos;i="5.83,244,1616482800"; d="scan'208";a="225304081"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2021 02:41:33 -0700
IronPort-SDR: 5mVHmQQRSjBCHJjcrgiUF22lUHB4EBh01bk5RAC0gZ/cPdglhTv6p+/8dd7g5O8hCgQBMJTZJJ
 KbFZWg/ZNz1Q==
X-IronPort-AV: E=Sophos;i="5.83,244,1616482800"; d="scan'208";a="480156559"
Received: from sleader-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.54.200])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2021 02:41:27 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Kulkarni\, Vandita" <vandita.kulkarni@intel.com>, "Saarinen\,
 Jani" <jani.saarinen@intel.com>,
 "intel-gfx\@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
In-Reply-To: <1e70025aa4e04a5396721ad4e7609340@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210603065356.15435-1-vandita.kulkarni@intel.com>
 <eedaa66fa17944aeb96aa353c58db2e9@intel.com>
 <1e70025aa4e04a5396721ad4e7609340@intel.com>
Date: Thu, 03 Jun 2021 12:41:23 +0300
Message-ID: <87czt3p9oc.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dsc: Remove redundant checks in
 DSC disable
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

T24gVGh1LCAwMyBKdW4gMjAyMSwgIkt1bGthcm5pLCBWYW5kaXRhIiA8dmFuZGl0YS5rdWxrYXJu
aUBpbnRlbC5jb20+IHdyb3RlOgo+PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+PiBGcm9t
OiBTYWFyaW5lbiwgSmFuaSA8amFuaS5zYWFyaW5lbkBpbnRlbC5jb20+Cj4+IFNlbnQ6IFRodXJz
ZGF5LCBKdW5lIDMsIDIwMjEgMTowNyBQTQo+PiBUbzogS3Vsa2FybmksIFZhbmRpdGEgPHZhbmRp
dGEua3Vsa2FybmlAaW50ZWwuY29tPjsgaW50ZWwtCj4+IGdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKPj4gQ2M6IE5pa3VsYSwgSmFuaSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgo+PiBTdWJqZWN0
OiBSRTogW0ludGVsLWdmeF0gW1BBVENIXSBkcm0vaTkxNS9kc2M6IFJlbW92ZSByZWR1bmRhbnQg
Y2hlY2tzIGluCj4+IERTQyBkaXNhYmxlCj4+IAo+PiBIaSwKPj4gPiAtLS0tLU9yaWdpbmFsIE1l
c3NhZ2UtLS0tLQo+PiA+IEZyb206IEludGVsLWdmeCA8aW50ZWwtZ2Z4LWJvdW5jZXNAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YKPj4gPiBWYW5kaXRhIEt1bGthcm5pCj4+ID4g
U2VudDogdG9yc3RhaSAzLiBrZXPDpGt1dXRhIDIwMjEgOS41NAo+PiA+IFRvOiBpbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4+ID4gQ2M6IE5pa3VsYSwgSmFuaSA8amFuaS5uaWt1bGFA
aW50ZWwuY29tPgo+PiA+IFN1YmplY3Q6IFtJbnRlbC1nZnhdIFtQQVRDSF0gZHJtL2k5MTUvZHNj
OiBSZW1vdmUgcmVkdW5kYW50IGNoZWNrcyBpbgo+PiA+IERTQyBkaXNhYmxlCj4+ID4KPj4gPiBU
aGVyZSBjYW4gYmUgYSBjaGFuY2UgdGhhdCBwcmUgb3MgaGFzIGVuYWJsZWQgRFNDIGFuZCBkcml2
ZXIncyBjb21wdXRlCj4+ID4gY29uZmlnIHdvdWxkIG5vdCBuZWVkIGRzYyB0byBiZSBlbmFibGVk
LCBpbiBzdWNoIGNhc2UgaWYgd2UgY2hlY2sgb24KPj4gPiBjb21wdXRlIGNvbmZpZydzIGNvbXBy
ZXNzaW9uIHN0YXRlIHRvIGRpc2FibGUsIHdlIG1pZ2h0IGVuZCB1cCBpbiBzdGF0ZQo+PiBtaXNt
YXRjaC4KPj4gCj4+IEkgYXNzdW1lIHRoaXMgZml4ZXMgcmVhbCBnaXRsYWIgaXNzdWUgdG9vPwo+
IE9rYXksIHdpbGwgYWRkIHRoZSB0YWcgCj4gQ2xvc2VzOiBodHRwczovL2dpdGxhYi5mcmVlZGVz
a3RvcC5vcmcvZHJtL2ludGVsLy0vaXNzdWVzLzM1MzcKClNlZSBodHRwczovL2xvcmUua2VybmVs
Lm9yZy9yLzg3ZnN4enA5cXguZnNmQGludGVsLmNvbQoKVGhlIHByb2JsZW0gaXMgd2l0aCAtPmJp
Z2pvaW5lciwgbm90IHRoZSBlbnRpcmUgc3RhdGVtZW50LgoKCkJSLApKYW5pLgoKPgo+IFRoYW5r
cywKPiBWYW5kaXRhCj4+IAo+PiA+Cj4+ID4gU2lnbmVkLW9mZi1ieTogVmFuZGl0YSBLdWxrYXJu
aSA8dmFuZGl0YS5rdWxrYXJuaUBpbnRlbC5jb20+Cj4+ID4gLS0tCj4+ID4gIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmRzYy5jIHwgNCAtLS0tCj4+ID4gIDEgZmlsZSBjaGFu
Z2VkLCA0IGRlbGV0aW9ucygtKQo+PiA+Cj4+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmRzYy5jCj4+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3Zkc2MuYwo+PiA+IGluZGV4IDE5Y2Q5NTMxYzExNS4uYjA1YTk2MDExZDkz
IDEwMDY0NAo+PiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmRz
Yy5jCj4+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92ZHNjLmMK
Pj4gPiBAQCAtMTE2MSwxMCArMTE2MSw2IEBAIHZvaWQgaW50ZWxfZHNjX2Rpc2FibGUoY29uc3Qg
c3RydWN0Cj4+ID4gaW50ZWxfY3J0Y19zdGF0ZQo+PiA+ICpvbGRfY3J0Y19zdGF0ZSkKPj4gPiAg
CXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjID0gdG9faW50ZWxfY3J0YyhvbGRfY3J0Y19zdGF0ZS0+
dWFwaS5jcnRjKTsKPj4gPiAgCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRv
X2k5MTUoY3J0Yy0+YmFzZS5kZXYpOwo+PiA+Cj4+ID4gLQlpZiAoIShvbGRfY3J0Y19zdGF0ZS0+
ZHNjLmNvbXByZXNzaW9uX2VuYWJsZSAmJgo+PiA+IC0JICAgICAgb2xkX2NydGNfc3RhdGUtPmJp
Z2pvaW5lcikpCj4+ID4gLQkJcmV0dXJuOwo+PiA+IC0KPj4gPiAgCWludGVsX2RlX3dyaXRlKGRl
dl9wcml2LCBkc3NfY3RsMV9yZWcob2xkX2NydGNfc3RhdGUpLCAwKTsKPj4gPiAgCWludGVsX2Rl
X3dyaXRlKGRldl9wcml2LCBkc3NfY3RsMl9yZWcob2xkX2NydGNfc3RhdGUpLCAwKTsgIH0KPj4g
PiAtLQo+PiA+IDIuMjEuMC41LmdhZWI1ODJhCj4+ID4KPj4gPiBfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiA+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QK
Pj4gPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4+ID4gaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngKCi0tIApKYW5pIE5pa3Vs
YSwgSW50ZWwgT3BlbiBTb3VyY2UgR3JhcGhpY3MgQ2VudGVyCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
