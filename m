Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A7038FB896
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Nov 2019 20:15:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E5F9D6EE1B;
	Wed, 13 Nov 2019 19:15:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECF1C6EE1B
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Nov 2019 19:15:10 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Nov 2019 11:15:10 -0800
X-IronPort-AV: E=Sophos;i="5.68,301,1569308400"; d="scan'208";a="355567343"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1)
 ([10.24.10.167])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Nov 2019 11:15:10 -0800
Date: Wed, 13 Nov 2019 11:15:04 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20191113191504.n24es3r3coxmteuk@ldmartin-desk1>
X-Patchwork-Hint: ignore
References: <20191106014504.167656-1-jose.souza@intel.com>
 <20191112171657.GK21445@mdroper-desk1.amr.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191112171657.GK21445@mdroper-desk1.amr.corp.intel.com>
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBOb3YgMTIsIDIwMTkgYXQgMDk6MTY6NTdBTSAtMDgwMCwgTWF0dCBSb3BlciB3cm90
ZToKPk9uIFR1ZSwgTm92IDA1LCAyMDE5IGF0IDA1OjQ1OjAwUE0gLTA4MDAsIEpvc8OpIFJvYmVy
dG8gZGUgU291emEgd3JvdGU6Cj4+IFBTUjIgSFcgb25seSBzdXBwb3J0IGEgbGltaXRlZCBudW1i
ZXIgb2YgYml0cyBwZXIgcGl4ZWwsIGlmIG1vZGUgaGFzCj4+IG1vcmUgdGhhbiBzdXBwb3J0ZWQg
UFNSMiBzaG91bGQgbm90IGJlIGVuYWJsZWQuCj4+Cj4+IEJTcGVjOiA1MDQyMgo+PiBCU3BlYzog
NzcxMwo+PiBDYzogR3dhbi1neWVvbmcgTXVuIDxnd2FuLWd5ZW9uZy5tdW5AaW50ZWwuY29tPgo+
PiBTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVs
LmNvbT4KPj4gLS0tCj4+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5j
IHwgMTEgKysrKysrKysrKy0KPj4gIDEgZmlsZSBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspLCAx
IGRlbGV0aW9uKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3Bzci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3Iu
Ywo+PiBpbmRleCBjMWQxMzMzNjJiNzYuLjBkODRlYTI4YmM2ZiAxMDA2NDQKPj4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYwo+PiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jCj4+IEBAIC02MDgsNyArNjA4LDcgQEAgc3Rh
dGljIGJvb2wgaW50ZWxfcHNyMl9jb25maWdfdmFsaWQoc3RydWN0IGludGVsX2RwICppbnRlbF9k
cCwKPj4gIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSBkcF90b19pOTE1KGlu
dGVsX2RwKTsKPj4gIAlpbnQgY3J0Y19oZGlzcGxheSA9IGNydGNfc3RhdGUtPmh3LmFkanVzdGVk
X21vZGUuY3J0Y19oZGlzcGxheTsKPj4gIAlpbnQgY3J0Y192ZGlzcGxheSA9IGNydGNfc3RhdGUt
Pmh3LmFkanVzdGVkX21vZGUuY3J0Y192ZGlzcGxheTsKPj4gLQlpbnQgcHNyX21heF9oID0gMCwg
cHNyX21heF92ID0gMDsKPj4gKwlpbnQgcHNyX21heF9oID0gMCwgcHNyX21heF92ID0gMCwgbWF4
X2JwcCA9IDA7Cj4+Cj4+ICAJaWYgKCFkZXZfcHJpdi0+cHNyLnNpbmtfcHNyMl9zdXBwb3J0KQo+
PiAgCQlyZXR1cm4gZmFsc2U7Cj4+IEBAIC02MzIsMTIgKzYzMiwxNSBAQCBzdGF0aWMgYm9vbCBp
bnRlbF9wc3IyX2NvbmZpZ192YWxpZChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLAo+PiAgCWlm
IChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEyKSB7Cj4+ICAJCXBzcl9tYXhfaCA9IDUxMjA7Cj4+
ICAJCXBzcl9tYXhfdiA9IDMyMDA7Cj4+ICsJCW1heF9icHAgPSAzMDsKPj4gIAl9IGVsc2UgaWYg
KElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTAgfHwgSVNfR0VNSU5JTEFLRShkZXZfcHJpdikpIHsK
Pj4gIAkJcHNyX21heF9oID0gNDA5NjsKPj4gIAkJcHNyX21heF92ID0gMjMwNDsKPj4gKwkJbWF4
X2JwcCA9IDI0Owo+PiAgCX0gZWxzZSBpZiAoSVNfR0VOKGRldl9wcml2LCA5KSkgewo+PiAgCQlw
c3JfbWF4X2ggPSAzNjQwOwo+PiAgCQlwc3JfbWF4X3YgPSAyMzA0Owo+PiArCQltYXhfYnBwID0g
MjQ7Cj4+ICAJfQo+Pgo+PiAgCWlmIChjcnRjX2hkaXNwbGF5ID4gcHNyX21heF9oIHx8IGNydGNf
dmRpc3BsYXkgPiBwc3JfbWF4X3YpIHsKPj4gQEAgLTY0Nyw2ICs2NTAsMTIgQEAgc3RhdGljIGJv
b2wgaW50ZWxfcHNyMl9jb25maWdfdmFsaWQoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwKPj4g
IAkJcmV0dXJuIGZhbHNlOwo+PiAgCX0KPj4KPj4gKwlpZiAoY3J0Y19zdGF0ZS0+cGlwZV9icHAg
PiBtYXhfYnBwKSB7Cj4+ICsJCURSTV9ERUJVR19LTVMoIlBTUjIgbm90IGVuYWJsZWQsIHBpcGUg
YnBwICVkID4gbWF4IHN1cHBvcnRlZCAlZFxuIiwKPj4gKwkJCSAgICAgIGNydGNfc3RhdGUtPnBp
cGVfYnBwLCBtYXhfYnBwKTsKPj4gKwkJcmV0dXJuIGZhbHNlOwo+PiArCX0KPgo+VGhlIHdvcmRp
bmcgb2YgdGhlIGJzcGVjIGlzICJQU1IyIGlzIGxpbWl0ZWQgdG8gMzBicHAgMTA6MTA6MTAiIGFu
ZAo+IlBTUjIgaXMgbGltaXRlZCB0byAyNGJwcCA4Ojg6OCIgLS0tIHRoYXQgd29yZGluZyBtYWtl
cyBpdCBzb3VuZCBsaWtlCj55b3UgbmVlZCB0byB1c2UgdGhhdCBvbmUgc3BlY2lmaWMgbW9kZSBy
YXRoZXIgdGhhbiBpdCBiZWluZyBhbiB1cHBlcgo+bGltaXQ/ICBJLmUuLCBkbyB3ZSBuZWVkIGFu
ID09IHRlc3QgaGVyZSByYXRoZXIgdGhhbiA+PwoKSSB1bmRlcnN0YW5kICJsaW1pdGVkIiBoZXJl
IHJhdGhlciBhcyBhIGxpbWl0LCBub3QgYXMgdGhlIG9ubHkgbW9kZSBpdAp3b3JrcyBpbi4gWWVz
LCBpdCdzIGNvbmZ1c2luZywgYnV0IEkgZG9uJ3QgdGhpbmsgaXQgbWFrZXMgbXVjaCBzZW5zZSB0
bwpzdXBwb3J0IGp1c3Qgb25lIGJwcC4KCkx1Y2FzIERlIE1hcmNoaQoKPgo+Cj5NYXR0Cj4KPj4g
Kwo+PiAgCS8qCj4+ICAJICogSFcgc2VuZHMgU1UgYmxvY2tzIG9mIHNpemUgZm91ciBzY2FuIGxp
bmVzLCB3aGljaCBtZWFucyB0aGUgc3RhcnRpbmcKPj4gIAkgKiBYIGNvb3JkaW5hdGUgYW5kIFkg
Z3JhbnVsYXJpdHkgcmVxdWlyZW1lbnRzIHdpbGwgYWx3YXlzIGJlIG1ldC4gV2UKPj4gLS0KPj4g
Mi4yNC4wCj4+Cj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCj4+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwo+PiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeAo+Cj4tLSAKPk1hdHQgUm9wZXIKPkdyYXBoaWNzIFNvZnR3YXJlIEVuZ2luZWVy
Cj5WVFQtT1NHQyBQbGF0Zm9ybSBFbmFibGVtZW50Cj5JbnRlbCBDb3Jwb3JhdGlvbgo+KDkxNikg
MzU2LTI3OTUKPl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Cj5JbnRlbC1nZnggbWFpbGluZyBsaXN0Cj5JbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cj5odHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
