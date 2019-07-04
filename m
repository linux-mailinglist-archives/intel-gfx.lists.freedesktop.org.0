Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EA5575FCA8
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jul 2019 19:56:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDF8F6E3A0;
	Thu,  4 Jul 2019 17:56:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED45B6E3A0
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jul 2019 17:56:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Jul 2019 10:56:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,451,1557212400"; d="scan'208";a="187627887"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by fmsmga004.fm.intel.com with ESMTP; 04 Jul 2019 10:56:10 -0700
Received: from mwajdecz-mobl1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.50])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x64Hu90v027924; Thu, 4 Jul 2019 18:56:09 +0100
To: "Imre Deak" <imre.deak@intel.com>
References: <20190704000649.20661-1-lucas.demarchi@intel.com>
 <20190704000649.20661-3-lucas.demarchi@intel.com>
 <op.z4eyickyxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
 <20190704174312.GG25657@ideak-desk.fi.intel.com>
Date: Thu, 04 Jul 2019 19:56:09 +0200
MIME-Version: 1.0
From: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Message-ID: <op.z4ez3vbpxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
In-Reply-To: <20190704174312.GG25657@ideak-desk.fi.intel.com>
User-Agent: Opera Mail/1.0 (Win32)
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="yes"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAwNCBKdWwgMjAxOSAxOTo0MzoxMiArMDIwMCwgSW1yZSBEZWFrIDxpbXJlLmRlYWtA
aW50ZWwuY29tPiB3cm90ZToKCj4gT24gVGh1LCBKdWwgMDQsIDIwMTkgYXQgMDc6MjE6MzhQTSAr
MDIwMCwgTWljaGFsIFdhamRlY3prbyB3cm90ZToKPj4gT24gVGh1LCAwNCBKdWwgMjAxOSAwMjow
Njo0NyArMDIwMCwgTHVjYXMgRGUgTWFyY2hpCj4+IDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+
IHdyb3RlOgo+Pgo+PiA+IE1ha2UgaW50ZWxfdGMuaCB0aGUgZmlyc3QgaW5jbHVkZSBzbyB3ZSBn
dWFyYW50ZWUgaXQncyBzZWxmLWNvbnRhaW5lZC4KPj4gPiBTb3J0IHRoZSByZXN0LiBTYW1lIHBy
aW5jaXBsZSBhcHBsaWVzIGZvciBpbmNsdWRlcyBpbiB0aGUgaGVhZGVyLgo+PiA+Cj4+ID4gU2ln
bmVkLW9mZi1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+Cj4+
ID4gLS0tCj4+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYyB8IDUg
KysrLS0KPj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5oIHwgNSAr
KystLQo+PiA+ICAyIGZpbGVzIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMo
LSkKPj4gPgo+PiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3RjLmMKPj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYwo+
PiA+IGluZGV4IDFhOWRkMzJmYjBhNS4uZTZlNjE2M2MxMjMyIDEwMDY0NAo+PiA+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYwo+PiA+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYwo+PiA+IEBAIC0zLDEwICszLDExIEBACj4+
ID4gICAqIENvcHlyaWdodCDCqSAyMDE5IEludGVsIENvcnBvcmF0aW9uCj4+ID4gICAqLwo+PiA+
ICsjaW5jbHVkZSAiaW50ZWxfdGMuaCIKPj4gPiArCj4+ID4gKyNpbmNsdWRlICJpOTE1X2Rydi5o
Igo+Pgo+PiB0aGlzIG1hc3RlciBoZWFkZXIgd2lsbCBsaWtlbHkgaW5jbHVkZSBldmVyeXRoaW5n
LCBzbyB3aGlsZQo+PiB5b3VyIC5oIGlzIG5vdyBzZWxmLWNvbnRhaW5lZCwgLmMgcmVtYWlucyB1
bmNsZWFuCj4+Cj4+ID4gICNpbmNsdWRlICJpbnRlbF9kaXNwbGF5LmgiCj4+ID4gICNpbmNsdWRl
ICJpbnRlbF9kcF9tc3QuaCIKPj4gPiAtI2luY2x1ZGUgImk5MTVfZHJ2LmgiCj4+ID4gLSNpbmNs
dWRlICJpbnRlbF90Yy5oIgo+PiA+IHN0YXRpYyBjb25zdCBjaGFyICp0Y19wb3J0X21vZGVfbmFt
ZShlbnVtIHRjX3BvcnRfbW9kZSBtb2RlKQo+PiA+ICB7Cj4+ID4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuaAo+PiA+IGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF90Yy5oCj4+ID4gaW5kZXggMGQ4NDExZDRhOTFkLi40NWFlMzA1
MzdiNzggMTAwNjQ0Cj4+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF90Yy5oCj4+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5o
Cj4+ID4gQEAgLTYsMTAgKzYsMTEgQEAKPj4gPiAgI2lmbmRlZiBfX0lOVEVMX1RDX0hfXwo+PiA+
ICAjZGVmaW5lIF9fSU5URUxfVENfSF9fCj4+ID4gLSNpbmNsdWRlIDxsaW51eC90eXBlcy5oPgo+
PiA+IC0jaW5jbHVkZSA8bGludXgvbXV0ZXguaD4KPj4gPiAgI2luY2x1ZGUgImludGVsX2Rydi5o
Igo+Pgo+PiBhcmUgeW91IHN1cmUgeW91IHdhbnQgdGhpcyBnaWFudCBoZWFkZXIgdG8gYmUgaW5j
bHVkZWQgaGVyZT8KPj4gbm90ZSB0aGF0IGl0IHdpbGwgI2luY2x1ZGUgYWxtb3N0IGV2ZXJ5dGhp
bmcgKGk5MTVfZHJ2LmggdG9vKQo+PiBhbmQgbWF5IGludHJvZHVjZSBoYXJkIHRvIHJlc29sdmUg
Y2lyY3VsYXIgZGVwZW5kZW5jaWVzCj4+Cj4+ID4gKyNpbmNsdWRlIDxsaW51eC9tdXRleC5oPgo+
Pgo+PiB3ZSBkb24ndCBuZWVkIG11dGV4IGRlZmluaXRpb25zIGhlcmUgaW4gY3VycmVudCBoZWFk
ZXIgZmlsZQo+Pgo+PiA+ICsjaW5jbHVkZSA8bGludXgvdHlwZXMuaD4KPj4gPiArCj4+Cj4+IHNv
IHlvdSBuZWVkIG9ubHkgYWJvdmUgdHlwZXMuaCBhbmQgdGhlbiBhZGQgZm9yd2FyZCBkZWNsIGZv
cjoKPj4KPj4gc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydDsKPgo+IEJvdGggdGhlIG11dGV4IGFu
ZCBpbnRlbF9kaWdpdGFsX3BvcnQgZGVmaW5pdGlvbnMgYXJlIG5lZWRlZCBieQo+IGludGVsX3Rj
X3BvcnRfcmVmX2hlbGQoKSBpbiB0aGlzIGhlYWRlci4KCm9vcHMsIHNvcnJ5LCBkaWRuJ3Qgc2Ny
b2xsIGRvd24gdG8gc2VlIGludGVsX3RjX3BvcnRfcmVmX2hlbGQoKSBpbmxpbmUuCgpidXQgd2Fp
dCwgaXQgaXMgdXNlZCBvbmx5IG9uY2UgaW4gaW50ZWxfZGlzcGxheV9wb3dlci5jIHNvCm1heWJl
IHRoaXMgaW5saW5lIGNhbiBiZSBtb3ZlZCB0byBvbmUgb2YgdGhlIC5jIGZpbGUgPwoKYWxzbywg
bWF5YmUgaXQncyB0aW1lIHRvIG1vdmUgc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCBkZWZpbml0
aW9uCm91dCBvZiBpbnRlbF9kcnYuaCA/Cgo+Cj4+Cj4+ID4gIGJvb2wgaW50ZWxfdGNfcG9ydF9j
b25uZWN0ZWQoc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQpOwo+PiA+ICB1MzIg
aW50ZWxfdGNfcG9ydF9nZXRfbGFuZV9tYXNrKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRp
Z19wb3J0KTsKPj4gPiAgaW50IGludGVsX3RjX3BvcnRfZmlhX21heF9sYW5lX2NvdW50KHN0cnVj
dCBpbnRlbF9kaWdpdGFsX3BvcnQKPj4gPiAqZGlnX3BvcnQpOwo+PiBfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBJbnRlbC1nZnggbWFpbGluZyBsaXN0
Cj4+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPj4gaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
