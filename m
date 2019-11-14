Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A1841FC672
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Nov 2019 13:43:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4DEA6E21A;
	Thu, 14 Nov 2019 12:43:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A876B6E21A
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Nov 2019 12:43:24 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Nov 2019 04:43:24 -0800
X-IronPort-AV: E=Sophos;i="5.68,304,1569308400"; d="scan'208";a="198807200"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Nov 2019 04:43:20 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20191113021935.41547-1-lucas.demarchi@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20191113021935.41547-1-lucas.demarchi@intel.com>
Date: Thu, 14 Nov 2019 14:43:17 +0200
Message-ID: <87v9rm1vdm.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl: allow DVI/HDMI on port A
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

T24gVHVlLCAxMiBOb3YgMjAxOSwgTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRl
bC5jb20+IHdyb3RlOgo+IFRpZ2VyIExha2Ugc3VwcG9ydHMgSERNSSBvbiBwb3J0IEEuIEZvciBv
dGhlciBwbGF0Zm9ybXMgd2UgaWdub3JlIHdoYXQgdGhlIFZCVAo+IHNheXMgcmVnYXJkaW5nIEhE
TUkgdG8gd29ya2Fyb3VuZCBicm9rZW4gVkJUcywgc2VlIGNvbW1pdAo+IDJiYTdkN2UwNDM3MSAo
ImRybS9pOTE1L2Jpb3M6IGlnbm9yZSBIRE1JIG9uIHBvcnQgQSIpLiBNYWtlIHRoaXMgYXBwbHkK
PiBnZW4xMisgc28gdGhleSBpbmhlcml0IHRoZSBUR0wgYmVoYXZpb3IuCj4KPiBTaWduZWQtb2Zm
LWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KCkRvICpOT1Qq
IG1lcmdlIHBhdGNoZXMgd2l0aG91dCBmdWxsIElHVCByZXN1bHRzLiBCQVQgaXMgKk5PVCogZW5v
dWdoLAphbmQgdGhpcyBkaWQgbm90IGV2ZW4gcGFzcyBCQVQuCgpCUiwKSmFuaS4KCgo+IC0tLQo+
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYyB8IDIgKy0KPiAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZG1pLmMgfCAyICstCj4gIDIgZmlsZXMg
Y2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMKPiBpbmRleCA3YzBjYTczM2JlZjguLmU2ZGE5
ODcyOWUxZiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Jpb3MuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5j
Cj4gQEAgLTE0NTAsNyArMTQ1MCw3IEBAIHN0YXRpYyB2b2lkIHBhcnNlX2RkaV9wb3J0KHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKPiAgCWlzX2hkbWkgPSBpc19kdmkgJiYgKGNo
aWxkLT5kZXZpY2VfdHlwZSAmIERFVklDRV9UWVBFX05PVF9IRE1JX09VVFBVVCkgPT0gMDsKPiAg
CWlzX2VkcCA9IGlzX2RwICYmIChjaGlsZC0+ZGV2aWNlX3R5cGUgJiBERVZJQ0VfVFlQRV9JTlRF
Uk5BTF9DT05ORUNUT1IpOwo+ICAKPiAtCWlmIChwb3J0ID09IFBPUlRfQSAmJiBpc19kdmkpIHsK
PiArCWlmIChwb3J0ID09IFBPUlRfQSAmJiBpc19kdmkgJiYgSU5URUxfR0VOKGRldl9wcml2KSA8
IDEyKSB7Cj4gIAkJRFJNX0RFQlVHX0tNUygiVkJUIGNsYWltcyBwb3J0IEEgc3VwcG9ydHMgRFZJ
JXMsIGlnbm9yaW5nXG4iLAo+ICAJCQkgICAgICBpc19oZG1pID8gIi9IRE1JIiA6ICIiKTsKPiAg
CQlpc19kdmkgPSBmYWxzZTsKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9oZG1pLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hk
bWkuYwo+IGluZGV4IGVkNGE2OGZiMzUxZi4uNjU5YTAzYjA4ODQ5IDEwMDY0NAo+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZG1pLmMKPiBAQCAtMzE0MCw3ICszMTQwLDcgQEAg
dm9pZCBpbnRlbF9oZG1pX2luaXRfY29ubmVjdG9yKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQg
KmludGVsX2RpZ19wb3J0LAo+ICAJRFJNX0RFQlVHX0tNUygiQWRkaW5nIEhETUkgY29ubmVjdG9y
IG9uIFtFTkNPREVSOiVkOiVzXVxuIiwKPiAgCQkgICAgICBpbnRlbF9lbmNvZGVyLT5iYXNlLmJh
c2UuaWQsIGludGVsX2VuY29kZXItPmJhc2UubmFtZSk7Cj4gIAo+IC0JaWYgKFdBUk5fT04ocG9y
dCA9PSBQT1JUX0EpKQo+ICsJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPCAxMiAmJiBXQVJOX09O
KHBvcnQgPT0gUE9SVF9BKSkKPiAgCQlyZXR1cm47Cj4gIAo+ICAJaWYgKFdBUk4oaW50ZWxfZGln
X3BvcnQtPm1heF9sYW5lcyA8IDQsCgotLSAKSmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291cmNl
IEdyYXBoaWNzIENlbnRlcgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
