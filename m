Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 296E4C8BBB
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Oct 2019 16:47:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F07C689D86;
	Wed,  2 Oct 2019 14:47:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38CC089D86
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Oct 2019 14:47:20 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Oct 2019 07:47:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,574,1559545200"; d="scan'208";a="205355679"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 02 Oct 2019 07:47:17 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 02 Oct 2019 17:47:16 +0300
Date: Wed, 2 Oct 2019 17:47:16 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20191002144716.GV1208@intel.com>
References: <20191002144138.7917-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191002144138.7917-1-jani.nikula@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dp: remove static variable for aux
 last status
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

T24gV2VkLCBPY3QgMDIsIDIwMTkgYXQgMDU6NDE6MzhQTSArMDMwMCwgSmFuaSBOaWt1bGEgd3Jv
dGU6Cj4gQWRkIGF1eF9idXN5X2xhc3Rfc3RhdHVzIHRvIGludGVsX2RwLiBEb24ndCBib3RoZXIg
d2l0aCBpbml0aWFsaXppbmcgdG8KPiBhbGwgb25lczsgdGhlIG9ubHkgZGlmZmVyZW5jZSBpcyBw
b3RlbnRpYWxseSBtaXNzaW5nIGxvZ2dpbmcgZm9yIG9uZQo+IGVycm9yIGNhc2UgaWYgdGhlIHJl
YWRvdXQgaXMgYWxsIHplcm9zLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEphbmkgTmlrdWxhIDxqYW5p
Lm5pa3VsYUBpbnRlbC5jb20+YQoKUmV2aWV3ZWQtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUu
c3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCB8IDEgKwo+ICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RwLmMgICAgICAgICAgICB8IDUgKystLS0KPiAgMiBmaWxlcyBjaGFu
Z2VkLCAzIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgKPiBpbmRleCA5NzY2
NjlmMDFhOGMuLjE2MDJhYWM3Y2EwZiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaAo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oCj4gQEAgLTExODUsNiArMTE4NSw3IEBA
IHN0cnVjdCBpbnRlbF9kcCB7Cj4gIAkvKiBzaW5rIG9yIGJyYW5jaCBkZXNjcmlwdG9yICovCj4g
IAlzdHJ1Y3QgZHJtX2RwX2Rlc2MgZGVzYzsKPiAgCXN0cnVjdCBkcm1fZHBfYXV4IGF1eDsKPiAr
CXUzMiBhdXhfYnVzeV9sYXN0X3N0YXR1czsKPiAgCXU4IHRyYWluX3NldFs0XTsKPiAgCWludCBw
YW5lbF9wb3dlcl91cF9kZWxheTsKPiAgCWludCBwYW5lbF9wb3dlcl9kb3duX2RlbGF5Owo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKPiBpbmRleCBmOWZjOWExMzgzZTMu
LmM2OTdmNTUxYTFiMCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RwLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rw
LmMKPiBAQCAtMTM0NywxMyArMTM0NywxMiBAQCBpbnRlbF9kcF9hdXhfeGZlcihzdHJ1Y3QgaW50
ZWxfZHAgKmludGVsX2RwLAo+ICAJdHJhY2VfaTkxNV9yZWdfcncoZmFsc2UsIGNoX2N0bCwgc3Rh
dHVzLCBzaXplb2Yoc3RhdHVzKSwgdHJ1ZSk7Cj4gIAo+ICAJaWYgKHRyeSA9PSAzKSB7Cj4gLQkJ
c3RhdGljIHUzMiBsYXN0X3N0YXR1cyA9IC0xOwo+ICAJCWNvbnN0IHUzMiBzdGF0dXMgPSBpbnRl
bF91bmNvcmVfcmVhZCh1bmNvcmUsIGNoX2N0bCk7Cj4gIAo+IC0JCWlmIChzdGF0dXMgIT0gbGFz
dF9zdGF0dXMpIHsKPiArCQlpZiAoc3RhdHVzICE9IGludGVsX2RwLT5hdXhfYnVzeV9sYXN0X3N0
YXR1cykgewo+ICAJCQlXQVJOKDEsICJkcF9hdXhfY2ggbm90IHN0YXJ0ZWQgc3RhdHVzIDB4JTA4
eFxuIiwKPiAgCQkJICAgICBzdGF0dXMpOwo+IC0JCQlsYXN0X3N0YXR1cyA9IHN0YXR1czsKPiAr
CQkJaW50ZWxfZHAtPmF1eF9idXN5X2xhc3Rfc3RhdHVzID0gc3RhdHVzOwo+ICAJCX0KPiAgCj4g
IAkJcmV0ID0gLUVCVVNZOwo+IC0tIAo+IDIuMjAuMQo+IAo+IF9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+IElu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAoKLS0gClZpbGxlIFN5cmrDpGzDpApJbnRl
bApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
