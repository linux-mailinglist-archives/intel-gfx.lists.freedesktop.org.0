Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6922DF96D9
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Nov 2019 18:15:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BECEA6EB89;
	Tue, 12 Nov 2019 17:15:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 625656EB89
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Nov 2019 17:15:51 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Nov 2019 09:15:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,297,1569308400"; d="scan'208";a="255777479"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.135])
 by FMSMGA003.fm.intel.com with ESMTP; 12 Nov 2019 09:15:50 -0800
Date: Tue, 12 Nov 2019 09:16:57 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20191112171657.GK21445@mdroper-desk1.amr.corp.intel.com>
References: <20191106014504.167656-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191106014504.167656-1-jose.souza@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915/psr: Add bits per pixel
 limitation
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

T24gVHVlLCBOb3YgMDUsIDIwMTkgYXQgMDU6NDU6MDBQTSAtMDgwMCwgSm9zw6kgUm9iZXJ0byBk
ZSBTb3V6YSB3cm90ZToKPiBQU1IyIEhXIG9ubHkgc3VwcG9ydCBhIGxpbWl0ZWQgbnVtYmVyIG9m
IGJpdHMgcGVyIHBpeGVsLCBpZiBtb2RlIGhhcwo+IG1vcmUgdGhhbiBzdXBwb3J0ZWQgUFNSMiBz
aG91bGQgbm90IGJlIGVuYWJsZWQuCj4gCj4gQlNwZWM6IDUwNDIyCj4gQlNwZWM6IDc3MTMKPiBD
YzogR3dhbi1neWVvbmcgTXVuIDxnd2FuLWd5ZW9uZy5tdW5AaW50ZWwuY29tPgo+IFNpZ25lZC1v
ZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgo+IC0t
LQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIHwgMTEgKysrKysr
KysrKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkK
PiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3Iu
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKPiBpbmRleCBjMWQx
MzMzNjJiNzYuLjBkODRlYTI4YmM2ZiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3Bzci5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9wc3IuYwo+IEBAIC02MDgsNyArNjA4LDcgQEAgc3RhdGljIGJvb2wgaW50ZWxfcHNy
Ml9jb25maWdfdmFsaWQoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwKPiAgCXN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IGRwX3RvX2k5MTUoaW50ZWxfZHApOwo+ICAJaW50IGNy
dGNfaGRpc3BsYXkgPSBjcnRjX3N0YXRlLT5ody5hZGp1c3RlZF9tb2RlLmNydGNfaGRpc3BsYXk7
Cj4gIAlpbnQgY3J0Y192ZGlzcGxheSA9IGNydGNfc3RhdGUtPmh3LmFkanVzdGVkX21vZGUuY3J0
Y192ZGlzcGxheTsKPiAtCWludCBwc3JfbWF4X2ggPSAwLCBwc3JfbWF4X3YgPSAwOwo+ICsJaW50
IHBzcl9tYXhfaCA9IDAsIHBzcl9tYXhfdiA9IDAsIG1heF9icHAgPSAwOwo+ICAKPiAgCWlmICgh
ZGV2X3ByaXYtPnBzci5zaW5rX3BzcjJfc3VwcG9ydCkKPiAgCQlyZXR1cm4gZmFsc2U7Cj4gQEAg
LTYzMiwxMiArNjMyLDE1IEBAIHN0YXRpYyBib29sIGludGVsX3BzcjJfY29uZmlnX3ZhbGlkKHN0
cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsCj4gIAlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAx
Mikgewo+ICAJCXBzcl9tYXhfaCA9IDUxMjA7Cj4gIAkJcHNyX21heF92ID0gMzIwMDsKPiArCQlt
YXhfYnBwID0gMzA7Cj4gIAl9IGVsc2UgaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTAgfHwg
SVNfR0VNSU5JTEFLRShkZXZfcHJpdikpIHsKPiAgCQlwc3JfbWF4X2ggPSA0MDk2Owo+ICAJCXBz
cl9tYXhfdiA9IDIzMDQ7Cj4gKwkJbWF4X2JwcCA9IDI0Owo+ICAJfSBlbHNlIGlmIChJU19HRU4o
ZGV2X3ByaXYsIDkpKSB7Cj4gIAkJcHNyX21heF9oID0gMzY0MDsKPiAgCQlwc3JfbWF4X3YgPSAy
MzA0Owo+ICsJCW1heF9icHAgPSAyNDsKPiAgCX0KPiAgCj4gIAlpZiAoY3J0Y19oZGlzcGxheSA+
IHBzcl9tYXhfaCB8fCBjcnRjX3ZkaXNwbGF5ID4gcHNyX21heF92KSB7Cj4gQEAgLTY0Nyw2ICs2
NTAsMTIgQEAgc3RhdGljIGJvb2wgaW50ZWxfcHNyMl9jb25maWdfdmFsaWQoc3RydWN0IGludGVs
X2RwICppbnRlbF9kcCwKPiAgCQlyZXR1cm4gZmFsc2U7Cj4gIAl9Cj4gIAo+ICsJaWYgKGNydGNf
c3RhdGUtPnBpcGVfYnBwID4gbWF4X2JwcCkgewo+ICsJCURSTV9ERUJVR19LTVMoIlBTUjIgbm90
IGVuYWJsZWQsIHBpcGUgYnBwICVkID4gbWF4IHN1cHBvcnRlZCAlZFxuIiwKPiArCQkJICAgICAg
Y3J0Y19zdGF0ZS0+cGlwZV9icHAsIG1heF9icHApOwo+ICsJCXJldHVybiBmYWxzZTsKPiArCX0K
ClRoZSB3b3JkaW5nIG9mIHRoZSBic3BlYyBpcyAiUFNSMiBpcyBsaW1pdGVkIHRvIDMwYnBwIDEw
OjEwOjEwIiBhbmQKIlBTUjIgaXMgbGltaXRlZCB0byAyNGJwcCA4Ojg6OCIgLS0tIHRoYXQgd29y
ZGluZyBtYWtlcyBpdCBzb3VuZCBsaWtlCnlvdSBuZWVkIHRvIHVzZSB0aGF0IG9uZSBzcGVjaWZp
YyBtb2RlIHJhdGhlciB0aGFuIGl0IGJlaW5nIGFuIHVwcGVyCmxpbWl0PyAgSS5lLiwgZG8gd2Ug
bmVlZCBhbiA9PSB0ZXN0IGhlcmUgcmF0aGVyIHRoYW4gPj8KCgpNYXR0Cgo+ICsKPiAgCS8qCj4g
IAkgKiBIVyBzZW5kcyBTVSBibG9ja3Mgb2Ygc2l6ZSBmb3VyIHNjYW4gbGluZXMsIHdoaWNoIG1l
YW5zIHRoZSBzdGFydGluZwo+ICAJICogWCBjb29yZGluYXRlIGFuZCBZIGdyYW51bGFyaXR5IHJl
cXVpcmVtZW50cyB3aWxsIGFsd2F5cyBiZSBtZXQuIFdlCj4gLS0gCj4gMi4yNC4wCj4gCj4gX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBJbnRlbC1nZngg
bWFpbGluZyBsaXN0Cj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4CgotLSAKTWF0
dCBSb3BlcgpHcmFwaGljcyBTb2Z0d2FyZSBFbmdpbmVlcgpWVFQtT1NHQyBQbGF0Zm9ybSBFbmFi
bGVtZW50CkludGVsIENvcnBvcmF0aW9uCig5MTYpIDM1Ni0yNzk1Cl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
