Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 159EEFB4ED
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Nov 2019 17:22:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6155E6ED88;
	Wed, 13 Nov 2019 16:22:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 206256ED88
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Nov 2019 16:22:49 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Nov 2019 08:22:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,300,1569308400"; d="scan'208";a="198491165"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.135])
 by orsmga008.jf.intel.com with ESMTP; 13 Nov 2019 08:22:47 -0800
Date: Wed, 13 Nov 2019 08:23:56 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20191113162356.GR21445@mdroper-desk1.amr.corp.intel.com>
References: <20191113021935.41547-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191113021935.41547-1-lucas.demarchi@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBOb3YgMTIsIDIwMTkgYXQgMDY6MTk6MzVQTSAtMDgwMCwgTHVjYXMgRGUgTWFyY2hp
IHdyb3RlOgo+IFRpZ2VyIExha2Ugc3VwcG9ydHMgSERNSSBvbiBwb3J0IEEuIEZvciBvdGhlciBw
bGF0Zm9ybXMgd2UgaWdub3JlIHdoYXQgdGhlIFZCVAo+IHNheXMgcmVnYXJkaW5nIEhETUkgdG8g
d29ya2Fyb3VuZCBicm9rZW4gVkJUcywgc2VlIGNvbW1pdAo+IDJiYTdkN2UwNDM3MSAoImRybS9p
OTE1L2Jpb3M6IGlnbm9yZSBIRE1JIG9uIHBvcnQgQSIpLiBNYWtlIHRoaXMgYXBwbHkKPiBnZW4x
Misgc28gdGhleSBpbmhlcml0IHRoZSBUR0wgYmVoYXZpb3IuCj4gCj4gU2lnbmVkLW9mZi1ieTog
THVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+CgpSZXZpZXdlZC1ieTog
TWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4KCj4gLS0tCj4gIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jIHwgMiArLQo+ICBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYyB8IDIgKy0KPiAgMiBmaWxlcyBjaGFuZ2VkLCAy
IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9iaW9zLmMKPiBpbmRleCA3YzBjYTczM2JlZjguLmU2ZGE5ODcyOWUxZiAx
MDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYwo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jCj4gQEAgLTE0
NTAsNyArMTQ1MCw3IEBAIHN0YXRpYyB2b2lkIHBhcnNlX2RkaV9wb3J0KHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdiwKPiAgCWlzX2hkbWkgPSBpc19kdmkgJiYgKGNoaWxkLT5kZXZp
Y2VfdHlwZSAmIERFVklDRV9UWVBFX05PVF9IRE1JX09VVFBVVCkgPT0gMDsKPiAgCWlzX2VkcCA9
IGlzX2RwICYmIChjaGlsZC0+ZGV2aWNlX3R5cGUgJiBERVZJQ0VfVFlQRV9JTlRFUk5BTF9DT05O
RUNUT1IpOwo+ICAKPiAtCWlmIChwb3J0ID09IFBPUlRfQSAmJiBpc19kdmkpIHsKPiArCWlmIChw
b3J0ID09IFBPUlRfQSAmJiBpc19kdmkgJiYgSU5URUxfR0VOKGRldl9wcml2KSA8IDEyKSB7Cj4g
IAkJRFJNX0RFQlVHX0tNUygiVkJUIGNsYWltcyBwb3J0IEEgc3VwcG9ydHMgRFZJJXMsIGlnbm9y
aW5nXG4iLAo+ICAJCQkgICAgICBpc19oZG1pID8gIi9IRE1JIiA6ICIiKTsKPiAgCQlpc19kdmkg
PSBmYWxzZTsKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9oZG1pLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYwo+IGlu
ZGV4IGVkNGE2OGZiMzUxZi4uNjU5YTAzYjA4ODQ5IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9oZG1pLmMKPiBAQCAtMzE0MCw3ICszMTQwLDcgQEAgdm9pZCBpbnRl
bF9oZG1pX2luaXRfY29ubmVjdG9yKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmludGVsX2Rp
Z19wb3J0LAo+ICAJRFJNX0RFQlVHX0tNUygiQWRkaW5nIEhETUkgY29ubmVjdG9yIG9uIFtFTkNP
REVSOiVkOiVzXVxuIiwKPiAgCQkgICAgICBpbnRlbF9lbmNvZGVyLT5iYXNlLmJhc2UuaWQsIGlu
dGVsX2VuY29kZXItPmJhc2UubmFtZSk7Cj4gIAo+IC0JaWYgKFdBUk5fT04ocG9ydCA9PSBQT1JU
X0EpKQo+ICsJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPCAxMiAmJiBXQVJOX09OKHBvcnQgPT0g
UE9SVF9BKSkKPiAgCQlyZXR1cm47Cj4gIAo+ICAJaWYgKFdBUk4oaW50ZWxfZGlnX3BvcnQtPm1h
eF9sYW5lcyA8IDQsCj4gLS0gCj4gMi4yNC4wCj4gCgotLSAKTWF0dCBSb3BlcgpHcmFwaGljcyBT
b2Z0d2FyZSBFbmdpbmVlcgpWVFQtT1NHQyBQbGF0Zm9ybSBFbmFibGVtZW50CkludGVsIENvcnBv
cmF0aW9uCig5MTYpIDM1Ni0yNzk1Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
