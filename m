Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 48D79118A5
	for <lists+intel-gfx@lfdr.de>; Thu,  2 May 2019 14:06:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97D37893B8;
	Thu,  2 May 2019 12:06:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D137893B8
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 May 2019 12:06:50 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 May 2019 05:06:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,421,1549958400"; d="scan'208";a="169893682"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 02 May 2019 05:06:47 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20190502101754.29219-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20190502101754.29219-1-imre.deak@intel.com>
Date: Thu, 02 May 2019 15:09:00 +0300
Message-ID: <877eb9oy77.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Tune down WARN about incorrect
 VBT TC legacy flag
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

T24gVGh1LCAwMiBNYXkgMjAxOSwgSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPiB3cm90
ZToKPiBMb29rcyBsaWtlIFZCVCBjb250YWlucyBhZ2FpbiB0aGUgd3JvbmcgaW5mb3JtYXRpb24g
YWJvdXQgYSBwb3J0J3MgVHlwZUMKPiBsZWdhY3kgdnMuIERQLWFsdC9UQlQtYWx0IHR5cGUuIFRo
ZXJlIGlzIG5vIGZ1cnRoZXIgaXNzdWVzIGFmdGVyIHdlCj4gbm90aWNlIHRoaXMgYW5kIGZpeCBp
dCB1cCwgc28gdHVuZSBkb3duIHRoZSBXQVJOIHRvIGJlIGEgYSBEUk1fRVJST1IuCj4KPiBUaGlz
IGFsc28gYXZvaWRzIENJIHRhaW50aW5nIHRoZSBrZXJuZWwgYW5kIHN0b3BwaW5nIHRoZSB0ZXN0
IHJ1bi4KPgo+IEJ1Z3ppbGxhOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVn
LmNnaT9pZD0xMTA1NzgKPiBDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4K
PiBTaWduZWQtb2ZmLWJ5OiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+Cj4gLS0tCj4g
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RwLmMgfCA3ICsrKysrLS0KPiAgMSBmaWxlIGNo
YW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50
ZWxfZHAuYwo+IGluZGV4IDRlN2I4ZDI5ZDczMy4uMDdmYTI2NzBhNjc3IDEwMDY0NAo+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RwLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9kcC5jCj4gQEAgLTUyMzAsOSArNTIzMCwxMiBAQCBzdGF0aWMgYm9vbCBpY2xf
dGNfcG9ydF9jb25uZWN0ZWQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAo+ICAJ
ICogV0FSTiBpZiB3ZSBnb3QgYSBsZWdhY3kgcG9ydCBIUEQsIGJ1dCBWQlQgZGlkbid0IG1hcmsg
dGhlIHBvcnQgYXMKICAgICAgICAgICBeXl5eCgpXaXRoIHRoZSBjb21tZW50IGZpeGVkLAoKUmV2
aWV3ZWQtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Cgo+ICAJICogbGVn
YWN5LiBUcmVhdCB0aGUgcG9ydCBhcyBsZWdhY3kgZnJvbSBub3cgb24uCj4gIAkgKi8KPiAtCWlm
IChXQVJOX09OKCFpbnRlbF9kaWdfcG9ydC0+dGNfbGVnYWN5X3BvcnQgJiYKPiAtCQkgICAgSTkx
NV9SRUFEKFNERUlTUikgJiBTREVfVENfSE9UUExVR19JQ1AodGNfcG9ydCkpKQo+ICsJaWYgKCFp
bnRlbF9kaWdfcG9ydC0+dGNfbGVnYWN5X3BvcnQgJiYKPiArCSAgICBJOTE1X1JFQUQoU0RFSVNS
KSAmIFNERV9UQ19IT1RQTFVHX0lDUCh0Y19wb3J0KSkgewo+ICsJCURSTV9FUlJPUigiVkJUIGlu
Y29ycmVjdGx5IGNsYWltcyBwb3J0ICVjIGlzIG5vdCBUeXBlQyBsZWdhY3lcbiIsCj4gKwkJCSAg
cG9ydF9uYW1lKHBvcnQpKTsKPiAgCQlpbnRlbF9kaWdfcG9ydC0+dGNfbGVnYWN5X3BvcnQgPSB0
cnVlOwo+ICsJfQo+ICAJaXNfbGVnYWN5ID0gaW50ZWxfZGlnX3BvcnQtPnRjX2xlZ2FjeV9wb3J0
Owo+ICAKPiAgCS8qCgotLSAKSmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNz
IENlbnRlcgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
