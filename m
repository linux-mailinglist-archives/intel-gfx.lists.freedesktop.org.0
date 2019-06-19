Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 552E14B510
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2019 11:39:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3E8D6E33F;
	Wed, 19 Jun 2019 09:39:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC6E36E31C
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2019 09:39:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Jun 2019 02:39:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,392,1557212400"; d="scan'208";a="181599969"
Received: from mcostacx-wtg.ger.corp.intel.com (HELO localhost)
 ([10.249.47.136])
 by fmsmga001.fm.intel.com with ESMTP; 19 Jun 2019 02:39:17 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Lee Shawn C <shawn.c.lee@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <1560933806-5184-1-git-send-email-shawn.c.lee@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <1560913807-10464-1-git-send-email-shawn.c.lee@intel.com>
 <1560933806-5184-1-git-send-email-shawn.c.lee@intel.com>
Date: Wed, 19 Jun 2019 12:40:37 +0300
Message-ID: <874l4lnca2.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Check backlight type while
 doing eDP backlight initializaiton
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
Cc: Cooper Chiou <cooper.chiou@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAxOSBKdW4gMjAxOSwgTGVlIFNoYXduIEMgPHNoYXduLmMubGVlQGludGVsLmNvbT4g
d3JvdGU6Cj4gSWYgTEZQIGJhY2tsaWdodCB0eXBlIHNldHRpbmcgZnJvbSBWQlQgd2FzICJWRVNB
IGVEUCBBVVggSW50ZXJmYWNlIi4KPiBEcml2ZXIgc2hvdWxkIGNoZWNrIHBhbmVsIGNhcGFiaWxp
dHkgYW5kIHRyeSB0byBpbml0aWFsaXplIGF1eCBiYWNrbGlnaHQuCj4gTm8gbWF0dGVyIGk5MTVf
bW9kcGFyYW1zLmVuYWJsZV9kcGNkX2JhY2tsaWdodCB3YXMgZW5hYmxlZCBvciBub3QuCj4KPiB2
MjogYWNjZXNzIGRldl9wcml2LT52YnQuYmFja2xpZ2h0LnR5cGUgZGlyZWN0bHkgYW5kIHJlbW92
ZSB1bnVzZWQgZnVuY3Rpb24uCj4KPiBDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxh
QGxpbnV4LmludGVsLmNvbT4KPiBDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNv
bT4KPiBDYzogSm9zZSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KPiBD
YzogQ29vcGVyIENoaW91IDxjb29wZXIuY2hpb3VAaW50ZWwuY29tPgo+Cj4gU2lnbmVkLW9mZi1i
eTogTGVlIFNoYXduIEMgPHNoYXduLmMubGVlQGludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmggICAgICAgICAgICAgfCAxICsKPiAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9hdXhfYmFja2xpZ2h0LmMgfCA0ICsr
Ky0KPiAgMiBmaWxlcyBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPgo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuaCBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5oCj4gaW5kZXggNGU0MmNm
YWY2MWE3Li4wYjdiZTYzODlhMDcgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9iaW9zLmgKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Jpb3MuaAo+IEBAIC00Miw2ICs0Miw3IEBAIGVudW0gaW50ZWxfYmFja2xpZ2h0X3R5
cGUgewo+ICAJSU5URUxfQkFDS0xJR0hUX0RJU1BMQVlfRERJLAo+ICAJSU5URUxfQkFDS0xJR0hU
X0RTSV9EQ1MsCj4gIAlJTlRFTF9CQUNLTElHSFRfUEFORUxfRFJJVkVSX0lOVEVSRkFDRSwKPiAr
CUlOVEVMX0JBQ0tMSUdIVF9WRVNBX0VEUF9BVVhfSU5URVJGQUNFLAo+ICB9Owo+ICAKPiAgc3Ry
dWN0IGVkcF9wb3dlcl9zZXEgewo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RwX2F1eF9iYWNrbGlnaHQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHBfYXV4X2JhY2tsaWdodC5jCj4gaW5kZXggN2RlZDk1YTMzNGRiLi5kYjdj
N2I5ZjliNTYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kcF9hdXhfYmFja2xpZ2h0LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RwX2F1eF9iYWNrbGlnaHQuYwo+IEBAIC0yNjQsOCArMjY0LDEwIEBAIGludGVsX2Rw
X2F1eF9kaXNwbGF5X2NvbnRyb2xfY2FwYWJsZShzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICpjb25u
ZWN0b3IpCj4gIGludCBpbnRlbF9kcF9hdXhfaW5pdF9iYWNrbGlnaHRfZnVuY3Moc3RydWN0IGlu
dGVsX2Nvbm5lY3RvciAqaW50ZWxfY29ubmVjdG9yKQo+ICB7Cj4gIAlzdHJ1Y3QgaW50ZWxfcGFu
ZWwgKnBhbmVsID0gJmludGVsX2Nvbm5lY3Rvci0+cGFuZWw7Cj4gKwlzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGludGVsX2Nvbm5lY3Rvci0+YmFzZS5kZXYpOwo+
ICAKPiAtCWlmICghaTkxNV9tb2RwYXJhbXMuZW5hYmxlX2RwY2RfYmFja2xpZ2h0KQo+ICsJaWYg
KCFpOTE1X21vZHBhcmFtcy5lbmFibGVfZHBjZF9iYWNrbGlnaHQgJiYKPiArCSAgICAoZGV2X3By
aXYtPnZidC5iYWNrbGlnaHQudHlwZSAhPSBJTlRFTF9CQUNLTElHSFRfVkVTQV9FRFBfQVVYX0lO
VEVSRkFDRSkpCj4gIAkJcmV0dXJuIC1FTk9ERVY7CgpUaGVyZSB3YXMgYWxzbyB0aGlzIHBhcnQg
aW4gdGhlIHYxIHJldmlldzoKCiAgICBUaGUgdXN1YWwgdGhpbmcgdG8gZG8gaXMgdG8gc2V0IGk5
MTUuZW5hYmxlX2RwY2RfYmFja2xpZ2h0IGluaXRpYWwgdmFsdWUKICAgIHRvIC0xIChpLmUuIG1h
a2UgaXQgYW4gaW50KSwgYW5kIHdpdGggdGhhdCBkZWZhdWx0IHZhbHVlIHJlc3BlY3QKICAgIFZC
VC4gT3RoZXJ3aXNlLCByZXNwZWN0IHRoZSB2YWx1ZSBvZiBlbmFibGVfZHBjZF9iYWNrbGlnaHQu
CgoKQlIsCkphbmkuCgoKCj4gIAo+ICAJaWYgKCFpbnRlbF9kcF9hdXhfZGlzcGxheV9jb250cm9s
X2NhcGFibGUoaW50ZWxfY29ubmVjdG9yKSkKCi0tIApKYW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBT
b3VyY2UgR3JhcGhpY3MgQ2VudGVyCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
