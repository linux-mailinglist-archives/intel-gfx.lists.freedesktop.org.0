Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01095793A0
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jul 2019 21:15:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F8226E1CF;
	Mon, 29 Jul 2019 19:15:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C8CE989885
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Jul 2019 19:15:52 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Jul 2019 12:15:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,324,1559545200"; d="scan'208";a="165591918"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com) ([10.54.75.49])
 by orsmga008.jf.intel.com with ESMTP; 29 Jul 2019 12:15:52 -0700
Date: Mon, 29 Jul 2019 12:17:53 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20190729191753.GI2632@intel.com>
References: <20190712202214.3906-1-manasi.d.navare@intel.com>
 <20190712202938.GQ5942@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190712202938.GQ5942@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH v4 1/2] drm/i915/display/icl: Bump up the
 hdisplay and vdisplay as per transcoder limits
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

SGkgVmlsbGUsCgpUaGFua3MgZm9yIHlvdXIgcmV2aWV3LCBzbyBkbyB3ZSB3YW50IHRvIG1lcmdl
IHRoaXMgYXMgaXMgb3IKZG8gd2UgbmVlZCBzb21lIGZ1bmN0aW9uIHRvIHJlamVjdCB0aGUgOEsg
bW9kZSBvbiBJQ0wgaW4gaW50ZWxfZHBfbW9kZV92YWxpZCgpPwoKTWFuYXNpCgpPbiBGcmksIEp1
bCAxMiwgMjAxOSBhdCAxMToyOTozOFBNICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6Cj4g
T24gRnJpLCBKdWwgMTIsIDIwMTkgYXQgMDE6MjI6MTNQTSAtMDcwMCwgTWFuYXNpIE5hdmFyZSB3
cm90ZToKPiA+IE9uIElDTCssIHRoZSB2ZXJ0aWNhbCBsaW1pdHMgZm9yIHRoZSB0cmFuc2NvZGVy
cyBhcmUgaW5jcmVhc2VkIHRvIDgxOTIKPiA+IGFuZCBob3Jpem9udGFsIGxpbWl0cyBhcmUgYnVt
cGVkIHRvIDE2SyBzbyBidW1wIHVwCj4gPiBsaW1pdHMgaW4gaW50ZWxfbW9kZV92YWxpZCgpCj4g
PiAKPiA+IHY0Ogo+ID4gKiBJbmNyZWFzZSB0aGUgaGRpc3BsYXkgdG8gMTZLIChWaWxsZSkKPiA+
IHYzOgo+ID4gKiBTdXBwb3J0ZWQgc3RhcnRpbmcgSUNMIChWaWxsZSkKPiA+ICogVXNlIHRoZSBo
aWdoZXIgbGltaXRzIGZyb20gVFJBTlNfVlRPVEFMIHJlZ2lzdGVyIChWaWxsZSkKPiA+IHYyOgo+
ID4gKiBDaGVja3BhdGNoIHdhcm5pbmcgKE1hbmFzaSkKPiA+IAo+ID4gQ2M6IE1hYXJ0ZW4gTGFu
a2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+Cj4gPiBDYzogVmlsbGUg
U3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiA+IFNpZ25lZC1vZmYt
Ynk6IE1hbmFzaSBOYXZhcmUgPG1hbmFzaS5kLm5hdmFyZUBpbnRlbC5jb20+Cj4gCj4gUmV2aWV3
ZWQtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4g
Cj4gPiAtLS0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
YyB8IDkgKysrKysrKy0tCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgMiBk
ZWxldGlvbnMoLSkKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5LmMKPiA+IGluZGV4IGYwNzA4MTgxNWI4MC4uMTUwMDY3NjQ4NjJiIDEwMDY0NAo+
ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPiA+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gPiBA
QCAtMTU3NjQsOCArMTU3NjQsMTMgQEAgaW50ZWxfbW9kZV92YWxpZChzdHJ1Y3QgZHJtX2Rldmlj
ZSAqZGV2LAo+ID4gIAkJCSAgIERSTV9NT0RFX0ZMQUdfQ0xLRElWMikpCj4gPiAgCQlyZXR1cm4g
TU9ERV9CQUQ7Cj4gPiAgCj4gPiAtCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDkgfHwKPiA+
IC0JICAgIElTX0JST0FEV0VMTChkZXZfcHJpdikgfHwgSVNfSEFTV0VMTChkZXZfcHJpdikpIHsK
PiA+ICsJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTEpIHsKPiA+ICsJCWhkaXNwbGF5X21h
eCA9IDE2Mzg0Owo+ID4gKwkJdmRpc3BsYXlfbWF4ID0gODE5MjsKPiA+ICsJCWh0b3RhbF9tYXgg
PSAxNjM4NDsKPiA+ICsJCXZ0b3RhbF9tYXggPSA4MTkyOwo+ID4gKwl9IGVsc2UgaWYgKElOVEVM
X0dFTihkZXZfcHJpdikgPj0gOSB8fAo+ID4gKwkJICAgSVNfQlJPQURXRUxMKGRldl9wcml2KSB8
fCBJU19IQVNXRUxMKGRldl9wcml2KSkgewo+ID4gIAkJaGRpc3BsYXlfbWF4ID0gODE5MjsgLyog
RkRJIG1heCA0MDk2IGhhbmRsZWQgZWxzZXdoZXJlICovCj4gPiAgCQl2ZGlzcGxheV9tYXggPSA0
MDk2Owo+ID4gIAkJaHRvdGFsX21heCA9IDgxOTI7Cj4gPiAtLSAKPiA+IDIuMTkuMQo+IAo+IC0t
IAo+IFZpbGxlIFN5cmrDpGzDpAo+IEludGVsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
