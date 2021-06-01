Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A78AB39732E
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Jun 2021 14:27:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 005056EA2E;
	Tue,  1 Jun 2021 12:27:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 388286EA2E;
 Tue,  1 Jun 2021 12:27:06 +0000 (UTC)
IronPort-SDR: yx8AhJCDcQz4A3XveRi8hS2h+CGyt5YHgWBGl8dMSJqnqFkqrR9aY4L8sRIzSXGHU+JN2OUPmZ
 LiX8570ScdwQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10001"; a="190650143"
X-IronPort-AV: E=Sophos;i="5.83,239,1616482800"; d="scan'208";a="190650143"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2021 05:27:05 -0700
IronPort-SDR: fkQ2IEP/SExb5jxPolr4uhpRk/CHoHQ2VlrNSsi4erb0Bc1sJXEs744JkPg+dvBDV/k5+OnKOI
 z4NxoKSn3B9g==
X-IronPort-AV: E=Sophos;i="5.83,239,1616482800"; d="scan'208";a="479259565"
Received: from ycohenha-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.54.130])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2021 05:27:02 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Zbigniew =?utf-8?Q?Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
In-Reply-To: <20210601082847.78389-1-zbigniew.kempczynski@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210601082847.78389-1-zbigniew.kempczynski@intel.com>
Date: Tue, 01 Jun 2021 15:26:59 +0300
Message-ID: <87lf7trcrw.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Add relocation exceptions for two
 other platforms
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
Cc: Dave Airlie <airlied@redhat.com>, Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAwMSBKdW4gMjAyMSwgWmJpZ25pZXcgS2VtcGN6ecWEc2tpIDx6Ymlnbmlldy5rZW1w
Y3p5bnNraUBpbnRlbC5jb20+IHdyb3RlOgo+IFdlIGhhdmUgZXN0YWJsaXNoZWQgcHJldmlvdXNs
eSB3ZSBzdG9wIHVzaW5nIHJlbG9jYXRpb25zIHN0YXJ0aW5nCj4gZnJvbSBnZW4xMiBwbGF0Zm9y
bXMgd2l0aCBUaWdlcmxha2UgYXMgYW4gZXhjZXB0aW9uLiBXZSBrZWVwIHRoaXMKPiBzdGF0ZW1l
bnQgYnV0IHdlIHdhbnQgdG8gZW5hYmxlIHJlbG9jYXRpb25zIGNvbmRpdGlvbmFsbHkgZm9yCj4g
Um9ja2V0bGFrZSBhbmQgQWxkZXJsYWtlIHVuZGVyIHJlcXVpcmVfZm9yY2VfcHJvYmUgZmxhZyBz
ZXQuCj4KPiBLZWVwaW5nIHJlbG9jYXRpb25zIHVuZGVyIHJlcXVpcmVfZm9yY2VfcHJvYmUgZmxh
ZyBpcyBpbnRlcmltIHNvbHV0aW9uCj4gdW50aWwgSUdUcyB3aWxsIGJlIHJld3JpdHRlbiB0byB1
c2Ugc29mdHBpbi4KPgo+IFNpZ25lZC1vZmYtYnk6IFpiaWduaWV3IEtlbXBjennFhHNraSA8emJp
Z25pZXcua2VtcGN6eW5za2lAaW50ZWwuY29tPgo+IENjOiBEYXZlIEFpcmxpZSA8YWlybGllZEBy
ZWRoYXQuY29tPgo+IENjOiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGludGVsLmNvbT4K
PiBDYzogSmFzb24gRWtzdHJhbmQgPGphc29uQGpsZWtzdHJhbmQubmV0Pgo+IC0tLQo+ICAuLi4v
Z3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVyLmMgICAgfCAyNiArKysrKysrKysr
KysrKystLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAyMSBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9u
cygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9l
eGVjYnVmZmVyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhlY2J1ZmZl
ci5jCj4gaW5kZXggMjk3MTQzNTExZjk5Li5jMDU2MmRkMTQ4MzcgMTAwNjQ0Cj4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYwo+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVyLmMKPiBAQCAtNDkxLDE2ICs0
OTEsMzIgQEAgZWJfdW5yZXNlcnZlX3ZtYShzdHJ1Y3QgZWJfdm1hICpldikKPiAgCWV2LT5mbGFn
cyAmPSB+X19FWEVDX09CSkVDVF9SRVNFUlZFRDsKPiAgfQo+ICAKPiArc3RhdGljIGlubGluZSBi
b29sCgpQbGVhc2UgZG9uJ3QgdXNlIHRoZSBpbmxpbmUga2V5d29yZCBpbiAuYyBmaWxlcy4gTGV0
IHRoZSBjb21waWxlciBkbyBpdHMKam9iLgoKCkJSLApKYW5pLgoKPiArcGxhdGZvcm1faGFzX3Jl
bG9jc19lbmFibGVkKGNvbnN0IHN0cnVjdCBpOTE1X2V4ZWNidWZmZXIgKmViKQo+ICt7Cj4gKwkv
Kgo+ICsJICogUmVsb2NhdGlvbnMgYXJlIGRpc2FsbG93ZWQgc3RhcnRpbmcgZnJvbSBnZW4xMiB3
aXRoIFRpZ2VybGFrZQo+ICsJICogYXMgYW4gZXhjZXB0aW9uLiBXZSBhbGxvdyB0ZW1wb3Jhcmls
eSB1c2UgcmVsb2NhdGlvbnMgZm9yIFJvY2tldGxha2UKPiArCSAqIGFuZCBBbGRlcmxha2Ugd2hl
biByZXF1aXJlX2ZvcmNlX3Byb2JlIGZsYWcgaXMgc2V0Lgo+ICsJICovCj4gKwo+ICsJaWYgKElO
VEVMX0dFTihlYi0+aTkxNSkgPCAxMiB8fCBJU19USUdFUkxBS0UoZWItPmk5MTUpKQo+ICsJCXJl
dHVybiB0cnVlOwo+ICsKPiArCWlmIChJTlRFTF9JTkZPKGViLT5pOTE1KS0+cmVxdWlyZV9mb3Jj
ZV9wcm9iZSAmJgo+ICsJCSAoSVNfUk9DS0VUTEFLRShlYi0+aTkxNSkgfHwgSVNfQUxERVJMQUtF
X1MoZWItPmk5MTUpIHx8Cj4gKwkJICBJU19BTERFUkxBS0VfUChlYi0+aTkxNSkpKQo+ICsJCXJl
dHVybiB0cnVlOwo+ICsKPiArCXJldHVybiBmYWxzZTsKPiArfQo+ICsKPiAgc3RhdGljIGludAo+
ICBlYl92YWxpZGF0ZV92bWEoc3RydWN0IGk5MTVfZXhlY2J1ZmZlciAqZWIsCj4gIAkJc3RydWN0
IGRybV9pOTE1X2dlbV9leGVjX29iamVjdDIgKmVudHJ5LAo+ICAJCXN0cnVjdCBpOTE1X3ZtYSAq
dm1hKQo+ICB7Cj4gLQkvKiBSZWxvY2F0aW9ucyBhcmUgZGlzYWxsb3dlZCBmb3IgYWxsIHBsYXRm
b3JtcyBhZnRlciBUR0wtTFAuICBUaGlzCj4gLQkgKiBhbHNvIGNvdmVycyBhbGwgcGxhdGZvcm1z
IHdpdGggbG9jYWwgbWVtb3J5Lgo+IC0JICovCj4gLQlpZiAoZW50cnktPnJlbG9jYXRpb25fY291
bnQgJiYKPiAtCSAgICBJTlRFTF9HRU4oZWItPmk5MTUpID49IDEyICYmICFJU19USUdFUkxBS0Uo
ZWItPmk5MTUpKQo+ICsJaWYgKGVudHJ5LT5yZWxvY2F0aW9uX2NvdW50ICYmICFwbGF0Zm9ybV9o
YXNfcmVsb2NzX2VuYWJsZWQoZWIpKQo+ICAJCXJldHVybiAtRUlOVkFMOwo+ICAKPiAgCWlmICh1
bmxpa2VseShlbnRyeS0+ZmxhZ3MgJiBlYi0+aW52YWxpZF9mbGFncykpCgotLSAKSmFuaSBOaWt1
bGEsIEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNzIENlbnRlcgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
