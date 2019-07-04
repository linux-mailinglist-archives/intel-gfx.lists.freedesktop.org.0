Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 17E1F5FD22
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jul 2019 20:54:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D698A6E3AA;
	Thu,  4 Jul 2019 18:54:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F4136E3AA
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jul 2019 18:54:00 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Jul 2019 11:53:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,451,1557212400"; d="scan'208";a="191432696"
Received: from ideak-desk.fi.intel.com ([10.237.68.142])
 by fmsmga002.fm.intel.com with ESMTP; 04 Jul 2019 11:53:57 -0700
Date: Thu, 4 Jul 2019 21:53:48 +0300
From: Imre Deak <imre.deak@intel.com>
To: Michal Wajdeczko <michal.wajdeczko@intel.com>
Message-ID: <20190704185348.GA11592@ideak-desk.fi.intel.com>
References: <20190704000649.20661-1-lucas.demarchi@intel.com>
 <20190704000649.20661-3-lucas.demarchi@intel.com>
 <op.z4eyickyxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
 <20190704174312.GG25657@ideak-desk.fi.intel.com>
 <op.z4ez3vbpxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <op.z4ez3vbpxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915: fix include order in
 intel_tc.*
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBKdWwgMDQsIDIwMTkgYXQgMDc6NTY6MDlQTSArMDIwMCwgTWljaGFsIFdhamRlY3pr
byB3cm90ZToKPiBPbiBUaHUsIDA0IEp1bCAyMDE5IDE5OjQzOjEyICswMjAwLCBJbXJlIERlYWsg
PGltcmUuZGVha0BpbnRlbC5jb20+IHdyb3RlOgo+IAo+ID4gT24gVGh1LCBKdWwgMDQsIDIwMTkg
YXQgMDc6MjE6MzhQTSArMDIwMCwgTWljaGFsIFdhamRlY3prbyB3cm90ZToKPiA+ID4gT24gVGh1
LCAwNCBKdWwgMjAxOSAwMjowNjo0NyArMDIwMCwgTHVjYXMgRGUgTWFyY2hpCj4gPiA+IDxsdWNh
cy5kZW1hcmNoaUBpbnRlbC5jb20+IHdyb3RlOgo+ID4gPiAKPiA+ID4gPiBNYWtlIGludGVsX3Rj
LmggdGhlIGZpcnN0IGluY2x1ZGUgc28gd2UgZ3VhcmFudGVlIGl0J3Mgc2VsZi1jb250YWluZWQu
Cj4gPiA+ID4gU29ydCB0aGUgcmVzdC4gU2FtZSBwcmluY2lwbGUgYXBwbGllcyBmb3IgaW5jbHVk
ZXMgaW4gdGhlIGhlYWRlci4KPiA+ID4gPgo+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IEx1Y2FzIERl
IE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgo+ID4gPiA+IC0tLQo+ID4gPiA+ICBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMgfCA1ICsrKy0tCj4gPiA+ID4g
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuaCB8IDUgKysrLS0KPiA+ID4g
PiAgMiBmaWxlcyBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCj4gPiA+
ID4KPiA+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF90Yy5jCj4gPiA+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMK
PiA+ID4gPiBpbmRleCAxYTlkZDMyZmIwYTUuLmU2ZTYxNjNjMTIzMiAxMDA2NDQKPiA+ID4gPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMKPiA+ID4gPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMKPiA+ID4gPiBAQCAtMywx
MCArMywxMSBAQAo+ID4gPiA+ICAgKiBDb3B5cmlnaHQgwqkgMjAxOSBJbnRlbCBDb3Jwb3JhdGlv
bgo+ID4gPiA+ICAgKi8KPiA+ID4gPiArI2luY2x1ZGUgImludGVsX3RjLmgiCj4gPiA+ID4gKwo+
ID4gPiA+ICsjaW5jbHVkZSAiaTkxNV9kcnYuaCIKPiA+ID4gCj4gPiA+IHRoaXMgbWFzdGVyIGhl
YWRlciB3aWxsIGxpa2VseSBpbmNsdWRlIGV2ZXJ5dGhpbmcsIHNvIHdoaWxlCj4gPiA+IHlvdXIg
LmggaXMgbm93IHNlbGYtY29udGFpbmVkLCAuYyByZW1haW5zIHVuY2xlYW4KPiA+ID4gCj4gPiA+
ID4gICNpbmNsdWRlICJpbnRlbF9kaXNwbGF5LmgiCj4gPiA+ID4gICNpbmNsdWRlICJpbnRlbF9k
cF9tc3QuaCIKPiA+ID4gPiAtI2luY2x1ZGUgImk5MTVfZHJ2LmgiCj4gPiA+ID4gLSNpbmNsdWRl
ICJpbnRlbF90Yy5oIgo+ID4gPiA+IHN0YXRpYyBjb25zdCBjaGFyICp0Y19wb3J0X21vZGVfbmFt
ZShlbnVtIHRjX3BvcnRfbW9kZSBtb2RlKQo+ID4gPiA+ICB7Cj4gPiA+ID4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuaAo+ID4gPiA+IGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5oCj4gPiA+ID4gaW5kZXggMGQ4NDExZDRh
OTFkLi40NWFlMzA1MzdiNzggMTAwNjQ0Cj4gPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF90Yy5oCj4gPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF90Yy5oCj4gPiA+ID4gQEAgLTYsMTAgKzYsMTEgQEAKPiA+ID4gPiAgI2lm
bmRlZiBfX0lOVEVMX1RDX0hfXwo+ID4gPiA+ICAjZGVmaW5lIF9fSU5URUxfVENfSF9fCj4gPiA+
ID4gLSNpbmNsdWRlIDxsaW51eC90eXBlcy5oPgo+ID4gPiA+IC0jaW5jbHVkZSA8bGludXgvbXV0
ZXguaD4KPiA+ID4gPiAgI2luY2x1ZGUgImludGVsX2Rydi5oIgo+ID4gPiAKPiA+ID4gYXJlIHlv
dSBzdXJlIHlvdSB3YW50IHRoaXMgZ2lhbnQgaGVhZGVyIHRvIGJlIGluY2x1ZGVkIGhlcmU/Cj4g
PiA+IG5vdGUgdGhhdCBpdCB3aWxsICNpbmNsdWRlIGFsbW9zdCBldmVyeXRoaW5nIChpOTE1X2Ry
di5oIHRvbykKPiA+ID4gYW5kIG1heSBpbnRyb2R1Y2UgaGFyZCB0byByZXNvbHZlIGNpcmN1bGFy
IGRlcGVuZGVuY2llcwo+ID4gPiAKPiA+ID4gPiArI2luY2x1ZGUgPGxpbnV4L211dGV4Lmg+Cj4g
PiA+IAo+ID4gPiB3ZSBkb24ndCBuZWVkIG11dGV4IGRlZmluaXRpb25zIGhlcmUgaW4gY3VycmVu
dCBoZWFkZXIgZmlsZQo+ID4gPiAKPiA+ID4gPiArI2luY2x1ZGUgPGxpbnV4L3R5cGVzLmg+Cj4g
PiA+ID4gKwo+ID4gPiAKPiA+ID4gc28geW91IG5lZWQgb25seSBhYm92ZSB0eXBlcy5oIGFuZCB0
aGVuIGFkZCBmb3J3YXJkIGRlY2wgZm9yOgo+ID4gPiAKPiA+ID4gc3RydWN0IGludGVsX2RpZ2l0
YWxfcG9ydDsKPiA+IAo+ID4gQm90aCB0aGUgbXV0ZXggYW5kIGludGVsX2RpZ2l0YWxfcG9ydCBk
ZWZpbml0aW9ucyBhcmUgbmVlZGVkIGJ5Cj4gPiBpbnRlbF90Y19wb3J0X3JlZl9oZWxkKCkgaW4g
dGhpcyBoZWFkZXIuCj4gCj4gb29wcywgc29ycnksIGRpZG4ndCBzY3JvbGwgZG93biB0byBzZWUg
aW50ZWxfdGNfcG9ydF9yZWZfaGVsZCgpIGlubGluZS4KPiAKPiBidXQgd2FpdCwgaXQgaXMgdXNl
ZCBvbmx5IG9uY2UgaW4gaW50ZWxfZGlzcGxheV9wb3dlci5jIHNvCj4gbWF5YmUgdGhpcyBpbmxp
bmUgY2FuIGJlIG1vdmVkIHRvIG9uZSBvZiB0aGUgLmMgZmlsZSA/CgpJbW8gYSBzaW1wbGUgZnVu
Y3Rpb24gaXMgb2sgYXMgaW5saW5lIGFuZCBpdCBzaG91bGQgYmUgZGVmaW5lZCB3aXRoIHRoZQpy
ZXN0IG9mIFR5cGVDIGZ1bmN0aW9ucy4KCj4gYWxzbywgbWF5YmUgaXQncyB0aW1lIHRvIG1vdmUg
c3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCBkZWZpbml0aW9uCj4gb3V0IG9mIGludGVsX2Rydi5o
ID8KCk5vdCBzdXJlIHdoYXQgd291bGQgYmUgYSBnb29kIGRpdmlzaW9uLCBpdCdzIHVzZWQgYnkg
YSBmZXcKcGxhdGZvcm1zL291dHB1dCB0eXBlcy4gQnV0IHllYSwgc291bmRzIGxpa2UgYSBnb29k
IGlkZWEgYXMgYSBmb2xsb3ctdXAuCgo+Cj4gPiA+IAo+ID4gPiA+ICBib29sIGludGVsX3RjX3Bv
cnRfY29ubmVjdGVkKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0KTsKPiA+ID4g
PiAgdTMyIGludGVsX3RjX3BvcnRfZ2V0X2xhbmVfbWFzayhzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9w
b3J0ICpkaWdfcG9ydCk7Cj4gPiA+ID4gIGludCBpbnRlbF90Y19wb3J0X2ZpYV9tYXhfbGFuZV9j
b3VudChzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0Cj4gPiA+ID4gKmRpZ19wb3J0KTsKPiA+ID4g
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiA+ID4gSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+ID4gPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cj4gPiA+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
