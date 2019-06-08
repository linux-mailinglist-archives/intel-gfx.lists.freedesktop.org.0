Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00B2739FED
	for <lists+intel-gfx@lfdr.de>; Sat,  8 Jun 2019 15:33:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D9D48925D;
	Sat,  8 Jun 2019 13:33:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2116C8925D
 for <intel-gfx@lists.freedesktop.org>; Sat,  8 Jun 2019 13:33:12 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jun 2019 06:33:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,567,1557212400"; d="scan'208";a="182960245"
Received: from ideak-desk.fi.intel.com ([10.237.72.204])
 by fmsmga002.fm.intel.com with ESMTP; 08 Jun 2019 06:33:09 -0700
Date: Sat, 8 Jun 2019 16:33:05 +0300
From: Imre Deak <imre.deak@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20190608133305.GA26393@ideak-desk.fi.intel.com>
References: <20190604145826.16424-1-imre.deak@intel.com>
 <20190604145826.16424-3-imre.deak@intel.com>
 <d0c2d70f301ce311345129d48324f4d4becc2c9a.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d0c2d70f301ce311345129d48324f4d4becc2c9a.camel@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 02/23] drm/i915: Tune down WARNs about TBT
 AUX power well enabling
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBKdW4gMDcsIDIwMTkgYXQgMDg6NTA6MzRQTSArMDMwMCwgU291emEsIEpvc2Ugd3Jv
dGU6Cj4gT24gVHVlLCAyMDE5LTA2LTA0IGF0IDE3OjU4ICswMzAwLCBJbXJlIERlYWsgd3JvdGU6
Cj4gPiBUaGUgSFcgY29tcGxldGlvbiBmbGFnIGZvciB0aGUgVEJUIEFVWCBwb3dlciB3ZWxsIGVu
YWJsaW5nL2Rpc2FibGluZwo+ID4gZ2V0cyBzdHVjayBpZiB0aGUgZmlybXdhcmUgdGVhcnMgZG93
biB0aGUgVEJUIERQIHR1bm5lbCBiZWZvcmUgdGhlCj4gPiBjb21wbGV0aW9uLgo+ID4gCj4gPiBX
ZSBzaG91bGRuJ3QgY29tcGxhaW4gYWJvdXQgdGhlIHRpbWVvdXQsIHNpbmNlIGl0J3MgZXhwZWN0
ZWQgdG8KPiA+IGhhcHBlbgo+ID4gYW5kIGRvZXNuJ3QgY2F1c2UgZnVydGhlciBpc3N1ZXMuIFdl
IHN1cHByZXNzIHRoZSBkaXNhYmxpbmcgdGltZW91dAo+ID4gYWxyZWFkeSwgZG8gdGhlIHNhbWUg
Zm9yIGVuYWJsaW5nLgo+IAo+IFRoaXMgd2FzIGRvY3VtZW50ZWQgaW4gc3BlYz8KPiAKPiA+IAo+
ID4gQ2M6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgo+ID4g
Q2M6IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4KPiA+IENjOiBWaWxsZSBT
eXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+ID4gU2lnbmVkLW9mZi1i
eTogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPgo+ID4gLS0tCj4gPiAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvaW50ZWxfZGlzcGxheV9wb3dlci5jIHwgMTUgKysrKysrKysrKy0tLS0tCj4g
PiAgMSBmaWxlIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCj4gPiAK
PiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kaXNwbGF5X3Bvd2Vy
LmMKPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGlzcGxheV9wb3dlci5jCj4gPiBp
bmRleCAyNzhhN2VkYzk0ZjUuLjI0OWE1ZmE1NWRmNiAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX2Rpc3BsYXlfcG93ZXIuYwo+ID4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfZGlzcGxheV9wb3dlci5jCj4gPiBAQCAtMjY4LDExICsyNjgsMTYgQEAg
c3RhdGljIHZvaWQKPiA+IGhzd193YWl0X2Zvcl9wb3dlcl93ZWxsX2VuYWJsZShzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCj4gPiAgCWludCBwd19pZHggPSBwb3dlcl93ZWxsLT5k
ZXNjLT5oc3cuaWR4Owo+ID4gIAo+ID4gIAkvKiBUaW1lb3V0IGZvciBQVzE6MTAgdXMsIEFVWDpu
b3Qgc3BlY2lmaWVkLCBvdGhlciBQV3M6MjAgdXMuCj4gPiAqLwo+ID4gLQlXQVJOX09OKGludGVs
X3dhaXRfZm9yX3JlZ2lzdGVyKCZkZXZfcHJpdi0+dW5jb3JlLAo+ID4gLQkJCQkJcmVncy0+ZHJp
dmVyLAo+ID4gLQkJCQkJSFNXX1BXUl9XRUxMX0NUTF9TVEFURShwd19pZHgpLAo+ID4gLQkJCQkJ
SFNXX1BXUl9XRUxMX0NUTF9TVEFURShwd19pZHgpLAo+ID4gLQkJCQkJMSkpOwo+ID4gKwlpZiAo
aW50ZWxfd2FpdF9mb3JfcmVnaXN0ZXIoJmRldl9wcml2LT51bmNvcmUsCj4gPiArCQkJCSAgICBy
ZWdzLT5kcml2ZXIsCj4gPiArCQkJCSAgICBIU1dfUFdSX1dFTExfQ1RMX1NUQVRFKHB3X2lkeCks
Cj4gPiArCQkJCSAgICBIU1dfUFdSX1dFTExfQ1RMX1NUQVRFKHB3X2lkeCksCj4gPiArCQkJCSAg
ICAxKSkgewo+ID4gKwkJRFJNX0RFQlVHX0tNUygiJXMgZm9yY2VkIG9mZlxuIiwgcG93ZXJfd2Vs
bC0+ZGVzYy0KPiA+ID5uYW1lKTsKPiAKPiBNYXliZSAiJXMgcG93ZXIgd2VsbCBlbmFibGUgdGlt
ZW91dCI/CgpZZXAsIG1ha2VzIHNlbnNlLCB3aWxsIGNoYW5nZSB0aGlzLgoKPiBBbnl3YXlzIHdl
IGNhbiBmaXggdGhhdCBsYXR0ZXIuCj4gCj4gUmV2aWV3ZWQtYnk6IEpvc8OpIFJvYmVydG8gZGUg
U291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgo+IAo+ID4gKwo+ID4gKwkJLyogQW4gQVVYIHRp
bWVvdXQgaXMgZXhwZWN0ZWQgaWYgdGhlIFRCVCBEUCB0dW5uZWwgaXMKPiA+IGRvd24uICovCj4g
PiArCQlXQVJOX09OKCFwb3dlcl93ZWxsLT5kZXNjLT5oc3cuaXNfdGNfdGJ0KTsKPiA+ICsJfQo+
ID4gIH0KPiA+ICAKPiA+ICBzdGF0aWMgdTMyIGhzd19wb3dlcl93ZWxsX3JlcXVlc3RlcnMoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUKPiA+ICpkZXZfcHJpdiwKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
