Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B22B41541CE
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Feb 2020 11:24:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA17C6FA2A;
	Thu,  6 Feb 2020 10:24:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7C3C6FA2A
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Feb 2020 10:24:24 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Feb 2020 02:24:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,409,1574150400"; d="scan'208";a="264554042"
Received: from unknown (HELO intel.com) ([10.223.74.178])
 by fmsmga002.fm.intel.com with ESMTP; 06 Feb 2020 02:24:21 -0800
Date: Thu, 6 Feb 2020 15:45:38 +0530
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Message-ID: <20200206101537.GK24118@intel.com>
References: <20200204112927.17391-1-anshuman.gupta@intel.com>
 <20200204112927.17391-5-anshuman.gupta@intel.com>
 <20200204143016.GN13686@intel.com>
 <20200204164432.GB13686@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200204164432.GB13686@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 4/7] drm/i915: Fix wrongly populated plane
 possible_crtcs bit mask
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

T24gMjAyMC0wMi0wNCBhdCAxODo0NDozMiArMDIwMCwgVmlsbGUgU3lyasOkbMOkIHdyb3RlOgo+
IE9uIFR1ZSwgRmViIDA0LCAyMDIwIGF0IDA0OjMwOjE2UE0gKzAyMDAsIFZpbGxlIFN5cmrDpGzD
pCB3cm90ZToKPiA+IE9uIFR1ZSwgRmViIDA0LCAyMDIwIGF0IDA0OjU5OjI0UE0gKzA1MzAsIEFu
c2h1bWFuIEd1cHRhIHdyb3RlOgo+ID4gPiBBcyBhIGRpc2FibGVkIHBpcGUgaW4gcGlwZV9tYXNr
IGlzIG5vdCBoYXZpbmcgYSB2YWxpZCBpbnRlbCBjcnRjLAo+ID4gPiBkcml2ZXIgd3JvbmdseSBw
b3B1bGF0ZXMgdGhlIHBvc3NpYmxlX2NydGNzIG1hc2sgd2hpbGUgaW5pdGlhbGl6aW5nCj4gPiA+
IHRoZSBwbGFuZSBmb3IgYSBDUlRDLiBGaXhpbmcgdXAgdGhlIHBsYW5lIHBvc3NpYmxlX2NydGMg
bWFzay4KPiA+ID4gCj4gPiA+IGNoYW5nZXMgc2luY2UgUkZDOgo+ID4gPiAtIFNpbXBsaWZ5IHRo
ZSBwb3NzaWJsZV9jcnRjcyBpbml0aWFsaXphdGlvbi4gW1ZpbGxlXQo+ID4gPiAKPiA+ID4gQ2M6
IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gPiA+IFNp
Z25lZC1vZmYtYnk6IEFuc2h1bWFuIEd1cHRhIDxhbnNodW1hbi5ndXB0YUBpbnRlbC5jb20+Cj4g
PiA+IC0tLQo+ID4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmMgfCAxMiArKysrKysrKysrKysKPiA+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfc3ByaXRlLmMgIHwgIDIgLS0KPiA+ID4gIDIgZmlsZXMgY2hhbmdlZCwgMTIgaW5zZXJ0
aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiA+ID4gCj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gPiA+IGluZGV4IGNmMzZjM2QwZjhmYy4uN2M1
MWViM2ZhZWIzIDEwMDY0NAo+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXkuYwo+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXkuYwo+ID4gPiBAQCAtMTY0MDcsNiArMTY0MDcsMTcgQEAgc3RhdGljIHZv
aWQgaW50ZWxfY3J0Y19mcmVlKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKQo+ID4gPiAgCWtmcmVl
KGNydGMpOwo+ID4gPiAgfQo+ID4gPiAgCj4gPiA+ICtzdGF0aWMgdm9pZCBpbnRlbF9wbGFuZV9w
b3NzaWJsZV9jcnRjX2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQo+ID4g
PiArewo+ID4gPiArCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjOwo+ID4gCj4gPiBNb3ZlIHRoaXMg
ZGVjbGFyYXRpb24gaW50byB0aGUgbG9vcCBib2R5Lgo+ID4gCj4gPiBXaXRoIHRoYXQKPiA+IFJl
dmlld2VkLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29t
PgpUaGFua3MgVmlsbGUgZm9yIHJldmlldywgSSB3aWxsIG1vdmUgaXQgdG8gbG9vcCBib2R5LgpU
aGFua3MsCkFuc2h1bWFuCj4gPiAKPiA+ID4gKwlzdHJ1Y3QgaW50ZWxfcGxhbmUgKnBsYW5lOwo+
ID4gPiArCj4gPiA+ICsJZm9yX2VhY2hfaW50ZWxfcGxhbmUoJmRldl9wcml2LT5kcm0sIHBsYW5l
KSB7Cj4gPiA+ICsJCWNydGMgPSBpbnRlbF9nZXRfY3J0Y19mb3JfcGlwZShkZXZfcHJpdiwgcGxh
bmUtPnBpcGUpOwo+ID4gPiArCQlwbGFuZS0+YmFzZS5wb3NzaWJsZV9jcnRjcyA9IGRybV9jcnRj
X21hc2soJmNydGMtPmJhc2UpOwo+ID4gPiArCX0KPiA+ID4gK30KPiA+ID4gKwo+ID4gPiAgc3Rh
dGljIGludCBpbnRlbF9jcnRjX2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
LCBlbnVtIHBpcGUgcGlwZSkKPiA+ID4gIHsKPiA+ID4gIAlzdHJ1Y3QgaW50ZWxfcGxhbmUgKnBy
aW1hcnksICpjdXJzb3I7Cj4gPiA+IEBAIC0xNzU0Niw2ICsxNzU1Nyw3IEBAIGludCBpbnRlbF9t
b2Rlc2V0X2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCj4gPiA+ICAJCX0KPiA+
ID4gIAl9Cj4gPiA+ICAKPiA+ID4gKwlpbnRlbF9wbGFuZV9wb3NzaWJsZV9jcnRjX2luaXQoaTkx
NSk7Cj4gPiA+ICAJaW50ZWxfc2hhcmVkX2RwbGxfaW5pdChkZXYpOwo+ID4gPiAgCWludGVsX3Vw
ZGF0ZV9mZGlfcGxsX2ZyZXEoaTkxNSk7Cj4gPiA+ICAKPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5jCj4gPiA+IGluZGV4IGZjYTc3ZWMxZTBkZC4uNGE1
YjE5MjY3OGJmIDEwMDY0NAo+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Nwcml0ZS5jCj4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfc3ByaXRlLmMKPiA+ID4gQEAgLTMwMjMsOCArMzAyMyw2IEBAIHNrbF91bml2ZXJzYWxf
cGxhbmVfY3JlYXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKPiA+ID4gIAll
bHNlCj4gPiA+ICAJCXBsYW5lX3R5cGUgPSBEUk1fUExBTkVfVFlQRV9PVkVSTEFZOwo+ID4gPiAg
Cj4gPiA+IC0JcG9zc2libGVfY3J0Y3MgPSBCSVQocGlwZSk7Cj4gPiA+IC0KPiAKPiBBY3R1YWxs
eSB0aGF0IG5vdyBjb250YWlucyBzdGFjayBnYXJiYWdlLiBQbHMgcmVtb3ZlIHRoZSB2YXJpYWJs
ZQo+IGVudGlyZSBhbmQganVzdCBwYXNzIHplcm8gdG8gdGhlIHRoaW5nLgo+IAo+ID4gPiAgCXJl
dCA9IGRybV91bml2ZXJzYWxfcGxhbmVfaW5pdCgmZGV2X3ByaXYtPmRybSwgJnBsYW5lLT5iYXNl
LAo+ID4gPiAgCQkJCSAgICAgICBwb3NzaWJsZV9jcnRjcywgcGxhbmVfZnVuY3MsCj4gPiA+ICAJ
CQkJICAgICAgIGZvcm1hdHMsIG51bV9mb3JtYXRzLCBtb2RpZmllcnMsCj4gPiA+IC0tIAo+ID4g
PiAyLjI0LjAKPiA+IAo+ID4gLS0gCj4gPiBWaWxsZSBTeXJqw6Rsw6QKPiA+IEludGVsCj4gCj4g
LS0gCj4gVmlsbGUgU3lyasOkbMOkCj4gSW50ZWwKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4Cg==
