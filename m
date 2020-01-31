Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 848AE14F13C
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2020 18:24:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D10466FBA9;
	Fri, 31 Jan 2020 17:24:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3C426FBA9
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jan 2020 17:24:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Jan 2020 09:24:27 -0800
X-IronPort-AV: E=Sophos;i="5.70,386,1574150400"; d="scan'208";a="223198320"
Received: from amanna-mobl1.gar.corp.intel.com (HELO [10.251.55.3])
 ([10.251.55.3])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
 31 Jan 2020 09:24:25 -0800
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20200131114258.22306-1-animesh.manna@intel.com>
 <20200131120329.GO13686@intel.com>
From: "Manna, Animesh" <animesh.manna@intel.com>
Message-ID: <a3f64fd3-9909-6fbe-a216-047491e769b9@intel.com>
Date: Fri, 31 Jan 2020 22:54:21 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <20200131120329.GO13686@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dsb: Enable lmem for dsb
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
Cc: intel-gfx@lists.freedesktop.org, Matthew Auld <matthew.auld@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDMxLTAxLTIwMjAgMTc6MzMsIFZpbGxlIFN5cmrDpGzDpCB3cm90ZToKPiBPbiBGcmksIEph
biAzMSwgMjAyMCBhdCAwNToxMjo1OFBNICswNTMwLCBBbmltZXNoIE1hbm5hIHdyb3RlOgo+PiBJ
ZiBsbWVtIGlzIHN1cHBvcnRlZCBEU0Igc2hvdWxkIHVzZSBsb2NhbCBtZW1lb3J5IGluc3RlYWQK
Pj4gb2Ygc3lzdGVtIG1lbW9yeS4gVXNpbmcgbG9jYWwgbWVtb3J5IHN1cmVseSBicmluZyBwZXJm
b3JtYW5jZQo+PiBpbXByb3ZlbWVudCBhcyBsb2NhbCBtZW1vcnkgaXMgY2xvc2UgdG8gZ3B1LiBB
bHNvIHdhbnQgdG8gYXZvaWQKPj4gbXVsdGlwbGUgZ3B1IHVzaW5nIHN5c3RlbSBtZW1vcnkuCj4+
Cj4+IFVzZWQgTE1FTSBhcGkgdG8gY3JlYXRlIGdlbSBvYmplY3QgbmVlZGVkIGZvciBEU0IgY29t
bWFuZCBidWZmZXIuCj4gVGhlIHdob2xlIHBvaW50IG9mIHRoZSBkc2IgaXMgdG8gYXZvaWQgZG9p
bmcgbW1pby5hIE5vdyB5b3UncmUKPiByZXBsYWNpbmcgdGhlIG5pY2UgZG1hIHdpdGggbW1pbyBh
Z2Fpbi4gR3JhbnRlZCBsbWVtIGlzIHByb2JhYmx5Cj4gd2Mgc28gbWF5YmUgbm90IGFzIHNsb3cg
YXMgZGlyZWN0IG1taW8gcmVnaXN0ZXIgYWNjZXNzLCBhbmQgYWxzbwo+IHdlIGNhbiBkbyB0aGlz
IGFoZWFkIG9mIHRpbWUgc28gbm90IGFzIHRpbWUgY3JpdGljYWwgYXMgZGlyZWN0Cj4gbW1pbyBk
dXJpbmcgdGhlIHRoZSB2YmxhbmsuCgpBcyBwZXIgc2FzIGRvY3VtZW50YXRpb24gTG1lbSAoSEJN
KSBtZW1vcnkgaXMgcHJlZmVyYWJsZSBmb3IgY29tbWFuZC9iYXRjaCBidWZmZXIsIHBsYW5uaW5n
IHRvIGRvIHNvbWUgcHJvZmlsaW5nLiBXaWxsIHVwZGF0ZSB0aGUgcmVzdWx0LgoKUmVnYXJkcywK
QW5pbWVzaAoKPgo+PiB2MTogSW5pdGlhbCBwYXRjaC4KPj4KPj4gQ2M6IEphbmkgTmlrdWxhIDxq
YW5pLm5pa3VsYUBsaW51eC5pbnRlbC5jb20+Cj4+IENjOiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcu
YXVsZEBpbnRlbC5jb20+Cj4+IENjOiBSYW1hbGluZ2FtIEMgPHJhbWFsaW5nYW0uY0BpbnRlbC5j
b20+Cj4+IFNpZ25lZC1vZmYtYnk6IEFuaW1lc2ggTWFubmEgPGFuaW1lc2gubWFubmFAaW50ZWwu
Y29tPgo+PiAtLS0KPj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5j
IHwgNyArKysrKystCj4+ICAgMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgMSBkZWxl
dGlvbigtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kc2IuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMKPj4g
aW5kZXggOWRkMTgxNDRhNjY0Li5kNjdiNmE3NjRiYTAgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYwo+PiBAQCAtNiw2ICs2LDcgQEAKPj4gICAKPj4gICAj
aW5jbHVkZSAiaTkxNV9kcnYuaCIKPj4gICAjaW5jbHVkZSAiaW50ZWxfZGlzcGxheV90eXBlcy5o
Igo+PiArI2luY2x1ZGUgImdlbS9pOTE1X2dlbV9sbWVtLmgiCj4+ICAgCj4+ICAgI2RlZmluZSBE
U0JfQlVGX1NJWkUgICAgKDIgKiBQQUdFX1NJWkUpCj4+ICAgCj4+IEBAIC0xMTMsNyArMTE0LDEx
IEBAIGludGVsX2RzYl9nZXQoc3RydWN0IGludGVsX2NydGMgKmNydGMpCj4+ICAgCj4+ICAgCXdh
a2VyZWYgPSBpbnRlbF9ydW50aW1lX3BtX2dldCgmaTkxNS0+cnVudGltZV9wbSk7Cj4+ICAgCj4+
IC0Jb2JqID0gaTkxNV9nZW1fb2JqZWN0X2NyZWF0ZV9pbnRlcm5hbChpOTE1LCBEU0JfQlVGX1NJ
WkUpOwo+PiArCWlmIChIQVNfTE1FTShpOTE1KSkKPj4gKwkJb2JqID0gaTkxNV9nZW1fb2JqZWN0
X2NyZWF0ZV9sbWVtKGk5MTUsIERTQl9CVUZfU0laRSwgMCk7Cj4+ICsJZWxzZQo+PiArCQlvYmog
PSBpOTE1X2dlbV9vYmplY3RfY3JlYXRlX2ludGVybmFsKGk5MTUsIERTQl9CVUZfU0laRSk7Cj4+
ICsKPj4gICAJaWYgKElTX0VSUihvYmopKSB7Cj4+ICAgCQlEUk1fRVJST1IoIkdlbSBvYmplY3Qg
Y3JlYXRpb24gZmFpbGVkXG4iKTsKPj4gICAJCWdvdG8gb3V0Owo+PiAtLSAKPj4gMi4yNC4wCj4+
Cj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IElu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKPj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+
PiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
