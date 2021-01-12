Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E61B62F3437
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Jan 2021 16:36:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60C976E2B8;
	Tue, 12 Jan 2021 15:36:10 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D9ED76E2B8
 for <Intel-gfx@lists.freedesktop.org>; Tue, 12 Jan 2021 15:36:09 +0000 (UTC)
IronPort-SDR: YTAwUvGkqvihCDJvv3XcNe9YFIg2BktwX9dkLB0ZzVMuubzGVNJCoXWDtG8EAwUJ+VLHPnhi2N
 slIWCxf3r16w==
X-IronPort-AV: E=McAfee;i="6000,8403,9862"; a="165733972"
X-IronPort-AV: E=Sophos;i="5.79,341,1602572400"; d="scan'208";a="165733972"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2021 07:36:07 -0800
IronPort-SDR: hcTiS/G755o9jKMQX4jb7M95yI3PEaMc3V+qSNqdcB7ANvRj1iChy4mjWMjQ3dIuQno+f8GezC
 9xmu4b3xcE8Q==
X-IronPort-AV: E=Sophos;i="5.79,341,1602572400"; d="scan'208";a="381466493"
Received: from vbucoci-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.39.237])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2021 07:36:05 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Vivi\, Rodrigo" <rodrigo.vivi@intel.com>,
 "joonas.lahtinen\@linux.intel.com" <joonas.lahtinen@linux.intel.com>, "Huang\,
 Sean Z" <sean.z.huang@intel.com>,
 "Intel-gfx\@lists.freedesktop.org" <Intel-gfx@lists.freedesktop.org>
In-Reply-To: <dc0506d6ba1f28d6ceda1fc2763f010213cc0031.camel@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210106231223.8323-1-sean.z.huang@intel.com>
 <20210106231223.8323-3-sean.z.huang@intel.com>
 <9d20bff6993bfcf5ff30dd766e930bb031b69d93.camel@intel.com>
 <161010543675.3935.1412306268203884564@jlahtine-mobl.ger.corp.intel.com>
 <DM6PR11MB45315ACD9C5ADE72383A740AD9AB0@DM6PR11MB4531.namprd11.prod.outlook.com>
 <dc0506d6ba1f28d6ceda1fc2763f010213cc0031.camel@intel.com>
Date: Tue, 12 Jan 2021 17:36:02 +0200
Message-ID: <871requpzx.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [RFC-v19 02/13] drm/i915/pxp: set KCR reg init
 during the boot time
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

T24gVHVlLCAxMiBKYW4gMjAyMSwgIlZpdmksIFJvZHJpZ28iIDxyb2RyaWdvLnZpdmlAaW50ZWwu
Y29tPiB3cm90ZToKPiBPbiBNb24sIDIwMjEtMDEtMTEgYXQgMjE6MzggKzAwMDAsIEh1YW5nLCBT
ZWFuIFogd3JvdGU6Cj4+IEhlbGxvLAo+PiAKPj4gSSBzZWUsIGJhc2VkIG9uIEpvb25hcyBhbmQg
Um9kcmlnbydzIGZlZWRiYWNrLgo+PiAKPj4gSSBtYWRlIHRoZSBtb2RpZmljYXRpb24gYXMgYmVs
b3csIEkgd2lsbCBzdGlsbCBrZWVwIHRoZSBtYWNybyBpbiB0aGlzCj4+IC5jIGluc3RlYWQgb2Yg
aTkxNV9yZWcuaCwgYW5kIHRoaXMgY2hhbmdlIHdpbGwgYmUgcmVmbGVjdGVkIGluIHJldjIwLgo+
PiAKPj4gLyogS0NSIHJlZ2lzdGVyIGRlZmluaXRpb25zICovCj4+IMKgI2RlZmluZSBLQ1JfSU5J
VMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgX01NSU8oMHgzMjBmMCkKPj4gLSNkZWZpbmUgS0NSX0lO
SVRfTUFTS19TSElGVCAoMTYpCgpVc2VsZXNzIHBhcmVudGhlc2lzLgoKPj4gKwo+PiDCoC8qIFNl
dHRpbmcgS0NSIEluaXQgYml0IGlzIHJlcXVpcmVkIGFmdGVyIHN5c3RlbSBib290ICovCj4+IC0j
ZGVmaW5lIEtDUl9JTklUX0FMTE9XX0RJU1BMQVlfTUVfV1JJVEVTIChCSVQoMTQpIHwgKEJJVCgx
NCkgPDwKPj4gS0NSX0lOSVRfTUFTS19TSElGVCkpCj4+ICsjZGVmaW5lIEtDUl9JTklUX0FMTE9X
X0RJU1BMQVlfTUVfV1JJVEVTIChCSVQoMTQpIHwgKEJJVCgxNCkgPDwgMTYpKQoKQklUKDE0KSA8
PCAxNiBpcyBhY3R1YWxseSBCSVQoMTQrMTYpLCBvciBCSVQoMzApLiBUaGUgYWJvdmUgaXMKcG9p
bnRsZXNzLgoKQWxzbywgeW91J2xsIGVuZCB1cCB3aXRoIHByb2JsZW1zIGJ5IHVzaW5nIEJJVCgp
IGluc3RlYWQgb2YgUkVHX0JJVCgpCmRlZmluZWQgaW4gaTkxNV9yZWcuaCBkdWUgdG8gQklUKCkg
dXNpbmcgdW5zaWduZWQgbG9uZy4KCkFsc28sIHJlYWQgdGhlIGJpZyBzdHlsZSBjb21tZW50IG5l
YXIgdGhlIHRvcCBvZiBpOTE1X3JlZy5oLgoKQlIsCkphbmkuCgo+Cj4gVGhpcyBpcyBub3Qgd2hh
dCBJIGFza2VkIGFjdHVhbGx5Lgo+Cj4gSSBhc2tlZCB0byBnZXQgdGhlIEJJVCgxNCkgdG8gYmUg
ZGVmaW5lZCBzZXBhcmF0ZWQsIHNoaWZ0IGRlZmluZWQgYXMKPiB3ZWxsLi4uIGFuZCB0aGUgfCBh
bmQgYWN0dWFsbCBzaGlmdCBvcGVyYXRpb25zIHRvIGJlIHBlcmZvcm1lZCBpbiB0aGUKPiBjb2Rl
IGFuZCBub3QgaW4gdGhlIGRlZmluZXMKPgo+PiAKPj4gQmVzdCByZWdhcmRzLAo+PiBTZWFuCj4+
IAo+PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+PiBGcm9tOiBKb29uYXMgTGFodGluZW4g
PGpvb25hcy5sYWh0aW5lbkBsaW51eC5pbnRlbC5jb20+Cj4+IFNlbnQ6IEZyaWRheSwgSmFudWFy
eSA4LCAyMDIxIDM6MzEgQU0KPj4gVG86IEh1YW5nLCBTZWFuIFogPHNlYW4uei5odWFuZ0BpbnRl
bC5jb20+OyAKPj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgVml2aSwgUm9kcmln
byA8Cj4+IHJvZHJpZ28udml2aUBpbnRlbC5jb20+Cj4+IFN1YmplY3Q6IFJlOiBbSW50ZWwtZ2Z4
XSBbUkZDLXYxOSAwMi8xM10gZHJtL2k5MTUvcHhwOiBzZXQgS0NSIHJlZwo+PiBpbml0IGR1cmlu
ZyB0aGUgYm9vdCB0aW1lCj4+IAo+PiBRdW90aW5nIFZpdmksIFJvZHJpZ28gKDIwMjEtMDEtMDcg
MTc6MzE6MzYpCj4+ID4gT24gV2VkLCAyMDIxLTAxLTA2IGF0IDE1OjEyIC0wODAwLCBIdWFuZywg
U2VhbiBaIHdyb3RlOgo+PiA+ID4gU2V0IHRoZSBLQ1IgaW5pdCBkdXJpbmcgdGhlIGJvb3QgdGlt
ZSwgd2hpY2ggaXMgcmVxdWlyZWQgYnkKPj4gPiA+IGhhcmR3YXJlLCB0byBhbGxvdyB1cyBkb2lu
ZyBmdXJ0aGVyIHByb3RlY3Rpb24gb3BlcmF0aW9uIHN1Y2ggYXMKPj4gPiA+IHNlbmRpbmcgY29t
bWFuZHMgdG8gR1BVIG9yIFRFRS4KPj4gPiA+IAo+PiA+ID4gU2lnbmVkLW9mZi1ieTogSHVhbmcs
IFNlYW4gWiA8c2Vhbi56Lmh1YW5nQGludGVsLmNvbT4KPj4gPiA+IC0tLQo+PiA+ID4gwqBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9weHAvaW50ZWxfcHhwLmMgfCA4ICsrKysrKysrCj4+ID4gPiDCoDEg
ZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKykKPj4gPiA+IAo+PiA+ID4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L3B4cC9pbnRlbF9weHAuYwo+PiA+ID4gYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9weHAvaW50ZWxfcHhwLmMKPj4gPiA+IGluZGV4IDliYzNjN2UzMDY1NC4uZjU2
NmE0ZmRhMDQ0IDEwMDY0NAo+PiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvcHhwL2lu
dGVsX3B4cC5jCj4+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9weHAvaW50ZWxfcHhw
LmMKPj4gPiA+IEBAIC02LDYgKzYsMTIgQEAKPj4gPiA+IMKgI2luY2x1ZGUgImludGVsX3B4cC5o
Igo+PiA+ID4gwqAjaW5jbHVkZSAiaW50ZWxfcHhwX2NvbnRleHQuaCIKPj4gPiA+IAo+PiA+ID4g
Ky8qIEtDUiByZWdpc3RlciBkZWZpbml0aW9ucyAqLwo+PiA+IAo+PiA+IHBsZWFzZSBkZWZpbmUg
dGhpcyBpbiBpOTE1X3JlZy5oCj4+IAo+PiBHZW5lcmFsbHkgdGhlIHRyZW5kIG9uIHRoZSBHVCBz
aWRlIGlzIHRvIGNvbnRhaW4gaW4gYSAuYyBmaWxlIGlmCj4+IHRoZXJlIGFyZSBubyBzaGFyZWQg
dXNlcnMgbGlrZSB0aGVzZS4gU28gdGhleSBzaG91bGQgYmUgYXQgdGhpcyBzcG90LAo+PiB5ZXQg
dGhlIHJlc3Qgb2YgdGhlIHJldmlldyBjb21tZW50cyBhcHBseS4KPj4gCj4+IFRoZSBzcHVyaW91
cyBjb21tZW50cyBzaG91bGQgYmUgZHJvcHBlZCBhbmQgbGlrZSBSb2RyaWdvIHBvaW50ZWQgb3V0
LAo+PiB3ZSBzaG91bGQgYmUgdXNpbmcgdGhlIGFwcHJvcHJpYXRlIG1hY3JvcyBmb3IgYSBtYXNr
ZWQgd3JpdGVzLCBub3QKPj4gYmFraW5nIGluIHRoZSAjZGVmaW5lLgo+PiAKPj4gUmVnYXJkcywg
Sm9vbmFzCj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xwo+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZngKCi0tIApKYW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBTb3VyY2UgR3JhcGhpY3MgQ2VudGVy
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
