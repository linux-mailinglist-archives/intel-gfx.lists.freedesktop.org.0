Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BC47178D29
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Mar 2020 10:11:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59A276EAF0;
	Wed,  4 Mar 2020 09:11:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 811AB6EAF0
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Mar 2020 09:11:06 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Mar 2020 01:11:05 -0800
X-IronPort-AV: E=Sophos;i="5.70,513,1574150400"; d="scan'208";a="233964168"
Received: from ohoehne-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.249.39.231])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Mar 2020 01:11:04 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Lucas De Marchi <lucas.de.marchi@gmail.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
In-Reply-To: <CAKi4VAJMuOwx6JEA0d6=izs4piSHqnH0Zkt_VojxM0xCVeCW+A@mail.gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200218230822.66801-1-jose.souza@intel.com>
 <CAKi4VAL-f=p18JtZQjgc9J+KsSGFZ5VQXB3Cb1AYXMC9G-1-qA@mail.gmail.com>
 <20200303203935.GF645250@intel.com>
 <CAKi4VAJMuOwx6JEA0d6=izs4piSHqnH0Zkt_VojxM0xCVeCW+A@mail.gmail.com>
Date: Wed, 04 Mar 2020 11:11:04 +0200
Message-ID: <87mu8wpjrr.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl: Remove require_force_probe
 protection
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
Cc: Intel Graphics <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAwMyBNYXIgMjAyMCwgTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZS5tYXJjaGlAZ21h
aWwuY29tPiB3cm90ZToKPiBPbiBUdWUsIE1hciAzLCAyMDIwIGF0IDEyOjM4IFBNIFJvZHJpZ28g
Vml2aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4gd3JvdGU6Cj4+Cj4+IE9uIFR1ZSwgTWFyIDAz
LCAyMDIwIGF0IDEyOjI2OjM0UE0gLTA4MDAsIEx1Y2FzIERlIE1hcmNoaSB3cm90ZToKPj4gPiBP
biBUdWUsIEZlYiAxOCwgMjAyMCBhdCAzOjA3IFBNIEpvc8OpIFJvYmVydG8gZGUgU291emEKPj4g
PiA8am9zZS5zb3V6YUBpbnRlbC5jb20+IHdyb3RlOgo+PiA+ID4KPj4gPiA+IFdlIGhhdmUgYSBm
ZXcgVEdMIG1hY2hpbmVzIGluIG91ciBDSSBhbmQgaXQgaXMgbW9zdGx5IGdyZWVuIHdpdGgKPj4g
PiA+IGZhaWx1cmVzIGluIHRlc3RzIHRoYXQgd2lsbCBub3QgaW1wYWN0IGZ1dHVyZSBMaW51eCBp
bnN0YWxsYXRpb25zLgo+PiA+ID4gQWxzbyB0aGVyZSBpcyBubyB3YXJuaW5ncywgZXJyb3JzLCBm
bGlja2VyaW5nIG9yIGFueSB2aXN1YWwgZGVmZWN0cwo+PiA+ID4gd2hpbGUgZG9pbmcgb3JkaW5h
cnkgdGFza3MgbGlrZSBicm93c2luZyBhbmQgZWRpdGluZyBkb2N1bWVudHMgaW4gYQo+PiA+ID4g
ZHVhbCBtb25pdG9yIHNldHVwLgo+PiA+ID4KPj4gPiA+IEFzIGEgcmVtaW5kZXIgaTkxNS5yZXF1
aXJlX2ZvcmNlX3Byb2JlIHdhcyBjcmVhdGVkIHRvIHByb3RlY3QKPj4gPiA+IGZ1dHVyZSBMaW51
eCBpbnN0YWxsYXRpb24ncyBpc28gaW1hZ2VzIHRoYXQgbWlnaHQgY29udGFpbiBhCj4+ID4gPiBr
ZXJuZWwgZnJvbSB0aGUgZW5hYmxpbmcgdGltZSBvZiB0aGUgbmV3IHBsYXRmb3JtLiBXaXRob3V0
IHRoaXMKPj4gPiA+IHByb3RlY3Rpb24gbW9zdCBvZiBsaW51eCBpbnN0YWxsYXRpb24gd2FzIHJl
Y29tbWVuZGluZwo+PiA+ID4gbm9tb2Rlc2V0IG9wdGlvbiBkdXJpbmcgaW5zdGFsbGF0aW9uIHRo
YXQgd2FzIGdldHRpbmcgc3RpY2sKPj4gPiA+IHRoZXJlIGFmdGVyIGluc3RhbGxhdGlvbi4KPj4g
PiA+Cj4+ID4gPiBSZWZlcmVuY2U6IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvZmktdGdsLXUuaHRtbAo+PiA+ID4gUmVmZXJlbmNlOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL3NoYXJkLXRnbGIuaHRtbAo+PiA+ID4gQ2M6IEphbWVzIEF1
c211cyA8amFtZXMuYXVzbXVzQGludGVsLmNvbT4KPj4gPiA+IENjOiBKYW5pIFNhYXJpbmVuIDxq
YW5pLnNhYXJpbmVuQGludGVsLmNvbT4KPj4gPiA+IENjOiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28u
dml2aUBpbnRlbC5jb20+Cj4+ID4gPiBDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVs
LmNvbT4KPj4gPiA+IENjOiBKb29uYXMgTGFodGluZW4gPGpvb25hcy5sYWh0aW5lbkBsaW51eC5p
bnRlbC5jb20+Cj4+ID4gPiBTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxq
b3NlLnNvdXphQGludGVsLmNvbT4KPj4gPgo+PiA+IFJldmlld2VkLWJ5OiBMdWNhcyBEZSBNYXJj
aGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KPj4gPgo+PiA+IEFsc28sIEkgdGhpbmsgaXQg
d291bGQgYmUgZ29vZCB0byBoYXZlIHRoaXMgaW4gNS42IHJhdGhlciB0aGFuIDUuNy4KPj4gPiBZ
ZXMsIGl0J3MgbGF0ZSBpbiB0aGUgbWVyZ2Ugd2luZG93LCBidXQgaXQgZmFsbHMgaW4gdGhlIGNh
c2Ugb2YgIk5ldwo+PiA+IGRldmljZSBJRHMgYW5kIHF1aXJrcyBhcmUgYWxzbyBhY2NlcHRlZC4i
IG9mIHRoZSBzdGFibGUga2VybmVsIHJ1bGVzLAo+PiA+IHNvIGNvdWxkIGFzIHdlbGwganVzdCBn
byBkaXJlY3RseSB0byB0aGlzIGtlcm5lbC4gUm9kcmlnbywgaXMgaXQKPj4gPiBwb3NzaWJsZT8K
Pj4KPj4gSmFuaSBpcyBvbiBjaGFyZ2Ugb2YgdGhlIDUuNiBzbyBJIHdpbGwgZGVmZXIgdGhpcyBk
ZWNpc2lvbiB0byBoaW0uCj4+Cj4+IEJ1dCBpbiBnZW5lcmFsIHdlIGFsd2F5cyByZWZ1c2VkIHRv
IGRvIHRoaXMgYmVjYXVzZSB0aGlzIGlzIGEgZW5hYmxpbmcKPj4ga2luZCBvZiB0aGluZyBhbmQg
bm90IGEgZml4IHBlciBzYXkuIE9rYXksIHlvdSBtaWdodCBhcmd1ZSB0aGF0IGl0IGlzCj4+IGEg
ZGV2aWNlIElEIGFuZCB0aGF0IHdvdWxkIGJlIGFjY2VwdGVkIG9uIHN0YWJsZSBzbyB3aHkgbm90
IGFsc28gb24KPj4gZml4ZXMgY3ljbGUsIGJ1dCBteSBmZWFyIGlzIHRoYXQgd2UgaGF2ZW4ndCBw
cm9wZXJseSB2YWxpZGF0ZWQgdGhhdAo+PiBvbiA1LjYgd2l0aG91dCB0aGUgbWFueSBjaGFuZ2Vz
LCBmaXhlcyBhbmQgd29ya2Fyb3VuZHMgdGhhdCBhcmUKPj4gb25seSBnb2luZyB0b3dhcmRzIDUu
NyBhbmQgbm90IDUuNi4KPgo+IG9oLi4gbmV2ZXIgbWluZCwgY2hlY2tpbmcgbm93IHRoZSBsb2cg
YW5kIHdlIGRpZCBoYXZlIHNldmVyYWwgZml4ZXMgZ29pbmcKPiB0byA1LjcgYW5kIG5vdCA1LjYu
Cj4KPiBTbywgbGV0J3MgbWVyZ2UgdGhpcyBpbiBkaW5xIG9ubHkuCgpBZ3JlZWQuCgpCUiwKSmFu
aS4KCgo+Cj4gVGhhbmtzCj4gTHVjYXMgRGUgTWFyY2hpCj4KPj4KPj4gPgo+PiA+IHRoYW5rcwo+
PiA+IEx1Y2FzIERlIE1hcmNoaQo+PiA+Cj4+ID4gPiAtLS0KPj4gPiA+ICBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3BjaS5jIHwgMSAtCj4+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDEgZGVsZXRp
b24oLSkKPj4gPiA+Cj4+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9wY2kuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMKPj4gPiA+IGluZGV4IDI0
YjFmMGNlODc0My4uMjE0NmI5YTg2NWJhIDEwMDY0NAo+PiA+ID4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9wY2kuYwo+PiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9wY2kuYwo+PiA+ID4gQEAgLTgyMiw3ICs4MjIsNiBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGlu
dGVsX2RldmljZV9pbmZvIHRnbF9pbmZvID0gewo+PiA+ID4gICAgICAgICBHRU4xMl9GRUFUVVJF
UywKPj4gPiA+ICAgICAgICAgUExBVEZPUk0oSU5URUxfVElHRVJMQUtFKSwKPj4gPiA+ICAgICAg
ICAgLnBpcGVfbWFzayA9IEJJVChQSVBFX0EpIHwgQklUKFBJUEVfQikgfCBCSVQoUElQRV9DKSB8
IEJJVChQSVBFX0QpLAo+PiA+ID4gLSAgICAgICAucmVxdWlyZV9mb3JjZV9wcm9iZSA9IDEsCj4+
ID4gPiAgICAgICAgIC5kaXNwbGF5Lmhhc19tb2R1bGFyX2ZpYSA9IDEsCj4+ID4gPiAgICAgICAg
IC5lbmdpbmVfbWFzayA9Cj4+ID4gPiAgICAgICAgICAgICAgICAgQklUKFJDUzApIHwgQklUKEJD
UzApIHwgQklUKFZFQ1MwKSB8IEJJVChWQ1MwKSB8IEJJVChWQ1MyKSwKPj4gPiA+IC0tCj4+ID4g
PiAyLjI1LjEKPj4gPiA+Cj4+ID4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwo+PiA+ID4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+PiA+ID4gSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+PiA+ID4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngKPj4gPgo+PiA+Cj4+ID4KPj4gPiAtLQo+
PiA+IEx1Y2FzIERlIE1hcmNoaQoKLS0gCkphbmkgTmlrdWxhLCBJbnRlbCBPcGVuIFNvdXJjZSBH
cmFwaGljcyBDZW50ZXIKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4Cg==
