Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C0602DE1D2
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Dec 2020 12:13:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5D8E6E0D4;
	Fri, 18 Dec 2020 11:13:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D69616E0D4
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Dec 2020 11:13:55 +0000 (UTC)
IronPort-SDR: V+QHKTL+IjKBMbbAu2TilHQplEEongibiQ+cglys0gFv39sk0rzoKa04ae4nxxsX7jYe7NarL6
 SV0920ZQG+eA==
X-IronPort-AV: E=McAfee;i="6000,8403,9838"; a="172854277"
X-IronPort-AV: E=Sophos;i="5.78,430,1599548400"; d="scan'208";a="172854277"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2020 03:13:54 -0800
IronPort-SDR: Xr25Y2ubOmuya1Tx7Co/G0LZS1Y2ZcfdQZauK+va2pm8RhMo6XLOx8zr7+RN/x81McgWpxLKVk
 /1un+errjnvg==
X-IronPort-AV: E=Sophos;i="5.78,430,1599548400"; d="scan'208";a="370528535"
Received: from mtsachix-mobl.ger.corp.intel.com (HELO localhost)
 ([10.213.201.58])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2020 03:13:52 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>,
 Aditya Swarup <aditya.swarup@intel.com>
In-Reply-To: <87eejn4jpp.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20201203072359.156682-1-aditya.swarup@intel.com>
 <20201218023129.oxuzjlbxzqg7twpl@ldmartin-desk1> <87eejn4jpp.fsf@intel.com>
Date: Fri, 18 Dec 2020 13:13:49 +0200
Message-ID: <875z4zqscy.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 1/2] drm/i915/tgl: Fix REVID macros for
 TGL to fetch correct stepping
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAxOCBEZWMgMjAyMCwgSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4g
d3JvdGU6Cj4gT24gVGh1LCAxNyBEZWMgMjAyMCwgTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1h
cmNoaUBpbnRlbC5jb20+IHdyb3RlOgo+PiBCb3RoIHBhdGNoZXMgYXBwbGllZC4gVGhhbmtzIQo+
Pgo+PiBKYW5pLCBtYXliZSBub3cgeW91IGNhbiByZWJhc2UgeW91ciBwYXRjaCB0byBnZXQgcmlk
IG9mIHRoZSBleHRlcm4gPwo+Cj4gWWVzLCB0aGFua3MgZm9yIHRoZSBpcnEgc28gSSBjYW4gc3Rv
cCBwb2xsaW5nLiA7KQoKSHVoLCB3aHkgd2VyZSB0aGVzZSBhcHBsaWVkIHRvIGRybS1pbnRlbC1n
dC1uZXh0PyBJdCdzIG11Y2ggbW9yZSBhYm91dApkcml2ZXIgY29yZSBjb2RlIHRoYW4gZ3QuCgpC
UiwKSmFuaS4KCgo+Cj4gQlIsCj4gSmFuaS4KPgo+Cj4+Cj4+Cj4+IEx1Y2FzIERlIE1hcmNoaQo+
Pgo+PiBPbiBXZWQsIERlYyAwMiwgMjAyMCBhdCAxMToyMzo1OFBNIC0wODAwLCBBZGl0eWEgU3dh
cnVwIHdyb3RlOgo+Pj5GaXggVEdMIFJFVklEIG1hY3JvcyB0byBmZXRjaCBjb3JyZWN0IGRpc3Bs
YXkvZ3Qgc3RlcHBpbmcgYmFzZWQKPj4+b24gU09DIHJldiBpZCBmcm9tIElOVEVMX1JFVklEKCkg
bWFjcm8uIFByZXZpb3VzbHksIHdlIHdlcmUganVzdAo+Pj5yZXR1cm5pbmcgdGhlIGZpcnN0IGVs
ZW1lbnQgb2YgdGhlIHJldmlkIGFycmF5IGluc3RlYWQgb2YgdXNpbmcKPj4+dGhlIGNvcnJlY3Qg
aW5kZXggYmFzZWQgb24gU09DIHJldiBpZC4KPj4+Cj4+PkZpeGVzOiAoImRybS9pOTE1L3RnbDog
Rml4IHN0ZXBwaW5nIFdBIG1hdGNoaW5nIikKPj4+Q2M6IEpvc8OpIFJvYmVydG8gZGUgU291emEg
PGpvc2Uuc291emFAaW50ZWwuY29tPgo+Pj5DYzogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVy
QGludGVsLmNvbT4KPj4+Q2M6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwu
Y29tPgo+Pj5DYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KPj4+Q2M6IFZp
bGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4+PlNpZ25lZC1v
ZmYtYnk6IEFkaXR5YSBTd2FydXAgPGFkaXR5YS5zd2FydXBAaW50ZWwuY29tPgo+Pj5SZXZpZXdl
ZC1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+Cj4+Pi0tLQo+
Pj4gZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCB8IDEyICsrKysrKy0tLS0tLQo+Pj4g
MSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKPj4+Cj4+PmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9kcnYuaAo+Pj5pbmRleCBmYzEwOTBjNjg4OWMuLjJlMjE0OWM5YTJmNCAx
MDA2NDQKPj4+LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAo+Pj4rKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCj4+PkBAIC0xNTgwLDkgKzE1ODAsOSBAQCBz
dGF0aWMgaW5saW5lIGNvbnN0IHN0cnVjdCBpOTE1X3Jldl9zdGVwcGluZ3MgKgo+Pj4gdGdsX3Jl
dmlkc19nZXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQo+Pj4gewo+Pj4gCWlm
IChJU19UR0xfVShkZXZfcHJpdikgfHwgSVNfVEdMX1koZGV2X3ByaXYpKQo+Pj4tCQlyZXR1cm4g
dGdsX3V5X3JldmlkczsKPj4+KwkJcmV0dXJuICZ0Z2xfdXlfcmV2aWRzW0lOVEVMX1JFVklEKGRl
dl9wcml2KV07Cj4+PiAJZWxzZQo+Pj4tCQlyZXR1cm4gdGdsX3JldmlkczsKPj4+KwkJcmV0dXJu
ICZ0Z2xfcmV2aWRzW0lOVEVMX1JFVklEKGRldl9wcml2KV07Cj4+PiB9Cj4+Pgo+Pj4gI2RlZmlu
ZSBJU19UR0xfRElTUF9SRVZJRChwLCBzaW5jZSwgdW50aWwpIFwKPj4+QEAgLTE1OTIsMTQgKzE1
OTIsMTQgQEAgdGdsX3Jldmlkc19nZXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
KQo+Pj4KPj4+ICNkZWZpbmUgSVNfVEdMX1VZX0dUX1JFVklEKHAsIHNpbmNlLCB1bnRpbCkgXAo+
Pj4gCSgoSVNfVEdMX1UocCkgfHwgSVNfVEdMX1kocCkpICYmIFwKPj4+LQkgdGdsX3V5X3Jldmlk
cy0+Z3Rfc3RlcHBpbmcgPj0gKHNpbmNlKSAmJiBcCj4+Pi0JIHRnbF91eV9yZXZpZHMtPmd0X3N0
ZXBwaW5nIDw9ICh1bnRpbCkpCj4+PisJIHRnbF91eV9yZXZpZHNbSU5URUxfUkVWSUQocCldLmd0
X3N0ZXBwaW5nID49IChzaW5jZSkgJiYgXAo+Pj4rCSB0Z2xfdXlfcmV2aWRzW0lOVEVMX1JFVklE
KHApXS5ndF9zdGVwcGluZyA8PSAodW50aWwpKQo+Pj4KPj4+ICNkZWZpbmUgSVNfVEdMX0dUX1JF
VklEKHAsIHNpbmNlLCB1bnRpbCkgXAo+Pj4gCShJU19USUdFUkxBS0UocCkgJiYgXAo+Pj4gCSAh
KElTX1RHTF9VKHApIHx8IElTX1RHTF9ZKHApKSAmJiBcCj4+Pi0JIHRnbF9yZXZpZHMtPmd0X3N0
ZXBwaW5nID49IChzaW5jZSkgJiYgXAo+Pj4tCSB0Z2xfcmV2aWRzLT5ndF9zdGVwcGluZyA8PSAo
dW50aWwpKQo+Pj4rCSB0Z2xfcmV2aWRzW0lOVEVMX1JFVklEKHApXS5ndF9zdGVwcGluZyA+PSAo
c2luY2UpICYmIFwKPj4+KwkgdGdsX3Jldmlkc1tJTlRFTF9SRVZJRChwKV0uZ3Rfc3RlcHBpbmcg
PD0gKHVudGlsKSkKPj4+Cj4+PiAjZGVmaW5lIFJLTF9SRVZJRF9BMAkJMHgwCj4+PiAjZGVmaW5l
IFJLTF9SRVZJRF9CMAkJMHgxCj4+Pi0tIAo+Pj4yLjI3LjAKPj4+Cj4+Pl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+PkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKPj4+SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+Pj5odHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAoKLS0gCkphbmkgTmlrdWxh
LCBJbnRlbCBPcGVuIFNvdXJjZSBHcmFwaGljcyBDZW50ZXIKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
