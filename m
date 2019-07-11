Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A7B8666048
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2019 21:56:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2C036E286;
	Thu, 11 Jul 2019 19:56:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C77CB6E285
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jul 2019 19:56:17 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Jul 2019 12:56:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,479,1557212400"; d="scan'208";a="249886145"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 11 Jul 2019 12:56:15 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 11 Jul 2019 22:56:14 +0300
Date: Thu, 11 Jul 2019 22:56:14 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>
Message-ID: <20190711195614.GD5942@intel.com>
References: <20190710125851.3275-1-ville.syrjala@linux.intel.com>
 <bb7f15e2644c4592bb0f62aa64e0300b2f8bb30e.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bb7f15e2644c4592bb0f62aa64e0300b2f8bb30e.camel@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Don't overestimate 4:2:0 link
 symbol clock
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBKdWwgMTEsIDIwMTkgYXQgMDQ6NDk6MDZQTSArMDAwMCwgTXVuLCBHd2FuLWd5ZW9u
ZyB3cm90ZToKPiBPbiBXZWQsIDIwMTktMDctMTAgYXQgMTU6NTggKzAzMDAsIFZpbGxlIFN5cmph
bGEgd3JvdGU6Cj4gPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXgu
aW50ZWwuY29tPgo+ID4gCj4gPiBXaXRoIDQ6MjowIG91dHB1dCB0aGUgTFMgY2xvY2sgY2FuIGJl
IGhhbGYgb2Ygd2hhdCBpdCBpcyB3aXRoIDQ6NDo0Lgo+ID4gTWFrZSB0aGF0IGhhcHBlbi4KPiA+
IAo+ID4gQ2M6IEd3YW4tZ3llb25nIE11biA8Z3dhbi1neWVvbmcubXVuQGludGVsLmNvbT4KPiA+
IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRl
bC5jb20+Cj4gPiAtLS0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rw
LmMgfCA0ICsrKy0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAxIGRlbGV0
aW9uKC0pCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RwLmMKPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5j
Cj4gPiBpbmRleCAwYmRiN2VjYzVhODEuLjFkZmFjZjA5MGZiOCAxMDA2NDQKPiA+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwo+ID4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCj4gPiBAQCAtMTg1Myw4ICsxODUzLDEwIEBA
IGludGVsX2RwX2NvbXB1dGVfbGlua19jb25maWdfd2lkZShzdHJ1Y3QKPiA+IGludGVsX2RwICpp
bnRlbF9kcCwKPiA+ICAJaW50IG1vZGVfcmF0ZSwgbGlua19jbG9jaywgbGlua19hdmFpbDsKPiA+
ICAKPiA+ICAJZm9yIChicHAgPSBsaW1pdHMtPm1heF9icHA7IGJwcCA+PSBsaW1pdHMtPm1pbl9i
cHA7IGJwcCAtPSAyICoKPiA+IDMpIHsKPiA+ICsJCWludCBvdXRwdXRfYnBwID0gaW50ZWxfZHBf
b3V0cHV0X2JwcChwaXBlX2NvbmZpZywgYnBwKTsKPiA+ICsKPiA+ICAJCW1vZGVfcmF0ZSA9IGlu
dGVsX2RwX2xpbmtfcmVxdWlyZWQoYWRqdXN0ZWRfbW9kZS0KPiA+ID5jcnRjX2Nsb2NrLAo+ID4g
LQkJCQkJCSAgIGJwcCk7Cj4gPiArCQkJCQkJICAgb3V0cHV0X2JwcCk7Cj4gPiAgCj4gPiAgCQlm
b3IgKGNsb2NrID0gbGltaXRzLT5taW5fY2xvY2s7IGNsb2NrIDw9IGxpbWl0cy0KPiA+ID5tYXhf
Y2xvY2s7IGNsb2NrKyspIHsKPiA+ICAJCQlmb3IgKGxhbmVfY291bnQgPSBsaW1pdHMtPm1pbl9s
YW5lX2NvdW50Owo+IEFjY29yZGluZyB0byBEUCAxLjQgc3BlYyBzZWN0aW9uIDEuNy4xIFtNYWtl
dXAgb2YgdGhlIE1haW4tTGlua10sCj4gcHJldmlvdXMgaW1wbGVtZW50YXRpb24gd29ya2VkIGJ5
IGJlbG93IGV4cGxhaW5hdGlvbi4KPiBBZnRlciB0aGUgc3RyZWFtIGRhdGEgaXMgcGFja2VkIGFu
ZCBtYXBwZWQgdG8gdGhlIE1haW4tTGluaywgdGhlIHBhY2tlZAo+IHN0cmVhbSBkYXRhIHJhdGUg
c2hhbGwgYmUgbGVzcyB0aGFuIG9yIGVxdWFsIHRvIHRoZSBNYWluLUxpbmvigJlzIGxpbmsKPiBz
eW1ib2wgcmF0ZS4gV2hlbiB0aGUgcGFja2VkIHN0cmVhbSBkYXRhIHJhdGUgaXMgbGVzcyB0aGFu
IHRoZSBNYWluLQo+IExpbmvigJlzIGxpbmsgc3ltYm9sIHJhdGUsIHN0dWZmaW5nIHN5bWJvbHMg
YXJlIGluc2VydGVkLgo+IAo+IFJldmlld2VkLWJ5OiBHd2FuLWd5ZW9uZyBNdW4gPGd3YW4tZ3ll
b25nLm11bkBpbnRlbC5jb20+Cj4gVGVzdGVkLWJ5OiBHd2FuLWd5ZW9uZyBNdW4gPGd3YW4tZ3ll
b25nLm11bkBpbnRlbC5jb20+CgpOaWNlLiBUaGFua3MgZm9yIGRvdWJsZSBjaGVja2luZy4gUHVz
aGVkIHRvIGRpbnEuCgotLSAKVmlsbGUgU3lyasOkbMOkCkludGVsCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
