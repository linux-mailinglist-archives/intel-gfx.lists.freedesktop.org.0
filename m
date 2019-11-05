Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E48AEFD60
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Nov 2019 13:41:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B88B6EA31;
	Tue,  5 Nov 2019 12:41:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F6A76EA31
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Nov 2019 12:41:13 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Nov 2019 04:41:12 -0800
X-IronPort-AV: E=Sophos;i="5.68,271,1569308400"; d="scan'208";a="195806367"
Received: from jlahtine-desk.ger.corp.intel.com (HELO localhost)
 ([10.252.31.180])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Nov 2019 04:41:09 -0800
MIME-Version: 1.0
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
In-Reply-To: <20191029105156.21658-1-jani.nikula@intel.com>
References: <20191029105156.21658-1-jani.nikula@intel.com>
Message-ID: <157295766711.9970.15611348396761467196@jlahtine-desk.ger.corp.intel.com>
User-Agent: alot/0.7
Date: Tue, 05 Nov 2019 14:41:07 +0200
Subject: Re: [Intel-gfx] [RFC 1/2] drm/i915: add display uncore helpers
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
Cc: Jani Nikula <jani.nikula@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBKYW5pIE5pa3VsYSAoMjAxOS0xMC0yOSAxMjo1MTo1NSkKPiBBZGQgY29udmVuaWVu
Y2UgaGVscGVycyBmb3IgdGhlIG1vc3QgY29tbW9uIHVuY29yZSBvcGVyYXRpb25zIHdpdGgKPiBz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqIGFzIGNvbnRleHQgcmF0aGVyIHRoYW4gc3RydWN0IGlu
dGVsX3VuY29yZSAqLgo+IAo+IFRoZSBnb2FsIGlzIHRvIHJlcGxhY2UgYWxsIGluc3RhbmNlcyBv
ZiBJOTE1X1JFQUQoKSwKPiBJOTE1X1BPU1RJTkdfUkVBRCgpLCBhbmQgSTkxNV9XUklURSgpIGlu
IGRpc3BsYXkvIHdpdGggdGhlc2UsIHRvIGZpbmFsbHkKPiBiZSBhYmxlIHRvIGdldCByaWQgb2Yg
dGhlIGltcGxpY2l0IGRldl9wcml2IGxvY2FsIHBhcmFtZXRlciB1c2UuCj4gCj4gVGhlIGlkZWEg
aXMgdGhhdCBhbnkgbm9uLXUzMiByZWFkcyBvciB3cml0ZXMgYXJlIHNwZWNpYWwgZW5vdWdoIHRo
YXQKPiB0aGV5IGNhbiB1c2UgdGhlIGludGVsX3VuY29yZV8qIGZ1bmN0aW9ucyBkaXJlY3RseS4K
PiAKPiBDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gQ2M6IERh
bmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+Cj4g
Q2M6IEpvb25hcyBMYWh0aW5lbiA8am9vbmFzLmxhaHRpbmVuQGxpbnV4LmludGVsLmNvbT4KPiBD
YzogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+Cj4gQ2M6IFJvZHJp
Z28gVml2aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4KPiBDYzogVmlsbGUgU3lyasOkbMOkIDx2
aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBKYW5pIE5pa3Vs
YSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgoKPFNOSVA+Cgo+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV91bmNvcmUuaAo+IEBAIC0wLDAgKzEsMzYgQEAK
PiArLyogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IE1JVCAqLwo+ICsvKgo+ICsgKiBDb3B5cmln
aHQgwqkgMjAxOSBJbnRlbCBDb3Jwb3JhdGlvbgo+ICsgKi8KPiArCj4gKyNpZm5kZWYgX19JTlRF
TF9ESVNQTEFZX1VOQ09SRV9IX18KPiArI2RlZmluZSBfX0lOVEVMX0RJU1BMQVlfVU5DT1JFX0hf
XwoKaW50ZWxfZGVfdW5jb3JlLmMvLmggZm9yIGVhc2llciBmaW5kaW5nPwoKPiArCj4gKyNpbmNs
dWRlICJpOTE1X2Rydi5oIgo+ICsjaW5jbHVkZSAiaTkxNV9yZWcuaCIKPiArI2luY2x1ZGUgImlu
dGVsX3VuY29yZS5oIgo+ICsKPiArc3RhdGljIGlubGluZSB1MzIgaW50ZWxfZGVfcmVhZChzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwgaTkxNV9yZWdfdCByZWcpCgpJIHRoaW5rIGl0J2Qg
YmUgZ29vZCBhIG9wcG9ydHVuaXR5IHRvIHBhc3Mgc3RydWN0IGludGVsX2RleyxfdW5jb3JlfQph
cyBhIHBhcmFtZXRlciwgYW5kIHN0YXJ0IGdyb3VwaW5nIERFIHN0dWZmIHVuZGVybmVhdGggaXQ/
CgpJdCdsbCBvZiBjb3Vyc2UgYmUgbXVjaCBiaWdnZXIgY2hhbmdlLgoKUmVnYXJkcywgSm9vbmFz
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
