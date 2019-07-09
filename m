Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 38C2563C4C
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2019 21:58:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 902C46E0A5;
	Tue,  9 Jul 2019 19:58:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07AA66E0A5
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jul 2019 19:58:37 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Jul 2019 12:58:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,471,1557212400"; d="scan'208";a="176603699"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com) ([10.54.75.49])
 by orsmga002.jf.intel.com with ESMTP; 09 Jul 2019 12:58:36 -0700
Date: Tue, 9 Jul 2019 13:00:53 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20190709200053.GA19906@intel.com>
References: <20190708231629.9296-1-lucas.demarchi@intel.com>
 <20190708231629.9296-9-lucas.demarchi@intel.com>
 <78195a95a2f4e18aa3e1ce003150365f0cc038f1.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <78195a95a2f4e18aa3e1ce003150365f0cc038f1.camel@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH v2 08/25] drm/i915/tgl: use
 TRANSCODER_EDP_VDSC on transcoder A
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
 "De Marchi, Lucas" <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBKdWwgMDksIDIwMTkgYXQgMDE6MDc6MTdBTSArMDAwMCwgU291emEsIEpvc2Ugd3Jv
dGU6Cj4gT24gTW9uLCAyMDE5LTA3LTA4IGF0IDE2OjE2IC0wNzAwLCBMdWNhcyBEZSBNYXJjaGkg
d3JvdGU6Cj4gPiBGcm9tOiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVs
LmNvbT4KPiA+IAo+ID4gT24gVEdMIHRoZSBzcGVjaWFsIEVEUCB0cmFuc2NvZGVyIGlzIGdvbmUg
YW5kIGl0IHNob3VsZCBiZSBoYW5kbGVkIGJ5Cj4gPiB0cmFuc2NvZGVyIEEuCj4gPiAKPiA+IHYy
IChMdWNhcyk6Cj4gPiAgIC0gUmV1c2UgUE9XRVJfRE9NQUlOX1RSQU5TQ09ERVJfRURQX1ZEU0Mg
KHN1Z2dlc3RlZCBieSBWaWxsZSkKPiA+ICAgLSBVc2UgY3J0Yy0+ZGV2IHNpbmNlIG5ld19jcnRj
X3N0YXRlLT5zdGF0ZSBtYXkgYmUgTlVMTCBvbiBhdG9taWMKPiA+ICAgICBjb21taXQgKHN1Z2dl
c3RlZCBieSBNYWFydGVuKQo+IAo+IEFzIHdlIGFyZSByZXVzaW5nIHdvdWxkIGJlIG5pY2UgYWxz
byByZW5hbWUgaXQgdG8gc29tZXRoaW5nIGxpa2U6Cj4gUE9XRVJfRE9NQUlOX1RSQU5TQ09ERVJf
VkRTQ19QVzIKPiBQT1dFUl9ET01BSU5fTE9XX1BPV0VSX1RSQU5TQ09ERVJfVkRTQyAvCj4gUE9X
RVJfRE9NQUlOX0xQX1RSQU5TQ09ERVJfVkRTQwoKV2UgZGlkIHN0cnVnZ2xlIGluaXRpYWxseSBh
cyB3ZWxsIHRvIGZpbmQgYW4gYXBwcm9wcmlhdGUgbmFtZSBhbmQgc2V0dGxlZCBmb3IKUE9XRVJf
RE9NQUlOX1RSQU5TQ09ERVJfRURQX1ZEU0MgYnV0IEkgYWdyZWUgdGhhdCBub3cgc2luY2UgaXQg
aXMgbm90IGp1c3QgZm9yIEVEUApidXQgZm9yIFRyYW5zY29kZXIgQSB3aGljaCBjb3VsZCBiZSBh
bnkgY29ubmVjdG9yLCBpdHMgYmV0dGVyIHRvIHJlbmFtZSB0aGUgcG93ZXIgd2VsbAoKUE9XRVJf
RE9NQUlOX1RSQU5TQ09ERVJfVkRTQ19QVzIgb3IgClBPV0VSX0RPTUFJTl9UUkFOU0NPREVSX0VE
UF9BX1ZEU0MgYW5kIHRoZW4gaW4gdGhlIGNvbW1lbnQgY2xlYXJseSBtZW50aW9uIHRoYXQKZm9y
IEdlbiAxMSBpdCBpcyBmb3IgVHJhbnNjb2RlciBFRFAgVkRTQyBhbmQgdGhlbiBHZW4gMTIgKyBp
dCBpcyBmb3IgVHJhbnNjb2RlciBBIFZEU0MKCk1hbmFzaQoKPiAKPiA+IAo+ID4gQ2M6IEltcmUg
RGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4KPiA+IFNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVy
dG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgo+ID4gU2lnbmVkLW9mZi1ieTogTHVj
YXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+Cj4gPiAtLS0KPiA+ICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zkc2MuYyB8IDkgKysrKysrLS0tCj4gPiAg
MSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKPiA+IAo+ID4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmRzYy5jCj4g
PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmRzYy5jCj4gPiBpbmRleCBm
ZmVjODA3Yjg5NjAuLmMyNzkxMmY1NTJmMCAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmRzYy5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3Zkc2MuYwo+ID4gQEAgLTQ1OSwxNiArNDU5LDE5IEBAIGludCBpbnRl
bF9kcF9jb21wdXRlX2RzY19wYXJhbXMoc3RydWN0IGludGVsX2RwCj4gPiAqaW50ZWxfZHAsCj4g
PiAgZW51bSBpbnRlbF9kaXNwbGF5X3Bvd2VyX2RvbWFpbgo+ID4gIGludGVsX2RzY19wb3dlcl9k
b21haW4oY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCj4gPiAgewo+
ID4gKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHRvX2k5MTUoY3J0Y19zdGF0ZS0+
YmFzZS5jcnRjLQo+ID4gPmRldik7Cj4gPiAgCWVudW0gdHJhbnNjb2RlciBjcHVfdHJhbnNjb2Rl
ciA9IGNydGNfc3RhdGUtPmNwdV90cmFuc2NvZGVyOwo+ID4gIAo+ID4gIAkvKgo+ID4gLQkgKiBP
biBJQ0wgVkRTQy9qb2luaW5nIGZvciBlRFAgdHJhbnNjb2RlciB1c2VzIGEgc2VwYXJhdGUgcG93
ZXIKPiA+IHdlbGwgUFcyCj4gPiAtCSAqIFRoaXMgcmVxdWlyZXMgUE9XRVJfRE9NQUlOX1RSQU5T
Q09ERVJfRURQX1ZEU0MgcG93ZXIgZG9tYWluLgo+ID4gKwkgKiBPbiBJQ0wrIFZEU0Mvam9pbmlu
ZyBmb3IgZURQL0EgdHJhbnNjb2RlciB1c2VzIGEgc2VwYXJhdGUKPiA+IHBvd2VyIHdlbGwKPiA+
ICsJICogUFcyLiBUaGlzIHJlcXVpcmVzIFBPV0VSX0RPTUFJTl9UUkFOU0NPREVSX0VEUF9WRFND
IHBvd2VyCj4gPiBkb21haW4uCj4gPiAgCSAqIEZvciBhbnkgb3RoZXIgdHJhbnNjb2RlciwgVkRT
Qy9qb2luaW5nIHVzZXMgdGhlIHBvd2VyIHdlbGwKPiA+IGFzc29jaWF0ZWQKPiA+ICAJICogd2l0
aCB0aGUgcGlwZS90cmFuc2NvZGVyIGluIHVzZS4gSGVuY2UgYW5vdGhlciByZWZlcmVuY2Ugb24K
PiA+IHRoZQo+ID4gIAkgKiB0cmFuc2NvZGVyIHBvd2VyIGRvbWFpbiB3aWxsIHN1ZmZpY2UuCj4g
PiAgCSAqLwo+ID4gLQlpZiAoY3B1X3RyYW5zY29kZXIgPT0gVFJBTlNDT0RFUl9FRFApCj4gPiAr
CWlmIChJTlRFTF9HRU4oaTkxNSkgPj0gMTIgJiYgY3B1X3RyYW5zY29kZXIgPT0gVFJBTlNDT0RF
Ul9BKQo+ID4gKwkJcmV0dXJuIFBPV0VSX0RPTUFJTl9UUkFOU0NPREVSX0VEUF9WRFNDOwo+ID4g
KwllbHNlIGlmIChjcHVfdHJhbnNjb2RlciA9PSBUUkFOU0NPREVSX0VEUCkKPiA+ICAJCXJldHVy
biBQT1dFUl9ET01BSU5fVFJBTlNDT0RFUl9FRFBfVkRTQzsKPiA+ICAJZWxzZQo+ID4gIAkJcmV0
dXJuIFBPV0VSX0RPTUFJTl9UUkFOU0NPREVSKGNwdV90cmFuc2NvZGVyKTsKPiBfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEludGVsLWdmeCBtYWlsaW5n
IGxpc3QKPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
