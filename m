Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 04A5FFDBEF
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2019 12:04:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1909F6E437;
	Fri, 15 Nov 2019 11:04:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA6136E437
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Nov 2019 11:04:32 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Nov 2019 03:04:32 -0800
X-IronPort-AV: E=Sophos;i="5.68,308,1569308400"; d="scan'208";a="195361163"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Nov 2019 03:04:31 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <157381331724.8818.5022640832000274325@skylake-alporthouse-com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20191115101840.23921-1-jani.nikula@intel.com>
 <20191115101840.23921-2-jani.nikula@intel.com>
 <157381331724.8818.5022640832000274325@skylake-alporthouse-com>
Date: Fri, 15 Nov 2019 13:04:28 +0200
Message-ID: <878soh1jur.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: make debug printer
 shown_bug_once variable to drm_i915_private
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

T24gRnJpLCAxNSBOb3YgMjAxOSwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28u
dWs+IHdyb3RlOgo+IFF1b3RpbmcgSmFuaSBOaWt1bGEgKDIwMTktMTEtMTUgMTA6MTg6NDApCj4+
IEdldCByaWQgb2YgdGhlIG1vZHVsZSBzcGVjaWZpYyBzdGF0aWMgdmFyaWFibGUuCj4+IAo+PiBT
aWduZWQtb2ZmLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgo+PiAtLS0K
Pj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggICB8IDIgKysKPj4gIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfdXRpbHMuYyB8IDkgKysrKy0tLS0tCj4+ICAyIGZpbGVzIGNoYW5n
ZWQsIDYgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKPj4gCj4+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9kcnYuaAo+PiBpbmRleCAxNzc5ZjYwMGZjZmIuLmUxMWVlMzI2OGFlMyAxMDA2NDQKPj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAo+PiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2Rydi5oCj4+IEBAIC0xMjgzLDYgKzEyODMsOCBAQCBzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSB7Cj4+ICAgICAgICAgLyogTXV0ZXggdG8gcHJvdGVjdCB0aGUgYWJvdmUgaGRj
cCBjb21wb25lbnQgcmVsYXRlZCB2YWx1ZXMuICovCj4+ICAgICAgICAgc3RydWN0IG11dGV4IGhk
Y3BfY29tcF9tdXRleDsKPj4gIAo+PiArICAgICAgIGJvb2wgc2hvd25fYnVnX29uY2U7Cj4+ICsK
Pj4gICAgICAgICBJOTE1X1NFTEZURVNUX0RFQ0xBUkUoc3RydWN0IGk5MTVfc2VsZnRlc3Rfc3Rh
c2ggc2VsZnRlc3Q7KQo+PiAgCj4+ICAgICAgICAgLyoKPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfdXRpbHMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdXRp
bHMuYwo+PiBpbmRleCBjNDcyNjFhZTg2ZWEuLmY0MzQyNzRiMGIyOSAxMDA2NDQKPj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV91dGlscy5jCj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfdXRpbHMuYwo+PiBAQCAtMTMsMTEgKzEzLDEwIEBACj4+ICAgICAgICAgICAg
ICAgICAgICAgInByb3ZpZGluZyB0aGUgZG1lc2cgbG9nIGJ5IGJvb3Rpbmcgd2l0aCBkcm0uZGVi
dWc9MHhmIgo+PiAgCj4+ICB2b2lkCj4+IC1fX2k5MTVfcHJpbnRrKHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdiwgY29uc3QgY2hhciAqbGV2ZWwsCj4+ICtfX2k5MTVfcHJpbnRrKHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LCBjb25zdCBjaGFyICpsZXZlbCwKPj4gICAgICAg
ICAgICAgICBjb25zdCBjaGFyICpmbXQsIC4uLikKPj4gIHsKPj4gLSAgICAgICBzdGF0aWMgYm9v
bCBzaG93bl9idWdfb25jZTsKPj4gLSAgICAgICBzdHJ1Y3QgZGV2aWNlICprZGV2ID0gZGV2X3By
aXYtPmRybS5kZXY7Cj4+ICsgICAgICAgc3RydWN0IGRldmljZSAqa2RldiA9IGk5MTUtPmRybS5k
ZXY7Cj4+ICAgICAgICAgYm9vbCBpc19lcnJvciA9IGxldmVsWzFdIDw9IEtFUk5fRVJSWzFdOwo+
PiAgICAgICAgIGJvb2wgaXNfZGVidWcgPSBsZXZlbFsxXSA9PSBLRVJOX0RFQlVHWzFdOwo+PiAg
ICAgICAgIHN0cnVjdCB2YV9mb3JtYXQgdmFmOwo+PiBAQCAtMzksNyArMzgsNyBAQCBfX2k5MTVf
cHJpbnRrKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwgY29uc3QgY2hhciAqbGV2
ZWwsCj4+ICAKPj4gICAgICAgICB2YV9lbmQoYXJncyk7Cj4+ICAKPj4gLSAgICAgICBpZiAoaXNf
ZXJyb3IgJiYgIXNob3duX2J1Z19vbmNlKSB7Cj4+ICsgICAgICAgaWYgKGlzX2Vycm9yICYmICFp
OTE1LT5zaG93bl9idWdfb25jZSkgewo+PiAgICAgICAgICAgICAgICAgLyoKPj4gICAgICAgICAg
ICAgICAgICAqIEFzayB0aGUgdXNlciB0byBmaWxlIGEgYnVnIHJlcG9ydCBmb3IgdGhlIGVycm9y
LCBleGNlcHQKPj4gICAgICAgICAgICAgICAgICAqIGlmIHRoZXkgbWF5IGhhdmUgY2F1c2VkIHRo
ZSBidWcgYnkgZmlkZGxpbmcgd2l0aCB1bnNhZmUKPj4gQEAgLTQ3LDcgKzQ2LDcgQEAgX19pOTE1
X3ByaW50ayhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIGNvbnN0IGNoYXIgKmxl
dmVsLAo+PiAgICAgICAgICAgICAgICAgICovCj4+ICAgICAgICAgICAgICAgICBpZiAoIXRlc3Rf
dGFpbnQoVEFJTlRfVVNFUikpCj4+ICAgICAgICAgICAgICAgICAgICAgICAgIGRldl9ub3RpY2Uo
a2RldiwgIiVzIiwgRkRPX0JVR19NU0cpOwo+Cj4gSSBmZWVsIHRoaXMgcGxlYSB0byB0aGUgdXNl
cnMgdG8gZmlsZSBhIGJ1ZyByZXBvcnQgc2hvdWxkIGJlIGEgb25lLXRpbWUKPiB0aGluZzsgYSB0
cnVlIGdsb2JhbC4KCkZhaXIgZW5vdWdoLgoKSSBhbSB3b25kZXJpbmcgaWYgd2Ugc2hvdWxkIGhh
dmUgYSBjb252ZW50aW9uIG9mIG5hbWluZyBvciBjb21tZW50aW5nCmxlZ2l0IGdsb2JhbHMsIGJv
dGggdG8gaGVscCBhdXRvbWF0aW9uIGRldGVjdGluZyBuZXcgYWNjaWRlbnRhbCBvbmVzLAphbmQg
dG8gaGVscCBwZW9wbGUgZmlndXJlIG91dCBub3QgdG8gc2VuZCBhbm90aGVyIGNvbnZlcnNpb24g
cGF0Y2ggc3VjaAphcyB0aGlzLgoKQlIsCkphbmkuCgoKCj4gLUNocmlzCj4gX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBJbnRlbC1nZnggbWFpbGluZyBs
aXN0Cj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4CgotLSAKSmFuaSBOaWt1bGEs
IEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNzIENlbnRlcgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
