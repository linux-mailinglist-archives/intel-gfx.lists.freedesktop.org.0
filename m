Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EDD8D14AA5
	for <lists+intel-gfx@lfdr.de>; Mon,  6 May 2019 15:15:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BA2E8990D;
	Mon,  6 May 2019 13:15:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59BD08990D
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 May 2019 13:15:23 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 May 2019 06:15:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,438,1549958400"; d="scan'208";a="168414094"
Received: from ideak-desk.fi.intel.com ([10.237.72.204])
 by fmsmga002.fm.intel.com with ESMTP; 06 May 2019 06:15:21 -0700
Date: Mon, 6 May 2019 16:15:05 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20190506131505.GE28365@ideak-desk.fi.intel.com>
References: <20190502232648.4450-1-imre.deak@intel.com>
 <20190502232648.4450-10-imre.deak@intel.com>
 <20190506123552.GX24299@intel.com>
 <20190506131250.GZ24299@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190506131250.GZ24299@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 09/10] drm/i915: Avoid taking the PPS lock
 for non-eDP/VLV/CHV
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCBNYXkgMDYsIDIwMTkgYXQgMDQ6MTI6NTBQTSArMDMwMCwgVmlsbGUgU3lyasOkbMOk
IHdyb3RlOgo+IE9uIE1vbiwgTWF5IDA2LCAyMDE5IGF0IDAzOjM1OjUyUE0gKzAzMDAsIFZpbGxl
IFN5cmrDpGzDpCB3cm90ZToKPiA+IE9uIEZyaSwgTWF5IDAzLCAyMDE5IGF0IDAyOjI2OjQ3QU0g
KzAzMDAsIEltcmUgRGVhayB3cm90ZToKPiA+ID4gT24gSUNMIHdlIGhhdmUgdG8gbWFrZSBzdXJl
IHRoYXQgd2UgZW5hYmxlIHRoZSBBVVggcG93ZXIgZG9tYWluIGluIGEKPiA+ID4gY29udHJvbGxl
ZCB3YXkgKGNvcnJlc3BvbmRpbmcgdG8gdGhlIHBvcnQncyBhY3R1YWwgVHlwZUMgbW9kZSkuIFNp
bmNlCj4gPiA+IHRoZSBQUFMgbG9jayAtIHdoaWNoIHRha2VzIGFuIEFVWCBwb3dlciByZWYgLSBp
cyBvbmx5IG5lZWRlZCBvbgo+ID4gPiBlRFAvVkxWL0NIViBhdm9pZCB0YWtpbmcgaXQgaW4gb3Ro
ZXIgY2FzZXMuCj4gPiA+IAo+ID4gPiBDYzogVmlsbGUgU3lyamFsYSA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+Cj4gPiA+IFNpZ25lZC1vZmYtYnk6IEltcmUgRGVhayA8aW1yZS5kZWFr
QGludGVsLmNvbT4KPiA+ID4gLS0tCj4gPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9k
cC5jIHwgNCArKysrCj4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspCj4gPiA+
IAo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHAuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RwLmMKPiA+ID4gaW5kZXggZjU2Y2JkYTU5ZmIzLi4x
ZWU5YjdlYmQ4MDEgMTAwNjQ0Cj4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVs
X2RwLmMKPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHAuYwo+ID4gPiBA
QCAtNjI2Myw2ICs2MjYzLDEwIEBAIHZvaWQgaW50ZWxfZHBfZW5jb2Rlcl9yZXNldChzdHJ1Y3Qg
ZHJtX2VuY29kZXIgKmVuY29kZXIpCj4gPiA+ICAKPiA+ID4gIAlpbnRlbF9kcC0+cmVzZXRfbGlu
a19wYXJhbXMgPSB0cnVlOwo+ID4gPiAgCj4gPiA+ICsJaWYgKCFJU19WQUxMRVlWSUVXKGRldl9w
cml2KSAmJiAhSVNfQ0hFUlJZVklFVyhkZXZfcHJpdikgJiYKPiA+ID4gKwkgICAgIWludGVsX2Rw
X2lzX2VkcChpbnRlbF9kcCkpCj4gPiA+ICsJCXJldHVybjsKPiA+IAo+ID4gdmx2L2NodiBuZWVk
IHRoaXMgZm9yIGFsbCBEUCBwb3J0cy4KPiAKPiBXaGljaCBpcyB3aGF0IHRoaXMgZG9lcy4gVGhl
IHdvcmRpbmcgaW4gdGhlIGNvbW1pdCBtZXNzYWdlIGNvbmZ1c2VkIG1lLgoKWWVwLCBjYW4gbWFr
ZSBpdCBjbGVhcmVyIGxpa2U6CgouLi4gb25seSBuZWVkZWQgb24gZURQIG9uIGFsbCBwbGF0Zm9y
bXMgYW5kIGVEUC9EUCBvbiBWTFYvQ0hWLCAuLi4KCj4gPiAKPiA+ID4gKwo+ID4gPiAgCXdpdGhf
cHBzX2xvY2soaW50ZWxfZHAsIHdha2VyZWYpIHsKPiA+ID4gIAkJaWYgKElTX1ZBTExFWVZJRVco
ZGV2X3ByaXYpIHx8IElTX0NIRVJSWVZJRVcoZGV2X3ByaXYpKQo+ID4gPiAgCQkJaW50ZWxfZHAt
PmFjdGl2ZV9waXBlID0gdmx2X2FjdGl2ZV9waXBlKGludGVsX2RwKTsKPiA+ID4gLS0gCj4gPiA+
IDIuMTcuMQo+ID4gCj4gPiAtLSAKPiA+IFZpbGxlIFN5cmrDpGzDpAo+ID4gSW50ZWwKPiAKPiAt
LSAKPiBWaWxsZSBTeXJqw6Rsw6QKPiBJbnRlbApfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
