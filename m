Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B1BCCAA336
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Sep 2019 14:30:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 125836E0AC;
	Thu,  5 Sep 2019 12:30:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1051D6E0AC
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Sep 2019 12:30:25 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Sep 2019 05:30:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,470,1559545200"; d="scan'208";a="190479172"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 05 Sep 2019 05:30:23 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 05 Sep 2019 15:30:22 +0300
Date: Thu, 5 Sep 2019 15:30:22 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20190905123022.GI7482@intel.com>
References: <20190904162625.15048-8-ville.syrjala@linux.intel.com>
 <20190905103706.3421-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190905103706.3421-1-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2 07/15] drm/i915: Check pipe source size
 against pfit limits
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

T24gVGh1LCBTZXAgMDUsIDIwMTkgYXQgMDE6Mzc6MDZQTSArMDMwMCwgVmlsbGUgU3lyamFsYSB3
cm90ZToKPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwu
Y29tPgo+IAo+IFRoZSBwYW5lbCBmaXR0ZXIgaW1wb3NlcyBleHRyYSBsaW1pdHMgb24gdGhlIG1h
eGltdW0gcGlwZSBzb3VyY2UKPiBzaXplIHdlIGNhbiB1c2UuIENoZWNrIGZvciB0aGF0Lgo+IAo+
IHYyOiBTa2lwIHRoZSBjaGVja3MgaWYgdGhlIGNydGMgaXMgZGlzYWJsZWQKPiAKPiBTaWduZWQt
b2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+
IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDU3
ICsrKysrKysrKysrKysrKysrKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCA1NyBpbnNlcnRpb25zKCsp
Cj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPiBp
bmRleCAzNDgwNzFkYjhiNGMuLmNjZWMyYjU0Njc3ZCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gQEAgLTExNzY4LDYgKzExNzY4LDU3IEBA
IHN0YXRpYyBib29sIGM4X3BsYW5lc19jaGFuZ2VkKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0
YXRlICpuZXdfY3J0Y19zdGF0ZSkKPiAgCXJldHVybiAhb2xkX2NydGNfc3RhdGUtPmM4X3BsYW5l
cyAhPSAhbmV3X2NydGNfc3RhdGUtPmM4X3BsYW5lczsKPiAgfQo+ICAKPiArc3RhdGljIGludCBp
bnRlbF9wY2hfcGZpdF9jaGVja19zcmNfc2l6ZShjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0
ZSAqY3J0Y19zdGF0ZSkKPiArewo+ICsJc3RydWN0IGludGVsX2NydGMgKmNydGMgPSB0b19pbnRl
bF9jcnRjKGNydGNfc3RhdGUtPmJhc2UuY3J0Yyk7Cj4gKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNydGMtPmJhc2UuZGV2KTsKPiArCWludCBtYXhfc3JjX3cs
IG1heF9zcmNfaDsKPiArCj4gKwlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMSkgewo+ICsJ
CW1heF9zcmNfdyA9IDUxMjA7Cj4gKwkJbWF4X3NyY19oID0gNDMyMDsKPiArCX0gZWxzZSBpZiAo
SU5URUxfR0VOKGRldl9wcml2KSA+PSAxMCB8fCBJU19HRU1JTklMQUtFKGRldl9wcml2KSkgewo+
ICsJCW1heF9zcmNfdyA9IGNydGMtPnBpcGUgPT0gUElQRV9BID8gNTEyMCA6IDQwOTY7Cj4gKwkJ
bWF4X3NyY19oID0gNDA5NjsKPiArCX0gZWxzZSBpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSA4
KSB7Cj4gKwkJbWF4X3NyY193ID0gNDA5NjsKPiArCQltYXhfc3JjX2ggPSA0MDk2Owo+ICsJfSBl
bHNlIGlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDcpIHsKPiArCQkvKgo+ICsJCSAqIFBGMCA3
eDUgY2FwYWJsZQo+ICsJCSAqIFBGMSAzeDMgY2FwYWJsZSAoY291bGQgYmUgc3dpdGNoZWQgdG8g
N3g1Cj4gKwkJICogICAgICAgICAgICAgICAgICBtb2RlIG9uIEhTVyB3aGVuIFBGMiB1bnVzZWQp
Cj4gKwkJICogUEYyIDN4MyBjYXBhYmxlCj4gKwkJICoKPiArCQkgKiBUaGlzIGFzc3VtZXMgd2Ug
dXNlIGEgMToxIG1hcHBpbmcgYmV0d2VlbiBwaXBlIGFuZCBQRi4KPiArCQkgKi8KPiArCQltYXhf
c3JjX3cgPSBjcnRjLT5waXBlID09IFBJUEVfQSA/IDQwOTYgOiAyMDQ4Owo+ICsJCW1heF9zcmNf
aCA9IDQwOTY7Cj4gKwl9IGVsc2Ugewo+ICsJCW1heF9zcmNfdyA9IDQwOTY7Cj4gKwkJbWF4X3Ny
Y19oID0gNDA5NjsKPiArCX0KPiArCj4gKwlpZiAoY3J0Y19zdGF0ZS0+cGlwZV9zcmNfdyA+IG1h
eF9zcmNfdyB8fAo+ICsJICAgIGNydGNfc3RhdGUtPnBpcGVfc3JjX2ggPiBtYXhfc3JjX2gpIHsK
PiArCQlEUk1fREVCVUdfS01TKCJwaXBlICVjIHNvdXJjZSBzaXplICglZHglZCkgZXhjZWVkcyBw
Zml0IG1heCAoJWR4JWQpXG4iLAo+ICsJCQkgICAgICBwaXBlX25hbWUoY3J0Yy0+cGlwZSksIGNy
dGNfc3RhdGUtPnBpcGVfc3JjX3csCj4gKwkJCSAgICAgIGNydGNfc3RhdGUtPnBpcGVfc3JjX2gs
IG1heF9zcmNfdywgbWF4X3NyY19oKTsKPiArCQlyZXR1cm4gLUVJTlZBTDsKPiArCX0KPiArCj4g
KwlyZXR1cm4gMDsKPiArfQo+ICsKPiArc3RhdGljIGludCBpbnRlbF9wY2hfcGZpdF9jaGVjayhj
b25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKPiArewo+ICsJaWYgKCFj
cnRjX3N0YXRlLT5iYXNlLmVuYWJsZSB8fAoKV2UgbWlnaHQgYWN0dWFsbHkgY29uc2lkZXIgY2xl
YXJpbmcgbW9zdCBvZiB0aGUgY3J0YyBzdGF0ZSBmb3IgZGlzYWJsZWQKcGlwZXMuIFdvdWxkIGF2
b2lkIGhhdmluZyB0byBzcHJpbmtsZSB0aGVzZSBjaGVja3MgYWxsIG92ZXIgdGhlIHBsYWNlLgpC
dXQgSSBoYXZlbid0IHJlYWxseSB0aG91Z2h0IHRocm91Z2ggdGhlIGltcGxpY2F0aW9ucyBvZiBk
b2luZyB0aGF0LgoKPiArCSAgICAhY3J0Y19zdGF0ZS0+cGNoX3BmaXQuZW5hYmxlZCkKPiArCQly
ZXR1cm4gMDsKPiArCj4gKwlyZXR1cm4gaW50ZWxfcGNoX3BmaXRfY2hlY2tfc3JjX3NpemUoY3J0
Y19zdGF0ZSk7Cj4gK30KPiArCj4gIHN0YXRpYyBpbnQgaW50ZWxfY3J0Y19hdG9taWNfY2hlY2so
c3RydWN0IGRybV9jcnRjICpjcnRjLAo+ICAJCQkJICAgc3RydWN0IGRybV9jcnRjX3N0YXRlICpj
cnRjX3N0YXRlKQo+ICB7Cj4gQEAgLTExNzkxLDYgKzExODQyLDEyIEBAIHN0YXRpYyBpbnQgaW50
ZWxfY3J0Y19hdG9taWNfY2hlY2soc3RydWN0IGRybV9jcnRjICpjcnRjLAo+ICAJCQlyZXR1cm4g
cmV0Owo+ICAJfQo+ICAKPiArCWlmICghSEFTX0dNQ0goZGV2X3ByaXYpKSB7Cj4gKwkJcmV0ID0g
aW50ZWxfcGNoX3BmaXRfY2hlY2socGlwZV9jb25maWcpOwo+ICsJCWlmIChyZXQpCj4gKwkJCXJl
dHVybiByZXQ7Cj4gKwl9Cj4gKwo+ICAJLyoKPiAgCSAqIE1heSBuZWVkIHRvIHVwZGF0ZSBwaXBl
IGdhbW1hIGVuYWJsZSBiaXRzCj4gIAkgKiB3aGVuIEM4IHBsYW5lcyBhcmUgZ2V0dGluZyBlbmFi
bGVkL2Rpc2FibGVkLgo+IC0tIAo+IDIuMjEuMAoKLS0gClZpbGxlIFN5cmrDpGzDpApJbnRlbApf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
