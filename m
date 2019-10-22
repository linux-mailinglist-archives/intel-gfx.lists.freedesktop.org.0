Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 286E6E0A87
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2019 19:22:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 827796E8A5;
	Tue, 22 Oct 2019 17:22:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B69A6E8A5
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Oct 2019 17:22:39 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Oct 2019 10:22:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,217,1569308400"; d="scan'208";a="203705593"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com) ([10.54.75.49])
 by FMSMGA003.fm.intel.com with ESMTP; 22 Oct 2019 10:22:38 -0700
Date: Tue, 22 Oct 2019 10:24:57 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20191022172456.GB2533@intel.com>
References: <20191022133414.8293-1-jani.nikula@intel.com>
 <20191022133414.8293-2-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191022133414.8293-2-jani.nikula@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/dsc: move crtc state
 dp_dsc_cfg member under dsc as config
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

T24gVHVlLCBPY3QgMjIsIDIwMTkgYXQgMDQ6MzQ6MTRQTSArMDMwMCwgSmFuaSBOaWt1bGEgd3Jv
dGU6Cj4gRFNDIGlzbid0IERQIHNwZWNpZmljLCBzbyByZW1vdmUgdGhlIGRwXyBwcmVmaXggZnJv
bSB0aGUgY3J0YyBzdGF0ZQo+IG1lbWJlciBuYW1lLiBBbHNvIG1vdmluZyB0aGUgbWVtYmVyIHVu
ZGVyIHRoZSBkc2Mgc3ViLXN0cnVjdCBnaXZlcyB1cwo+IGVub3VnaCBjb250ZXh0IHRvIGFsbG93
IHNob3J0ZW5pbmcgdGhlIG5hbWUgdG8ganVzdCBjb25maWcuIE5vCj4gZnVuY3Rpb25hbCBjaGFu
Z2VzLgo+IAo+IENjOiBNYW5hc2kgTmF2YXJlIDxtYW5hc2kuZC5uYXZhcmVAaW50ZWwuY29tPgo+
IFNpZ25lZC1vZmYtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+CgpTb3Vu
ZHMgZ29vZCB0byBtZSBhbmQgSSBndWVzcyB3b3JrcyBiZXR0ZXIgd2l0aCBleHBhbmRpbmcgdGhp
cyBjb2RlCnRvIG90aGVyIGNvbm5lY3RvcnMKClJldmlld2VkLWJ5OiBNYW5hc2kgTmF2YXJlIDxt
YW5hc2kuZC5uYXZhcmVAaW50ZWwuY29tPgoKTWFuYXNpCgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCB8IDIgKy0KPiAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92ZHNjLmMgICAgICAgICAgfCA2ICsrKy0tLQo+ICAy
IGZpbGVzIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKPiAKPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVz
LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaAo+
IGluZGV4IGRiNjZmOWQ2MjNmOC4uYmFjNDA0ODJhMmFhIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oCj4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgKPiBAQCAtOTg2LDgg
Kzk4Niw4IEBAIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlIHsKPiAgCQlib29sIGRzY19zcGxpdDsK
PiAgCQl1MTYgY29tcHJlc3NlZF9icHA7Cj4gIAkJdTggc2xpY2VfY291bnQ7Cj4gKwkJc3RydWN0
IGRybV9kc2NfY29uZmlnIGNvbmZpZzsKPiAgCX0gZHNjOwo+IC0Jc3RydWN0IGRybV9kc2NfY29u
ZmlnIGRwX2RzY19jZmc7Cj4gIAo+ICAJLyogRm9yd2FyZCBFcnJvciBjb3JyZWN0aW9uIFN0YXRl
ICovCj4gIAlib29sIGZlY19lbmFibGU7Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfdmRzYy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF92ZHNjLmMKPiBpbmRleCBmNDFhOTMzNjQ3NmIuLjg5NmIwYzMzNGY1ZSAxMDA2NDQKPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zkc2MuYwo+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmRzYy5jCj4gQEAgLTMyMiw3ICszMjIs
NyBAQCBzdGF0aWMgaW50IGdldF9jb2x1bW5faW5kZXhfZm9yX3JjX3BhcmFtcyh1OCBiaXRzX3Bl
cl9jb21wb25lbnQpCj4gIGludCBpbnRlbF9kcF9jb21wdXRlX2RzY19wYXJhbXMoc3RydWN0IGlu
dGVsX2RwICppbnRlbF9kcCwKPiAgCQkJCXN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpwaXBlX2Nv
bmZpZykKPiAgewo+IC0Jc3RydWN0IGRybV9kc2NfY29uZmlnICp2ZHNjX2NmZyA9ICZwaXBlX2Nv
bmZpZy0+ZHBfZHNjX2NmZzsKPiArCXN0cnVjdCBkcm1fZHNjX2NvbmZpZyAqdmRzY19jZmcgPSAm
cGlwZV9jb25maWctPmRzYy5jb25maWc7Cj4gIAl1MTYgY29tcHJlc3NlZF9icHAgPSBwaXBlX2Nv
bmZpZy0+ZHNjLmNvbXByZXNzZWRfYnBwOwo+ICAJdTggaSA9IDA7Cj4gIAlpbnQgcm93X2luZGV4
ID0gMDsKPiBAQCAtNDg1LDcgKzQ4NSw3IEBAIHN0YXRpYyB2b2lkIGludGVsX2NvbmZpZ3VyZV9w
cHNfZm9yX2RzY19lbmNvZGVyKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAo+ICB7Cj4g
IAlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YyA9IHRvX2ludGVsX2NydGMoY3J0Y19zdGF0ZS0+YmFz
ZS5jcnRjKTsKPiAgCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUo
ZW5jb2Rlci0+YmFzZS5kZXYpOwo+IC0JY29uc3Qgc3RydWN0IGRybV9kc2NfY29uZmlnICp2ZHNj
X2NmZyA9ICZjcnRjX3N0YXRlLT5kcF9kc2NfY2ZnOwo+ICsJY29uc3Qgc3RydWN0IGRybV9kc2Nf
Y29uZmlnICp2ZHNjX2NmZyA9ICZjcnRjX3N0YXRlLT5kc2MuY29uZmlnOwo+ICAJZW51bSBwaXBl
IHBpcGUgPSBjcnRjLT5waXBlOwo+ICAJZW51bSB0cmFuc2NvZGVyIGNwdV90cmFuc2NvZGVyID0g
Y3J0Y19zdGF0ZS0+Y3B1X3RyYW5zY29kZXI7Cj4gIAl1MzIgcHBzX3ZhbCA9IDA7Cj4gQEAgLTg4
NSw3ICs4ODUsNyBAQCBzdGF0aWMgdm9pZCBpbnRlbF9kcF93cml0ZV9kc2NfcHBzX3NkcChzdHJ1
Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKPiAgewo+ICAJc3RydWN0IGludGVsX2RwICppbnRl
bF9kcCA9IGVuY190b19pbnRlbF9kcCgmZW5jb2Rlci0+YmFzZSk7Cj4gIAlzdHJ1Y3QgaW50ZWxf
ZGlnaXRhbF9wb3J0ICppbnRlbF9kaWdfcG9ydCA9IGRwX3RvX2RpZ19wb3J0KGludGVsX2RwKTsK
PiAtCWNvbnN0IHN0cnVjdCBkcm1fZHNjX2NvbmZpZyAqdmRzY19jZmcgPSAmY3J0Y19zdGF0ZS0+
ZHBfZHNjX2NmZzsKPiArCWNvbnN0IHN0cnVjdCBkcm1fZHNjX2NvbmZpZyAqdmRzY19jZmcgPSAm
Y3J0Y19zdGF0ZS0+ZHNjLmNvbmZpZzsKPiAgCXN0cnVjdCBkcm1fZHNjX3Bwc19pbmZvZnJhbWUg
ZHBfZHNjX3Bwc19zZHA7Cj4gIAo+ICAJLyogUHJlcGFyZSBEUCBTRFAgUFBTIGhlYWRlciBhcyBw
ZXIgRFAgMS40IHNwZWMsIFRhYmxlIDItMTIzICovCj4gLS0gCj4gMi4yMC4xCj4gCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
