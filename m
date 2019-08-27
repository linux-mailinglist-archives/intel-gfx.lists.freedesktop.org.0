Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 830979F04D
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Aug 2019 18:36:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2204898E1;
	Tue, 27 Aug 2019 16:36:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 70807898E1
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Aug 2019 16:36:54 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Aug 2019 09:36:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,437,1559545200"; d="scan'208";a="355823718"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1)
 ([10.24.10.106])
 by orsmga005.jf.intel.com with ESMTP; 27 Aug 2019 09:36:53 -0700
Date: Tue, 27 Aug 2019 09:36:51 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: "Runyan, Arthur J" <arthur.j.runyan@intel.com>
Message-ID: <20190827163651.oq46ok6mfgn5dvtx@ldmartin-desk1>
References: <20190823082055.5992-1-lucas.demarchi@intel.com>
 <20190823082055.5992-5-lucas.demarchi@intel.com>
 <20190826134158.GA27192@ideak-desk.fi.intel.com>
 <C7E999358BBE9E45938BA940F5F51108D30BD7BF@fmsmsx116.amr.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <C7E999358BBE9E45938BA940F5F51108D30BD7BF@fmsmsx116.amr.corp.intel.com>
User-Agent: NeoMutt/20180716
Subject: Re: [Intel-gfx] [PATCH v3 04/23] drm/i915/bdw+: Enable PSR in any
 eDP port
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Pandiyan, Dhinakaran" <dhinakaran.pandiyan@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCBBdWcgMjYsIDIwMTkgYXQgMTA6NDM6MzZBTSAtMDcwMCwgUnVueWFuLCBBcnRodXIg
SiB3cm90ZToKPj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPj4gRnJvbTogSW1yZSBEZWFr
IDxpbXJlLmRlYWtAaW50ZWwuY29tPgo+PiBTZW50OiBNb25kYXksIDI2IEF1Z3VzdCwgMjAxOSA2
OjQyIEFNCj4+IFRvOiBTb3V6YSwgSm9zZSA8am9zZS5zb3V6YUBpbnRlbC5jb20+OyBEZSBNYXJj
aGksIEx1Y2FzCj4+IDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+OyBSdW55YW4sIEFydGh1ciBK
IDxhcnRodXIuai5ydW55YW5AaW50ZWwuY29tPgo+PiBDYzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZzsgUGFuZGl5YW4sIERoaW5ha2FyYW4KPj4gPGRoaW5ha2FyYW4ucGFuZGl5YW5A
aW50ZWwuY29tPgo+PiBTdWJqZWN0OiBSZTogW0ludGVsLWdmeF0gW1BBVENIIHYzIDA0LzIzXSBk
cm0vaTkxNS9iZHcrOiBFbmFibGUgUFNSIGluIGFueQo+PiBlRFAgcG9ydAo+Pgo+PiBPbiBGcmks
IEF1ZyAyMywgMjAxOSBhdCAwMToyMDozNkFNIC0wNzAwLCBMdWNhcyBEZSBNYXJjaGkgd3JvdGU6
Cj4+ID4gRnJvbTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+
Cj4+ID4KPj4gPiBGcm9tIEJEVysgdGhlIFBTUiByZWdpc3RlcnMgbW92ZWQgZnJvbSBERElBIHRv
IHRyYW5zY29kZXIsIHNvIGFueSBwb3J0Cj4+ID4gd2l0aCBhIGVEUCBwYW5lbCBjb25uZWN0ZWQg
Y2FuIGhhdmUgUFNSLCBzbyBsZXRzIHJlbW92ZSB0aGlzCj4+ID4gbGltaXRhdGlvbi4KPj4gPgo+
PiA+IENjOiBEaGluYWthcmFuIFBhbmRpeWFuIDxkaGluYWthcmFuLnBhbmRpeWFuQGludGVsLmNv
bT4KPj4gPiBDYzogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPgo+PiA+IFNp
Z25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29t
Pgo+PiA+IFNpZ25lZC1vZmYtYnk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50
ZWwuY29tPgo+PiA+IFJldmlld2VkLWJ5OiBBbnNodW1hbiBHdXB0YSA8YW5zaHVtYW4uZ3VwdGFA
aW50ZWwuY29tPgo+PiA+IC0tLQo+PiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3Bzci5jIHwgNiArKy0tLS0KPj4gPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygr
KSwgNCBkZWxldGlvbnMoLSkKPj4gPgo+PiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jCj4+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9wc3IuYwo+PiA+IGluZGV4IDgxZTM2MTljZDkwNS4uMDE3MmI4Mjg1OGQ5IDEwMDY0
NAo+PiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKPj4g
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jCj4+ID4gQEAg
LTU4OCwxMSArNTg4LDkgQEAgdm9pZCBpbnRlbF9wc3JfY29tcHV0ZV9jb25maWcoc3RydWN0IGlu
dGVsX2RwCj4+ICppbnRlbF9kcCwKPj4gPgo+PiA+ICAJLyoKPj4gPiAgCSAqIEhTVyBzcGVjIGV4
cGxpY2l0bHkgc2F5cyBQU1IgaXMgdGllZCB0byBwb3J0IEEuCj4+ID4gLQkgKiBCRFcrIHBsYXRm
b3JtcyBoYXZlIGEgaW5zdGFuY2Ugb2YgUFNSIHJlZ2lzdGVycyBwZXIgdHJhbnNjb2RlciBidXQK
Pj4gPiAtCSAqIGZvciBub3cgaXQgb25seSBzdXBwb3J0cyBvbmUgaW5zdGFuY2Ugb2YgUFNSLCBz
byBsZXRzIGtlZXAgaXQKPj4gPiAtCSAqIGhhcmRjb2RlZCB0byBQT1JUX0EKPj4gPiArCSAqIEJE
VysgcGxhdGZvcm1zIGhhdmUgYSBpbnN0YW5jZSBvZiBQU1IgcmVnaXN0ZXJzIHBlciB0cmFuc2Nv
ZGVyLgo+PiA+ICAJICovCj4+ID4gLQlpZiAoZGlnX3BvcnQtPmJhc2UucG9ydCAhPSBQT1JUX0Ep
IHsKPj4gPiArCWlmIChJU19IQVNXRUxMKGRldl9wcml2KSAmJiBkaWdfcG9ydC0+YmFzZS5wb3J0
ICE9IFBPUlRfQSkgewo+Pgo+PiBCYXNlZCBvbiBhbiBlYXJsaWVyIGRpc2N1c3Npb24gd2l0aCBB
cnQsIGJlZm9yZSBUR0wgUFNSIGlzIG5vdCBzdXBwb3NlZAo+PiB0byBiZSB1c2VkIGFueXdoZXJl
IGVsc2UgdGhhbiBwb3J0IEEuCj4+Cj4+IEFydCBjb3VsZCB5b3UgY29uZmlybSB0aGF0Pwo+Cj5D
b3JyZWN0Lgo+UFNSMSBpcyBsaW1pdGVkIHRvIERESUEgdW50aWwgVGlnZXJsYWtlLiAgVGhlcmUg
YXJlIHJlZ2lzdGVycyBmb3IgUFNSIG9uIHRoZSBvdGhlcgo+dHJhbnNjb2RlcnMvcG9ydHMgYmVj
YXVzZSBvZiByZXVzZSwgYnV0IGhhcmR3YXJlIGlzbid0IGZ1bGx5IGhvb2tlZCB1cCBvciB2YWxp
ZGF0ZWQuCj5QU1IyIGlzIHN0aWxsIGxpbWl0ZWQgdG8gRERJQSBvbiBUaWdlcmxha2UuCgp0aGFu
ayB5b3UgYm90aCBmb3IgY29uZmlybWluZy4gSm9zw6ksIEkgdGhpbmsgd2UgbmVlZCB0byBkcm9w
IHRoaXMgcGF0Y2gKYW5kIHJlYmFzZSB0aGUgcmVzdCBzbyB3ZSBkb24ndCBkbyBhbnl0aGluZyBi
ZWZvcmUgVGlnZXIgTGFrZS4gSSB3aWxsCndvcmsgb24gaXQuCgpMdWNhcyBEZSBNYXJjaGkKCj4K
Pj4KPj4gPiAgCQlEUk1fREVCVUdfS01TKCJQU1IgY29uZGl0aW9uIGZhaWxlZDogUG9ydCBub3QK
Pj4gc3VwcG9ydGVkXG4iKTsKPj4gPiAgCQlyZXR1cm47Cj4+ID4gIAl9Cj4+ID4gLS0KPj4gPiAy
LjIzLjAKPj4gPgo+PiA+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCj4+ID4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+PiA+IEludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKPj4gPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
