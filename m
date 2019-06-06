Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54BAF3792C
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2019 18:09:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A97CC892BC;
	Thu,  6 Jun 2019 16:09:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2619892C2
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2019 16:09:09 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Jun 2019 09:09:09 -0700
X-ExtLoop1: 1
Received: from unknown (HELO ldmartin-desk.amr.corp.intel.com) ([10.24.10.135])
 by orsmga003.jf.intel.com with ESMTP; 06 Jun 2019 09:09:08 -0700
Date: Thu, 6 Jun 2019 09:09:08 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Message-ID: <20190606160908.odxcvg2kji7dco5x@ldmartin-desk.amr.corp.intel.com>
References: <20190605211832.23945-1-matthew.d.roper@intel.com>
 <20190605215107.GA14368@intel.com>
 <20190605221522.GW13184@mdroper-desk.amr.corp.intel.com>
 <20190606160056.GF3452@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190606160056.GF3452@intel.com>
User-Agent: NeoMutt/20180716
Subject: Re: [Intel-gfx] [PATCH] drm/i915/ehl: Support HBR3 on EHL combo PHY
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBKdW4gMDYsIDIwMTkgYXQgMDk6MDA6NTZBTSAtMDcwMCwgUm9kcmlnbyBWaXZpIHdy
b3RlOgo+T24gV2VkLCBKdW4gMDUsIDIwMTkgYXQgMDM6MTU6MjJQTSAtMDcwMCwgTWF0dCBSb3Bl
ciB3cm90ZToKPj4gT24gV2VkLCBKdW4gMDUsIDIwMTkgYXQgMDI6NTE6MDhQTSAtMDcwMCwgTWFu
YXNpIE5hdmFyZSB3cm90ZToKPj4gPiBPbiBXZWQsIEp1biAwNSwgMjAxOSBhdCAwMjoxODozMlBN
IC0wNzAwLCBNYXR0IFJvcGVyIHdyb3RlOgo+PiA+ID4gVW5saWtlIElDTCwgRUhMJ3MgY29tYm8g
UEhZcyBjYW4gc3VwcG9ydCBIQlIzIGRhdGEgcmF0ZXMuICBOb3RlIHRoYXQKPj4gPiA+IHRoaXMg
anVzdCBleHRlbmRzIHRoZSB1cHBlciBsaW1pdDsgd2Ugd2lsbCBjb250aW51ZSB0byBob25vciB0
aGUgbWF4Cj4+ID4gPiBkYXRhIHJhdGUgc3BlY2lmaWVkIGluIHRoZSBWQlQgaW4gY2FzZXMgd2hl
cmUgaXQgaXMgbG93ZXIgdGhhbiBIQlIzLgo+PiA+ID4KPj4gPiA+IFNpZ25lZC1vZmYtYnk6IE1h
dHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+Cj4+ID4KPj4gPiBZZXMgbG9va3Mg
Z29vZCB0byBtZS4KPj4gPgo+PiA+IFJldmlld2VkLWJ5OiBNYW5hc2kgTmF2YXJlIDxtYW5hc2ku
ZC5uYXZhcmVAaW50ZWwuY29tPgo+PiA+Cj4+ID4gTWFuYXNpCj4+Cj4+IFRoYW5rcyBmb3IgdGhl
IHF1aWNrIHJldmlldy4gIENJIGxvb2tzIGhhcHB5IHRvbywgc28gcHVzaGVkIHRvIGRpbnEuCj4+
Cj4+Cj4+IE1hdHQKPj4KPj4gPgo+PiA+ID4gLS0tCj4+ID4gPiAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfZHAuYyB8IDEgKwo+PiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigr
KQo+PiA+ID4KPj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9k
cC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHAuYwo+PiA+ID4gaW5kZXggMjRiNTZi
MmE3NmM4Li5iMDk5YTlkYzI4ZmQgMTAwNjQ0Cj4+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9kcC5jCj4+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9k
cC5jCj4+ID4gPiBAQCAtMzMyLDYgKzMzMiw3IEBAIHN0YXRpYyBpbnQgaWNsX21heF9zb3VyY2Vf
cmF0ZShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQo+PiA+ID4gIAllbnVtIHBvcnQgcG9ydCA9
IGRpZ19wb3J0LT5iYXNlLnBvcnQ7Cj4+ID4gPgo+PiA+ID4gIAlpZiAoaW50ZWxfcG9ydF9pc19j
b21ib3BoeShkZXZfcHJpdiwgcG9ydCkgJiYKPj4gPiA+ICsJICAgICFJU19FTEtIQVJUTEFLRShk
ZXZfcHJpdikgJiYKPgo+SSB3b25kZXIgaWYgd2Ugc2hvdWxkbid0IHVzZSBJU19JQ0VMQUtFIGlu
c3RlYWQgb2YgIUlTX0VMS0hBUlRMQUtFIGhlcmUuLi4KPmJ1dCBpdCBzZWVtcyB0byBsYXRlLi4u
CgppZiB3ZSBhcHBseSB0aGUgcHJpbmNpcGxlIHdlIGhhdmUgYmVlbiBhZG9wdGluZyBvZiBhbHdh
eXMgdXNpbmcgdGhlIGxhc3QKcGxhdGZvcm0gZm9yIHRoZSBuZXh0IG9uZS4uLiBJIGFncmVlLCB0
aGlzIHNob3VsZCBiZSBJU19JQ0VMQUtFKCkuCgpMdWNhcyBEZSBNYXJjaGkKCj4KPkJ1dCBzb21l
dGhpbmcgdG8gcmVtZW1iZXIgdG8gcGF5IGF0dGVudGlvbiBvbiBhbnkgdXBjb21pbmcgcGxhdGZv
cm0uLi4KPgo+PiA+ID4gIAkgICAgIWludGVsX2RwX2lzX2VkcChpbnRlbF9kcCkpCj4+ID4gPiAg
CQlyZXR1cm4gNTQwMDAwOwo+PiA+ID4KPj4gPiA+IC0tCj4+ID4gPiAyLjE0LjUKPj4gPiA+Cj4+
ID4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiA+
ID4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+PiA+ID4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwo+PiA+ID4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZngKPj4KPj4gLS0KPj4gTWF0dCBSb3Blcgo+PiBHcmFwaGljcyBTb2Z0d2Fy
ZSBFbmdpbmVlcgo+PiBJb1RHIFBsYXRmb3JtIEVuYWJsaW5nICYgRGV2ZWxvcG1lbnQKPj4gSW50
ZWwgQ29ycG9yYXRpb24KPj4gKDkxNikgMzU2LTI3OTUKPj4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KPj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+PiBJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
