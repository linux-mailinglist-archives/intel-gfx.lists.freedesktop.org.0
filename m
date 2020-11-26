Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A19272C56AC
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Nov 2020 15:09:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D13E7898C2;
	Thu, 26 Nov 2020 14:09:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E688D6E986
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Nov 2020 14:09:27 +0000 (UTC)
IronPort-SDR: GdBnCkjAAGW3Rp7ynjfaoy8T2wwa+AoqZ8KwvG0lUi7G0hwHBcMOtPcw5BzQW1zVmhTs0QpJ8I
 UCd4Z6sNfhow==
X-IronPort-AV: E=McAfee;i="6000,8403,9816"; a="172387345"
X-IronPort-AV: E=Sophos;i="5.78,372,1599548400"; d="scan'208";a="172387345"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2020 06:09:26 -0800
IronPort-SDR: tSRShw7828K0AZIHZVWESEt6VzbMeSjaxpfRkJiZwr/GFpV6ekkIY0Q+uqlRCFHa2pDlJMrBpi
 IInAJTiddIYA==
X-IronPort-AV: E=Sophos;i="5.78,372,1599548400"; d="scan'208";a="547729871"
Received: from mpascu-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.249.41.186])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2020 06:09:25 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: imre.deak@intel.com, =?utf-8?Q?Jos=C3=A9?= Roberto de Souza
 <jose.souza@intel.com>
In-Reply-To: <20201125190549.GC1992336@ideak-desk.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20201120195748.99265-1-jose.souza@intel.com>
 <20201125190549.GC1992336@ideak-desk.fi.intel.com>
Date: Thu, 26 Nov 2020 16:09:22 +0200
Message-ID: <87im9sky5p.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Warn about types of
 backlight not handled
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyNSBOb3YgMjAyMCwgSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPiB3cm90
ZToKPiBPbiBGcmksIE5vdiAyMCwgMjAyMCBhdCAxMTo1Nzo0OEFNIC0wODAwLCBKb3PDqSBSb2Jl
cnRvIGRlIFNvdXphIHdyb3RlOgo+PiBSaWdodCBub3cgd2UgYXJlIG9ubHkgZXhwbGljaXRseSBo
YW5kbGluZyB0aGUgYmFja2xpZ2h0IG9mIHR5cGVzCj4+IElOVEVMX0JBQ0tMSUdIVF9WRVNBX0VE
UF9BVVhfSU5URVJGQUNFLCBJTlRFTF9CQUNLTElHSFRfRFNJX0RDUyBhbmQKPj4gSU5URUxfQkFD
S0xJR0hUX0RJU1BMQVlfRERJIGFsbCBvdGhlcnMgYXJlIGJlaW5nIGhhbmRsZWQgYXMKPj4gSU5U
RUxfQkFDS0xJR0hUX0RJU1BMQVlfRERJKHNvdXRoIGRpc3BsYXkgZW5naW5lIFBXTSkgYnV0IHRo
YXQKPj4gbWlnaHQgbm90IGJlIHRoZSBpbnRlbmRlZCBIVyB1c2FnZSwgc28gbGV0cyB3YXJuIHRv
IGlkZW50aWZ5IHRob3NlCj4+IHN5c3RlbXMgYW5kIGltcGxlbWVudCBpdCBwcm9wZXJseSBpZiBu
ZWVkZWQuCj4+IAo+PiBDYzogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPgo+PiBTaWdu
ZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4K
Pj4gLS0tCj4+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3BhbmVsLmMgfCAx
NSArKysrKysrKysrKysrKysKPj4gIDEgZmlsZSBjaGFuZ2VkLCAxNSBpbnNlcnRpb25zKCspCj4+
IAo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wYW5l
bC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wYW5lbC5jCj4+IGluZGV4
IDlmMjNiYWMwZDc5Mi4uMzY4NzIyNTM2NDYyIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3BhbmVsLmMKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9wYW5lbC5jCj4+IEBAIC0yMDIzLDYgKzIwMjMsMjEgQEAgaW50ZWxf
cGFuZWxfaW5pdF9iYWNrbGlnaHRfZnVuY3Moc3RydWN0IGludGVsX3BhbmVsICpwYW5lbCkKPj4g
IAlzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3IgPQo+PiAgCQljb250YWluZXJfb2Yo
cGFuZWwsIHN0cnVjdCBpbnRlbF9jb25uZWN0b3IsIHBhbmVsKTsKPj4gIAlzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNvbm5lY3Rvci0+YmFzZS5kZXYpOwo+PiAr
CWVudW0gaW50ZWxfYmFja2xpZ2h0X3R5cGUgdHlwZSA9IGRldl9wcml2LT52YnQuYmFja2xpZ2h0
LnR5cGU7Cj4+ICsKPj4gKwlpZiAoZGV2X3ByaXYtPnBhcmFtcy5lbmFibGVfZHBjZF9iYWNrbGln
aHQpCj4+ICsJCXR5cGUgPSBJTlRFTF9CQUNLTElHSFRfVkVTQV9FRFBfQVVYX0lOVEVSRkFDRTsK
ClRoZSBkZWZhdWx0IGlzIC0xLCBzbyB0aGlzIG1pZ2h0IHNjcmV3IHVwIHRoZSBpbml0LgoKPj4g
Kwo+PiArCWRybV9kYmdfa21zKCZkZXZfcHJpdi0+ZHJtLAo+PiArCQkgICAgIkNvbm5lY3RvciAl
cyBiYWNrbGlnaHQgdHlwZSAldSBjb250cm9sbGVyICV1XG4iLAo+PiArCQkgICAgY29ubmVjdG9y
LT5iYXNlLm5hbWUsIHR5cGUsCj4+ICsJCSAgICBkZXZfcHJpdi0+dmJ0LmJhY2tsaWdodC5jb250
cm9sbGVyKTsKPj4gKwo+PiArCWlmICh0eXBlICE9IElOVEVMX0JBQ0tMSUdIVF9ESVNQTEFZX0RE
SSAmJgo+PiArCSAgICB0eXBlICE9IElOVEVMX0JBQ0tMSUdIVF9WRVNBX0VEUF9BVVhfSU5URVJG
QUNFICYmCj4+ICsJICAgIHR5cGUgIT0gSU5URUxfQkFDS0xJR0hUX0RTSV9EQ1MpCj4+ICsJCWRy
bV93YXJuKCZkZXZfcHJpdi0+ZHJtLCAiQmFja2xpZ2h0IHR5cGUgJWkgbm90IHByb3Blcmx5IGhh
bmRsZWRcbiIsCj4+ICsJCQkgdHlwZSk7Cj4KPiBOb3Qgc3VyZSBhYm91dCB0aGUgaGlzdG9yeS9j
dXJyZW50IHN0YXRlIG9mIFZCVCBlcnJvcnMgd3J0LiB0aGUKPiBiYWNrbGlnaHQgdHlwZSBhbmQg
c28gdGhpcyBtYXkgZ2VuZXJhdGUgYSBsb3Qgb2YgYnVnIHJlcG9ydHMgd2l0aG91dCBhbgo+IGFj
dHVhbCBwcm9ibGVtLiBBIGJhY2tsaWdodCBwcm9ibGVtIHdvdWxkIGJlIGFueXdheSB2aXNpYmxl
LCBzbwo+IHdlJ2QgZ2V0IGEgcmVwb3J0IGFuZCB0aGVuIHdlIGNvdWxkIGp1c3QgdXNlIHRoZSBw
cmV2aW91cyBkZWJ1ZyBwcmludAo+IHlvdSBhZGRlZC4gSXQgY291bGQgYmUgYWRkZWQgdG8gdGhl
IHJlbGV2YW50IGRlYnVnIHByaW50IGluIAo+IGludGVsX3BhbmVsX3NldHVwX2JhY2tsaWdodCgp
LgoKSSB0aGluayBJJ2Qgc2V0dGxlIGZvciBhIGRlYnVnIHByaW50IHRvby4KCkJSLApKYW5pLgoK
Pgo+ICtKYW5pLgo+Cj4+ICAKPj4gIAlpZiAoY29ubmVjdG9yLT5iYXNlLmNvbm5lY3Rvcl90eXBl
ID09IERSTV9NT0RFX0NPTk5FQ1RPUl9lRFAgJiYKPj4gIAkgICAgaW50ZWxfZHBfYXV4X2luaXRf
YmFja2xpZ2h0X2Z1bmNzKGNvbm5lY3RvcikgPT0gMCkKPj4gLS0gCj4+IDIuMjkuMgo+PiAKPiBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEludGVsLWdm
eCBtYWlsaW5nIGxpc3QKPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngKCi0tIApK
YW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBTb3VyY2UgR3JhcGhpY3MgQ2VudGVyCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
