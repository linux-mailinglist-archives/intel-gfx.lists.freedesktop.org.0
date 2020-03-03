Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 39A5C177214
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Mar 2020 10:11:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14C506EA44;
	Tue,  3 Mar 2020 09:11:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4981E6EA44
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Mar 2020 09:11:13 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Mar 2020 01:11:12 -0800
X-IronPort-AV: E=Sophos;i="5.70,510,1574150400"; d="scan'208";a="233558866"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Mar 2020 01:11:10 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20200302174442.5803-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200227193954.5585-1-ville.syrjala@linux.intel.com>
 <20200302174442.5803-1-ville.syrjala@linux.intel.com>
Date: Tue, 03 Mar 2020 11:11:08 +0200
Message-ID: <87r1y9pzv7.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Lock gmbus/aux mutexes while
 changing cdclk
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

T24gTW9uLCAwMiBNYXIgMjAyMCwgVmlsbGUgU3lyamFsYSA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+IHdyb3RlOgo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+Cj4KPiBnbWJ1cy9hdXggbWF5IGJlIGNsb2NrZWQgYnkgY2RjbGssIHRo
dXMgd2Ugc2hvdWxkIG1ha2Ugc3VyZSBubwo+IHRyYW5zZmVycyBhcmUgb25nb2luZyB3aGlsZSB0
aGUgY2RjbGsgZnJlcXVlbmN5IGlzIGJlaW5nIGNoYW5nZWQuCj4gV2UgZG8gdGhhdCBieSBzaW1w
bHkgZ3JhYmJpbmcgYWxsIHRoZSBnbWJ1cy9hdXggbXV0ZXhlcy4gTm8gb25lCj4gZWxzZSBzaG91
bGQgYmUgaG9sZGluZyBhbnkgbW9yZSB0aGFuIG9uZSBvZiB0aG9zZSBhdCBhIHRpbWUgc28KPiB0
aGUgbG9jayBvcmRlcmluZyBoZXJlIHNob3VsZG4ndCBtYXR0ZXIuCj4KPiB2MjogVXNlIG11dGV4
X2xvY2tfbmVzdF9sb2NrKCkgKENocmlzKQo+Cj4gQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hy
aXMtd2lsc29uLmNvLnVrPgo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUu
c3lyamFsYUBsaW51eC5pbnRlbC5jb20+CgpJIGRvbid0IHRoaW5rIG15IHJldmlldyBjb21tZW50
cyB3ZXJlIGludmFsaWQgaW4gZ2VuZXJhbCwgYnV0IEkgZG9uJ3QKd2FudCB0byBibG9jayB0aGlz
IGZhaXJseSBzdHJhaWdodGZvcndhcmQgZml4IGVpdGhlci4KCkFja2VkLWJ5OiBKYW5pIE5pa3Vs
YSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgoKPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9jZGNsay5jIHwgMjIgKysrKysrKysrKysrKysrKysrKysrKwo+ICAxIGZp
bGUgY2hhbmdlZCwgMjIgaW5zZXJ0aW9ucygrKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfY2RjbGsuYwo+IGluZGV4IDA3NDFkNjQzNDU1Yi4uOTc5YTAyNDFmZGNiIDEw
MDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYwo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYwo+IEBAIC0x
ODY4LDYgKzE4NjgsOCBAQCBzdGF0aWMgdm9pZCBpbnRlbF9zZXRfY2RjbGsoc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmRldl9wcml2LAo+ICAJCQkgICAgY29uc3Qgc3RydWN0IGludGVsX2NkY2xr
X2NvbmZpZyAqY2RjbGtfY29uZmlnLAo+ICAJCQkgICAgZW51bSBwaXBlIHBpcGUpCj4gIHsKPiAr
CXN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyOwo+ICsKPiAgCWlmICghaW50ZWxfY2RjbGtf
Y2hhbmdlZCgmZGV2X3ByaXYtPmNkY2xrLmh3LCBjZGNsa19jb25maWcpKQo+ICAJCXJldHVybjsK
PiAgCj4gQEAgLTE4NzYsOCArMTg3OCwyOCBAQCBzdGF0aWMgdm9pZCBpbnRlbF9zZXRfY2RjbGso
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAo+ICAKPiAgCWludGVsX2R1bXBfY2Rj
bGtfY29uZmlnKGNkY2xrX2NvbmZpZywgIkNoYW5naW5nIENEQ0xLIHRvIik7Cj4gIAo+ICsJLyoK
PiArCSAqIExvY2sgYXV4L2dtYnVzIHdoaWxlIHdlIGNoYW5nZSBjZGNsayBpbiBjYXNlIHRob3Nl
Cj4gKwkgKiBmdW5jdGlvbnMgdXNlIGNkY2xrLiBOb3QgYWxsIHBsYXRmb3Jtcy9wb3J0cyBkbywK
PiArCSAqIGJ1dCB3ZSdsbCBsb2NrIHRoZW0gYWxsIGZvciBzaW1wbGljaXR5Lgo+ICsJICovCj4g
KwltdXRleF9sb2NrKCZkZXZfcHJpdi0+Z21idXNfbXV0ZXgpOwo+ICsJZm9yX2VhY2hfaW50ZWxf
ZHAoJmRldl9wcml2LT5kcm0sIGVuY29kZXIpIHsKPiArCQlzdHJ1Y3QgaW50ZWxfZHAgKmludGVs
X2RwID0gZW5jX3RvX2ludGVsX2RwKGVuY29kZXIpOwo+ICsKPiArCQltdXRleF9sb2NrX25lc3Rf
bG9jaygmaW50ZWxfZHAtPmF1eC5od19tdXRleCwKPiArCQkJCSAgICAgJmRldl9wcml2LT5nbWJ1
c19tdXRleCk7Cj4gKwl9Cj4gKwo+ICAJZGV2X3ByaXYtPmRpc3BsYXkuc2V0X2NkY2xrKGRldl9w
cml2LCBjZGNsa19jb25maWcsIHBpcGUpOwo+ICAKPiArCWZvcl9lYWNoX2ludGVsX2RwKCZkZXZf
cHJpdi0+ZHJtLCBlbmNvZGVyKSB7Cj4gKwkJc3RydWN0IGludGVsX2RwICppbnRlbF9kcCA9IGVu
Y190b19pbnRlbF9kcChlbmNvZGVyKTsKPiArCj4gKwkJbXV0ZXhfdW5sb2NrKCZpbnRlbF9kcC0+
YXV4Lmh3X211dGV4KTsKPiArCX0KPiArCW11dGV4X3VubG9jaygmZGV2X3ByaXYtPmdtYnVzX211
dGV4KTsKPiArCj4gIAlpZiAoZHJtX1dBUk4oJmRldl9wcml2LT5kcm0sCj4gIAkJICAgICBpbnRl
bF9jZGNsa19jaGFuZ2VkKCZkZXZfcHJpdi0+Y2RjbGsuaHcsIGNkY2xrX2NvbmZpZyksCj4gIAkJ
ICAgICAiY2RjbGsgc3RhdGUgZG9lc24ndCBtYXRjaCFcbiIpKSB7CgotLSAKSmFuaSBOaWt1bGEs
IEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNzIENlbnRlcgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZngK
