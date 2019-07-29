Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B63279392
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jul 2019 21:10:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 221DD89BC2;
	Mon, 29 Jul 2019 19:09:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3BDEB89BC2
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Jul 2019 19:09:58 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Jul 2019 12:09:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,323,1559545200"; d="scan'208";a="162325823"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com) ([10.54.75.49])
 by orsmga007.jf.intel.com with ESMTP; 29 Jul 2019 12:09:57 -0700
Date: Mon, 29 Jul 2019 12:11:58 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20190729191158.GH2632@intel.com>
References: <20190718144340.1114-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190718144340.1114-1-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Refuse modes with
 hdisplay==4096 on pre-HSW DP
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

T24gVGh1LCBKdWwgMTgsIDIwMTkgYXQgMDU6NDM6MzlQTSArMDMwMCwgVmlsbGUgU3lyamFsYSB3
cm90ZToKPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwu
Y29tPgo+IAo+IFRoZSBEUCBwb3J0L3BpcGUgZ29lcyB3b25reSBpZiB3ZSB0cnkgdG8gdXNlIHRp
bWluZ3Mgd2l0aAo+IGhkaXNwbGF5PT00MDk2IG9uIHByZS1IU1cgcGxhdGZvcm1zLiBUaGUgbGlu
ayBmYWlscyB0byB0cmFpbgo+IGFuZCB0aGUgcGlwZSBtYXkgbm90IHNpZ25hbCB2YmxhbmsgaW50
ZXJydXB0cy4gT24gSERNSSBzdWNoIGF0Cj4gbW9kZSB3b3JrcyBqdXN0IGZpbmUgKHRlc3RlZCBv
biBFTEsvU05CL0NIVikuIFNvIGxldCdzIHJlZnVzZQo+IHN1Y2ggbW9kZXMgb24gRFAgb24gb2xk
ZXIgcGxhdGZvcm1zLgo+IAo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUu
c3lyamFsYUBsaW51eC5pbnRlbC5jb20+CgpNYWtlcyBzZW5zZSBpZiB0aGUgbGluayBpcyBub3Qg
YWJsZSB0byBnZXQgdHJhaW5lZCB0aGF0IHdlIHJlamVjdCB0aGlzIG1vZGUKCj4gLS0tCj4gIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyB8IDI1ICsrKysrKysrKysrKysr
KysrKysrKysrKysKPiAgMSBmaWxlIGNoYW5nZWQsIDI1IGluc2VydGlvbnMoKykKPiAKPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCj4gaW5kZXggMGViNWQ2NmY4N2E3Li5j
OTYwMzA3NjFlYWUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kcC5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5j
Cj4gQEAgLTQ5Myw2ICs0OTMsMjUgQEAgaW50IGludGVsX2RwX2dldF9saW5rX3RyYWluX2ZhbGxi
YWNrX3ZhbHVlcyhzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLAo+ICAJcmV0dXJuIDA7Cj4gIH0K
PiAgCj4gK3N0YXRpYyBib29sIGludGVsX2RwX2hkaXNwbGF5X2JhZChzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYsCj4gKwkJCQkgIGludCBoZGlzcGxheSkKPiArewo+ICsJLyoKPiAr
CSAqIE9sZGVyIHBsYXRmb3JtcyBkb24ndCBsaWtlIGhkaXNwbGF5PT00MDk2IHdpdGggRFAuCj4g
KwkgKgo+ICsJICogT24gSUxLL1NOQi9JVkIgdGhlIHBpcGUgc2VlbXMgdG8gYmUgc29tZXdoYXQg
cnVubmluZyAoc2NhbmxpbmUKPiArCSAqIGFuZCBmcmFtZSBjb3VudGVyIGluY3JlbWVudCksIGJ1
dCB3ZSBkb24ndCBnZXQgdmJsYW5rIGludGVycnVwdHMsCj4gKwkgKiBhbmQgdGhlIHBpcGUgdW5k
ZXJydW5zIGltbWVkaWF0ZWx5LiBUaGUgbGluayBhbHNvIGRvZXNuJ3Qgc2VlbQo+ICsJICogdG8g
Z2V0IHRyYWluZWQgcHJvcGVybHkuCj4gKwkgKgo+ICsJICogT24gQ0hWIHRoZSB2YmxhbmsgaW50
ZXJydXB0cyBkb24ndCBzZWVtIHRvIGRpc2FwcGVhciBidXQKPiArCSAqIG90aGVyd2lzZSB0aGUg
c3ltcHRvbXMgYXJlIHNpbWlsYXIuCj4gKwkgKgo+ICsJICogVE9ETzogY29uZmlybSB0aGUgYmVo
YXZpb3VyIG9uIEhTVysKPiArCSAqLwo+ICsJcmV0dXJuIGhkaXNwbGF5ID09IDQwOTYgJiYgIUhB
U19EREkoZGV2X3ByaXYpOwo+ICt9Cj4gKwo+ICBzdGF0aWMgZW51bSBkcm1fbW9kZV9zdGF0dXMK
PiAgaW50ZWxfZHBfbW9kZV92YWxpZChzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yLAo+
ICAJCSAgICBzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSAqbW9kZSkKPiBAQCAtNTI4LDYgKzU0Nyw5
IEBAIGludGVsX2RwX21vZGVfdmFsaWQoc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvciwK
PiAgCW1heF9yYXRlID0gaW50ZWxfZHBfbWF4X2RhdGFfcmF0ZShtYXhfbGlua19jbG9jaywgbWF4
X2xhbmVzKTsKPiAgCW1vZGVfcmF0ZSA9IGludGVsX2RwX2xpbmtfcmVxdWlyZWQodGFyZ2V0X2Ns
b2NrLCAxOCk7Cj4gIAo+ICsJaWYgKGludGVsX2RwX2hkaXNwbGF5X2JhZChkZXZfcHJpdiwgbW9k
ZS0+aGRpc3BsYXkpKQo+ICsJCXJldHVybiBNT0RFX0hfSUxMRUdBTDsKPiArCj4gIAkvKgo+ICAJ
ICogT3V0cHV0IGJwcCBpcyBzdG9yZWQgaW4gNi40IGZvcm1hdCBzbyByaWdodCBzaGlmdCBieSA0
IHRvIGdldCB0aGUKPiAgCSAqIGludGVnZXIgdmFsdWUgc2luY2Ugd2Ugc3VwcG9ydCBvbmx5IGlu
dGVnZXIgdmFsdWVzIG9mIGJwcC4KPiBAQCAtMjIwOCw2ICsyMjMwLDkgQEAgaW50ZWxfZHBfY29t
cHV0ZV9jb25maWcoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCj4gIAlpZiAoYWRqdXN0
ZWRfbW9kZS0+ZmxhZ3MgJiBEUk1fTU9ERV9GTEFHX0RCTENMSykKPiAgCQlyZXR1cm4gLUVJTlZB
TDsKPiAgCj4gKwlpZiAoaW50ZWxfZHBfaGRpc3BsYXlfYmFkKGRldl9wcml2LCBhZGp1c3RlZF9t
b2RlLT5jcnRjX2hkaXNwbGF5KSkKPiArCQlyZXR1cm4gLUVJTlZBTDsKCldoeSB3b3VsZCB3ZSBu
ZWVkIGFub3RoZXIgY2hlY2sgaW4gY29tcHV0ZV9jb25maWcoKSBzaW5jZSB0aGUgbW9kZSB3b3Vs
ZCBoYXZlIGJlZW4KcmVqZWN0ZWQgYWxyZWFkeSBpbiBpbnRlbF9kcF9tb2RlX3ZhbGlkKCkKCk1h
bmFzaQoKPiArCj4gIAlyZXQgPSBpbnRlbF9kcF9jb21wdXRlX2xpbmtfY29uZmlnKGVuY29kZXIs
IHBpcGVfY29uZmlnLCBjb25uX3N0YXRlKTsKPiAgCWlmIChyZXQgPCAwKQo+ICAJCXJldHVybiBy
ZXQ7Cj4gLS0gCj4gMi4yMS4wCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0Cj4gSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
