Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6A8B264702
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Sep 2020 15:30:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFB6B6E936;
	Thu, 10 Sep 2020 13:30:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 70DFA6E92F
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Sep 2020 13:30:43 +0000 (UTC)
IronPort-SDR: xyYgNrmyhDdqqOAaMX8r84/A0mcrcbQJEY8y2dYYZqqhme6q1dD8FzDJccLLGOfurjLT7BUZzg
 pI/AKI0py3mw==
X-IronPort-AV: E=McAfee;i="6000,8403,9739"; a="146233661"
X-IronPort-AV: E=Sophos;i="5.76,413,1592895600"; d="scan'208";a="146233661"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2020 06:30:42 -0700
IronPort-SDR: dC4tjUB47DCRIqvkT/BSqmxHODNFcNe4yiCdIJBANyu7rsXtOg0l+/dIBwiUpr4VECG0kLYWdE
 GKGUtHfr4hxA==
X-IronPort-AV: E=Sophos;i="5.76,413,1592895600"; d="scan'208";a="480889500"
Received: from nfhickey-mobl.ger.corp.intel.com (HELO localhost)
 ([10.251.81.64])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2020 06:30:41 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Anusha Srivatsa <anusha.srivatsa@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20200908233955.11311-1-anusha.srivatsa@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200908233955.11311-1-anusha.srivatsa@intel.com>
Date: Thu, 10 Sep 2020 16:30:42 +0300
Message-ID: <87blid21z1.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/pll: Centralize PLL_ENABLE
 register lookup
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAwOCBTZXAgMjAyMCwgQW51c2hhIFNyaXZhdHNhIDxhbnVzaGEuc3JpdmF0c2FAaW50
ZWwuY29tPiB3cm90ZToKPiBXZSBjdXJyZW50eSBjaGVjayBmb3IgcGxhdGZvcm0gYXQgbXVsdGlw
bGUgcGFydHMgaW4gdGhlIGRyaXZlcgo+IHRvIGdyYWIgdGhlIGNvcnJlY3QgUExMLiBMZXQgdXMg
YmVnaW4gdG8gY2VudHJhbGl6ZSBpdCB0aHJvdWdoIGEKPiBoZWxwZXIgZnVuY3Rpb24uCj4KPiB2
Mjogcy9pbnRlbF9nZXRfcGxsX2VuYWJsZV9yZWcoKS9pbnRlbF9jb21ib19wbGxfZW5hYmxlX3Jl
ZygpIChWaWxsZSkKPgo+IHYzOiBDbGVhbiB1cCBjb21ib19wbGxfZGlzYWJsZSgpIChSb2RyaWdv
KQo+Cj4gU3VnZ2VzdGVkLWJ5OiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29t
Pgo+IENjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+
IENjOiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYt
Ynk6IEFudXNoYSBTcml2YXRzYSA8YW51c2hhLnNyaXZhdHNhQGludGVsLmNvbT4KPiBSZXZpZXdl
ZC1ieTogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxfbWdyLmMgfCAyOSArKysrKysrKysr
Ky0tLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAxNyBpbnNlcnRpb25zKCspLCAxMiBkZWxldGlv
bnMoLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RwbGxfbWdyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxfbWdy
LmMKPiBpbmRleCBjOTAxM2Y4Zjc2NmYuLjQ0MWI2ZjUyZTgwOCAxMDA2NDQKPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxfbWdyLmMKPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxfbWdyLmMKPiBAQCAtMTQ3LDYgKzE0Nywx
OCBAQCB2b2lkIGFzc2VydF9zaGFyZWRfZHBsbChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2
X3ByaXYsCj4gIAkJCXBsbC0+aW5mby0+bmFtZSwgb25vZmYoc3RhdGUpLCBvbm9mZihjdXJfc3Rh
dGUpKTsKPiAgfQo+ICAKPiArc3RhdGljCj4gK2k5MTVfcmVnX3QgaW50ZWxfY29tYm9fcGxsX2Vu
YWJsZV9yZWcoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAoKUGxlYXNlIGtlZXAg
dGhlIHN0YXRpYyBrZXl3b3JkIGFuZCB0aGUgcmV0dXJuIHR5cGUgb24gdGhlIHNhbWUgbGluZSB3
aXRoCmVhY2ggb3RoZXIuCgpBbmQgc2luY2UgeW91J3JlIHRvdWNoaW5nIHRoaXMsIHBsZWFzZSBy
ZW5hbWUgZGV2X3ByaXYgdG8gaTkxNSBpbiBhbGwKbmV3IGNvZGUgYWRkaW5nIGl0LgoKQlIsCkph
bmkuCgoKPiArCQkJCSAgICBzdHJ1Y3QgaW50ZWxfc2hhcmVkX2RwbGwgKnBsbCkKPiArewo+ICsK
PiArCWlmIChJU19FTEtIQVJUTEFLRShkZXZfcHJpdikgJiYgKHBsbC0+aW5mby0+aWQgPT0gRFBM
TF9JRF9FSExfRFBMTDQpKQo+ICsJCQlyZXR1cm4gTUdfUExMX0VOQUJMRSgwKTsKPiArCj4gKwly
ZXR1cm4gQ05MX0RQTExfRU5BQkxFKHBsbC0+aW5mby0+aWQpOwo+ICsKPiArCj4gK30KPiAgLyoq
Cj4gICAqIGludGVsX3ByZXBhcmVfc2hhcmVkX2RwbGwgLSBjYWxsIGEgZHBsbCdzIHByZXBhcmUg
aG9vawo+ICAgKiBAY3J0Y19zdGF0ZTogQ1JUQywgYW5kIGl0cyBzdGF0ZSwgd2hpY2ggaGFzIGEg
c2hhcmVkIGRwbGwKPiBAQCAtMzg0MiwxMiArMzg1NCw3IEBAIHN0YXRpYyBib29sIGNvbWJvX3Bs
bF9nZXRfaHdfc3RhdGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAo+ICAJCQkJ
ICAgc3RydWN0IGludGVsX3NoYXJlZF9kcGxsICpwbGwsCj4gIAkJCQkgICBzdHJ1Y3QgaW50ZWxf
ZHBsbF9od19zdGF0ZSAqaHdfc3RhdGUpCj4gIHsKPiAtCWk5MTVfcmVnX3QgZW5hYmxlX3JlZyA9
IENOTF9EUExMX0VOQUJMRShwbGwtPmluZm8tPmlkKTsKPiAtCj4gLQlpZiAoSVNfRUxLSEFSVExB
S0UoZGV2X3ByaXYpICYmCj4gLQkgICAgcGxsLT5pbmZvLT5pZCA9PSBEUExMX0lEX0VITF9EUExM
NCkgewo+IC0JCWVuYWJsZV9yZWcgPSBNR19QTExfRU5BQkxFKDApOwo+IC0JfQo+ICsJaTkxNV9y
ZWdfdCBlbmFibGVfcmVnID0gaW50ZWxfY29tYm9fcGxsX2VuYWJsZV9yZWcoZGV2X3ByaXYsIHBs
bCk7Cj4gIAo+ICAJcmV0dXJuIGljbF9wbGxfZ2V0X2h3X3N0YXRlKGRldl9wcml2LCBwbGwsIGh3
X3N0YXRlLCBlbmFibGVfcmVnKTsKPiAgfQo+IEBAIC00MDQ1LDExICs0MDUyLDEwIEBAIHN0YXRp
YyB2b2lkIGljbF9wbGxfZW5hYmxlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwK
PiAgc3RhdGljIHZvaWQgY29tYm9fcGxsX2VuYWJsZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
ZGV2X3ByaXYsCj4gIAkJCSAgICAgc3RydWN0IGludGVsX3NoYXJlZF9kcGxsICpwbGwpCj4gIHsK
PiAtCWk5MTVfcmVnX3QgZW5hYmxlX3JlZyA9IENOTF9EUExMX0VOQUJMRShwbGwtPmluZm8tPmlk
KTsKPiArCWk5MTVfcmVnX3QgZW5hYmxlX3JlZyA9IGludGVsX2NvbWJvX3BsbF9lbmFibGVfcmVn
KGRldl9wcml2LCBwbGwpOwo+ICAKPiAgCWlmIChJU19FTEtIQVJUTEFLRShkZXZfcHJpdikgJiYK
PiAgCSAgICBwbGwtPmluZm8tPmlkID09IERQTExfSURfRUhMX0RQTEw0KSB7Cj4gLQkJZW5hYmxl
X3JlZyA9IE1HX1BMTF9FTkFCTEUoMCk7Cj4gIAo+ICAJCS8qCj4gIAkJICogV2UgbmVlZCB0byBk
aXNhYmxlIERDIHN0YXRlcyB3aGVuIHRoaXMgRFBMTCBpcyBlbmFibGVkLgo+IEBAIC00MTU3LDE5
ICs0MTYzLDE4IEBAIHN0YXRpYyB2b2lkIGljbF9wbGxfZGlzYWJsZShzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYsCj4gIHN0YXRpYyB2b2lkIGNvbWJvX3BsbF9kaXNhYmxlKHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKPiAgCQkJICAgICAgc3RydWN0IGludGVsX3No
YXJlZF9kcGxsICpwbGwpCj4gIHsKPiAtCWk5MTVfcmVnX3QgZW5hYmxlX3JlZyA9IENOTF9EUExM
X0VOQUJMRShwbGwtPmluZm8tPmlkKTsKPiArCWk5MTVfcmVnX3QgZW5hYmxlX3JlZyA9IGludGVs
X2NvbWJvX3BsbF9lbmFibGVfcmVnKGRldl9wcml2LCBwbGwpOwo+ICsKPiArCWljbF9wbGxfZGlz
YWJsZShkZXZfcHJpdiwgcGxsLCBlbmFibGVfcmVnKTsKPiAgCj4gIAlpZiAoSVNfRUxLSEFSVExB
S0UoZGV2X3ByaXYpICYmCj4gIAkgICAgcGxsLT5pbmZvLT5pZCA9PSBEUExMX0lEX0VITF9EUExM
NCkgewo+IC0JCWVuYWJsZV9yZWcgPSBNR19QTExfRU5BQkxFKDApOwo+IC0JCWljbF9wbGxfZGlz
YWJsZShkZXZfcHJpdiwgcGxsLCBlbmFibGVfcmVnKTsKPiAgCj4gIAkJaW50ZWxfZGlzcGxheV9w
b3dlcl9wdXQoZGV2X3ByaXYsIFBPV0VSX0RPTUFJTl9EUExMX0RDX09GRiwKPiAgCQkJCQlwbGwt
Pndha2VyZWYpOwo+ICAJCXJldHVybjsKPiAgCX0KPiAgCj4gLQlpY2xfcGxsX2Rpc2FibGUoZGV2
X3ByaXYsIHBsbCwgZW5hYmxlX3JlZyk7Cj4gIH0KPiAgCj4gIHN0YXRpYyB2b2lkIHRidF9wbGxf
ZGlzYWJsZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCgotLSAKSmFuaSBOaWt1
bGEsIEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNzIENlbnRlcgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
