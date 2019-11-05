Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5004AEFEA6
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Nov 2019 14:33:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9EB766E069;
	Tue,  5 Nov 2019 13:33:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E8C4E6E069
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Nov 2019 13:33:13 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Nov 2019 05:33:13 -0800
X-IronPort-AV: E=Sophos;i="5.68,271,1569308400"; d="scan'208";a="195820144"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Nov 2019 05:33:10 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <157295766711.9970.15611348396761467196@jlahtine-desk.ger.corp.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20191029105156.21658-1-jani.nikula@intel.com>
 <157295766711.9970.15611348396761467196@jlahtine-desk.ger.corp.intel.com>
Date: Tue, 05 Nov 2019 15:33:07 +0200
Message-ID: <87eeym78j0.fsf@intel.com>
MIME-Version: 1.0
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAwNSBOb3YgMjAxOSwgSm9vbmFzIExhaHRpbmVuIDxqb29uYXMubGFodGluZW5AbGlu
dXguaW50ZWwuY29tPiB3cm90ZToKPiBRdW90aW5nIEphbmkgTmlrdWxhICgyMDE5LTEwLTI5IDEy
OjUxOjU1KQo+PiBBZGQgY29udmVuaWVuY2UgaGVscGVycyBmb3IgdGhlIG1vc3QgY29tbW9uIHVu
Y29yZSBvcGVyYXRpb25zIHdpdGgKPj4gc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKiBhcyBjb250
ZXh0IHJhdGhlciB0aGFuIHN0cnVjdCBpbnRlbF91bmNvcmUgKi4KPj4gCj4+IFRoZSBnb2FsIGlz
IHRvIHJlcGxhY2UgYWxsIGluc3RhbmNlcyBvZiBJOTE1X1JFQUQoKSwKPj4gSTkxNV9QT1NUSU5H
X1JFQUQoKSwgYW5kIEk5MTVfV1JJVEUoKSBpbiBkaXNwbGF5LyB3aXRoIHRoZXNlLCB0byBmaW5h
bGx5Cj4+IGJlIGFibGUgdG8gZ2V0IHJpZCBvZiB0aGUgaW1wbGljaXQgZGV2X3ByaXYgbG9jYWwg
cGFyYW1ldGVyIHVzZS4KPj4gCj4+IFRoZSBpZGVhIGlzIHRoYXQgYW55IG5vbi11MzIgcmVhZHMg
b3Igd3JpdGVzIGFyZSBzcGVjaWFsIGVub3VnaCB0aGF0Cj4+IHRoZXkgY2FuIHVzZSB0aGUgaW50
ZWxfdW5jb3JlXyogZnVuY3Rpb25zIGRpcmVjdGx5Lgo+PiAKPj4gQ2M6IENocmlzIFdpbHNvbiA8
Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+PiBDYzogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8
ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KPj4gQ2M6IEpvb25hcyBMYWh0aW5lbiA8
am9vbmFzLmxhaHRpbmVuQGxpbnV4LmludGVsLmNvbT4KPj4gQ2M6IEx1Y2FzIERlIE1hcmNoaSA8
bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgo+PiBDYzogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZp
dmlAaW50ZWwuY29tPgo+PiBDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT4KPj4gU2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGlu
dGVsLmNvbT4KPgo+IDxTTklQPgo+Cj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheV91bmNvcmUuaAo+PiBAQCAtMCwwICsxLDM2IEBACj4+ICsvKiBTUERY
LUxpY2Vuc2UtSWRlbnRpZmllcjogTUlUICovCj4+ICsvKgo+PiArICogQ29weXJpZ2h0IMKpIDIw
MTkgSW50ZWwgQ29ycG9yYXRpb24KPj4gKyAqLwo+PiArCj4+ICsjaWZuZGVmIF9fSU5URUxfRElT
UExBWV9VTkNPUkVfSF9fCj4+ICsjZGVmaW5lIF9fSU5URUxfRElTUExBWV9VTkNPUkVfSF9fCj4K
PiBpbnRlbF9kZV91bmNvcmUuYy8uaCBmb3IgZWFzaWVyIGZpbmRpbmc/Cj4KPj4gKwo+PiArI2lu
Y2x1ZGUgImk5MTVfZHJ2LmgiCj4+ICsjaW5jbHVkZSAiaTkxNV9yZWcuaCIKPj4gKyNpbmNsdWRl
ICJpbnRlbF91bmNvcmUuaCIKPj4gKwo+PiArc3RhdGljIGlubGluZSB1MzIgaW50ZWxfZGVfcmVh
ZChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwgaTkxNV9yZWdfdCByZWcpCj4KPiBJIHRo
aW5rIGl0J2QgYmUgZ29vZCBhIG9wcG9ydHVuaXR5IHRvIHBhc3Mgc3RydWN0IGludGVsX2Rleyxf
dW5jb3JlfQo+IGFzIGEgcGFyYW1ldGVyLCBhbmQgc3RhcnQgZ3JvdXBpbmcgREUgc3R1ZmYgdW5k
ZXJuZWF0aCBpdD8KPgo+IEl0J2xsIG9mIGNvdXJzZSBiZSBtdWNoIGJpZ2dlciBjaGFuZ2UuCgpP
bmUgb2YgdGhlIG1haW4gcG9pbnRzIGhlcmUgd2FzIHRoYXQgZm9yIGRpc3BsYXkgY29kZSBwYXNz
aW5nIHN0cnVjdApkcm1faTkxNV9wcml2YXRlICogc2hvdWxkIGJlIHRoZSBlYXNpZXN0IHRoaW5n
IHRvIGRvLiBJZiB0aGVyZSdzIGEgbmVlZAp0byBncm91cCBzdHVmZiB3aXRoaW4gaTkxNSwgZmlu
ZSwgYnV0IG5vIG5lZWQgdG8gcGFzcyB0aGF0IGhlcmUuCgpCUiwKSmFuaS4KCgotLSAKSmFuaSBO
aWt1bGEsIEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNzIENlbnRlcgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
