Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1A436E47D
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jul 2019 12:48:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4B146E7FD;
	Fri, 19 Jul 2019 10:48:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D1D76E7FD
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Jul 2019 10:48:33 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Jul 2019 03:48:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,282,1559545200"; d="scan'208";a="179592582"
Received: from genxfsim-desktop.iind.intel.com (HELO intel.com)
 ([10.223.74.120])
 by orsmga002.jf.intel.com with ESMTP; 19 Jul 2019 03:48:29 -0700
Date: Fri, 19 Jul 2019 16:14:27 +0530
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20190719104426.GA3846@intel.com>
References: <20190713010940.17711-1-lucas.demarchi@intel.com>
 <20190713010940.17711-8-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190713010940.17711-8-lucas.demarchi@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 07/22] drm/i915/dmc: Load DMC on TGL
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

T24gMjAxOS0wNy0xMiBhdCAxODowOToyNSAtMDcwMCwgTHVjYXMgRGUgTWFyY2hpIHdyb3RlOgo+
IEZyb206IEFudXNoYSBTcml2YXRzYSA8YW51c2hhLnNyaXZhdHNhQGludGVsLmNvbT4KPiAKPiBB
ZGQgU3VwcG9ydCB0byBsb2FkIERNQyB2Mi4wMiBvbiBUR0wuCj4gCj4gU2lnbmVkLW9mZi1ieTog
QW51c2hhIFNyaXZhdHNhIDxhbnVzaGEuc3JpdmF0c2FAaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYt
Ynk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgo+IC0tLQo+ICBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jc3IuYyB8IDcgKysrKysrKwo+ICAxIGZpbGUgY2hh
bmdlZCwgNyBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX2Nzci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfY3NyLmMKPiBpbmRl
eCA2ZWY3NDUzMTU4OGEuLjg2NWI5ODdkZWU4ZSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF9jc3IuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Nz
ci5jCj4gQEAgLTM5LDYgKzM5LDExIEBACj4gIAo+ICAjZGVmaW5lIEdFTjEyX0NTUl9NQVhfRldf
U0laRQkJSUNMX0NTUl9NQVhfRldfU0laRQo+ICAKPiArI2RlZmluZSBUR0xfQ1NSX1BBVEgJCQki
aTkxNS90Z2xfZG1jX3ZlcjJfMDIuYmluIgo+ICsjZGVmaW5lIFRHTF9DU1JfVkVSU0lPTl9SRVFV
SVJFRAlDU1JfVkVSU0lPTigyLCAyKQo+ICsjZGVmaW5lIFRHTF9DU1JfTUFYX0ZXX1NJWkUJCTB4
NjAwMAo+ICtNT0RVTEVfRklSTVdBUkUoVEdMX0NTUl9QQVRIKTsKPiArCj4gICNkZWZpbmUgSUNM
X0NTUl9QQVRICQkJImk5MTUvaWNsX2RtY192ZXIxXzA3LmJpbiIKPiAgI2RlZmluZSBJQ0xfQ1NS
X1ZFUlNJT05fUkVRVUlSRUQJQ1NSX1ZFUlNJT04oMSwgNykKPiAgI2RlZmluZSBJQ0xfQ1NSX01B
WF9GV19TSVpFCQkweDYwMDAKPiBAQCAtNjc0LDYgKzY3OSw4IEBAIHZvaWQgaW50ZWxfY3NyX3Vj
b2RlX2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQo+ICAJaW50ZWxfY3Ny
X3J1bnRpbWVfcG1fZ2V0KGRldl9wcml2KTsKPiAgCj4gIAlpZiAoSU5URUxfR0VOKGRldl9wcml2
KSA+PSAxMikgewo+ICsJCWNzci0+ZndfcGF0aCA9IFRHTF9DU1JfUEFUSDsKPiArCQljc3ItPnJl
cXVpcmVkX3ZlcnNpb24gPSBUR0xfQ1NSX1ZFUlNJT05fUkVRVUlSRUQ7Cj4gIAkJLyogQWxsb3cg
dG8gbG9hZCBmdyB2aWEgcGFyYW1ldGVyIHVzaW5nIHRoZSBsYXN0IGtub3duIHNpemUgKi8KPiAg
CQljc3ItPm1heF9md19zaXplID0gR0VOMTJfQ1NSX01BWF9GV19TSVpFOwo+ICAJfSBlbHNlIGlm
IChJU19HRU4oZGV2X3ByaXYsIDExKSkgewpMR1RNLCBvbmUgY29uY2VybiBhYm91dCBETUMgZncg
bWlub3IgdmVyc2lvbi4KaWYgdGhpcyBpcyBkZWNpZGVkIGxhdGVzdCB1cHN0cmVhbSB2ZXJzaW9u
LApJIHdpbGwgcHJvdmlkZSBteSBSQi4gCgo+IC0tIAo+IDIuMjEuMAo+IAo+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdAo+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeApfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
