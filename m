Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 355EA6996B
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jul 2019 18:56:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E266B89333;
	Mon, 15 Jul 2019 16:56:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D8B489333
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Jul 2019 16:56:24 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Jul 2019 09:56:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,493,1557212400"; d="scan'208";a="365924302"
Received: from mdroper-desk.fm.intel.com (HELO
 mdroper-desk.amr.corp.intel.com) ([10.105.128.126])
 by fmsmga005.fm.intel.com with ESMTP; 15 Jul 2019 09:56:23 -0700
Date: Mon, 15 Jul 2019 09:56:23 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20190715165623.GA24820@mdroper-desk.amr.corp.intel.com>
References: <20190712221641.21031-1-matthew.d.roper@intel.com>
 <197110faa19dba647ebe476036006848245562c6.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <197110faa19dba647ebe476036006848245562c6.camel@intel.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/ehl: Map MCC pins based on PHY,
 not port
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBKdWwgMTIsIDIwMTkgYXQgMDM6MzI6NDdQTSAtMDcwMCwgU291emEsIEpvc2Ugd3Jv
dGU6Cj4gT24gRnJpLCAyMDE5LTA3LTEyIGF0IDE1OjE2IC0wNzAwLCBNYXR0IFJvcGVyIHdyb3Rl
Ogo+ID4gTm93IHRoYXQgd2UgZGlzdGluZ3Vpc2ggYmV0d2VlbiBwaHkgYW5kIHBvcnQoZGRpKSwK
PiA+IG1jY19wb3J0X3RvX2RkY19waW4KPiA+IHNob3VsZCB1c2UgdGhlIHBoeSwgbm90IHRoZSBE
REksIGZvciBkZXRlcm1pbmluZyBEREMgcGlucy4KPiAKPiBOaXQ6IE1heWJlIGFkZCB0byB0aGUg
Y29tbWl0IG1lc3NhZ2Ugd2h5IHlvdSBhcmUgb25seSBjb252ZXJ0aW5nIHRoaXMKPiBvbmUgYW5k
IG5vdCB0aGUgb3RoZXJzPwo+IAo+IEFueXdheXM6Cj4gCj4gUmV2aWV3ZWQtYnk6IEpvc8OpIFJv
YmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgoKQ29tbWl0IG1lc3NhZ2UgdXBk
YXRlZCBhbmQgcHVzaGVkIHRvIGRpbnEuICBUaGFua3MgZm9yIHRoZSByZXZpZXcuCgoKTWF0dAoK
PiAKPiA+IAo+ID4gQ2M6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwu
Y29tPgo+ID4gU2lnbmVkLW9mZi1ieTogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVs
LmNvbT4KPiA+IC0tLQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRt
aS5jIHwgMTEgKysrKysrLS0tLS0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCsp
LCA1IGRlbGV0aW9ucygtKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9oZG1pLmMKPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9oZG1pLmMKPiA+IGluZGV4IDc3YWYwZGZkOTNjZS4uMDk4ZWEyYzVkODMxIDEwMDY0
NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZG1pLmMKPiA+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jCj4gPiBAQCAt
Mjk0MywyMCArMjk0MywyMSBAQCBzdGF0aWMgdTggaWNsX3BvcnRfdG9fZGRjX3BpbihzdHJ1Y3QK
PiA+IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCBlbnVtIHBvcnQgcG9ydCkKPiA+ICAKPiA+
ICBzdGF0aWMgdTggbWNjX3BvcnRfdG9fZGRjX3BpbihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
ZGV2X3ByaXYsCj4gPiBlbnVtIHBvcnQgcG9ydCkKPiA+ICB7Cj4gPiArCWVudW0gcGh5IHBoeSA9
IGludGVsX3BvcnRfdG9fcGh5KGRldl9wcml2LCBwb3J0KTsKPiA+ICAJdTggZGRjX3BpbjsKPiA+
ICAKPiA+IC0Jc3dpdGNoIChwb3J0KSB7Cj4gPiAtCWNhc2UgUE9SVF9BOgo+ID4gKwlzd2l0Y2gg
KHBoeSkgewo+ID4gKwljYXNlIFBIWV9BOgo+ID4gIAkJZGRjX3BpbiA9IEdNQlVTX1BJTl8xX0JY
VDsKPiA+ICAJCWJyZWFrOwo+ID4gLQljYXNlIFBPUlRfQjoKPiA+ICsJY2FzZSBQSFlfQjoKPiA+
ICAJCWRkY19waW4gPSBHTUJVU19QSU5fMl9CWFQ7Cj4gPiAgCQlicmVhazsKPiA+IC0JY2FzZSBQ
T1JUX0M6Cj4gPiArCWNhc2UgUEhZX0M6Cj4gPiAgCQlkZGNfcGluID0gR01CVVNfUElOXzlfVEMx
X0lDUDsKPiA+ICAJCWJyZWFrOwo+ID4gIAlkZWZhdWx0Ogo+ID4gLQkJTUlTU0lOR19DQVNFKHBv
cnQpOwo+ID4gKwkJTUlTU0lOR19DQVNFKHBoeSk7Cj4gPiAgCQlkZGNfcGluID0gR01CVVNfUElO
XzFfQlhUOwo+ID4gIAkJYnJlYWs7Cj4gPiAgCX0KCi0tIApNYXR0IFJvcGVyCkdyYXBoaWNzIFNv
ZnR3YXJlIEVuZ2luZWVyCklvVEcgUGxhdGZvcm0gRW5hYmxpbmcgJiBEZXZlbG9wbWVudApJbnRl
bCBDb3Jwb3JhdGlvbgooOTE2KSAzNTYtMjc5NQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
