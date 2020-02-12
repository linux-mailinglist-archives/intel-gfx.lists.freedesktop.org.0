Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1C3F15AEF3
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2020 18:43:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E5C389F6D;
	Wed, 12 Feb 2020 17:43:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1949489F6D
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Feb 2020 17:43:31 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Feb 2020 09:43:30 -0800
X-IronPort-AV: E=Sophos;i="5.70,433,1574150400"; d="scan'208";a="226938891"
Received: from schmidyv-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.249.38.234])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Feb 2020 09:43:28 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20200212161738.28141-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200212161738.28141-1-ville.syrjala@linux.intel.com>
 <20200212161738.28141-2-ville.syrjala@linux.intel.com>
Date: Wed, 12 Feb 2020 19:43:51 +0200
Message-ID: <87lfp7vgyw.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 1/8] drm/i915: Parametrize PFIT_PIPE
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

T24gV2VkLCAxMiBGZWIgMjAyMCwgVmlsbGUgU3lyamFsYSA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+IHdyb3RlOgo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+Cj4KPiBNYWtlIHRoZSBQRklUX1BJUEUgc3R1ZmYgbGVzcyB1Z2x5IHZp
YSBwYXJhbWV0cml6YXRpb24uCj4KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZp
bGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3BhbmVsLmMgfCAzICstLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3JlZy5oICAgICAgICAgICAgfCAxICsKPiAgMiBmaWxlcyBjaGFuZ2VkLCAyIGluc2VydGlv
bnMoKyksIDIgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9wYW5lbC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9wYW5lbC5jCj4gaW5kZXggY2JhMmYxYzI1NTdmLi44YjA3MzBmNGM0NDIgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wYW5lbC5jCj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wYW5lbC5jCj4gQEAgLTQzNCw4ICs0
MzQsNyBAQCB2b2lkIGludGVsX2dtY2hfcGFuZWxfZml0dGluZyhzdHJ1Y3QgaW50ZWxfY3J0YyAq
aW50ZWxfY3J0YywKPiAgCS8qIDk2NSsgd2FudHMgZnV6enkgZml0dGluZyAqLwo+ICAJLyogRklY
TUU6IGhhbmRsZSBtdWx0aXBsZSBwYW5lbHMgYnkgZmFpbGluZyBncmFjZWZ1bGx5ICovCj4gIAlp
ZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSA0KQo+IC0JCXBmaXRfY29udHJvbCB8PSAoKGludGVs
X2NydGMtPnBpcGUgPDwgUEZJVF9QSVBFX1NISUZUKSB8Cj4gLQkJCQkgUEZJVF9GSUxURVJfRlVa
WlkpOwo+ICsJCXBmaXRfY29udHJvbCB8PSBQRklUX1BJUEUoaW50ZWxfY3J0Yy0+cGlwZSkgfCBQ
RklUX0ZJTFRFUl9GVVpaWTsKPiAgCj4gIG91dDoKPiAgCWlmICgocGZpdF9jb250cm9sICYgUEZJ
VF9FTkFCTEUpID09IDApIHsKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9yZWcuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKPiBpbmRleCBiMDljMWQ2
ZGMwYWEuLmZhZjg5NDVhNTFiMCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3JlZy5oCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAo+IEBAIC00
OTI4LDYgKzQ5MjgsNyBAQCBlbnVtIHsKPiAgI2RlZmluZSAgIFBGSVRfRU5BQkxFCQkoMSA8PCAz
MSkKPiAgI2RlZmluZSAgIFBGSVRfUElQRV9NQVNLCSgzIDw8IDI5KQo+ICAjZGVmaW5lICAgUEZJ
VF9QSVBFX1NISUZUCTI5Cj4gKyNkZWZpbmUgICBQRklUX1BJUEUocGlwZSkJKChwaXBlKSA8PCAy
OSkKClRoaXMgaXMgZmluZSwgYnV0IG1pZ2h0IGhhdmUgYXMgd2VsbCBkZWZpbmVkIHRoaXMgaW4g
dGVybXMgb2YKUkVHX0ZJRUxEX1BSRVAuIEkgZXNwZWNpYWxseSBsaWtlIGl0IGZvciBwYXJhbWV0
cml6ZWQgc3R1ZmYgYmVjYXVzZSBpdAplbnN1cmVzIHdlIGRvbid0IGZsb29kIHRoZSB2YWx1ZSBv
dXRzaWRlIHRoZSBmaWVsZC4KClJldmlld2VkLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFA
aW50ZWwuY29tPgoKPiAgI2RlZmluZSAgIFZFUlRfSU5URVJQX0RJU0FCTEUJKDAgPDwgMTApCj4g
ICNkZWZpbmUgICBWRVJUX0lOVEVSUF9CSUxJTkVBUgkoMSA8PCAxMCkKPiAgI2RlZmluZSAgIFZF
UlRfSU5URVJQX01BU0sJKDMgPDwgMTApCgotLSAKSmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291
cmNlIEdyYXBoaWNzIENlbnRlcgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZngK
