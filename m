Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 86E8E24A36
	for <lists+intel-gfx@lfdr.de>; Tue, 21 May 2019 10:23:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65A9C89128;
	Tue, 21 May 2019 08:23:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D88F89128
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 May 2019 08:23:55 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 May 2019 01:23:54 -0700
X-ExtLoop1: 1
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 21 May 2019 01:23:53 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>,
 Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <155810709932.16907.15569373153559544138@skylake-alporthouse-com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20190516215634.16675-1-daniele.ceraolospurio@intel.com>
 <20190516215634.16675-5-daniele.ceraolospurio@intel.com>
 <155804446344.21432.9807432886672990654@skylake-alporthouse-com>
 <155804461077.21432.17200943459090833080@skylake-alporthouse-com>
 <155804656786.21432.5178995588934161825@skylake-alporthouse-com>
 <44810d46-e275-47dd-3879-4242568c0b14@intel.com>
 <155810709932.16907.15569373153559544138@skylake-alporthouse-com>
Date: Tue, 21 May 2019 11:27:12 +0300
Message-ID: <87r28s8b6n.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [RFC 4/7] drm/i915: move and rename i915_runtime_pm
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAxNyBNYXkgMjAxOSwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28u
dWs+IHdyb3RlOgo+IFF1b3RpbmcgRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyAoMjAxOS0wNS0xNyAx
NjoyNzoyNikKPj4gCj4+IAo+PiBPbiA1LzE2LzE5IDM6NDIgUE0sIENocmlzIFdpbHNvbiB3cm90
ZToKPj4gPiBRdW90aW5nIENocmlzIFdpbHNvbiAoMjAxOS0wNS0xNiAyMzoxMDoxMCkKPj4gPj4g
UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDUtMTYgMjM6MDc6NDMpCj4+ID4+PiBRdW90aW5n
IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gKDIwMTktMDUtMTYgMjI6NTY6MzEpCj4+ID4+Pj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3J1bnRpbWVfcG0uaCBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX3J1bnRpbWVfcG0uaAo+PiA+Pj4+IGluZGV4IGI5NjRjYTdh
ZjljOC4uMGUzODE3Zjk3ODVlIDEwMDY0NAo+PiA+Pj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX3J1bnRpbWVfcG0uaAo+PiA+Pj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX3J1bnRpbWVfcG0uaAo+PiA+Pj4+IEBAIC02LDYgKzYsNyBAQAo+PiA+Pj4+ICAgI2lm
bmRlZiBfX0lOVEVMX1JVTlRJTUVfUE1fSF9fCj4+ID4+Pj4gICAjZGVmaW5lIF9fSU5URUxfUlVO
VElNRV9QTV9IX18KPj4gPj4+PiAgIAo+PiA+Pj4+ICsjaW5jbHVkZSA8bGludXgvZGV2aWNlLmg+
Cj4+ID4+Pgo+PiA+Pj4gVGhlcmUgZG9lc24ndCBzZWVtIHRvIGJlIGFueSBwZWVraW5nIGludG8g
c3RydWN0IGRldmljZSwgc28gZG8gd2Ugbm90Cj4+ID4+PiBqdXN0IG5lZWQgdGhlIHN0cnVjdCBk
ZXZpY2UgZm9yd2FyZCBkZWNsIGhlcmU/Cj4+IAo+PiBUcnVlLCB3aWxsIGZpeC4KCkF0IHNvbWUg
cG9pbnQgd2UgaGFkIHRoZSBpZGVhIG9mIGFkZGluZyBzZXBhcmF0ZSBfdHlwZXMuaCBoZWFkZXJz
IGZvcgp0eXBlcy4gVGhlIG1vcmUgd2UgYWRkIHN0cnVjdHMgaW4gdGhlIGhlYWRlcnMsIHRoZSBt
b3JlIHRoZXknbGwgbmVlZCB0bwppbmNsdWRlIHRvIGJlIHNlbGYtY29udGFpbmVkLCB3aGlsZSB0
aGUgaW50ZXJmYWNlIHVzZXJzIGluIG1hbnkgY2FzZXMKZG9uJ3QgbmVlZCB0byBsb29rIGF0IHRo
ZSBpbnRlcm5hbHMgYXQgYWxsLiBUaGV5IGp1c3QgbmVlZCB0aGUgZm9yd2FyZApkZWNscyBmb3Ig
dGhlIHBvaW50ZXJzLgoKPj4gCj4+ID4+Cj4+ID4+IEFuZCBhZGQgaXQgdG8gTWFrZWZpbGUuaGVh
ZGVyc190ZXN0Cj4+ID4gCj4+ID4gSGludDogd2UgbWF5IG5lZWQgdG8gc3BsaXQgb3V0IGludGVs
X2Rpc3BsYXlfcG93ZXIuW2NoXQo+PiA+IAo+PiAKPj4gU2hvdWxkIEkgYWRkIGludGVsX2Rpc3Bs
YXlfcG93ZXIuaCB0byBNYWtlZmlsZS5oZWFkZXJzX3Rlc3QgYXMgd2VsbD8gSXQgCj4+IGRvZXMg
Y29tcGlsZSBvbiBpdHMgb3duLCBidXQgaXQnbGwgaGF2ZSB0byBpbmNsdWRlIGludGVsX2Rpc3Bs
YXkuaCwgCj4+IHdoaWNoIGlzbid0IG9uIHRoZSBsaXN0Lgo+Cj4gWWVzLiBJZiB3ZSBoYXZlIHRv
IGluY2x1ZGUgaW50ZWxfZGlzcGxheS5oLCB0aGF0IG1lYW5zIHdoZW5ldmVyIHdlIGdldAo+IGFy
b3VuZCB0byBzcGxpdHRpbmcgaW50ZWxfZGlzcGxheS5oLCB3ZSB3aWxsIHJlbWVtYmVyIHRvIHVw
ZGF0ZQo+IGludGVsX2Rpc3BsYXlfcG93ZXIuaC4gUmFpbnkgZGF5IHRhc2tzIHdpbGwgYmUgdG8g
ZGVsZXRlICNpbmNsdWRlIGF0Cj4gcmFuZG9tIGFuZCBzZWUgd2hpY2ggYXJlIHN0aWxsIHJlcXVp
cmVkIGluIGhlYWRlcnMuCgpTdG9ybSBkYXkgdGFzayB3aWxsIGJlIHRvIGJhbmcgaXd5dSBbMV0g
dG8gd29yayBuaWNlbHkgd2l0aCB0aGUga2VybmVsCmJ1aWxkLgoKQlIsCkphbmkuCgoKWzFdIGh0
dHBzOi8vaW5jbHVkZS13aGF0LXlvdS11c2Uub3JnLwoKCgotLSAKSmFuaSBOaWt1bGEsIEludGVs
IE9wZW4gU291cmNlIEdyYXBoaWNzIENlbnRlcgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
